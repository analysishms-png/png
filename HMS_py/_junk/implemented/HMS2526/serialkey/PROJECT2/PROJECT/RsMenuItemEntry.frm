VERSION 5.00
Begin VB.Form RsMenuItemEntry
  Caption = "Menu Item Entry"
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
  ClientWidth = 14460
  ClientHeight = 9780
  LockControls = -1  'True
  WhatsThisHelp = -1  'True
  Begin TextBox Txt
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5160
    Top = 4485
    Width = 1275
    Height = 285
    TabIndex = 11
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
  Begin BtnEnh CmdCopyConsumption
    Left = 6990
    Top = 1335
    Width = 2220
    Height = 465
    TabIndex = 84
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 14460
    Height = 450
    TabIndex = 83
  End
  Begin Frame FrLblInfo
    Caption = "Label Info."
    BackColor = &HC0FFFF&
    ForeColor = &H80&
    Left = 7005
    Top = 1800
    Width = 5175
    Height = 3045
    Visible = 0   'False
    TabIndex = 63
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
      Index = 26
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
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 1830
      Width = 3855
      Height = 285
      TabIndex = 74
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
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 1515
      Width = 3855
      Height = 285
      TabIndex = 72
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
      Index = 23
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 1200
      Width = 3855
      Height = 285
      TabIndex = 70
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
      Index = 22
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 885
      Width = 3855
      Height = 285
      TabIndex = 68
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
      Index = 21
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 570
      Width = 3855
      Height = 285
      TabIndex = 66
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
      Index = 20
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1260
      Top = 255
      Width = 3855
      Height = 285
      TabIndex = 64
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
      Left = 1260
      Top = 2505
      Width = 1980
      Height = 315
      TabIndex = 78
    End
    Begin BtnEnh CmdLabelPrint
      Left = 3855
      Top = 2550
      Width = 1305
      Height = 465
      TabIndex = 87
    End
    Begin Label LblName
      Caption = "Packing Date"
      Index = 20
      ForeColor = &HC00000&
      Left = 0
      Top = 2535
      Width = 1260
      Height = 240
      TabIndex = 79
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
      TabIndex = 77
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
      TabIndex = 75
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
    Begin Label LblName
      Caption = "Remark 2"
      Index = 16
      ForeColor = &HC00000&
      Left = 105
      Top = 1200
      Width = 900
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
    Begin Label LblName
      Caption = "Remark 1"
      Index = 15
      ForeColor = &HC00000&
      Left = 105
      Top = 885
      Width = 900
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
      Caption = "Label Qty."
      Index = 14
      ForeColor = &HC00000&
      Left = 105
      Top = 570
      Width = 975
      Height = 240
      TabIndex = 67
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
      Caption = "Label Name"
      Index = 13
      ForeColor = &HC00000&
      Left = 105
      Top = 255
      Width = 1155
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
  End
  Begin Frame FrCopyConsumption
    Caption = "Copy Consumption:"
    BackColor = &HC0FFFF&
    ForeColor = &H80&
    Left = 6990
    Top = 1800
    Width = 3900
    Height = 1215
    Visible = 0   'False
    TabIndex = 57
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
      Index = 18
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1140
      Top = 255
      Width = 2700
      Height = 285
      Enabled = 0   'False
      TabIndex = 58
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
    Begin BtnEnh CmdSaveConsumption
      Left = 2790
      Top = 615
      Width = 1080
      Height = 570
      TabIndex = 90
    End
    Begin BtnEnh Command2a
      Left = 1710
      Top = 615
      Width = 1080
      Height = 570
      TabIndex = 91
    End
    Begin Label LblOutlet
      Caption = "..."
      ForeColor = &H0&
      Left = 5865
      Top = 270
      Width = 180
      Height = 240
      TabIndex = 61
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
      Caption = "Finish Item"
      Index = 11
      ForeColor = &HC00000&
      Left = 45
      Top = 240
      Width = 1050
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
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    Left = 15285
    Top = 1155
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 55
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 45
      Top = 60
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 56
    End
  End
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    Left = 2580
    Top = 5745
    Width = 3855
    Height = 255
    TabIndex = 15
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
  Begin DataGrid DGAppDate
    Left = 6855
    Top = 8955
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 53
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2580
    Top = 6030
    Width = 1275
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2580
    Top = 4800
    Width = 1275
    Height = 285
    TabIndex = 12
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2580
    Top = 4170
    Width = 1275
    Height = 285
    TabIndex = 9
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
  Begin DataGrid DGDispCode
    Left = 9330
    Top = 8910
    Width = 1605
    Height = 2820
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 43
  End
  Begin MSFlexGrid FGPoint
    Left = 16905
    Top = 7395
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 42
  End
  Begin DataGrid DGUnit
    Left = 6870
    Top = 8595
    Width = 2100
    Height = 2295
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 35
  End
  Begin DataGrid DGRest
    Left = 11655
    Top = 8880
    Width = 4230
    Height = 2325
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
End
Begin DataGrid DGItemGroup
  Left = 6855
  Top = 8235
  Width = 4665
  Height = 2295
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 22
End
Begin DataGrid DGItemCat
  Left = 11655
  Top = 8535
  Width = 4410
  Height = 2460
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 27
End
Begin DataGrid DGHelp
  Left = 11640
  Top = 8175
  Width = 4230
  Height = 2355
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 19
End
Begin Frame Frame1
  BackColor = &HC0FFFF&
  Left = 195
  Top = 7020
  Width = 5640
  Height = 2130
  Visible = 0   'False
  TabIndex = 36
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1500
    Top = 975
    Width = 630
    Height = 285
    TabIndex = 39
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
  Begin CheckBox Check2
    Caption = "Currently Applicable"
    ForeColor = &HC00000&
    Left = 105
    Top = 1695
    Width = 2280
    Height = 240
    TabIndex = 40
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
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1500
    Top = 645
    Width = 1590
    Height = 285
    TabIndex = 38
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1500
    Top = 330
    Width = 3855
    Height = 285
    TabIndex = 37
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
  Begin BtnEnh Command2
    Index = 1
    Left = 3450
    Top = 1530
    Width = 1080
    Height = 570
    TabIndex = 88
  End
  Begin BtnEnh Command2
    Index = 0
    Left = 4530
    Top = 1530
    Width = 1080
    Height = 570
    TabIndex = 89
  End
  Begin Label LblName
    Caption = "Active"
    Index = 9
    ForeColor = &HC00000&
    Left = 240
    Top = 1005
    Width = 585
    Height = 240
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
  Begin Label LblName
    Caption = "App. Date"
    Index = 8
    ForeColor = &HC00000&
    Left = 240
    Top = 660
    Width = 930
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 4
    ForeColor = &H80&
    Left = 2190
    Top = 1050
    Width = 885
    Height = 240
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
  Begin Label LblName
    Caption = "Restaurant"
    Index = 4
    ForeColor = &HC00000&
    Left = 240
    Top = 330
    Width = 1020
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
End
Begin CheckBox Check1
  Caption = "Carry Last Information"
  BackColor = &HFFC0C0&
  ForeColor = &H80&
  Left = 4950
  Top = 6045
  Width = 2595
  Height = 240
  TabIndex = 17
  Value = 1
  BeginProperty Font
    Name = "Arial"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin TextBox Txt
  Index = 10
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 2280
  Width = 1275
  Height = 285
  TabIndex = 3
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
  Index = 9
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 5115
  Width = 1275
  Height = 285
  TabIndex = 13
  BorderStyle = 0 'None
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
  Index = 7
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 4485
  Width = 1275
  Height = 285
  TabIndex = 10
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
  Index = 8
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 1335
  Width = 3855
  Height = 285
  TabIndex = 0
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
  Index = 6
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 3225
  Width = 3855
  Height = 285
  TabIndex = 6
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
  Index = 5
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 3540
  Width = 1275
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
  Index = 4
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 3855
  Width = 1275
  Height = 285
  TabIndex = 8
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
  ForeColor = &HC00000&
  Left = 2580
  Top = 5430
  Width = 3855
  Height = 285
  TabIndex = 14
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
  Index = 0
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 1965
  Width = 3855
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
Begin TextBox Txt
  Index = 2
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 1650
  Width = 3855
  Height = 285
  TabIndex = 1
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
  Index = 1
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 2910
  Width = 1275
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
Begin DataGrid DGFinItem
  Left = 6870
  Top = 7875
  Width = 8220
  Height = 2220
  Visible = 0   'False
  TabStop = 0   'False
  TabIndex = 60
End
Begin TextBox Txt
  Index = 19
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 2580
  Top = 2595
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
Begin BtnEnh Command1
  Left = 3870
  Top = 5055
  Width = 1995
  Height = 375
  TabIndex = 85
End
Begin BtnEnh ChkLblInfo
  Left = 9210
  Top = 1335
  Width = 2955
  Height = 465
  TabIndex = 86
End
Begin TextBox Txt
  Index = 28
  BackColor = &HFFFFFF&
  ForeColor = &HC00000&
  Left = 4950
  Top = 2280
  Width = 1485
  Height = 285
  TabIndex = 93
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
Begin Label LblLedgerAc
  Caption = "M.R.P."
  Index = 7
  ForeColor = &HC00000&
  Left = 4425
  Top = 4485
  Width = 615
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
Begin Label LblFormCaption
  BackColor = &HC0FFFF&
  Left = 15
  Top = 360
  Width = 180
  Height = 540
  TabIndex = 82
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
  Left = -15
  Top = 6690
  Width = 2430
  Height = 285
  TabIndex = 81
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
  Left = 15
  Top = 6420
  Width = 2520
  Height = 255
  TabIndex = 80
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
Begin Label LblLedgerAc
  Caption = "Bar Code"
  Index = 5
  ForeColor = &HC00000&
  Left = 1065
  Top = 2595
  Width = 885
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
Begin Label LblName
  Caption = "Type"
  Index = 10
  ForeColor = &HC00000&
  Left = 1065
  Top = 5715
  Width = 465
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
Begin Label LblLedgerAc
  Caption = "Active"
  Index = 4
  ForeColor = &HC00000&
  Left = 1065
  Top = 6030
  Width = 585
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
  Caption = "(Y)es/(N)o"
  Index = 3
  ForeColor = &H80&
  Left = 3885
  Top = 6030
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 2
  ForeColor = &H80&
  Left = 3870
  Top = 4815
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblName
  Caption = "Rate Inc. Tax"
  Index = 7
  ForeColor = &HC00000&
  Left = 1065
  Top = 4800
  Width = 1260
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
Begin Label LblName
  Caption = "Service Charge"
  Index = 6
  ForeColor = &HC00000&
  Left = 1065
  Top = 4170
  Width = 1470
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
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 1
  ForeColor = &H80&
  Left = 3870
  Top = 4185
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblLedgerAc
  Caption = "Item Code"
  Index = 3
  ForeColor = &HC00000&
  Left = 1065
  Top = 2280
  Width = 975
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
Begin Label LblName
  Caption = "Applicable Date"
  Index = 2
  ForeColor = &HC00000&
  Left = 1065
  Top = 5115
  Width = 1515
  Height = 240
  TabIndex = 33
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
  Caption = "Sale Rate"
  Index = 1
  ForeColor = &HC00000&
  Left = 1065
  Top = 4485
  Width = 930
  Height = 240
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
  Caption = "Restaurant"
  Index = 1
  ForeColor = &HC00000&
  Left = 1065
  Top = 1335
  Width = 1020
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
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 0
  ForeColor = &H80&
  Left = 3870
  Top = 3870
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label Label1
  Caption = "(Y)es/(N)o"
  Index = 16
  ForeColor = &H80&
  Left = 3870
  Top = 3555
  Width = 885
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
    Italic = -1 'True
    Strikethrough = 0 'False
  EndProperty
End
Begin Label LblName
  Caption = "Item Category"
  Index = 12
  ForeColor = &HC00000&
  Left = 1065
  Top = 3225
  Width = 1335
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
Begin Label LblLedgerAc
  Caption = "Rate Edit"
  Index = 6
  ForeColor = &HC00000&
  Left = 1065
  Top = 3540
  Width = 855
  Height = 240
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
  Caption = "Disc Applicable"
  Index = 5
  ForeColor = &HC00000&
  Left = 1065
  Top = 3855
  Width = 1470
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
Begin Label LblName
  Caption = "Kitchen"
  Index = 3
  ForeColor = &HC00000&
  Left = 1065
  Top = 5430
  Width = 720
  Height = 240
  TabIndex = 24
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
  Caption = "Item Name"
  Index = 0
  ForeColor = &HC00000&
  Left = 1065
  Top = 1965
  Width = 1035
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
Begin Label LblLedgerAc
  Caption = "Item Group"
  Index = 0
  ForeColor = &HC00000&
  Left = 1065
  Top = 1650
  Width = 1065
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
End
Begin Label LblLedgerAc
  Caption = "Item Unit"
  Index = 2
  ForeColor = &HC00000&
  Left = 1065
  Top = 2910
  Width = 855
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
Begin Label LblLedgerAc
  Caption = "HSN Code"
  Index = 8
  ForeColor = &HC00000&
  Left = 3930
  Top = 2295
  Width = 960
  Height = 240
  TabIndex = 94
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

Attribute VB_Name = "RsMenuItemEntry"


Private Sub Check2_Click() 'E84438
  'Data Table: 53C1B4
  Dim var_88 As CheckBox
  Dim var_90 As TextBox
  loc_E843E3: If (Me.Check2.Value = 1) Then
  loc_E843F4:   Set var_88 = Me.Txt
  loc_E843FA:   Call 0.Method_Check2_Click0 (CInt(&HF), var_90)
  loc_E84402:   var_90.Text = vbNullString
  loc_E8441C:   Set var_88 = Me.Txt
  loc_E84422:   Call 0.Method_Check2_Click0 (CInt(&HF), var_90)
  loc_E8442A:   var_90.Tag = vbNullString
  loc_E84436: End If
  loc_E84436: Exit Sub
End Sub

Private Sub ChkLblInfo_UnknownEvent_9 'E93C18
  'Data Table: 53C1B4
  Dim var_88 As Frame
  loc_E93B9C: Set var_88 = Me.ChkLblInfo
  loc_E93BA2: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_69()
  loc_E93BB7: If (CLng(CInt()) = 1) Then
  loc_E93BC6:   Me.FrLblInfo.Visible = True
  loc_E93BD8:   Set var_88 = Me.ChkLblInfo
  loc_E93BDE:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Hide Label Information")
  loc_E93BE9: Else
  loc_E93BF5:   Me.FrLblInfo.Visible = False
  loc_E93C07:   Set var_88 = Me.ChkLblInfo
  loc_E93C0D:   Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA("Show Label Information")
  loc_E93C15: End If
  loc_E93C15: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '16F043C
  'Data Table: 53C1B4
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_E8 As String
  Dim var_C4 As Variant
  Dim var_104 As Variant
  Dim var_88 As Variant
  Dim unk_53C1E2 As Connection15
  loc_16EE950: On Error Goto loc_16F03F7
  loc_16EE95D: Set var_88 = Me.Txt
  loc_16EE963: Call 0.Method_Txt_GotFocus0 (Index)
  loc_16EE971: Proc_6_74_E23240(var_8C)
  loc_16EE97D: Call Proc_44_54_102E7A4(var_8C)
  loc_16EE985: var_92 = Index
  loc_16EE990: If (var_92 = CInt(0)) Then
  loc_16EE9AA:   If (Me.RecordCount > 0) Then
  loc_16EE9B8:     Set var_8C = Me.FGPoint
  loc_16EE9D0:     Proc_6_137_1192FDC(Me.DGHelp, global_68, Index)
  loc_16EE9DE:   End If
  loc_16EEA2C:   Set var_88 = Me.Txt
  loc_16EEA32:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EEA3A:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EEA52:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_16EEA55:     Exit Sub
  loc_16EEA56:   End If
  loc_16EEA63:   Set var_88 = Me.Txt
  loc_16EEA69:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EEA71:   var_A0 = var_8C.Text
  loc_16EEA83:   var_B0 = "Name"
  loc_16EEABE:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_16EEAC7:     Me.MoveFirst
  loc_16EEAEA:     Set var_88 = Me.Txt
  loc_16EEAF0:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EEAF8:     0 = var_8C.Text
  loc_16EEB11:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_16EEB26:   End If
  loc_16EEB29: Else
  loc_16EEB31:   If (var_92 = CInt(2)) Then
  loc_16EEB43:     Me.Filter = 0
  loc_16EEB59:     Set var_88 = Me.Txt
  loc_16EEB5F:     Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EEB67:     var_A0 = var_8C.Tag
  loc_16EEB81:     Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_16EEBAE:     If (Me.RecordCount > 0) Then
  loc_16EEBBC:       Set var_8C = Me.FGPoint
  loc_16EEBD4:       Proc_6_137_1192FDC(Me.DGItemGroup, global_72)
  loc_16EEBE2:     End If
  loc_16EEC30:     Set var_88 = Me.Txt
  loc_16EEC36:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EEC3E:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EEC56:     If (Index Or (var_A0 = vbNullString)) Then
  loc_16EEC59:       Exit Sub
  loc_16EEC5A:     End If
  loc_16EEC67:     Set var_88 = Me.Txt
  loc_16EEC6D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EEC75:     var_A0 = var_8C.Text
  loc_16EEC87:     var_B0 = "Name"
  loc_16EECC2:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_16EECCB:       Me.MoveFirst
  loc_16EECEE:       Set var_88 = Me.Txt
  loc_16EECF4:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EECFC:       0 = var_8C.Text
  loc_16EED15:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EED2A:     End If
  loc_16EED2D:   Else
  loc_16EED35:     If (var_92 = CInt(6)) Then
  loc_16EED47:       Me.Filter = 0
  loc_16EED5D:       Set var_88 = Me.Txt
  loc_16EED63:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EED6B:       var_A0 = var_8C.Tag
  loc_16EED85:       Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_16EEDB2:       If (Me.RecordCount > 0) Then
  loc_16EEDC0:         Set var_8C = Me.FGPoint
  loc_16EEDD8:         Proc_6_137_1192FDC(Me.DGItemCat, global_80)
  loc_16EEDE6:       End If
  loc_16EEE34:       Set var_88 = Me.Txt
  loc_16EEE3A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EEE42:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EEE5A:       If (Index Or (var_A0 = vbNullString)) Then
  loc_16EEE5D:         Exit Sub
  loc_16EEE5E:       End If
  loc_16EEE6B:       Set var_88 = Me.Txt
  loc_16EEE71:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EEE79:       var_A0 = var_8C.Text
  loc_16EEE8B:       var_B0 = "Name"
  loc_16EEEC6:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_16EEECF:         Me.MoveFirst
  loc_16EEEF2:         Set var_88 = Me.Txt
  loc_16EEEF8:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EEF00:         0 = var_8C.Text
  loc_16EEF19:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EEF2E:       End If
  loc_16EEF31:     Else
  loc_16EEF39:       If (var_92 = CInt(1)) Then
  loc_16EEF53:         If (Me.RecordCount > 0) Then
  loc_16EEF61:           Set var_8C = Me.FGPoint
  loc_16EEF79:           Proc_6_137_1192FDC(Me.DGUnit, global_84)
  loc_16EEF87:         End If
  loc_16EEFD5:         Set var_88 = Me.Txt
  loc_16EEFDB:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EEFE3:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EEFFB:         If (Index Or (var_A0 = vbNullString)) Then
  loc_16EEFFE:           Exit Sub
  loc_16EEFFF:         End If
  loc_16EF00C:         Set var_88 = Me.Txt
  loc_16EF012:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF01A:         var_A0 = var_8C.Text
  loc_16EF02C:         var_B0 = "Name"
  loc_16EF043:         var_B4 = Me.Fields.Item(var_B0)
  loc_16EF067:         If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_16EF070:           Me.MoveFirst
  loc_16EF093:           Set var_88 = Me.Txt
  loc_16EF099:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EF0A1:           0 = var_8C.Text
  loc_16EF0BA:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EF0CF:         End If
  loc_16EF0D2:       Else
  loc_16EF0DA:         If Not (var_92 = CInt(4)) Then
  loc_16EF0E5:           If Not (var_92 = CInt(5)) Then
  loc_16EF0F0:             If (var_92 = CInt(&HC)) Then
  loc_16EF0F3:             End If
  loc_16EF0F3:           End If
  loc_16EF102:           Set var_88 = Me.Txt
  loc_16EF108:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF110:           var_8C.SelStart = 0
  loc_16EF129:           Set var_88 = Me.Txt
  loc_16EF12F:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF14A:           Set var_90 = Me.Txt
  loc_16EF150:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EF158:           var_B4.SelLength = Len(var_8C.Text)
  loc_16EF178:           Set var_88 = Me.Txt
  loc_16EF17E:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF198:           Set var_90 = Me.Txt
  loc_16EF19E:           Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EF1A6:           var_B4.Tag = var_8C.Text
  loc_16EF1BC:         Else
  loc_16EF1C4:           If Not (var_92 = CInt(7)) Then
  loc_16EF1CF:             If (var_92 = CInt(&H1B)) Then
  loc_16EF1D2:             End If
  loc_16EF1DF:             Set var_88 = Me.Txt
  loc_16EF1E5:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF200:             Set var_90 = Me.Txt
  loc_16EF206:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EF20E:             var_B4.SelLength = Len(var_8C.Text)
  loc_16EF22E:             Set var_88 = Me.Txt
  loc_16EF234:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF23C:             var_A0 = var_8C.Text
  loc_16EF24E:             Set var_90 = Me.Txt
  loc_16EF254:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EF25C:             var_B4.Tag = var_A0
  loc_16EF272:           Else
  loc_16EF27A:             If (var_92 = CInt(3)) Then
  loc_16EF28B:               Set var_88 = Me.Txt
  loc_16EF291:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_16EF2B0:               Me.DGRest.Left = CVar(var_8C.Left)
  loc_16EF2CC:               Set var_90 = Me.Txt
  loc_16EF2D2:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_B4)
  loc_16EF2ED:               Set var_88 = Me.Txt
  loc_16EF2F3:               Call 0.Method_Txt_GotFocus0 (CInt(3), var_8C)
  loc_16EF30B:               var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_16EF31A:               Me.DGRest.Top = CVar(var_8C.Left)
  loc_16EF33B:               Me.Filter = 0
  loc_16EF34C:               Me.Filter = "RestType='Kitchen'"
  loc_16EF368:               If (Me.RecordCount > 0) Then
  loc_16EF376:                 Set var_8C = Me.FGPoint
  loc_16EF38E:                 Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_16EF39C:               End If
  loc_16EF3EA:               Set var_88 = Me.Txt
  loc_16EF3F0:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EF3F8:               ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EF410:               If (Index Or (var_A0 = vbNullString)) Then
  loc_16EF413:                 Exit Sub
  loc_16EF414:               End If
  loc_16EF421:               Set var_88 = Me.Txt
  loc_16EF427:               Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF42F:               var_A0 = var_8C.Text
  loc_16EF441:               var_B0 = "Name"
  loc_16EF458:               var_B4 = Me.Fields.Item(var_B0)
  loc_16EF47C:               If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_16EF485:                 Me.MoveFirst
  loc_16EF4A8:                 Set var_88 = Me.Txt
  loc_16EF4AE:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EF4B6:                 0 = var_8C.Text
  loc_16EF4CF:                 Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EF4E4:               End If
  loc_16EF4F7:               Me.DGRest.Tag = CVar(CStr(Index))
  loc_16EF505:             Else
  loc_16EF50D:               If (var_92 = CInt(8)) Then
  loc_16EF51E:                 Set var_88 = Me.Txt
  loc_16EF524:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EF543:                 Me.DGRest.Left = CVar(var_8C.Left)
  loc_16EF55F:                 Set var_90 = Me.Txt
  loc_16EF565:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_B4)
  loc_16EF580:                 Set var_88 = Me.Txt
  loc_16EF586:                 Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EF59E:                 var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_16EF5A7:                 Set var_104 = Me.DGRest
  loc_16EF5AD:                 var_104.Top = CVar(var_8C.Left)
  loc_16EF5CE:                 Me.Filter = 0
  loc_16EF5DF:                 Me.Filter = "RestType<>'Kitchen'"
  loc_16EF5FB:                 If (Me.RecordCount > 0) Then
  loc_16EF609:                   Set var_8C = Me.FGPoint
  loc_16EF621:                   Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_16EF62F:                 End If
  loc_16EF67D:                 Set var_88 = Me.Txt
  loc_16EF683:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EF68B:                 ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EF6A3:                 If (Index Or (var_A0 = vbNullString)) Then
  loc_16EF6A6:                   Exit Sub
  loc_16EF6A7:                 End If
  loc_16EF6B4:                 Set var_88 = Me.Txt
  loc_16EF6BA:                 Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF6C2:                 var_A0 = var_8C.Text
  loc_16EF6D4:                 var_B0 = "Name"
  loc_16EF6E3:                 var_90 = Me.Fields
  loc_16EF70F:                 If CBool(CVar(var_A0) <> var_90.Item(var_B0).Value) Then
  loc_16EF718:                   Me.MoveFirst
  loc_16EF73B:                   Set var_88 = Me.Txt
  loc_16EF741:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EF749:                   0 = var_8C.Text
  loc_16EF762:                   Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EF777:                 End If
  loc_16EF78A:                 Me.DGRest.Tag = CVar(CStr(Index))
  loc_16EF798:               Else
  loc_16EF7A0:                 If (var_92 = CInt(&HB)) Then
  loc_16EF7B1:                   Set var_8C = Me.Txt
  loc_16EF7B7:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_16EF7DD:                   var_B0 = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_16EF7EC:                   Me.DGRest.Left = var_B0
  loc_16EF80A:                   Set var_8C = Me.Txt
  loc_16EF810:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_90)
  loc_16EF82B:                   Set var_B4 = Me.Txt
  loc_16EF831:                   Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_104)
  loc_16EF85F:                   var_B0 = CVar((((Me.Frame1.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_16EF86E:                   Me.DGRest.Top = var_B0
  loc_16EF891:                   Me.Filter = 0
  loc_16EF8A2:                   Me.Filter = "RestType<>'Kitchen'"
  loc_16EF8BE:                   If (Me.RecordCount > 0) Then
  loc_16EF8CC:                     Set var_8C = Me.FGPoint
  loc_16EF8E4:                     Proc_6_137_1192FDC(Me.DGRest, global_76)
  loc_16EF8F2:                   End If
  loc_16EF940:                   Set var_88 = Me.Txt
  loc_16EF946:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EF94E:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EF966:                   If (Index Or (var_A0 = vbNullString)) Then
  loc_16EF969:                     Exit Sub
  loc_16EF96A:                   End If
  loc_16EF977:                   Set var_88 = Me.Txt
  loc_16EF97D:                   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EF985:                   var_A0 = var_8C.Text
  loc_16EF997:                   var_B0 = "Name"
  loc_16EF9A6:                   var_90 = Me.Fields
  loc_16EF9D2:                   If CBool(CVar(var_A0) <> var_90.Item(var_B0).Value) Then
  loc_16EF9DB:                     Me.MoveFirst
  loc_16EF9FE:                     Set var_88 = Me.Txt
  loc_16EFA04:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EFA0C:                     0 = var_8C.Text
  loc_16EFA25:                     Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EFA3A:                   End If
  loc_16EFA4D:                   Me.DGRest.Tag = CVar(CStr(Index))
  loc_16EFA5B:                 Else
  loc_16EFA63:                   If (var_92 = CInt(&HF)) Then
  loc_16EFA73:                     Set var_8C = Me.Txt
  loc_16EFA79:                     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_16EFA9F:                     var_B0 = CVar((Me.Frame1.Left + var_90.Left)) 'Single
  loc_16EFAAE:                     Me.DGAppDate.Left = var_B0
  loc_16EFACB:                     Set var_8C = Me.Txt
  loc_16EFAD1:                     Call 0.Method_Txt_GotFocus0 (Index, var_90)
  loc_16EFAEB:                     Set var_B4 = Me.Txt
  loc_16EFAF1:                     Call 0.Method_Txt_GotFocus0 (Index, var_104)
  loc_16EFB1F:                     var_B0 = CVar((((Me.Frame1.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_16EFB2E:                     Me.DGAppDate.Top = var_B0
  loc_16EFB51:                     Me.Filter = 0
  loc_16EFB67:                     Set var_88 = Me.Txt
  loc_16EFB6D:                     Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_8C)
  loc_16EFB75:                     var_A0 = var_8C.Tag
  loc_16EFB8F:                     Me.Filter = CVar("RestCode='" & var_A0 & "'")
  loc_16EFBBC:                     If (Me.RecordCount > 0) Then
  loc_16EFBCA:                       Set var_8C = Me.FGPoint
  loc_16EFBE2:                       Proc_6_137_1192FDC(Me.DGAppDate, global_92)
  loc_16EFBF0:                     End If
  loc_16EFC3E:                     Set var_88 = Me.Txt
  loc_16EFC44:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16EFC4C:                     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16EFC64:                     If (Index Or (var_A0 = vbNullString)) Then
  loc_16EFC67:                       Exit Sub
  loc_16EFC68:                     End If
  loc_16EFC75:                     Set var_88 = Me.Txt
  loc_16EFC7B:                     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EFC83:                     var_A0 = var_8C.Text
  loc_16EFC95:                     var_B0 = "Name"
  loc_16EFCAC:                     var_B4 = Me.Fields.Item(var_B0)
  loc_16EFCD0:                     If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_16EFCD9:                       Me.MoveFirst
  loc_16EFCFC:                       Set var_88 = Me.Txt
  loc_16EFD02:                       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16EFD0A:                       0 = var_8C.Text
  loc_16EFD23:                       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16EFD38:                     End If
  loc_16EFD4B:                     Me.DGAppDate.Tag = CVar(CStr(Index))
  loc_16EFD59:                   Else
  loc_16EFD61:                     If (var_92 = CInt(9)) Then
  loc_16EFD71:                       Set var_88 = Me.Txt
  loc_16EFD77:                       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EFD92:                       Set var_90 = Me.Txt
  loc_16EFD98:                       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EFDA0:                       var_B4.SelLength = Len(var_8C.Text)
  loc_16EFDC0:                       Set var_88 = Me.Txt
  loc_16EFDC6:                       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16EFDE0:                       Set var_90 = Me.Txt
  loc_16EFDE6:                       Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_16EFDEE:                       var_B4.Tag = var_8C.Text
  loc_16EFE04:                     Else
  loc_16EFE0C:                       If (var_92 = CInt(&HA)) Then
  loc_16EFE1D:                         Set var_88 = Me.Txt
  loc_16EFE23:                         Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_16EFE42:                         Me.DGDispCode.Left = CVar(var_8C.Left)
  loc_16EFE5E:                         Set var_90 = Me.Txt
  loc_16EFE64:                         Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_B4)
  loc_16EFE7F:                         Set var_88 = Me.Txt
  loc_16EFE85:                         Call 0.Method_Txt_GotFocus0 (CInt(&HA), var_8C)
  loc_16EFE9D:                         var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&H1E))) 'Single
  loc_16EFEAC:                         Me.DGDispCode.Top = CVar(var_8C.Left)
  loc_16EFECC:                         Set var_88 = Me.Txt
  loc_16EFED2:                         Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_16EFEDA:                         var_A0 = var_8C.Text
  loc_16EFEF1:                         If (var_A0 = vbNullString) Then
  loc_16EFEFF:                           Set var_88 = Me.Txt
  loc_16EFF05:                           Call 0.Method_Txt_GotFocus0 (CInt(8))
  loc_16EFF0D:                           var_8C.SetFocus
  loc_16EFF19:                           Exit Sub
  loc_16EFF1A:                         End If
  loc_16EFF38:                         Set var_88 = Me.Txt
  loc_16EFF3E:                         Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A0, "SELECT DispCode as COde,DispCode FROM ItemMast Where Type IN ('Finish','Semi Finish')  And DispCode<>9999 and RestCode ='")
  loc_16EFF46:                         var_C4 = var_8C.Tag
  loc_16EFF4F:                         var_E8 = -1 & var_A0
  loc_16EFF5F:                         unk_53C1E2.Execute 1 & var_A0 & "' ORDER BY DispCode", var_90, var_8C
  loc_16EFF70:                         Set global_96 = var_90
  loc_16EFF94:                         CVarUnk
  loc_16EFF99:                         VerifyVarObj
  loc_16EFF9F:                         Set var_88 = Me.DGDispCode
  loc_16EFFA5:                         LateIdStAd
  loc_16EFFCA:                         If (Me.RecordCount > 0) Then
  loc_16EFFD8:                           Set var_8C = Me.FGPoint
  loc_16EFFF0:                           Proc_6_137_1192FDC(Me.DGDispCode, global_96, Index)
  loc_16EFFFE:                         End If
  loc_16F0001:                       Else
  loc_16F0009:                         If (var_92 = CInt(&H11)) Then
  loc_16F0019:                           ReDim var_110(0 To 3)
  loc_16F0030:                           var_110(0) = "Manufactured Item"
  loc_16F003F:                           var_110(1) = "Trade Item"
  loc_16F004E:                           var_110(2) = "Proprietary Item"
  loc_16F005D:                           var_110(3) = "Other"
  loc_16F0074:                           global_100 = Array(var_110)
  loc_16F007F:                           Set var_B4 = Me.ListView
  loc_16F0086:                           Set var_104 = Me.Txt
  loc_16F009A:                           Set var_8C = var_104
  loc_16F00B4:                           Set global_116 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_100, 4)
  loc_16F00D8:                           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, global_100)
  loc_16F00E0:                           var_8C = var_8C.Text
  loc_16F00F2:                           Set var_90 = Me.Txt
  loc_16F00F8:                           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_16F0100:                           var_B4.Tag = Me.Txt
  loc_16F0116:                         Else
  loc_16F011E:                           If (var_92 = CInt(&H12)) Then
  loc_16F012F:                             Set var_8C = Me.Txt
  loc_16F0135:                             Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_90)
  loc_16F015B:                             var_B0 = CVar((Me.FrCopyConsumption.Left + var_90.Left)) 'Single
  loc_16F016A:                             Me.DGFinItem.Left = "Manufactured Item"
  loc_16F0188:                             Set var_8C = Me.Txt
  loc_16F018E:                             Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_90)
  loc_16F01A9:                             Set var_B4 = Me.Txt
  loc_16F01AF:                             Call 0.Method_Txt_GotFocus0 (CInt(&H12), var_104)
  loc_16F01DD:                             var_B0 = CVar((((Me.FrCopyConsumption.Top + var_90.Top) + var_104.Height) + CDbl(&H1E))) 'Single
  loc_16F01EC:                             Me.DGFinItem.Top = "Manufactured Item"
  loc_16F020F:                             Me.Filter = 0
  loc_16F0225:                             Set var_88 = Me.Txt
  loc_16F022B:                             Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C, var_A0)
  loc_16F0233:                             "RestCode<>'" = var_8C.Tag
  loc_16F024D:                             Me.Filter = CVar(global_96 & var_A0 & "'")
  loc_16F027A:                             If (Me.RecordCount > 0) Then
  loc_16F0288:                               Set var_8C = Me.FGPoint
  loc_16F02A0:                               Proc_6_137_1192FDC(Me.DGFinItem, global_88)
  loc_16F02AE:                             End If
  loc_16F02FC:                             Set var_88 = Me.Txt
  loc_16F0302:                             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_16F030A:                             ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_16F0322:                             If (Index Or (var_A0 = vbNullString)) Then
  loc_16F0325:                               Exit Sub
  loc_16F0326:                             End If
  loc_16F0333:                             Set var_88 = Me.Txt
  loc_16F0339:                             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_16F0341:                             var_A0 = var_8C.Text
  loc_16F0353:                             var_B0 = "Name"
  loc_16F038E:                             If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_16F0397:                               Me.MoveFirst
  loc_16F03BA:                               Set var_88 = Me.Txt
  loc_16F03C0:                               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_16F03C8:                               0 = var_8C.Text
  loc_16F03E1:                               Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_16F03F6:                             End If
  loc_16F03F6:                           End If
  loc_16F03F6:                         End If
  loc_16F03F6:                       End If
  loc_16F03F6:                     End If
  loc_16F03F6:                   End If
  loc_16F03F6:                 End If
  loc_16F03F6:               End If
  loc_16F03F6:             End If
  loc_16F03F6:           End If
  loc_16F03F6:         End If
  loc_16F03F6:       End If
  loc_16F03F6:     End If
  loc_16F03F6:   End If
  loc_16F03F6: End If
  loc_16F03F6: Exit Sub
  loc_16F03F7: ' Referenced from: 16EE950
  loc_16F03FF: Set var_88 = Err()
  loc_16F0405: Call 0.Method_arg_2C (var_A0)
  loc_16F0426: MsgBox(CVar(var_A0), &H40, "Information", var_E4, var_140)
  loc_16F0439: Exit Sub
  loc_16F043A: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '145C148
  'Data Table: 53C1B4
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C0 As Variant
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_A4 As DataGrid
  Dim var_AC As DataGrid
  loc_145B5D6: If (CLng(Shift) = &H1B) Then
  loc_145B5D9:   Call Proc_44_54_102E7A4()
  loc_145B5DE:   Exit Sub
  loc_145B5DF: End If
  loc_145B5E2: var_88 = KeyCode
  loc_145B5ED: If (var_88 = CInt(0)) Then
  loc_145B60D:   Set var_9C = Me.FGPoint
  loc_145B618:   Set var_98 = Nothing
  loc_145B646:   Proc_6_69_134A630(Me.DGHelp, Me.Txt, KeyCode, global_68, Shift, 0)
  loc_145B6B5:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145B6DB:     Proc_6_138_106E830(Me.DGHelp, global_68, KeyCode, Me.FGPoint, 1)
  loc_145B6E9:   End If
  loc_145B6EC: Else
  loc_145B6F4:   If (var_88 = CInt(2)) Then
  loc_145B71F:     Set var_98 = Nothing
  loc_145B751:     Proc_6_69_134A630(Me.DGItemGroup, Me.Txt, CInt(2), global_72, Shift, 0, 1)
  loc_145B7C0:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145B7C7:       Set var_98 = Me.DGItemGroup
  loc_145B7E6:       Proc_6_138_106E830(var_98, global_72, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_145B7F4:     End If
  loc_145B7F7:   Else
  loc_145B7FF:     If (var_88 = CInt(6)) Then
  loc_145B858:       Proc_6_69_134A630(Me.DGItemCat, Me.Txt, KeyCode, global_80, Shift, 0, 1, Nothing)
  loc_145B8C7:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145B8ED:         Proc_6_138_106E830(Me.DGItemCat, global_80, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_145B8FB:       End If
  loc_145B8FE:     Else
  loc_145B906:       If Not (var_88 = CInt(8)) Then
  loc_145B911:         If Not (var_88 = CInt(3)) Then
  loc_145B91C:           If (var_88 = CInt(&HB)) Then
  loc_145B91F:           End If
  loc_145B91F:         End If
  loc_145B975:         Proc_6_69_134A630(Me.DGRest, Me.Txt, KeyCode, global_76, Shift, 0, 1, Nothing)
  loc_145B9E4:         If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145BA0A:           Proc_6_138_106E830(Me.DGRest, global_76, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_145BA18:         End If
  loc_145BA1B:       Else
  loc_145BA23:         If (var_88 = CInt(&HF)) Then
  loc_145BA7C:           Proc_6_69_134A630(Me.DGAppDate, Me.Txt, KeyCode, global_92, Shift, 0, 1, Nothing)
  loc_145BAEB:           If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145BAF2:             Set var_98 = Me.DGAppDate
  loc_145BAF9:             Set var_90 = Me.FGPoint
  loc_145BB11:             Proc_6_138_106E830(var_98, global_92, KeyCode, var_90, Me.FGPoint, 0)
  loc_145BB1F:           End If
  loc_145BB22:         Else
  loc_145BB2A:           If (var_88 = CInt(&HA)) Then
  loc_145BB37:             Set var_8C = Me.Txt
  loc_145BB3D:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, 0, var_98)
  loc_145BB58:             Proc_6_41_FA1734(var_90, Shift, 4, 0)
  loc_145BB86:             If ((Me.RecordCount > 0) Or (CLng(Shift) = &HD)) Then
  loc_145BBA6:               Set var_98 = Me.FGPoint
  loc_145BBD4:               Proc_6_79_11AD564(Me.DGDispCode, Me.Txt, KeyCode, global_96, Shift, 0)
  loc_145BBE8:             End If
  loc_145BC41:             If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145BC67:               Proc_6_138_106E830(Me.DGDispCode, global_96, KeyCode, Me.FGPoint, 1)
  loc_145BC75:             End If
  loc_145BC78:           Else
  loc_145BC80:             If (var_88 = CInt(1)) Then
  loc_145BC87:               Set var_9C = Me.DGUnit
  loc_145BC95:               Set var_A8 = Me.FGPoint
  loc_145BCA0:               Set var_98 = var_A8
  loc_145BCCE:               Proc_6_79_11AD564(var_9C, Me.Txt, KeyCode, global_84, Shift, 0, 1)
  loc_145BCEB:               var_B0 = Me.RecordCount
  loc_145BD3B:               If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145BD42:                 Set var_98 = Me.DGUnit
  loc_145BD49:                 Set var_90 = Me.FGPoint
  loc_145BD61:                 Proc_6_138_106E830(var_98, global_84, KeyCode, var_90, var_98, 0)
  loc_145BD6F:               End If
  loc_145BD72:             Else
  loc_145BD7A:               If (var_88 = CInt(&H11)) Then
  loc_145BD9F:                 Set var_8C = Me.Txt
  loc_145BDA5:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, var_98)
  loc_145BDAD:                 0 = var_90.Left
  loc_145BDBF:                 Set var_98 = Me.Txt
  loc_145BDC5:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_145BDCD:                 var_9C = var_9C.Top
  loc_145BDDF:                 Set var_A4 = Me.Txt
  loc_145BDE5:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_145BDED:                 0 = var_A8.Height
  loc_145BDFF:                 Set var_AC = Me.Txt
  loc_145BE05:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_145BE0D:                 var_C4 = var_C0.Width
  loc_145BE55:                 Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_145BE7C:               Else
  loc_145BE84:                 If (var_88 = CInt(&H12)) Then
  loc_145BEE1:                   Proc_6_69_134A630(Me.DGFinItem, Me.Txt, CInt(&H12), global_88, Shift, 0, 1, Nothing)
  loc_145BF00:                   var_B0 = Me.RecordCount
  loc_145BF50:                   If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_145BF76:                     Proc_6_138_106E830(Me.DGFinItem, global_88, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_145BF84:                   End If
  loc_145BF84:                 End If
  loc_145BF84:               End If
  loc_145BF84:             End If
  loc_145BF84:           End If
  loc_145BF84:         End If
  loc_145BF84:       End If
  loc_145BF84:     End If
  loc_145BF84:   End If
  loc_145BF84: End If
  loc_145C07C: If (((((((((CBool(Me.DGHelp.Visible) = 0) And (CBool(Me.DGDispCode.Visible) = 0)) And (CBool(Me.DGRest.Visible) = 0)) And (CBool(Me.DGItemGroup.Visible) = 0)) And (CBool(Me.DGItemCat.Visible) = 0)) And (CBool(Me.DGUnit.Visible) = 0)) And (CBool(Me.DGAppDate.Visible) = 0)) And (CBool(Me.ListView.Visible) = 0)) And (CBool(Me.DGFinItem.Visible) = 0)) Then
  loc_145C09D:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HE))) Then
  loc_145C0AA:     Call Txt_Validate(CInt(3))
  loc_145C0B4:     Call Proc_44_56_E81B10(0, var_86, CInt(var_B0), CInt((var_B8 + var_BC)))
  loc_145C0BC:   Else
  loc_145C0DA:     If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(9))) Then
  loc_145C0E3:       Call Txt_Validate(KeyCode)
  loc_145C0EE:       If (var_86 = &HFF) Then
  loc_145C0F1:         Exit Sub
  loc_145C0F2:       End If
  loc_145C0F8:       Proc_6_75_E5335C(Shift, arg_14, var_86)
  loc_145C100:     Else
  loc_145C115:       If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_145C11E:         Proc_6_75_E5335C(Shift, arg_14, CInt(var_C4))
  loc_145C126:       Else
  loc_145C139:         If ((CLng(Shift) = &H26) And (KeyCode <> CInt(8))) Then
  loc_145C142:           Proc_6_76_E533C8(Shift, arg_14)
  loc_145C147:         End If
  loc_145C147:       End If
  loc_145C147:     End If
  loc_145C147:   End If
  loc_145C147: End If
  loc_145C147: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1248E60
  'Data Table: 53C1B4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A0 As TextBox
  loc_1248917: Proc_6_58_E06050(arg_10)
  loc_1248922: Proc_6_133_E7FB08(var_94)
  loc_124892B: arg_10 = CInt(var_94)
  loc_1248934: var_96 = KeyAscii
  loc_124893F: If (var_96 = CInt(&HA)) Then
  loc_124894C:   Set var_9C = Me.Txt
  loc_1248952:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_124896D:   Proc_6_42_129B55C(var_A0, arg_10, 4)
  loc_124897C: Else
  loc_1248984:   If (var_96 = CInt(0)) Then
  loc_12489A3:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_12489D0:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_68, arg_10, "Name")
  loc_1248A02:       Proc_6_138_106E830(Me.DGHelp, global_68, KeyAscii, Me.FGPoint)
  loc_1248A10:     End If
  loc_1248A13:   Else
  loc_1248A1B:     If (var_96 = CInt(2)) Then
  loc_1248A3A:       If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_1248A67:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_72, arg_10, "Name")
  loc_1248A99:         Proc_6_138_106E830(Me.DGItemGroup, global_72, KeyAscii, Me.FGPoint, 0)
  loc_1248AA7:       End If
  loc_1248AAA:     Else
  loc_1248AB2:       If Not (var_96 = CInt(8)) Then
  loc_1248ABD:         If Not (var_96 = CInt(3)) Then
  loc_1248AC8:           If (var_96 = CInt(&HB)) Then
  loc_1248ACB:           End If
  loc_1248ACB:         End If
  loc_1248AE7:         If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_1248B14:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_76, arg_10, "Name")
  loc_1248B46:           Proc_6_138_106E830(Me.DGRest, global_76, KeyAscii, Me.FGPoint, 0)
  loc_1248B54:         End If
  loc_1248B57:       Else
  loc_1248B5F:         If (var_96 = CInt(&HF)) Then
  loc_1248B7E:           If (CBool(Me.DGAppDate.Visible) = &HFF) Then
  loc_1248BAB:             Proc_6_89_1470B00(Me.Txt, KeyAscii, global_92, arg_10, "Name")
  loc_1248BDD:             Proc_6_138_106E830(Me.DGAppDate, global_92, KeyAscii, Me.FGPoint, 0)
  loc_1248BEB:           End If
  loc_1248BEE:         Else
  loc_1248BF6:           If (var_96 = CInt(6)) Then
  loc_1248C15:             If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_1248C42:               Proc_6_89_1470B00(Me.Txt, KeyAscii, global_80, arg_10, "Name")
  loc_1248C5C:               Set var_A0 = Me.FGPoint
  loc_1248C74:               Proc_6_138_106E830(Me.DGItemCat, global_80, KeyAscii, var_A0, 0)
  loc_1248C82:             End If
  loc_1248C85:           Else
  loc_1248C8D:             If Not (var_96 = CInt(7)) Then
  loc_1248C98:               If (var_96 = CInt(&H1B)) Then
  loc_1248C9B:               End If
  loc_1248CA5:               Set var_9C = Me.Txt
  loc_1248CAB:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, 0)
  loc_1248CC6:               Proc_6_42_129B55C(var_A0, arg_10, 8, 2)
  loc_1248CD5:             Else
  loc_1248CDD:               If Not (var_96 = CInt(4)) Then
  loc_1248CE8:                 If Not (var_96 = CInt(5)) Then
  loc_1248CF3:                   If Not (var_96 = CInt(&HC)) Then
  loc_1248CFE:                     If Not (var_96 = CInt(&HD)) Then
  loc_1248D09:                       If Not (var_96 = CInt(&HE)) Then
  loc_1248D14:                         If (var_96 = CInt(&H10)) Then
  loc_1248D17:                         End If
  loc_1248D17:                       End If
  loc_1248D17:                     End If
  loc_1248D17:                   End If
  loc_1248D17:                 End If
  loc_1248D40:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_1248D50:                   Set var_9C = Me.Txt
  loc_1248D56:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_1248D5E:                   var_A0.Text = 0
  loc_1248D6D:                 Else
  loc_1248D96:                   If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_1248DA6:                     Set var_9C = Me.Txt
  loc_1248DAC:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_1248DB4:                     var_A0.Text = arg_10
  loc_1248DC0:                   End If
  loc_1248DC0:                 End If
  loc_1248DC2:                 arg_10 = 0
  loc_1248DC8:               Else
  loc_1248DD0:                 If (var_96 = CInt(&H12)) Then
  loc_1248DEF:                   If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_1248E01:                     var_AC = "Name"
  loc_1248E1C:                     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_88, arg_10)
  loc_1248E4E:                     Proc_6_138_106E830(Me.DGFinItem, global_88, KeyAscii, Me.FGPoint)
  loc_1248E5C:                   End If
  loc_1248E5C:                 End If
  loc_1248E5C:               End If
  loc_1248E5C:             End If
  loc_1248E5C:           End If
  loc_1248E5C:         End If
  loc_1248E5C:       End If
  loc_1248E5C:     End If
  loc_1248E5C:   End If
  loc_1248E5C: End If
  loc_1248E5C: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FCFDDC
  'Data Table: 53C1B4
  Dim var_86 As Integer
  Dim var_A4 As TextBox
  loc_FCFC1B: var_86 = KeyCode
  loc_FCFC26: If (var_86 = CInt(&HA)) Then
  loc_FCFC4C:   Set var_A0 = Me.Txt
  loc_FCFC52:   Call 0.Method_Txt_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_FCFC5A:   (CBool(Me.DGDispCode.Visible) = &HFF) = var_A4.Text
  loc_FCFC77:   If (var_86 And (var_A8 <> vbNullString)) Then
  loc_FCFC84:     var_A8 = "DispCode"
  loc_FCFC9F:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_96)
  loc_FCFCB9:     Set var_A0 = Me.FGPoint
  loc_FCFCD1:     Proc_6_138_106E830(Me.DGDispCode, global_96, KeyCode)
  loc_FCFCDF:   End If
  loc_FCFCE2: Else
  loc_FCFCEA:   If (var_86 = CInt(1)) Then
  loc_FCFD09:     If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_FCFD16:       var_A8 = "Name"
  loc_FCFD31:       Proc_6_80_FF1F20(Me.Txt, KeyCode, global_84, Shift)
  loc_FCFD63:       Proc_6_138_106E830(Me.DGUnit, global_84, KeyCode, Me.FGPoint)
  loc_FCFD71:     End If
  loc_FCFD74:   Else
  loc_FCFD7C:     If (var_86 = CInt(&H11)) Then
  loc_FCFD9A:       If (Me.FrmList.Visible = &HFF) Then
  loc_FCFDC9:         Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_116)
  loc_FCFDD9:       End If
  loc_FCFDD9:     End If
  loc_FCFDD9:   End If
  loc_FCFDD9: End If
  loc_FCFDD9: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4D80C
  'Data Table: 53C1B4
  loc_E4D7EA: Set var_88 = Me.Txt
  loc_E4D7F0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4D7FE: Proc_6_73_E23294(var_8C)
  loc_E4D80A: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '166E39C
  'Data Table: 53C1B4
  Dim var_86 As Integer
  Dim var_A0 As String
  Dim var_9C As Variant
  Dim var_90 As Variant
  Dim var_D0 As Variant
  Dim var_B0 As String
  Dim arg_10 As Integer
  Dim var_98 As Variant
  Dim var_C0 As Variant
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_E0 As Variant
  Dim var_124 As String
  Dim unk_53C1E2 As Connection15
  Dim var_94 As Variant
  Dim var_13C As TextBox
  Dim var_100 As Variant
  loc_166CC28: On Error Goto loc_166E358
  loc_166CC2E: var_86 = Cancel
  loc_166CC39: If (var_86 = CInt(9)) Then
  loc_166CC46:   Set var_8C = Me.Txt
  loc_166CC4C:   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166CC6C:   Set var_98 = Me.Txt
  loc_166CC72:   Call 0.Method_Txt_Validate0 (Cancel, var_9C)
  loc_166CC7A:   var_9C.Text = Proc_6_33_15125B8(var_90)
  loc_166CC9B:   Set var_8C = Me.Txt
  loc_166CCA1:   Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_166CCA9:   var_A0 = var_90.Text
  loc_166CCC0:   If (var_A0 = vbNullString) Then
  loc_166CCE4:     MsgBox("First Enter Sale Rate", &H40, "Validation", var_100, var_120)
  loc_166CCF6:     arg_10 = &HFF
  loc_166CD04:     Set var_8C = Me.Txt
  loc_166CD0A:     Call 0.Method_Txt_Validate0 (CInt(7), var_90)
  loc_166CD12:     var_90.SetFocus
  loc_166CD1E:     Exit Sub
  loc_166CD1F:   End If
  loc_166CD2D:   Set var_8C = Me.Txt
  loc_166CD33:   Call 0.Method_Txt_Validate0 (CInt(7), var_90, var_A0)
  loc_166CD3B:   arg_10 = var_90.Text
  loc_166CD56:   Set var_94 = Me.Txt
  loc_166CD5C:   Call 0.Method_Txt_Validate0 (CInt(9), var_98, var_124)
  loc_166CD64:   (var_A0 <> vbNullString) = var_98.Text
  loc_166CD84:   If (var_86 And (var_124 = vbNullString)) Then
  loc_166CDA8:     MsgBox("First Enter App. Date", &H40, "Validation", var_100, var_120)
  loc_166CDBA:     arg_10 = &HFF
  loc_166CDBD:     Exit Sub
  loc_166CDBE:   End If
  loc_166CDC1: Else
  loc_166CDC9:   If (var_86 = CInt(&HA)) Then
  loc_166CDCF:     Call Proc_44_53_12F346C(var_126)
  loc_166CDDA:     If (var_126 = &HFF) Then
  loc_166CDDF:       arg_10 = &HFF
  loc_166CDE2:       Exit Sub
  loc_166CDE3:     End If
  loc_166CDE6:   Else
  loc_166CDEE:     If Not (var_86 = CInt(7)) Then
  loc_166CDF9:       If (var_86 = CInt(&H1B)) Then
  loc_166CDFC:       End If
  loc_166CE06:       Set var_8C = Me.Txt
  loc_166CE0C:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166CE46:       Set var_94 = Me.Txt
  loc_166CE4C:       Call 0.Method_Txt_Validate0 (Cancel, var_98, CStr(Format(CVar(var_90), "0.00")), 1)
  loc_166CE54:       var_98.Text = 1
  loc_166CE71:     Else
  loc_166CE79:       If (var_86 = CInt(0)) Then
  loc_166CE7F:         Call Proc_44_53_12F346C(var_126, arg_10)
  loc_166CE8A:         If (var_126 = &HFF) Then
  loc_166CE8F:           arg_10 = &HFF
  loc_166CE92:           Exit Sub
  loc_166CE93:         End If
  loc_166CE9E:         Set var_8C = Me.Txt
  loc_166CEA4:         Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_166CEAC:         var_A0 = "Item Name"
  loc_166CECD:         If (Proc_6_27_EA61EC(var_90, var_A0) = 0) Then
  loc_166CEDB:           Set var_8C = Me.Txt
  loc_166CEE1:           Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_166CEE9:           var_90.SetFocus
  loc_166CEF7:           arg_10 = &HFF
  loc_166CEFA:           Exit Sub
  loc_166CEFB:         End If
  loc_166CF49:         Set var_8C = Me.Txt
  loc_166CF4F:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_166CF57:         arg_10 = var_90.Text
  loc_166CF6F:         If (arg_10 Or (var_A0 = vbNullString)) Then
  loc_166CF72:           Exit Sub
  loc_166CF73:         End If
  loc_166CFAE:         Set var_94 = Me.Txt
  loc_166CFB4:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166CFBC:         var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166CFEF:         var_90 = Me.Fields.Item("Code")
  loc_166D00D:         Set var_94 = Me.Txt
  loc_166D013:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D01B:         var_98.Tag = CStr(var_90.Value)
  loc_166D03C:         Set var_8C = Me.Txt
  loc_166D042:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_90)
  loc_166D06B:         If (Trim(CVar(var_90)) = vbNullString) Then
  loc_166D0CB:           Set var_94 = Me.Txt
  loc_166D0D1:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_98)
  loc_166D0D9:           var_98.Text = CStr(Val(CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("BarCode")))), 4))))
  loc_166D0F9:         End If
  loc_166D132:         Set var_94 = Me.Txt
  loc_166D138:         Call 0.Method_Txt_Validate0 (CInt(&H13), var_98)
  loc_166D140:         var_98.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("BarCode")))
  loc_166D16E:         var_90 = Me.Fields.Item("CommodityCode")
  loc_166D17F:         var_A0 = Proc_6_38_E69628(CVar(var_90))
  loc_166D18D:         Set var_94 = Me.Txt
  loc_166D193:         Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_166D19B:         var_98.Text = var_A0
  loc_166D1BA:         Set var_8C = Me.Txt
  loc_166D1C0:         Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_166D1C8:         var_C0 = CVar(var_90) 'Address
  loc_166D1E9:         If (Trim(var_C0) = vbNullString) Then
  loc_166D218:           Set var_8C = Me.Txt
  loc_166D21E:           Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "Select Max(Unit) From ItemMast Where Code='", var_C0, -1)
  loc_166D23F:           unk_53C1E2.Execute var_98 & var_A0 & "' And ItemType<>'Store'", 0, var_9C
  loc_166D24F:            = var_98.Item(arg_10)
  loc_166D257:            = var_9C.Value
  loc_166D272:           Set var_138 = Me.Txt
  loc_166D278:           Call 0.Method_Txt_Validate0 (CInt(1), var_13C)
  loc_166D280:           var_13C.Text = Proc_6_38_E69628(var_90.Tag.Fields)
  loc_166D2A8:         End If
  loc_166D2F6:         Set var_8C = Me.Txt
  loc_166D2FC:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D31C:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166D31F:           Exit Sub
  loc_166D320:         End If
  loc_166D32E:         Set var_8C = Me.Txt
  loc_166D334:         Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_166D33C:         var_A0 = var_90.Text
  loc_166D34E:         var_B0 = "Name"
  loc_166D365:         var_98 = Me.Fields.Item(var_B0)
  loc_166D389:         If CBool(CVar(var_A0) <> var_98.Value) Then
  loc_166D392:           Me.MoveFirst
  loc_166D3B6:           Set var_8C = Me.Txt
  loc_166D3BC:           Call 0.Method_Txt_Validate0 (CInt(1), var_90, var_A0, "Name ='")
  loc_166D3C4:           0 = var_90.Text
  loc_166D3DD:           Me.Find 1 & var_A0 & "'", var_B0, 
  loc_166D3F2:         End If
  loc_166D3F5:       Else
  loc_166D3FD:         If (var_86 = CInt(2)) Then
  loc_166D44E:           Set var_8C = Me.Txt
  loc_166D454:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D474:           If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166D477:             Exit Sub
  loc_166D478:           End If
  loc_166D4B3:           Set var_94 = Me.Txt
  loc_166D4B9:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D4C1:           var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166D512:           Set var_94 = Me.Txt
  loc_166D518:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D520:           var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_166D550:           var_90 = Me.Fields.Item("Type")
  loc_166D567:           global_56 = Proc_6_38_E69628(CVar(var_90))
  loc_166D577:         Else
  loc_166D57F:           If (var_86 = CInt(6)) Then
  loc_166D5D0:             Set var_8C = Me.Txt
  loc_166D5D6:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D5F6:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166D5F9:               Exit Sub
  loc_166D5FA:             End If
  loc_166D635:             Set var_94 = Me.Txt
  loc_166D63B:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D643:             var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166D676:             var_90 = Me.Fields.Item("Code")
  loc_166D694:             Set var_94 = Me.Txt
  loc_166D69A:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D6A2:             var_98.Tag = CStr(var_90.Value)
  loc_166D6BB:           Else
  loc_166D6C3:             If Not (var_86 = CInt(3)) Then
  loc_166D6CE:               If (var_86 = CInt(&HB)) Then
  loc_166D6D1:               End If
  loc_166D71F:               Set var_8C = Me.Txt
  loc_166D725:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D745:               If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166D755:                 Set var_8C = Me.Txt
  loc_166D75B:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D763:                 var_90.Text = vbNullString
  loc_166D77C:                 Set var_8C = Me.Txt
  loc_166D782:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D78A:                 var_90.Tag = vbNullString
  loc_166D796:                 Exit Sub
  loc_166D797:               End If
  loc_166D7D2:               Set var_94 = Me.Txt
  loc_166D7D8:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D7E0:               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166D813:               var_90 = Me.Fields.Item("Code")
  loc_166D831:               Set var_94 = Me.Txt
  loc_166D837:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D83F:               var_98.Tag = CStr(var_90.Value)
  loc_166D858:             Else
  loc_166D860:               If (var_86 = CInt(&HF)) Then
  loc_166D8B1:                 Set var_8C = Me.Txt
  loc_166D8B7:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D8D7:                 If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166D8E7:                   Set var_8C = Me.Txt
  loc_166D8ED:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D8F5:                   var_90.Text = vbNullString
  loc_166D90E:                   Set var_8C = Me.Txt
  loc_166D914:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166D91C:                   var_90.Tag = vbNullString
  loc_166D928:                   Exit Sub
  loc_166D929:                 End If
  loc_166D964:                 Set var_94 = Me.Txt
  loc_166D96A:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D972:                 var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166D9A5:                 var_90 = Me.Fields.Item("Code")
  loc_166D9C3:                 Set var_94 = Me.Txt
  loc_166D9C9:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166D9D1:                 var_98.Tag = CStr(var_90.Value)
  loc_166D9EA:               Else
  loc_166D9F2:                 If (var_86 = CInt(8)) Then
  loc_166DA43:                   Set var_8C = Me.Txt
  loc_166DA49:                   Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166DA69:                   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166DA6E:                     arg_10 = &HFF
  loc_166DA71:                     Exit Sub
  loc_166DA72:                   End If
  loc_166DAAD:                   Set var_94 = Me.Txt
  loc_166DAB3:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166DABB:                   var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166DB0C:                   Set var_94 = Me.Txt
  loc_166DB12:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166DB1A:                   var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_166DB3D:                   var_D0 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where Type IN ('Finish','Semi Finish') AND RESTCODE='"
  loc_166DB86:                   unk_53C1E2.Execute CStr(var_D0 & Me.Fields.Item("Code").Value & "' ORDER BY Name"), var_120, -1
  loc_166DB97:                   Set global_72 = var_94
  loc_166DBBD:                   CVarUnk
  loc_166DBC2:                   VerifyVarObj
  loc_166DBC8:                   Set var_8C = Me.DGItemGroup
  loc_166DBCE:                   LateIdStAd
  loc_166DC1B:                   var_E0 = "SELECT Code,Name,RestCode FROM ItemCatMast where (cattype is not NULL and cattype<>'')  AND RESTCODE='" & Me.Fields.Item("Code").Value 
  loc_166DC32:                   unk_53C1E2.Execute CStr(var_E0 & "' ORDER BY Name"), var_120, -1
  loc_166DC69:                   CVarUnk
  loc_166DC6E:                   VerifyVarObj
  loc_166DC74:                   Set var_8C = Me.DGItemCat
  loc_166DC7A:                   LateIdStAd
  loc_166DC8B:                   var_B0 = "DiscApp"
  loc_166DC9A:                   var_8C = Me.Fields
  loc_166DCA2:                   var_90 = var_8C.Item(var_B0)
  loc_166DCB3:                   var_A0 = Proc_6_38_E69628(CVar(var_90), var_8C, var_94, var_94)
  loc_166DCB9:                   global_120 = var_A0
  loc_166DCC9:                 Else
  loc_166DCD1:                   If (var_86 = CInt(1)) Then
  loc_166DCE7:                     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, Me.Txt)
  loc_166DCEF:                     global_72 = var_90.Text
  loc_166DD06:                     If (var_A0 = vbNullString) Then
  loc_166DD16:                       Set var_8C = Me.Txt
  loc_166DD1C:                       Call 0.Method_Txt_Validate0 (Cancel, var_90, vbNullString)
  loc_166DD24:                       var_90.Tag = var_94
  loc_166DD30:                       Exit Sub
  loc_166DD31:                     End If
  loc_166DD4F:                     Set var_8C = Me.Txt
  loc_166DD55:                     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0, "Name like '")
  loc_166DD5D:                     0 = var_90.Text
  loc_166DD76:                     Me.Find 1 & var_A0 & "*'", var_B0, arg_10
  loc_166DDD9:                     Set var_8C = Me.Txt
  loc_166DDDF:                     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166DDFF:                     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_90.Text = vbNullString)) Then
  loc_166DE0F:                       Set var_8C = Me.Txt
  loc_166DE15:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166DE1D:                       var_90.Text = vbNullString
  loc_166DE36:                       Set var_8C = Me.Txt
  loc_166DE3C:                       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166DE44:                       var_90.Tag = vbNullString
  loc_166DE50:                       Exit Sub
  loc_166DE51:                     End If
  loc_166DE68:                     If (Me.AbsolutePosition > 0) Then
  loc_166DEA6:                       Set var_94 = Me.Txt
  loc_166DEAC:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166DEB4:                       var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166DEE7:                       var_90 = Me.Fields.Item("Code")
  loc_166DF05:                       Set var_94 = Me.Txt
  loc_166DF0B:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166DF13:                       var_98.Tag = CStr(var_90.Value)
  loc_166DF29:                     End If
  loc_166DF2C:                   Else
  loc_166DF34:                     If Not (var_86 = CInt(4)) Then
  loc_166DF3F:                       If Not (var_86 = CInt(5)) Then
  loc_166DF4A:                         If (var_86 = CInt(&HC)) Then
  loc_166DF4D:                         End If
  loc_166DF4D:                       End If
  loc_166DF57:                       Set var_8C = Me.Txt
  loc_166DF5D:                       Call 0.Method_Txt_Validate0 (Cancel)
  loc_166DF98:                       If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_166DFA8:                         Set var_8C = Me.Txt
  loc_166DFAE:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166DFB6:                         var_90.Text = "Yes"
  loc_166DFC5:                       Else
  loc_166DFD2:                         Set var_8C = Me.Txt
  loc_166DFD8:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166DFE0:                         var_90.Text = "No"
  loc_166DFEC:                       End If
  loc_166DFEF:                     Else
  loc_166DFF7:                       If (var_86 = CInt(&HE)) Then
  loc_166E004:                         Set var_8C = Me.Txt
  loc_166E00A:                         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166E029:                         var_100 = Ucase(Left(CVar(var_90), 1))
  loc_166E045:                         If (var_100 = "N") Then
  loc_166E055:                           Set var_8C = Me.Txt
  loc_166E05B:                           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166E063:                           var_90.Text = "No"
  loc_166E072:                         Else
  loc_166E07F:                           Set var_8C = Me.Txt
  loc_166E085:                           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166E08D:                           var_90.Text = "Yes"
  loc_166E099:                         End If
  loc_166E09C:                       Else
  loc_166E0A4:                         If (var_86 = CInt(&H11)) Then
  loc_166E0BF:                           Set var_90 = Me.ListView.SelectedItem
  loc_166E0C5:                           var_A0 = var_90.Text
  loc_166E0D7:                           Set var_94 = Me.Txt
  loc_166E0DD:                           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166E0E5:                           var_98.Text = var_A0
  loc_166E0FE:                         Else
  loc_166E106:                           If (var_86 = CInt(&H12)) Then
  loc_166E156:                             Set var_8C = Me.Txt
  loc_166E15C:                             Call 0.Method_Txt_Validate0 (Cancel, var_90, var_A0)
  loc_166E164:                             ((Me.EOF = &HFF) Or (Me.BOF = &HFF)) = var_90.Text
  loc_166E17D:                             If (var_90 Or ((Me.RecordCount = 0) Or (var_A0 = vbNullString))) Then
  loc_166E18D:                               Set var_8C = Me.Txt
  loc_166E193:                               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166E19B:                               var_90.Text = vbNullString
  loc_166E1B4:                               Set var_8C = Me.Txt
  loc_166E1BA:                               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_166E1C2:                               var_90.Tag = vbNullString
  loc_166E1DB:                               Me.LblOutlet.Caption = "..."
  loc_166E1F0:                               Me.LblOutlet.Tag = vbNullString
  loc_166E1FB:                             Else
  loc_166E236:                               Set var_94 = Me.Txt
  loc_166E23C:                               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166E244:                               var_98.Text = CStr(Me.Fields.Item("Name").Value)
  loc_166E295:                               Set var_94 = Me.Txt
  loc_166E29B:                               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_166E2A3:                               var_98.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_166E2F4:                               Me.LblOutlet.Caption = CStr(Me.Fields.Item("Outlet").Value)
  loc_166E336:                               var_A0 = CStr(Me.Fields.Item("RestCode").Value)
  loc_166E343:                               Me.LblOutlet.Tag = var_A0
  loc_166E357:                             End If
  loc_166E357:                           End If
  loc_166E357:                         End If
  loc_166E357:                       End If
  loc_166E357:                     End If
  loc_166E357:                   End If
  loc_166E357:                 End If
  loc_166E357:               End If
  loc_166E357:             End If
  loc_166E357:           End If
  loc_166E357:         End If
  loc_166E357:       End If
  loc_166E357:     End If
  loc_166E357:   End If
  loc_166E357: End If
  loc_166E357: Exit Sub
  loc_166E358: ' Referenced from: 166CC28
  loc_166E360: Set var_8C = Err()
  loc_166E366: Call 0.Method_arg_2C (var_A0)
  loc_166E387: MsgBox(CVar(var_A0), &H40, "Information", var_100, var_120)
  loc_166E39A: Exit Sub
  loc_166E39B: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EF9E84
  'Data Table: 53C1B4
  loc_EF9DC4: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_EF9DC7:   Call DGUnit_UnknownEvent_9()
  loc_EF9DCC: End If
  loc_EF9DE8: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF9DEB:   Call DGHelp_UnknownEvent_9()
  loc_EF9DF0: End If
  loc_EF9E0C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF9E0F:   Call DGRest_UnknownEvent_9()
  loc_EF9E14: End If
  loc_EF9E30: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_EF9E33:   Call DGItemCat_UnknownEvent_9()
  loc_EF9E38: End If
  loc_EF9E54: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_EF9E57:   Call DGItemGroup_UnknownEvent_9()
  loc_EF9E5C: End If
  loc_EF9E78: If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_EF9E7B:   Call DGFinItem_UnknownEvent_9()
  loc_EF9E80: End If
  loc_EF9E80: Exit Sub
End Sub

Private Sub Command2a_UnknownEvent_9 'E1A068
  'Data Table: 53C1B4
  loc_E1A05C: Me.FrCopyConsumption.Visible = False
  loc_E1A064: Exit Sub
End Sub

Private Sub CmdSaveConsumption_UnknownEvent_9 '13374A8
  'Data Table: 53C1B4
  Dim var_90 As TextBox
  Dim var_A4 As Variant
  Dim var_D8 As Label
  Dim var_EC As Variant
  Dim var_10C As String
  Dim var_DC As String
  Dim unk_53C1E2 As Connection15
  Dim var_88 As Recordset15
  Dim var_8C As Fields15
  Dim var_FC As Variant
  Dim var_160 As TextBox
  Dim var_3F8 As Variant
  Dim var_6F8 As TextBox
  Dim var_728 As Variant
  loc_1336E6E: Set var_8C = Me.Txt
  loc_1336E74: Call 0.Method_CmdSaveConsumption_UnknownEvent_90 (CInt(&H12), var_90)
  loc_1336E7C: var_94 = var_90.Tag
  loc_1336EB1: var_EC = CVar(Me.LblOutlet.Tag) 'String
  loc_1336EE3: If CBool((Trim(CVar(var_94)) = vbNullString) Or (Trim(var_EC) = vbNullString)) Then
  loc_1336F07:   MsgBox("No Item Selected to Copy Consumption.", &H10, "Copy Conumption", var_D4, var_EC)
  loc_1336F17:   Exit Sub
  loc_1336F18: End If
  loc_1336F36: Set var_8C = Me.Txt
  loc_1336F3C: Call 0.Method_CmdSaveConsumption_UnknownEvent_90 (CInt(&H12), var_90, var_94, "Select * From BOM Where FinItem='")
  loc_1336F44: var_A4 = var_90.Tag
  loc_1336F4D: var_DC = -1 & var_94
  loc_1336F7D: unk_53C1E2.Execute Me.LblOutlet.Tag & "' And RestCode='" & Me.LblOutlet.Tag & "' Order By RawSno", var_160, 
  loc_1336F88: Set var_88 = var_160
  loc_1336FAE: var_164 = var_88.RecordCount
  loc_1336FBC: If (var_164 > 0) Then
  loc_1336FC8:   unk_53C1E2.BeginTrans var_164
  loc_1336FCD:   ' Referenced from: 133746F
  loc_1336FDC:   If Not(var_88.EOF) Then
  loc_1336FEC:     var_10C = "Insert Into BOM (Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,U_Name,U_EntDt,U_AE,Waste,Cost,Total,SavedForQty,AppDate,WtUnit,LogSite_Code,RestCode) Values("
  loc_133701F:     Proc_6_17_EAAE40(var_D4, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Site_Code")), var_10C, var_768)))
  loc_1337027:     var_EC = -1 & var_D4 
  loc_1337030:     var_FC = var_EC & "," 
  loc_1337042:     Set var_D8 = Me.Txt
  loc_1337048:     Call 0.Method_CmdSaveConsumption_UnknownEvent_90 (CInt(0), var_160, var_94)
  loc_1337050:     var_FC = var_160.Tag
  loc_1337066:     Proc_6_17_EAAE40(var_178, CVar(Proc_6_38_E69628(CVar(var_94))))
  loc_13370A1:     Proc_6_39_E7D3A0(var_1D0, CVar(var_88.Fields.Item("FinQty")))
  loc_13370E4:     Proc_6_17_EAAE40(var_248, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RawItem")))))
  loc_133711F:     Proc_6_39_E7D3A0(var_2B0, CVar(var_88.Fields.Item("RawQty")))
  loc_133715A:     Proc_6_39_E7D3A0(var_318, CVar(var_88.Fields.Item("RawSno")))
  loc_1337182:     Proc_6_17_EAAE40(var_378, CVar(Proc_6_38_E69628(MemVar_1F950C8)))
  loc_13371A2:     Proc_6_7_F26918(var_3C8, MemVar_1F950EC)
  loc_13371B3:     var_3F8 = var_76C & var_178 & "," & var_1D0 & "," & var_248 & "," & var_2B0 & "," & var_318 & "," & var_378 & "," & var_3C8 & ",'A'," 
  loc_13371DD:     Proc_6_39_E7D3A0(var_430, CVar(var_88.Fields.Item("Waste")))
  loc_1337218:     Proc_6_39_E7D3A0(var_498, CVar(var_88.Fields.Item("Cost")))
  loc_1337253:     Proc_6_39_E7D3A0(var_500, CVar(var_88.Fields.Item("Total")))
  loc_133728E:     Proc_6_39_E7D3A0(var_568, CVar(var_88.Fields.Item("SavedForQty")))
  loc_13372C9:     Proc_6_7_F26918(var_5D0, CVar(var_88.Fields.Item("AppDate")))
  loc_133730C:     Proc_6_17_EAAE40(var_648, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("WtUnit")))))
  loc_133734F:     Proc_6_17_EAAE40(var_6C0, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("LogSite_Code")))))
  loc_1337372:     Set var_6F4 = Me.Txt
  loc_1337378:     Call 0.Method_CmdSaveConsumption_UnknownEvent_90 (CInt(8), var_6F8)
  loc_133738E:     Proc_6_17_EAAE40(var_718, CVar(var_6F8.Tag))
  loc_1337396:     var_728 = var_3F8 & var_430 & "," & var_498 & "," & var_500 & "," & var_568 & "," & var_5D0 & "," & var_648 & "," & var_6C0 & "," & var_718 
  loc_13373AD:     unk_53C1E2.Execute CStr(var_728 & ")"), , 
  loc_133746A:     var_88.MoveNext
  loc_133746F:     GoTo loc_1336FCD
  loc_1337472:   End If
  loc_1337478:   unk_53C1E2.CommitTrans
  loc_133747D: End If
  loc_133747D: Call Proc_44_52_160B528()
  loc_133749E: Proc_5_0_1107AD0(&HFF, Me)
  loc_13374A6: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_9 'F3C154
  'Data Table: 53C1B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3C04B: Me.DGItemCat.Visible = False
  loc_F3C06A: If (Me.RecordCount > 0) Then
  loc_F3C0A9:   Set var_B4 = Me.Txt
  loc_F3C0AF:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3C0B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3C0EA:   var_B0 = Me.Fields.Item("Name")
  loc_F3C109:   Set var_B4 = Me.Txt
  loc_F3C10F:   Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6), var_B8)
  loc_F3C117:   var_B8.Text = CStr(var_B0.Value)
  loc_F3C12D: End If
  loc_F3C138: Set var_A8 = Me.Txt
  loc_F3C13E: Call 0.Method_DGItemCat_UnknownEvent_90 (CInt(6))
  loc_F3C146: var_B0.SetFocus
  loc_F3C152: Exit Sub
End Sub

Private Sub DGItemCat_UnknownEvent_1F 'E70C98
  'Data Table: 53C1B4
  loc_E70C56: Proc_6_153_E91D24(Me.DGItemCat, arg_14)
  loc_E70C6D: Set var_8C = Me.FGPoint
  loc_E70C89: Proc_6_138_106E830(Me.DGItemCat, global_80, CInt(6))
  loc_E70C97: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_9 'F46D34
  'Data Table: 53C1B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F46C2B: Me.DGItemGroup.Visible = False
  loc_F46C4A: If (Me.RecordCount > 0) Then
  loc_F46C89:   Set var_B4 = Me.Txt
  loc_F46C8F:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F46C97:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F46CCA:   var_B0 = Me.Fields.Item("Name")
  loc_F46CE9:   Set var_B4 = Me.Txt
  loc_F46CEF:   Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2), var_B8)
  loc_F46CF7:   var_B8.Text = CStr(var_B0.Value)
  loc_F46D0D: End If
  loc_F46D18: Set var_A8 = Me.Txt
  loc_F46D1E: Call 0.Method_DGItemGroup_UnknownEvent_90 (CInt(2))
  loc_F46D26: var_B0.SetFocus
  loc_F46D32: Exit Sub
End Sub

Private Sub DGItemGroup_UnknownEvent_1F 'E70D2C
  'Data Table: 53C1B4
  loc_E70CEA: Proc_6_153_E91D24(Me.DGItemGroup, arg_14)
  loc_E70D01: Set var_8C = Me.FGPoint
  loc_E70D1D: Proc_6_138_106E830(Me.DGItemGroup, global_72, CInt(2))
  loc_E70D2B: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_9 'F3F854
  'Data Table: 53C1B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3F74B: Me.DGUnit.Visible = False
  loc_F3F76A: If (Me.RecordCount > 0) Then
  loc_F3F7A9:   Set var_B4 = Me.Txt
  loc_F3F7AF:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3F7B7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3F7EA:   var_B0 = Me.Fields.Item("Name")
  loc_F3F809:   Set var_B4 = Me.Txt
  loc_F3F80F:   Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3F817:   var_B8.Text = CStr(var_B0.Value)
  loc_F3F82D: End If
  loc_F3F838: Set var_A8 = Me.Txt
  loc_F3F83E: Call 0.Method_DGUnit_UnknownEvent_90 (CInt(1))
  loc_F3F846: var_B0.SetFocus
  loc_F3F852: Exit Sub
End Sub

Private Sub DGUnit_UnknownEvent_1F 'E70EE8
  'Data Table: 53C1B4
  loc_E70EA6: Proc_6_153_E91D24(Me.DGUnit, arg_14)
  loc_E70EBD: Set var_8C = Me.FGPoint
  loc_E70ED9: Proc_6_138_106E830(Me.DGUnit, global_84, CInt(1))
  loc_E70EE7: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'F9EEEC
  'Data Table: 53C1B4
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_D0 As TextBox
  loc_F9ED8F: Me.DGRest.Visible = False
  loc_F9EDAE: If (Me.RecordCount > 0) Then
  loc_F9EE00:   Set var_CC = Me.Txt
  loc_F9EE06:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)), var_D0)
  loc_F9EE0E:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F9EE66:   Set var_B4 = Me.DGRest
  loc_F9EE7D:   Set var_CC = Me.Txt
  loc_F9EE83:   Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_F9EE8B:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F9EEAB: End If
  loc_F9EEC9: Set var_B0 = Me.Txt
  loc_F9EECF: Call 0.Method_DGRest_UnknownEvent_90 (CInt(CStr(Me.DGRest.Tag)))
  loc_F9EED7: var_B4.SetFocus
  loc_F9EEEB: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9CD58
  'Data Table: 53C1B4
  loc_E9CCF6: Proc_6_153_E91D24(Me.DGRest, arg_14)
  loc_E9CD20: Set var_A8 = Me.FGPoint
  loc_E9CD41: Proc_6_138_106E830(Me.DGRest, global_76, CInt(CStr(Me.DGRest.Tag)))
  loc_E9CD57: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_9 'F3A5D4
  'Data Table: 53C1B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A4CB: Me.DGHelp.Visible = False
  loc_F3A4EA: If (Me.RecordCount > 0) Then
  loc_F3A529:   Set var_B4 = Me.Txt
  loc_F3A52F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3A537:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3A56A:   var_B0 = Me.Fields.Item("Name")
  loc_F3A589:   Set var_B4 = Me.Txt
  loc_F3A58F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3A597:   var_B8.Text = CStr(var_B0.Value)
  loc_F3A5AD: End If
  loc_F3A5B8: Set var_A8 = Me.Txt
  loc_F3A5BE: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F3A5C6: var_B0.SetFocus
  loc_F3A5D2: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'E70ADC
  'Data Table: 53C1B4
  loc_E70A9A: Proc_6_153_E91D24(Me.DGHelp, arg_14)
  loc_E70AB1: Set var_8C = Me.FGPoint
  loc_E70ACD: Proc_6_138_106E830(Me.DGHelp, global_68, CInt(0))
  loc_E70ADB: Exit Sub
End Sub

Private Sub DGFinItem_UnknownEvent_9 'F45F74
  'Data Table: 53C1B4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F45E6B: Me.DGFinItem.Visible = False
  loc_F45E8A: If (Me.RecordCount > 0) Then
  loc_F45EC9:   Set var_B4 = Me.Txt
  loc_F45ECF:   Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H12), var_B8)
  loc_F45ED7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F45F0A:   var_B0 = Me.Fields.Item("Name")
  loc_F45F29:   Set var_B4 = Me.Txt
  loc_F45F2F:   Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H12), var_B8)
  loc_F45F37:   var_B8.Text = CStr(var_B0.Value)
  loc_F45F4D: End If
  loc_F45F58: Set var_A8 = Me.Txt
  loc_F45F5E: Call 0.Method_DGFinItem_UnknownEvent_90 (CInt(&H12))
  loc_F45F66: var_B0.SetFocus
  loc_F45F72: Exit Sub
End Sub

Private Sub DGFinItem_UnknownEvent_1F 'E710A4
  'Data Table: 53C1B4
  loc_E71062: Proc_6_153_E91D24(Me.DGFinItem, arg_14)
  loc_E71079: Set var_8C = Me.FGPoint
  loc_E71095: Proc_6_138_106E830(Me.DGFinItem, global_88, CInt(&H12))
  loc_E710A3: Exit Sub
End Sub

Private Sub CmdCopyConsumption_UnknownEvent_9 'F17788
  'Data Table: 53C1B4
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_88 As Variant
  loc_F17693: Me.Requery -1
  loc_F176A6: Set var_88 = Me.Txt
  loc_F176AC: Call 0.Method_CmdCopyConsumption_UnknownEvent_90 (CInt(&H12), var_8C)
  loc_F176B4: var_8C.Text = vbNullString
  loc_F176CE: Set var_88 = Me.Txt
  loc_F176D4: Call 0.Method_CmdCopyConsumption_UnknownEvent_90 (CInt(&H12), var_8C)
  loc_F176DC: var_8C.Tag = vbNullString
  loc_F176F5: Me.LblOutlet.Caption = "..."
  loc_F17718: If (Me.FrCopyConsumption.Visible = 0) Then
  loc_F17727:   Me.FrCopyConsumption.Visible = True
  loc_F1772F: End If
  loc_F1773D: Set var_88 = Me.Txt
  loc_F17743: Call 0.Method_CmdCopyConsumption_UnknownEvent_90 (CInt(&H12), var_8C)
  loc_F1775D: If (var_8C.Enabled = &HFF) Then
  loc_F1776B:   Set var_88 = Me.Txt
  loc_F17771:   Call 0.Method_CmdCopyConsumption_UnknownEvent_90 (CInt(&H12))
  loc_F17779:   var_8C.SetFocus
  loc_F17785: End If
  loc_F17785: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '10989E4
  'Data Table: 53C1B4
  Dim var_88 As Variant
  Dim var_90 As TextBox
  loc_1098730: On Error Goto loc_109899F
  loc_1098740: Me.LblUser.Caption = vbNullString
  loc_1098755: Me.LblLDt.Caption = vbNullString
  loc_109875D: Call Proc_44_51_F5FF88()
  loc_109877D: If (Me.Check1.Value = 1) Then
  loc_1098780:   Call Proc_44_52_160B528()
  loc_1098785: End If
  loc_1098793: Set var_88 = Me.Txt
  loc_1098799: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HA), var_90)
  loc_10987A1: var_90.Text = vbNullString
  loc_10987BB: Set var_88 = Me.Txt
  loc_10987C1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H13), var_90)
  loc_10987C9: var_90.Text = vbNullString
  loc_10987E3: Set var_88 = Me.Txt
  loc_10987E9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1C), var_90)
  loc_10987F1: var_90.Text = vbNullString
  loc_109880B: Set var_88 = Me.Txt
  loc_1098811: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_1098819: var_90.Text = vbNullString
  loc_1098833: Set var_88 = Me.Txt
  loc_1098839: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_1098841: var_90.Tag = vbNullString
  loc_109885B: Set var_88 = Me.Txt
  loc_1098861: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(7), var_90)
  loc_1098869: var_90.Text = vbNullString
  loc_1098883: Set var_88 = Me.Txt
  loc_1098889: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1B), var_90)
  loc_1098891: var_90.Text = vbNullString
  loc_10988AB: Set var_88 = Me.Txt
  loc_10988B1: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H11), var_90)
  loc_10988B9: var_90.Text = "Other"
  loc_10988D3: Set var_88 = Me.Txt
  loc_10988D9: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HE), var_90)
  loc_1098910: Call Proc_44_50_FB3DBC(Proc_5_1_100EC1C("ADD", Me))
  loc_1098929: Set var_88 = Me.Txt
  loc_109892F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_90)
  loc_1098937: var_94 = "Yes"
  loc_109894E: If (var_94 = vbNullString) Then
  loc_109895C:   Set var_88 = Me.Txt
  loc_1098962:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_90)
  loc_109896A:   var_90.SetFocus
  loc_1098979: Else
  loc_1098984:   Set var_88 = Me.Txt
  loc_109898A:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_90)
  loc_1098992:   var_90.SetFocus
  loc_109899E: End If
  loc_109899E: Exit Sub
  loc_109899F: ' Referenced from: 1098730
  loc_10989A7: Set var_88 = Err()
  loc_10989AD: Call 0.Method_arg_2C (var_94)
  loc_10989CE: MsgBox(CVar(var_94), &H40, "Information", var_E4, var_104)
  loc_10989E1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EBDA00
  'Data Table: 53C1B4
  loc_EBD96C: On Error Goto loc_EBD9F7
  loc_EBD9A6: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_EBD9B5:   Set var_110 = Me
  loc_EBD9CC:   Call Proc_44_50_FB3DBC(Proc_5_1_100EC1C("INI", var_110))
  loc_EBD9D7:   Call Proc_44_52_160B528(global_64)
  loc_EBD9DF: Else
  loc_EBD9E5:   Call 0.Method_arg_1E8 (var_110)
  loc_EBD9ED:   Call var_110.SetFocus
  loc_EBD9F6: End If
  loc_EBD9F6: Exit Sub
  loc_EBD9F7: ' Referenced from: EBD96C
  loc_EBD9F7: Proc_6_60_E63754()
  loc_EBD9FC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '118EBAC
  'Data Table: 53C1B4
  Dim Me As Recordset15
  Dim var_9C As Fields15
  Dim var_E8 As String
  Dim var_96 As Integer
  Dim unk_53C1E2 As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_118E7CC: On Error Goto loc_118EB52
  loc_118E7DD: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_118E7E0:   Exit Sub
  loc_118E7E1: End If
  loc_118E813: var_D4 = "KOT"
  loc_118E82C: var_B8 = "ITEM+ITEMRESTCODE"
  loc_118E85B: If (Proc_6_108_101061C(MemVar_1F95044, "KOT", var_B8, CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_118E85E:   Exit Sub
  loc_118E85F: End If
  loc_118E891: var_D4 = "STOCK"
  loc_118E8AA: var_B8 = "ITEM+ITEMRESTCODE"
  loc_118E8D9: If (Proc_6_108_101061C(MemVar_1F95044, "STOCK", var_B8, CStr(Me.Fields.Item("Code").Value), 0) = 0) Then
  loc_118E8DC:   Exit Sub
  loc_118E8DD: End If
  loc_118E90F: var_D4 = "Consumption"
  loc_118E928: var_B8 = "FINITEM+RESTCODE"
  loc_118E957: If (Proc_6_108_101061C(MemVar_1F95044, "BOM", var_B8, CStr(Me.Fields.Item("Code").Value), 0, var_D4) = 0) Then
  loc_118E95A:   Exit Sub
  loc_118E95B: End If
  loc_118E992: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_118E997:   var_96 = 0
  loc_118E9A3:   unk_53C1E2.BeginTrans var_D0
  loc_118E9AA:   var_96 = &HFF
  loc_118E9BE:   var_94 = Me.Bookmark 'Variant
  loc_118E9CF:   var_E8 = "Delete From ItemMast Where Code+RestCode='"
  loc_118EA18:   unk_53C1E2.Execute CStr("Confirmation" & Me.Fields.Item("Code").Value & "'"), var_138, -1
  loc_118EA41:   var_E8 = "Delete From ItemRate Where ItemCode+RestCode='"
  loc_118EA7C:   var_118 = "Confirmation" & Me.Fields.Item("Code").Value & "'" 
  loc_118EA80:   var_B4 = CStr(var_118)
  loc_118EA8A:   unk_53C1E2.Execute var_B4, var_138, -1
  loc_118EAAC:   unk_53C1E2.CommitTrans
  loc_118EAB3:   var_96 = 0
  loc_118EAC1:   Me.Requery -1
  loc_118EAD1:   Me.Requery -1
  loc_118EAF1:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_118EAFE:     Me.Bookmark = var_94
  loc_118EB06:   Else
  loc_118EB1A:     If (Me.EOF = 0) Then
  loc_118EB23:       Me.MoveLast
  loc_118EB28:     End If
  loc_118EB28:   End If
  loc_118EB28:   Call Proc_44_52_160B528(var_96, var_13C, var_13C, var_96, var_96)
  loc_118EB49:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_118EB51: End If
  loc_118EB51: Exit Sub
  loc_118EB52: ' Referenced from: 118E7CC
  loc_118EB58: If (var_96 = &HFF) Then
  loc_118EB61:   unk_53C1E2.RollbackTrans
  loc_118EB66: End If
  loc_118EB6E: Set var_9C = Err()
  loc_118EB74: Call 0.Method_arg_2C (var_B4, 0, var_D4)
  loc_118EB95: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_118EBA8: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FDCF70
  'Data Table: 53C1B4
  Dim Me As Variant
  Dim var_98 As TextBox
  Dim var_90 As Label
  loc_FDCDA0: On Error Goto loc_FDCF2C
  loc_FDCDB1: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_FDCDB4:   Exit Sub
  loc_FDCDB5: End If
  loc_FDCDCC: If (Me.RecordCount > 0) Then
  loc_FDCDF2:   Call Proc_44_50_FB3DBC(Proc_5_1_100EC1C("EDIT", Me))
  loc_FDCE0B:   Set var_90 = Me.Txt
  loc_FDCE11:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&HA), var_98)
  loc_FDCE19:   var_8C = var_98.Text
  loc_FDCE40:   Set var_90 = Me.Txt
  loc_FDCE46:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(8), var_98, 0)
  loc_FDCE4E:   var_98.Enabled = CInt(var_8C)
  loc_FDCE67:   Set var_90 = Me.Txt
  loc_FDCE6D:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(9), var_98)
  loc_FDCE75:   var_98.Enabled = False
  loc_FDCE8E:   Set var_90 = Me.Txt
  loc_FDCE94:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FDCE9C:   var_98.Enabled = False
  loc_FDCEB3:   Set var_90 = Me.Txt
  loc_FDCEB9:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_FDCEC1:   var_98.SetFocus
  loc_FDCED0: Else
  loc_FDCEF1:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FDCF01: End If
  loc_FDCF0E: Me.LblUser.Caption = vbNullString
  loc_FDCF23: Me.LblLDt.Caption = vbNullString
  loc_FDCF2B: Exit Sub
  loc_FDCF2C: ' Referenced from: FDCDA0
  loc_FDCF34: Set var_90 = Err()
  loc_FDCF3A: Call 0.Method_arg_2C (var_8C)
  loc_FDCF5B: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_FDCF6E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E19A78
  'Data Table: 53C1B4
  loc_E19A6D: Me.Global.Unload Me
  loc_E19A75: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'FA7424
  'Data Table: 53C1B4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_108 As Variant
  Dim var_154 As Variant
  Dim var_A8 As Variant
  loc_FA72AC: On Error Goto loc_FA73BE
  loc_FA72B8: var_88 = Me.RecordCount
  loc_FA72C6: If (var_88 <= 0) Then
  loc_FA72E4:   var_A8 = "Records Not Present For Searching."
  loc_FA72EA:   MsgBox(var_A8, &H40, "Information", var_E8, var_108)
  loc_FA72FA:   Exit Sub
  loc_FA72FB: End If
  loc_FA7306: If (global_52 = "Banquet") Then
  loc_FA7310:   var_10C = "SELECT I.Code as SearchCode,I.Name,I.Unit,convert(varchar(8),I.Dispcode,103),convert(varchar(50),I.SaleRate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Where I.LOGSITE_CODE IN ('HO','" & MemVar_1F95078
  loc_FA7325:   MemVar_1F950E4 = var_10C & "') AND I.RestCode='" & MemVar_1F95078 & "BANQ' and IG.Type IN ('Finish')  And I.DispCode<>9999 Order by I.Name"
  loc_FA7335: Else
  loc_FA7335:   var_B8 = "SELECT I.Code+I.RestCode as SearchCode,I.Name,I.CommodityCode HSNCode,I.Unit,IG.Name as ItemGrpName,IC.Name As ItemCategory,convert(varchar(8),I.Dispcode,103) as Disp,Depart.Name as Restaurant,Rate=convert(varchar(50),R.Rate,103),Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END ,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,Active=I.ActiveYN,Kitchen=D.Name,Type=I.NType FROM ((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code)  left join depart on I.restcode=depart.code left join depart D on I.Kitchen=D.code left join (Select itemcode,RestCode,Rate from itemrate inner join (Select ItemCode Itemcode1,RestCode RestCode1,Max(Appdate) as Appdate1 From ItemRate Where AppDate<="
  loc_FA7345:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_FA7351:   var_D8 = " And IsNull(Party,'')='' Group By ItemCode,RestCode) Q On Appdate=Q.Appdate1 And itemcode=Q.itemcode1 And RestCode=Q.RestCode1)R on I.code=R.Itemcode And I.RestCode=R.RestCode "
  loc_FA7356:   var_E8 = "Information" & var_A8 & var_D8 
  loc_FA735F:   var_108 = var_E8 & " Where I.LOGSITE_CODE IN ('HO','" 
  loc_FA7372:   var_154 = var_108 & CVar(MemVar_1F95078) & "') AND Depart.RestType<>'Banquet' And I.ItemType<>'Store' And I.DispCode<>9999 Order by I.Name" 
  loc_FA7377:   MemVar_1F950E4 = CStr(var_154)
  loc_FA738A: End If
  loc_FA738D: var_10C = "3000,1500,800,2500,2500,500,2000,500,600,600,500,1800,1800"
  loc_FA7393: Proc_6_126_F1C850(var_10C, MemVar_1F950E4)
  loc_FA73A1: MemVar_1F95120 = Me
  loc_FA73B8: Call 0.Method_arg_2B0 (1, "Information")
  loc_FA73BD: Exit Sub
  loc_FA73BE: ' Referenced from: FA72AC
  loc_FA73C6: Set var_158 = Err()
  loc_FA73CC: Call 0.Method_arg_1C (var_88)
  loc_FA73DD: If (var_88 <> 0) Then
  loc_FA73E8:   Set var_158 = Err()
  loc_FA73EE:   Call 0.Method_arg_2C (var_10C)
  loc_FA740F:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_FA7422: End If
  loc_FA7422: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E33FC8
  'Data Table: 53C1B4
  loc_E33FB8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33FC0: Call Proc_44_52_160B528(global_64)
  loc_E33FC5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E33EA8
  'Data Table: 53C1B4
  loc_E33E98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33EA0: Call Proc_44_52_160B528(global_64)
  loc_E33EA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E33F08
  'Data Table: 53C1B4
  loc_E33EF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33F00: Call Proc_44_52_160B528(global_64)
  loc_E33F05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E33F68
  'Data Table: 53C1B4
  loc_E33F58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E33F60: Call Proc_44_52_160B528(global_64)
  loc_E33F65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'EB3204
  'Data Table: 53C1B4
  Dim var_90 As Variant
  Dim var_88 As Variant
  loc_EB3173: Set var_90 = Me.LblFormCaption
  loc_EB31A2: Me.Frame1.Top = (Me.LblFormCaption.Top + var_90.Height)
  loc_EB31BF: Me.Frame1.Left = CDbl(900)
  loc_EB31D3: Me.Frame1.Visible = True
  loc_EB31E6: Set var_88 = Me.Txt
  loc_EB31EC: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&HB))
  loc_EB31F4: var_90.SetFocus
  loc_EB3200: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E644C8
  'Data Table: 53C1B4
  Dim Me As Recordset15
  loc_E6447F: Me.Requery -1
  loc_E6448F: Me.Requery -1
  loc_E6449F: Me.Requery -1
  loc_E644AF: Me.Requery -1
  loc_E644BF: Me.Requery -1
  loc_E644C4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '16F1D9C
  'Data Table: 53C1B4
  Dim var_C0 As TextBox
  Dim var_CC As Double
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_FC As Variant
  Dim var_DC As Variant
  Dim var_AC As String
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim unk_53C1E2 As Connection15
  Dim var_11C As Variant
  Dim var_13C As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_B8 As String
  Dim var_8C As Recordset15
  Dim var_EC As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_1F8 As TextBox
  Dim var_20C As TextBox
  Dim var_220 As TextBox
  Dim var_304 As TextBox
  Dim var_4C0 As TextBox
  Dim var_50C As TextBox
  Dim var_558 As TextBox
  Dim var_5A4 As TextBox
  Dim var_600 As Variant
  Dim var_760 As Variant
  Dim var_1D4 As String
  Dim var_1EC As String
  Dim var_218 As String
  Dim var_1D0 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_2AC As Variant
  Dim var_3A8 As Variant
  Dim var_400 As Variant
  Dim var_478 As Variant
  Dim var_530 As Variant
  Dim var_57C As Variant
  Dim var_5E8 As Variant
  Dim var_640 As Variant
  Dim var_698 As Variant
  Dim var_6F0 As Variant
  Dim var_748 As Variant
  Dim var_7A0 As Variant
  Dim var_830 As Variant
  Dim var_850 As Variant
  Dim var_880 As Double
  Dim var_1FC As String
  Dim var_29C As Variant
  Dim var_7A8 As TextBox
  Dim var_610 As Variant
  Dim var_668 As Variant
  Dim var_6C0 As Variant
  Dim var_718 As Variant
  Dim var_770 As Variant
  Dim var_7C8 As Variant
  Dim var_820 As Variant
  Dim var_C4 As String
  Dim var_A8 As Recordset15
  Dim var_BC As Field20
  loc_16F04AC: On Error Goto loc_16F1D47
  loc_16F04B3: var_86 = CByte(0) 'Byte
  loc_16F04C2: Set var_A0 = Me.Txt
  loc_16F04C8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_16F04F1: If (Proc_183_19_E8E68C(var_A4, "Name") = 0) Then
  loc_16F04FB:   Call Txt_GotFocus(CInt(0))
  loc_16F0500:   Exit Sub
  loc_16F0501: End If
  loc_16F050C: Set var_A0 = Me.Txt
  loc_16F0512: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4)
  loc_16F053B: If (Proc_183_19_E8E68C(var_A4, "Unit") = 0) Then
  loc_16F0545:   Call Txt_GotFocus(CInt(1))
  loc_16F054A:   Exit Sub
  loc_16F054B: End If
  loc_16F0556: Set var_A0 = Me.Txt
  loc_16F055C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_A4)
  loc_16F0585: If (Proc_183_19_E8E68C(var_A4, "Item Group Name") = 0) Then
  loc_16F058F:   Call Txt_GotFocus(CInt(2))
  loc_16F0594:   Exit Sub
  loc_16F0595: End If
  loc_16F05A0: Set var_A0 = Me.Txt
  loc_16F05A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_A4)
  loc_16F05CF: If (Proc_183_19_E8E68C(var_A4, "Item Category") = 0) Then
  loc_16F05D9:   Call Txt_GotFocus(CInt(6))
  loc_16F05DE:   Exit Sub
  loc_16F05DF: End If
  loc_16F05EA: Set var_A0 = Me.Txt
  loc_16F05F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4)
  loc_16F0619: If (Proc_183_19_E8E68C(var_A4, "Restaurant") = 0) Then
  loc_16F0623:   Call Txt_GotFocus(CInt(8))
  loc_16F0628:   Exit Sub
  loc_16F0629: End If
  loc_16F0634: Set var_A0 = Me.Txt
  loc_16F063A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_A4)
  loc_16F0663: If (Proc_183_19_E8E68C(var_A4, "Kitchen") = 0) Then
  loc_16F066D:   Call Txt_GotFocus(CInt(3))
  loc_16F0672:   Exit Sub
  loc_16F0673: End If
  loc_16F067E: Set var_A0 = Me.Txt
  loc_16F0684: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_A4)
  loc_16F068C: var_AC = "Service Charge"
  loc_16F06AD: If (Proc_183_19_E8E68C(var_A4, var_AC) = 0) Then
  loc_16F06B7:   Call Txt_GotFocus(CInt(&HC))
  loc_16F06BC:   Exit Sub
  loc_16F06BD: End If
  loc_16F06CB: Set var_BC = Me.Txt
  loc_16F06D1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_C0)
  loc_16F06E6: var_CC = Val(var_C0.Text)
  loc_16F06F7: Set var_A0 = Me.Txt
  loc_16F06FD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_A4, var_AC)
  loc_16F0725: Set var_A8 = Me.Txt
  loc_16F072B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B4, var_B8)
  loc_16F0733: (CDbl(Val(var_AC)) <> CDbl(0)) = var_B4.Text
  loc_16F075F: If (var_A4 And (CDbl(Val(var_B8)) > CDbl(var_A4.Text))) Then
  loc_16F0768:   Call 0.Method_arg_50 (var_AC)
  loc_16F0789:   MsgBox("Sale Rate Greater than M.R.P.", &H10, CVar(var_AC), var_11C, var_13C)
  loc_16F07A4:   Set var_A0 = Me.Txt
  loc_16F07AA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7))
  loc_16F07B2:   var_A4.SetFocus
  loc_16F07BE:   Exit Sub
  loc_16F07BF: End If
  loc_16F07C2: Call Proc_44_53_12F346C(var_AE)
  loc_16F07CD: If (var_AE = &HFF) Then
  loc_16F07D0:   Exit Sub
  loc_16F07D1: End If
  loc_16F07D5: Set var_A0 = Me.TopCtrl1
  loc_16F07DB: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A4)
  loc_16F07F4: If (CStr() = "Add") Then
  loc_16F0805:   Set var_A0 = Me.Txt
  loc_16F080B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_16F081E:   global_128 = var_A4.Tag
  loc_16F082F: Else
  loc_16F084C:   var_A4 = Me.Fields.Item("ItemCode")
  loc_16F0854:   var_EC = var_A4.Value
  loc_16F085D:   var_AC = CStr(var_EC)
  loc_16F0863:   global_128 = var_AC
  loc_16F0874: End If
  loc_16F087D: unk_53C1E2.BeginTrans var_140
  loc_16F0886: var_86 = CByte(1) 'Byte
  loc_16F08A7: Proc_6_7_F26918(var_EC, MemVar_1F950EC, "Select Rate,MRP,Appdate From ItemRate Where AppDate<=")
  loc_16F08CE: var_170 = var_1D0 & var_EC & " And ItemCode='" & CVar(global_128) & "' And RestCode='" 
  loc_16F08E0: Set var_A0 = Me.Txt
  loc_16F08E6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4, var_AC)
  loc_16F08EE: var_170 = var_A4.Tag
  loc_16F08F9: var_190 = -1 & CVar(var_AC) 
  loc_16F0910: unk_53C1E2.Execute CStr(var_190 & "' And IsNull(Party,'')='' Order By AppDate Desc "), var_A8, 
  loc_16F091B: Set var_8C = var_A8
  loc_16F0953: If (var_8C.RecordCount > 0) Then
  loc_16F09A2:   var_94 = Val(CStr(Format(CVar(var_8C.Fields.Item("Rate")), "0.00")))
  loc_16F09CB:   var_A4 = var_8C.Fields.Item("MRP")
  loc_16F09F7:   var_AC = CStr(Format(CVar(var_A4), "0.00"))
  loc_16F0A00:   var_9C = Val(var_AC)
  loc_16F0A15: Else
  loc_16F0A23:   Set var_A0 = Me.Txt
  loc_16F0A29:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A4, var_AC, var_9C, 1)
  loc_16F0A31:   1 = var_A4.Text
  loc_16F0A59:   Set var_A0 = Me.Txt
  loc_16F0A5F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_A4, var_AC, Val(var_AC))
  loc_16F0A67:   var_94 = var_A4.Text
  loc_16F0A74:   var_9C = Val(var_AC)
  loc_16F0A81: End If
  loc_16F0A85: Set var_A0 = Me.TopCtrl1
  loc_16F0A8B: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_16F0AA4: If (CStr(1) = "Add") Then
  loc_16F0AB5:   Set var_A0 = Me.Txt
  loc_16F0ABB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4)
  loc_16F0AD6:   Set var_A8 = Me.Txt
  loc_16F0ADC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B4)
  loc_16F0AF7:   Set var_BC = Me.Txt
  loc_16F0AFD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_C0)
  loc_16F0B18:   Set var_1F4 = Me.Txt
  loc_16F0B1E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1F8)
  loc_16F0B39:   Set var_208 = Me.Txt
  loc_16F0B3F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C)
  loc_16F0B5A:   Set var_21C = Me.Txt
  loc_16F0B60:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_220)
  loc_16F0B78:   Set var_230 = Me.Txt
  loc_16F0B7E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_234)
  loc_16F0B92:   var_FC = Left(CVar(var_234), 1)
  loc_16F0BA2:   Set var_238 = Me.Txt
  loc_16F0BA8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_23C)
  loc_16F0BCF:   Proc_6_7_F26918(var_29C, Date)
  loc_16F0BE2:   Set var_300 = Me.Txt
  loc_16F0BE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_304)
  loc_16F0C00:   Set var_3CC = Me.Txt
  loc_16F0C06:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_3D0)
  loc_16F0C2A:   Set var_424 = Me.Txt
  loc_16F0C30:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_428)
  loc_16F0C57:   Set var_4BC = Me.Txt
  loc_16F0C5D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_4C0)
  loc_16F0C78:   Set var_508 = Me.Txt
  loc_16F0C7E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_50C)
  loc_16F0C99:   Set var_554 = Me.Txt
  loc_16F0C9F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_558)
  loc_16F0CBA:   Set var_5A0 = Me.Txt
  loc_16F0CC0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_5A4)
  loc_16F0CD8:   Set var_5EC = Me.Txt
  loc_16F0CDE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_5F0)
  loc_16F0CED:   Proc_6_17_EAAE40(var_610, CVar(var_5F0))
  loc_16F0CFD:   Set var_644 = Me.Txt
  loc_16F0D03:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_648)
  loc_16F0D12:   Proc_6_17_EAAE40(var_668, CVar(var_648))
  loc_16F0D22:   Set var_69C = Me.Txt
  loc_16F0D28:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_6A0)
  loc_16F0D37:   Proc_6_17_EAAE40(var_6C0, CVar(var_6A0))
  loc_16F0D47:   Set var_6F4 = Me.Txt
  loc_16F0D4D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_6F8)
  loc_16F0D5C:   Proc_6_17_EAAE40(var_718, CVar(var_6F8))
  loc_16F0D6C:   Set var_74C = Me.Txt
  loc_16F0D72:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_750)
  loc_16F0D81:   Proc_6_17_EAAE40(var_770, CVar(var_750))
  loc_16F0D91:   Set var_7A4 = Me.Txt
  loc_16F0D97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_7A8)
  loc_16F0DA6:   Proc_6_17_EAAE40(var_7C8, CVar(var_7A8))
  loc_16F0DB6:   Set var_7FC = Me.Txt
  loc_16F0DBC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_800)
  loc_16F0DCB:   Proc_6_17_EAAE40(var_820, CVar(var_800))
  loc_16F0DE4:   var_AC = "Insert Into ItemMast (Code,Name,RestCode,DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,MRP,SChrgApp,RateIncTax,LOGSITE_CODE,ActiveYN,NType,BarCode,CommodityCode,LabelName,LabelQty,LabelRemark1,LabelRemark2,LabelRemark3,LabelRemark4,LabelRemark5) " & " Values ('"
  loc_16F0E11:   var_1EC = var_AC & global_128 & "','" & var_A4.Text & "','" & var_B4.Tag & "',"
  loc_16F0E5F:   var_1B0 = CVar(var_1EC & var_C0.Text & ",'" & var_1F8.Text & "','" & var_20C.Tag & "','" & var_220.Tag & "','") & var_FC & "','" & Left(CVar(var_23C), 1) 
  loc_16F0E7B:   var_25C = var_1B0 & "', '" & CVar(MemVar_1F95070) & "','" 
  loc_16F0E95:   var_2AC = var_25C & CVar(MemVar_1F950C8) & "'," & var_29C 
  loc_16F0EF6:   var_400 = var_2AC & ",'A','" & CVar(global_56) & "','" & CVar(var_304.Tag) & "'," & CVar(var_94) & "," & CVar(var_9C) & ",'" & Left(CVar(var_3D0), 1) 
  loc_16F0F3F:   var_530 = var_400 & "','" & Left(CVar(var_428), 1) & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_4C0.Text) & "','" & CVar(var_50C.Text) 
  loc_16F0F52:   var_57C = var_530 & "','" & CVar(var_558.Text) 
  loc_16F0F6E:   var_5E8 = var_57C & "','" & CVar(var_5A4.Text) & "'," 
  loc_16F0F7E:   var_640 = var_5E8 & var_610 & "," 
  loc_16F0F8E:   var_698 = var_640 & var_668 & "," 
  loc_16F0F9E:   var_6F0 = var_698 & var_6C0 & "," 
  loc_16F0FAE:   var_748 = var_6F0 & var_718 & "," 
  loc_16F0FBE:   var_7A0 = var_748 & var_770 & "," 
  loc_16F0FDE:   var_850 = var_7A0 & var_7C8 & "," & var_820 & ")" 
  loc_16F0FEC:   unk_53C1E2.Execute CStr(var_850), var_874, -1
  loc_16F1110:   Set var_A0 = Me.Txt
  loc_16F1116:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A4, var_AC)
  loc_16F111E:   var_878 = var_A4.Text
  loc_16F1135:   If (var_AC <> vbNullString) Then
  loc_16F1146:     Set var_A0 = Me.Txt
  loc_16F114C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4)
  loc_16F1154:     var_C4 = var_A4.Tag
  loc_16F1167:     Set var_A8 = Me.Txt
  loc_16F116D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B4)
  loc_16F1182:     var_CC = Val(var_B4.Text)
  loc_16F1193:     Set var_BC = Me.Txt
  loc_16F1199:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_C0, var_1EC)
  loc_16F11BC:     Set var_1F4 = Me.Txt
  loc_16F11C2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1F8)
  loc_16F11D1:     Proc_6_7_F26918(var_FC, CVar(var_1F8))
  loc_16F11E4:     Proc_6_7_F26918(var_25C, Date)
  loc_16F11FD:     var_AC = "Insert Into Itemrate(ItemCode,RestCode,Rate,MRP,AppDate,Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)" & " Values('"
  loc_16F1251:     var_170 = CVar(var_AC & global_128 & "','" & var_C4 & "'," & CStr(var_C0.Text) & "," & CStr(Val(var_1EC)) & ",") & var_FC & ",'" 
  loc_16F129A:     var_29C = var_170 & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_25C & ",'A','" & CVar(MemVar_1F95078) & "')" 
  loc_16F12A8:     unk_53C1E2.Execute CStr(var_29C), var_2AC, -1
  loc_16F1302:   End If
  loc_16F1305: Else
  loc_16F1313:   Set var_A0 = Me.Txt
  loc_16F1319:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_A4, var_AC)
  loc_16F1321:   var_208 = var_A4.Text
  loc_16F1334:   Set var_A8 = Me.Txt
  loc_16F133A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_B4, var_C4)
  loc_16F1342:   var_880 = var_B4.Tag
  loc_16F1355:   Set var_BC = Me.Txt
  loc_16F135B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_C0)
  loc_16F1376:   Set var_1F4 = Me.Txt
  loc_16F137C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_1F8)
  loc_16F1397:   Set var_208 = Me.Txt
  loc_16F139D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_20C)
  loc_16F13A5:   var_1FC = var_20C.Tag
  loc_16F13B8:   Set var_21C = Me.Txt
  loc_16F13BE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_220)
  loc_16F13D6:   Set var_230 = Me.Txt
  loc_16F13DC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_234)
  loc_16F13F0:   var_FC = Left(CVar(var_234), 1)
  loc_16F1400:   Set var_238 = Me.Txt
  loc_16F1406:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_23C)
  loc_16F142D:   Proc_6_7_F26918(var_29C, Date)
  loc_16F1440:   Set var_300 = Me.Txt
  loc_16F1446:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_304)
  loc_16F145E:   Set var_3CC = Me.Txt
  loc_16F1464:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_3D0)
  loc_16F1483:   Set var_424 = Me.Txt
  loc_16F1489:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_428)
  loc_16F14A8:   Set var_4BC = Me.Txt
  loc_16F14AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_4C0)
  loc_16F14D2:   Set var_508 = Me.Txt
  loc_16F14D8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_50C)
  loc_16F14FC:   Set var_554 = Me.Txt
  loc_16F1502:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_558)
  loc_16F1511:   Proc_6_17_EAAE40(var_57C, CVar(var_558))
  loc_16F1521:   Set var_5A0 = Me.Txt
  loc_16F1527:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_5A4)
  loc_16F1536:   Proc_6_17_EAAE40(var_5E8, CVar(var_5A4))
  loc_16F1546:   Set var_5EC = Me.Txt
  loc_16F154C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_5F0)
  loc_16F155B:   Proc_6_17_EAAE40(var_640, CVar(var_5F0))
  loc_16F156B:   Set var_644 = Me.Txt
  loc_16F1571:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_648)
  loc_16F1580:   Proc_6_17_EAAE40(var_698, CVar(var_648))
  loc_16F1590:   Set var_69C = Me.Txt
  loc_16F1596:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_6A0)
  loc_16F15A5:   Proc_6_17_EAAE40(var_6F0, CVar(var_6A0))
  loc_16F15B5:   Set var_6F4 = Me.Txt
  loc_16F15BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_6F8)
  loc_16F15CA:   Proc_6_17_EAAE40(var_748, CVar(var_6F8))
  loc_16F15DA:   Set var_74C = Me.Txt
  loc_16F15E0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_750)
  loc_16F15EF:   Proc_6_17_EAAE40(var_7A0, CVar(var_750))
  loc_16F1602:   Set var_7A4 = Me.Txt
  loc_16F1608:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_7A8)
  loc_16F1630:   var_1D4 = "UPDATE ItemMast SET Name='" & var_AC & "',RestCode='"
  loc_16F166F:   var_218 = var_1D4 & var_C4 & "',DispCode=" & var_C0.Text & ",Unit='" & var_1F8.Text & "',ItemGroup='" & var_1FC & "',ItemCatCode='" & var_220.Tag
  loc_16F16A8:   var_25C = CVar(var_218 & "',DiscApp='") & var_FC & "',RateEdit='" & Left(CVar(var_23C), 1) & "',SITE_CODE='" & CVar(MemVar_1F95070) & "',U_name='" 
  loc_16F16B2:   var_26C = var_25C & CVar(MemVar_1F950C8) 
  loc_16F16C2:   var_2AC = var_26C & "',U_EntDt=" & var_29C 
  loc_16F16FE:   var_3A8 = var_2AC & " ,U_AE='E',TYPE='" & CVar(global_56) & "',Kitchen='" & CVar(var_304.Tag) & "',ActiveYN='" & CVar(Proc_6_38_E69628(CVar(var_3D0))) 
  loc_16F1742:   var_478 = var_3A8 & "',NType='" & CVar(Proc_6_38_E69628(CVar(var_428))) & "',SaleRate=" & CVar(var_94) & ",MRP=" & CVar(var_9C) & ",SChrgApp='" 
  loc_16F1779:   var_600 = var_478 & Left(CVar(var_4C0), 1) & "',RateIncTax='" & Left(CVar(var_50C), 1) & "',LabelName=" & var_57C & ",LabelQty=" & var_5E8 
  loc_16F17B9:   var_760 = var_600 & ",LabelRemark1=" & var_640 & ",LabelRemark2=" & var_698 & ",LabelRemark3=" & var_6F0 & ",LabelRemark4=" & var_748 
  loc_16F17FB:   var_830 = var_760 & ",LabelRemark5=" & var_7A0 & " WHERE Code='" & CVar(global_128) & "' And RestCode='" & CVar(var_7A8.Tag) & "'" 
  loc_16F1809:   unk_53C1E2.Execute CStr(var_830), var_850, -1
  loc_16F1921:   Set var_A0 = Me.Txt
  loc_16F1927:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_A4, var_AC)
  loc_16F192F:   var_7FC = var_A4.Text
  loc_16F193C:   var_CC = Val(var_AC)
  loc_16F194D:   Set var_A8 = Me.Txt
  loc_16F1953:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_B4, var_1D4)
  loc_16F1968:   var_880 = Val(var_1D4)
  loc_16F196E:   var_EC = Date
  loc_16F1979:   Proc_6_7_F26918(var_FC, var_EC)
  loc_16F198C:   Set var_BC = Me.Txt
  loc_16F1992:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_C0, var_1FC)
  loc_16F19AA:   Set var_1F4 = Me.Txt
  loc_16F19B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_1F8)
  loc_16F19B8:   var_25C = CVar(var_1F8) 'Address
  loc_16F19BF:   Proc_6_7_F26918(var_26C, var_25C)
  loc_16F1A05:   var_1EC = "Update ItemRate Set Rate=" & CStr(var_B4.Text) & ",MRP=" & CStr(var_C0.Tag) & ",Site_Code='" & MemVar_1F95070 & "',U_name='"
  loc_16F1A38:   var_190 = CVar(var_1EC & MemVar_1F950C8 & "',U_EntDt=") & var_FC & ",U_AE='E' Where ItemCode='" & CVar(global_128) & "' And RestCode='" 
  loc_16F1A69:   unk_53C1E2.Execute CStr(var_190 & CVar(var_1FC) & "' And AppDate=" & var_26C & " And IsNull(Party,'')=''"), var_29C, -1
  loc_16F1ABD: End If
  loc_16F1AEA: Set var_A0 = Me.Txt
  loc_16F1AF0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_AC, "Select Count(*) From UnitMast Where Name='", var_EC, -1, var_A8)
  loc_16F1B11: unk_53C1E2.Execute 0 & var_AC & "'", var_BC, var_FC
  loc_16F1B19: var_208 = var_A8.Fields
  loc_16F1B21:  = var_A4.Text.Item(1)
  loc_16F1B29:  = var_BC.Value
  loc_16F1B56: If (var_FC <= 0) Then
  loc_16F1B6D:   var_11C = CVar("Insert Into UnitMast(Name,Site_Code,U_Name,U_EntDt,U_AE,lOGSITE_CODE)" & " Values('") 'String
  loc_16F1B7B:   Set var_A0 = Me.Txt
  loc_16F1B81:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_A4, var_11C)
  loc_16F1B90:   var_FC = Trim(CVar(var_A4))
  loc_16F1B98:   var_13C = var_2AC & var_FC 
  loc_16F1B9C:   var_DC = "','"
  loc_16F1BD9:   Proc_6_7_F26918(var_25C, Date, var_13C & var_DC & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "',")
  loc_16F1BE1:   var_26C = -1 & var_25C 
  loc_16F1C01:   var_AC = CStr(var_26C & ",'A','" & CVar(MemVar_1F95078) & "')")
  loc_16F1C0B:   unk_53C1E2.Execute var_AC, var_A8, 
  loc_16F1C3D: End If
  loc_16F1C43: unk_53C1E2.CommitTrans
  loc_16F1C4C: var_86 = CByte(0) 'Byte
  loc_16F1C5B: Me.Requery -1
  loc_16F1C6B: Me.Requery -1
  loc_16F1C7B: Me.Requery -1
  loc_16F1CA9: Set var_A0 = Me.Txt
  loc_16F1CAF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_A4, var_AC, "Code='" & global_128)
  loc_16F1CB7: 0 = var_A4.Tag
  loc_16F1CD0: Me.Find 1 & var_AC & "'", var_DC, 
  loc_16F1CEB: Set var_A0 = Me.TopCtrl1
  loc_16F1CF1: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_16F1D0A: If (CStr() = "Add") Then
  loc_16F1D0D:   Call TopCtrl1_UnknownEvent_A()
  loc_16F1D12:   Exit Sub
  loc_16F1D13: End If
  loc_16F1D28: var_AC = "INI"
  loc_16F1D36: Call Proc_44_50_FB3DBC(Proc_5_1_100EC1C(var_AC, Me))
  loc_16F1D41: Call Proc_44_52_160B528(global_64)
  loc_16F1D46: Exit Sub
  loc_16F1D47: ' Referenced from: 16F04AC
  loc_16F1D50: If (CInt(var_86) = 1) Then
  loc_16F1D59:   unk_53C1E2.RollbackTrans
  loc_16F1D5E: End If
  loc_16F1D66: Set var_A0 = Err()
  loc_16F1D6C: Call 0.Method_arg_2C (var_AC)
  loc_16F1D85: MsgBox(CVar(var_AC), &H10, var_FC, var_11C, var_13C)
  loc_16F1D98: Exit Sub
End Sub

Private Sub CmdLabelPrint_UnknownEvent_9 '1421830
  'Data Table: 53C1B4
  Dim var_98 As Variant
  Dim Me As Recordset15
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_C0 As String
  Dim var_18C As String
  Dim var_112 As Integer
  Dim var_D0 As Variant
  Dim var_9C As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim unk_53C1E2 As Connection15
  Dim var_118 As Recordset15
  Dim var_198 As Recordset15
  Dim var_19C As Fields15
  Dim var_1A0 As Field20
  Dim var_1A2 As Integer
  loc_1420DC0: On Error Goto loc_14217E6
  loc_1420DFF: If (Proc_6_38_E69628(CVar(Me.Fields.Item("ActiveYN"))) = "No") Then
  loc_1420E39:   If (MsgBox("Would U Wish to Print Non Active Item Labels", &H24, "Print Item Label", var_F0, var_110) = 7) Then
  loc_1420E3C:     Exit Sub
  loc_1420E3D:   End If
  loc_1420E3D: End If
  loc_1420E6D: var_18C = InputBox(CVar("Enter Number Of Labels" & vbCrLf & "U Want to Print."), "Print Item Label", var_F0, var_110, var_148, var_168, var_188)
  loc_1420E76: var_112 = CInt(Val(var_18C))
  loc_1420E97: If (var_112 <= 0) Then
  loc_1420E9A:   Exit Sub
  loc_1420E9B: End If
  loc_1420EA2: var_D0 = CVar(var_134 & " And I.Code+I.RestCode='") 'String
  loc_1420EBA: var_88 = Me.Fields
  loc_1420ECA: var_AC = var_88.Item("Code").Value
  loc_1420F09: var_D0 = CVar("SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate, IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, " & " REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(ItemRate.Party,'')='' left Join TaxStru T On IC.TaxStru=T.Code Left Join Depart K on K.Code=I.Kitchen Inner Join (Select ItemCode,RestCode,Max(AppDate) As MaxDate from itemrate Where AppDate<=") 'String
  loc_1420F17: Proc_6_7_F26918(var_AC, MemVar_1F950EC, var_D0, var_188)
  loc_1420F1F: var_F0 = -1 & var_AC 
  loc_1420F23: var_C0 = " And IsNull(Party,'')='' Group by ItemCode,RestCode) Q On I.Code=Q.ItemCode And I.RestCode=Q.RestCode Where Q.MaxDate=ItemRate.AppDate And IG.Type IN ('Finish','Semi Finish') "
  loc_1420F28: var_110 = "Print Item Label" & var_AC & var_C0 
  loc_1420F49: unk_53C1E2.Execute CStr(var_110 & CVar(CStr("Print Item Label" & var_AC & "'")) & " And I.DispCode<>9999 order by I.Name"), var_88, var_112
  loc_1420F54: Set var_118 = var_88
  loc_1420F74: var_190 = var_118.RecordCount
  loc_1420F82: If (var_190 <> 1) Then
  loc_1420F93:   var_98 = "Related Record Not Exists"
  loc_1420F9E:   MsgBox(var_98, 0, var_D0, "Print Item Label" & var_98, var_110)
  loc_1420FAE:   Exit Sub
  loc_1420FAF: End If
  loc_1420FBC: Call Proc_44_49_10685A8(New)
  loc_1420FC4: Set var_11C = var_88
  loc_1420FCF: For var_194 = 1 To var_112: var_12E = var_194 'Integer
  loc_1420FD8:   Set var_198 = var_11C 
  loc_1420FE7:   var_198.AddNew var_98, var_C0
  loc_1421037:   var_198.Fields.Item("Code").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Code")), 1))
  loc_1421097:   var_198.Fields.Item("Item").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Name"))))
  loc_14210F7:   var_198.Fields.Item("Unit").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("Unit"))))
  loc_142115B:   var_198.Fields.Item("DispCode").Value = CVar(CStr(var_118.Fields.Item("DispCode").Value))
  loc_14211BD:   var_198.Fields.Item("BarCode").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("BarCode"))))
  loc_142120D:   var_F0 = Format(CVar(var_118.Fields.Item("SaleRate")), "0.00")
  loc_1421219:   var_E0 = "Rate"
  loc_1421235:   var_198.Fields.Item(var_E0).Value = var_F0
  loc_1421297:   var_198.Fields.Item("LblName").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("LabelName")), 1))
  loc_14212F7:   var_198.Fields.Item("LblQty").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("LabelQty")), 1))
  loc_1421357:   var_198.Fields.Item("LblRem1").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("LabelRemark1"))))
  loc_14213B7:   var_198.Fields.Item("LblRem2").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("LabelRemark2"))))
  loc_1421417:   var_198.Fields.Item("LblRem3").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("LabelRemark3"))))
  loc_1421477:   var_198.Fields.Item("LblRem4").Value = CVar(Proc_6_38_E69628(CVar(var_118.Fields.Item("LabelRemark4"))))
  loc_142148F:   var_98 = "LabelRemark5"
  loc_14214A3:   var_9C = var_118.Fields.Item(var_98)
  loc_14214BB:   var_C0 = "LblRem5"
  loc_14214C7:   var_19C = var_198.Fields
  loc_14214CF:   var_1A0 = var_19C.Item(var_C0)
  loc_14214D7:   var_1A0.Value = CVar(Proc_6_38_E69628(CVar(var_9C)))
  loc_14214F7:   var_198.Update var_98, var_C0
  loc_14214FE:   Set var_198 = Nothing 
  loc_1421505: Next var_194 'Integer
  loc_1421520: Set var_88 = var_11C 
  loc_142152C: var_1A2 = CreateFieldDefFile(var_88, MemVar_1F950B4 & "\ItemLabelFinish.ttx")
  loc_1421536: Set var_11C = var_88
  loc_142153C: var_98 = CVar(var_1A2) 'Integer
  loc_142153F: var_12C = var_98 'Variant
  loc_142155B: var_B0 = MemVar_1F950B4 & "\ItemLabelFinish.RPT"
  loc_1421564: Call 0.Method_arg_1C (var_B0, var_98, var_88)
  loc_142156F: MemVar_1F951E8 = var_88
  loc_142158A: Call 0.Method_arg_90 (var_88, var_190, var_12E)
  loc_1421592: Call 0.Method_arg_24 (1, var_1A2)
  loc_142159E: For var_1A6 =  To CInt(var_190): &HFF = var_1A6 'Integer
  loc_14215B7:   Call 0.Method_arg_90 (var_88, CLng(var_12E))
  loc_14215BF:   Call 0.Method_arg_20 (var_9C)
  loc_14215C7:   Call 0.Method_arg_30 (var_B0)
  loc_14215DD:   var_1B8 = Ucase(CVar(var_B0)) 'Variant
  loc_142160D:   If (var_1B8 = Ucase("Title")) Then
  loc_1421623:     Call 0.Method_arg_90 (var_88, CLng(var_12E))
  loc_142162B:     Call 0.Method_arg_20 (var_9C)
  loc_1421633:     Call 0.Method_arg_38 ("'Menu Item Entry'")
  loc_1421642:   Else
  loc_1421664:     If (var_1B8 = Ucase("RestName")) Then
  loc_1421678:       Set var_88 = Me.Txt
  loc_142167E:       Call 0.Method_CmdLabelPrint_UnknownEvent_90 (CInt(&HB), var_9C)
  loc_142168F:       var_18C = "'" & var_9C.Text
  loc_14216A9:       Call 0.Method_arg_90 (var_19C, CLng(var_12E))
  loc_14216B1:       Call 0.Method_arg_20 (var_1A0)
  loc_14216B9:       Call 0.Method_arg_38 (var_18C & "'")
  loc_14216D5:     Else
  loc_14216E6:       var_D0 = Ucase("LogDate")
  loc_14216F7:       If (var_1B8 = var_D0) Then
  loc_14216FE:         Set var_88 = Me.DTP
  loc_142170E:         Proc_6_7_F26918(var_D0)
  loc_1421716:         var_B0 = CStr(var_D0)
  loc_142172A:         Call 0.Method_arg_90 (var_9C, CLng(var_12E), var_19C)
  loc_1421732:         Call 0.Method_arg_20 (var_B0)
  loc_142173A:         Call 0.Method_arg_38 (var_88.Value)
  loc_1421752:       End If
  loc_1421752:     End If
  loc_1421752:   End If
  loc_1421755: Next var_1A6 'Integer
  loc_1421773: Call 0.Method_arg_64 (var_88, CVar(var_11C))
  loc_142177B: Call 0.Method_arg_2C (var_C0)
  loc_1421789: Call 0.Method_arg_150 (var_E0)
  loc_1421794: Call 0.Method_arg_50 (var_B0)
  loc_142179E: Set var_9C = Nothing
  loc_14217B8: Set var_88 = MemVar_1F951E8 
  loc_14217C4: Proc_6_99_1484404(var_88, 0, var_B0)
  loc_14217CF: MemVar_1F951E8 = var_88
  loc_14217E2: Set var_118 = Nothing
  loc_14217E5: Exit Sub
  loc_14217E6: ' Referenced from: 1420DC0
  loc_14217EE: Set var_88 = Err()
  loc_14217F4: Call 0.Method_arg_2C (var_B0, &HFF)
  loc_14217FF: Call 0.Method_arg_50 (var_18C)
  loc_142181B: MsgBox(CVar(var_B0), &H10, CVar(var_18C), var_F0, var_110)
  loc_142182E: Exit Sub
End Sub

Private Sub Form_Load() '12C0B10
  'Data Table: 53C1B4
  Dim var_88 As Variant
  Dim var_D0 As String
  Dim var_D4 As String
  Dim unk_53C1E2 As Connection15
  Dim var_E0 As String
  Dim var_AC As Variant
  loc_12C04BC: On Error Goto loc_12C0ACC
  loc_12C04D5: Proc_6_23_DFC5B8(Me, 0)
  loc_12C04E4: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12C04F7: Me.Check1.BackColor = CLng(MemVar_1F951B4)
  loc_12C050D: Me.Check2.BackColor = CLng(MemVar_1F951B4)
  loc_12C0523: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_12C0539: Me.FrCopyConsumption.BackColor = CLng(MemVar_1F951B4)
  loc_12C054F: Me.FrLblInfo.BackColor = CLng(MemVar_1F951B4)
  loc_12C0566: Me.LblUser.Left = CDbl(13500)
  loc_12C057D: Me.LblUser.Top = CDbl(7800)
  loc_12C0594: Me.LblLDt.Top = CDbl(8160)
  loc_12C05AB: Me.LblLDt.Left = CDbl(13500)
  loc_12C05C4: Me.DTP.MinDate = MemVar_1F950F4
  loc_12C05DE: var_AC = DateAdd("d", CDbl(7), MemVar_1F950FC)
  loc_12C05F7: Me.DTP.MaxDate = CDate(CDate(var_AC))
  loc_12C060E: Set var_88 = Me.DTP
  loc_12C0614: var_88.Value = CDate(MemVar_1F950EC)
  loc_12C061C: Call Proc_44_55_1127704(0)
  loc_12C063C: var_D4 = "SELECT Code,Name,BarCode,CommodityCode FROM Item Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name"
  loc_12C0645: unk_53C1E2.Execute var_D4, var_AC, -1
  loc_12C0656: Set global_68 = var_88
  loc_12C0674: CVarUnk
  loc_12C0679: VerifyVarObj
  loc_12C0685: LateIdStAd
  loc_12C069E: If (global_52 = "Banquet") Then
  loc_12C06BC:   var_D4 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  AND ((OutletYN='Y' and RestType='Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_12C06C5:   unk_53C1E2.Execute var_D4, var_AC, -1
  loc_12C06D6:   Set global_76 = Me.DGHelp
  loc_12C06F4:   CVarUnk
  loc_12C06F9:   VerifyVarObj
  loc_12C06FF:   Set var_88 = Me.DGRest
  loc_12C0705:   LateIdStAd
  loc_12C0716: Else
  loc_12C0731:   var_D4 = "SELECT Code,Name,RestType,DiscApp,RateInclTax FROM Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND ((OutletYN='Y' and RestType<>'Banquet') OR RestType='Kitchen') ORDER BY Name"
  loc_12C073A:   unk_53C1E2.Execute var_D4, var_AC, -1
  loc_12C074B:   Set global_76 = var_88
  loc_12C0769:   CVarUnk
  loc_12C076E:   VerifyVarObj
  loc_12C0774:   Set var_88 = Me.DGRest
  loc_12C077A:   LateIdStAd
  loc_12C0788: End If
  loc_12C07AC: unk_53C1E2.Execute "SELECT Name as Code,Name FROM UnitMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') ORDER BY Name", var_AC, -1
  loc_12C07BD: Set global_84 = var_88
  loc_12C07DB: CVarUnk
  loc_12C07E0: VerifyVarObj
  loc_12C07EC: LateIdStAd
  loc_12C080E: var_D0 = "SELECT I.Code,I.Name,I.Unit,D.Name As Outlet,I.RestCode FROM ItemMast I Left Join Depart D On I.RestCode=D.Code Where I.Code In (Select Distinct FinItem From BOM) And (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_12C0815: var_D4 = var_D0 & "' or I.LOGSITE_CODE='HO') AND I.Type='Finish' And I.DispCode <>9999 and I.ActiveYN<>'No' And D.RestType In ('Room Service','Outlet','Production') Order by I.Name"
  loc_12C081E: unk_53C1E2.Execute var_D4, var_AC, -1
  loc_12C082F: Set global_88 = Me.DGUnit
  loc_12C084D: CVarUnk
  loc_12C0852: VerifyVarObj
  loc_12C085E: LateIdStAd
  loc_12C0880: var_D0 = "SELECT Distinct Convert(Varchar(11),AppDate,104) as Code,Convert(Varchar(11),AppDate,104) As Name,RestCode,AppDate FROM ItemRate WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_12C0890: unk_53C1E2.Execute var_D0 & "' or LOGSITE_CODE='HO') And IsNull(Party,'')='' ORDER BY AppDate", var_AC, -1
  loc_12C08A1: Set global_92 = Me.DGFinItem
  loc_12C08BF: CVarUnk
  loc_12C08C4: VerifyVarObj
  loc_12C08D0: LateIdStAd
  loc_12C08F9: var_D4 = "SELECT distinct Code,Name,Type,RestCode FROM ItemGrp Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Type IN ('Finish') ORDER BY Name"
  loc_12C0902: unk_53C1E2.Execute var_D4, var_AC, -1
  loc_12C0913: Set global_72 = Me.DGAppDate
  loc_12C0931: CVarUnk
  loc_12C0936: VerifyVarObj
  loc_12C0942: LateIdStAd
  loc_12C096B: var_D4 = "SELECT Code,Name,RestCode FROM ItemCatMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  AND (cattype is not NULL and cattype<>'') ORDER BY Name"
  loc_12C0974: unk_53C1E2.Execute var_D4, var_AC, -1
  loc_12C0985: Set global_80 = Me.DGItemGroup
  loc_12C09A3: CVarUnk
  loc_12C09A8: VerifyVarObj
  loc_12C09AE: Set var_88 = Me.DGItemCat
  loc_12C09B4: LateIdStAd
  loc_12C09CD: If (global_52 = "Banquet") Then
  loc_12C09E4:   var_D0 = "SELECT I.Code,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SchrgApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,I.RestCode,I.kitchen,K.Name as KitchenName,I.DiscApp,I.SITE_CODE,I.LOGSITE_CODE FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart K on K.Code=I.Kitchen) Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_12C09F9:   var_E0 = var_D0 & "' or I.LOGSITE_CODE='HO') AND I.RestCode='" & MemVar_1F95078 & "BANQ' and IG.Type IN ('Finish') aND DispCode<>9999 ORDER BY I.Name"
  loc_12C0A02:   unk_53C1E2.Execute var_E0, var_AC, -1
  loc_12C0A13:   Set global_64 = var_88
  loc_12C0A2F: Else
  loc_12C0A43:   var_D0 = "SELECT I.Code+I.RestCode Code,I.Code ItemCode,I.Name,I.Unit,I.ItemGroup,I.ItemCatCode,IC.Name As ItemCategory,Disc=CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,I.TYPE,DispCode,R.Name as RestName,I.RestCode,I.kitchen,K.Name as KitchenName,R.DiscApp,I.RateIncTax,I.SITE_CODE,I.LOGSITE_CODE,I.ActiveYN,I.NType,I.BarCode,I.CommodityCode,I.LabelName,I.LabelQty,I.LabelRemark1,I.LabelRemark2,I.LabelRemark3,I.LabelRemark4,I.LabelRemark5 FROM ((((ItemMast I Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code))Left Join Depart R on R.Code=I.RestCode)Left Join Depart K on K.Code=I.Kitchen Where (I.LOGSITE_CODE='" & MemVar_1F95078
  loc_12C0A4A:   var_D4 = var_D0 & "' or I.LOGSITE_CODE='HO') AND r.RestType IN ('Room Service','Outlet','Production') aND DispCode<>9999 ORDER BY R.Name,I.Name"
  loc_12C0A53:   unk_53C1E2.Execute var_D4, var_AC, -1
  loc_12C0A64:   Set global_64 = var_88
  loc_12C0A79: End If
  loc_12C0A85: Set var_88 = Me
  loc_12C0A8E: var_D0 = "INI"
  loc_12C0A9C: Call Proc_44_50_FB3DBC(Proc_5_1_100EC1C(var_D0, var_88, global_64, var_88, var_88, var_88, global_80, var_88), var_88, global_72, var_88)
  loc_12C0AB0: Call 0.Method_arg_160 (var_88, var_88, global_92)
  loc_12C0ABE: Call 0.Method_arg_164 (var_88, var_88)
  loc_12C0AC6: Call Proc_44_52_160B528(var_88)
  loc_12C0ACB: Exit Sub
  loc_12C0ACC: ' Referenced from: 12C04BC
  loc_12C0AD4: Set var_88 = Err()
  loc_12C0ADA: Call 0.Method_arg_2C (var_D0)
  loc_12C0AFB: MsgBox(CVar(var_D0), &H40, "Information", var_100, var_110)
  loc_12C0B0E: Exit Sub
  loc_12C0B0F: Exit Sub
End Sub

Private Sub Form_Resize() 'ED7B78
  'Data Table: 53C1B4
  Dim var_8C As Label
  loc_ED7AD6: Call 0.Method_arg_50 (var_88)
  loc_ED7AE8: Me.LblFormCaption.Caption = var_88
  loc_ED7B01: Me.LblFormCaption.Left = CDbl(0)
  loc_ED7B0D: Set var_A0 = Me.TopCtrl1
  loc_ED7B13: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED7B20: Set var_8C = Me.TopCtrl1
  loc_ED7B26: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED7B40: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED7B5B: Call 0.Method_arg_100 (var_B8)
  loc_ED7B6D: Me.LblFormCaption.Width = var_B8
  loc_ED7B75: Exit Sub
  loc_ED7B76: CExtInstUnk
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E6CFC8
  'Data Table: 53C1B4
  loc_E6CF77: Set global_64 = Nothing
  loc_E6CF89: Set global_68 = Nothing
  loc_E6CF9B: Set global_76 = Nothing
  loc_E6CFAD: Set global_72 = Nothing
  loc_E6CFBF: Set global_80 = Nothing
  loc_E6CFC6: Exit Sub
End Sub

Private Sub Form_Activate() 'FB5818
  'Data Table: 53C1B4
  Dim var_88 As Frame
  Dim var_E8 As Integer
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  Dim unk_53C1E2 As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_FB56A4: On Error Goto loc_FB5812
  loc_FB56C2: If (Me.FrCopyConsumption.Visible = &HFF) Then
  loc_FB56D1:   Me.FrCopyConsumption.Visible = False
  loc_FB56D9: End If
  loc_FB56DF: var_E8 = 0
  loc_FB5706: Set var_88 = Me.Txt
  loc_FB570C: Call 0.Method_Form_Activate0 (CInt(0), var_90, var_94, "Select Count(*) From BOM Where FinItem='", var_D0, -1)
  loc_FB5735: Set var_9C = Me.Txt
  loc_FB573B: Call 0.Method_Form_Activate0 (CInt(8), var_A0, var_A4, var_D8 & var_94 & "' And RestCode='")
  loc_FB5743: var_E8 = var_A0.Tag
  loc_FB575C: unk_53C1E2.Execute var_EC & var_A4 & "'", var_FC, 
  loc_FB5764:  = var_90.Tag.Fields
  loc_FB576C:  = var_D8.Item()
  loc_FB5774:  = var_EC.Value
  loc_FB577F: Proc_6_39_E7D3A0(var_10C)
  loc_FB57B8: If (var_10C > 0) Then
  loc_FB57C4:   Set var_88 = Me.CmdCopyConsumption
  loc_FB57CA:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_FB57D5: Else
  loc_FB57DD:   Set var_88 = Me.CmdCopyConsumption
  loc_FB57E3:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_FB57EB: End If
  loc_FB57EF: Set var_88 = Me.TopCtrl1
  loc_FB57F5: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030000(var_FC)
  loc_FB580A: If (CLng(CInt()) = &H2D) Then
  loc_FB580D:   Call TopCtrl1_UnknownEvent_15()
  loc_FB5812:   ' Referenced from: FB56A4
  loc_FB5812: End If
  loc_FB5812: Proc_6_60_E63754()
  loc_FB5817: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E29228
  'Data Table: 53C1B4
  loc_E29200: On Error Goto loc_E2921F
  loc_E29217: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2921F: ' Referenced from: E29200
  loc_E2921F: Proc_6_60_E63754(Shift)
  loc_E29224: Exit Sub
End Sub

Private Sub Command2_UnknownEvent_9 '127F1FC
  'Data Table: 53C1B4
  Dim var_BC As String
  Dim var_B8 As TextBox
  Dim var_AC As TextBox
  Dim var_C0 As String
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim var_116 As Integer
  Dim var_A8 As Variant
  Dim var_E4 As Variant
  Dim var_128 As String
  Dim var_138 As Variant
  Dim unk_53C1E2 As Connection15
  Dim var_118 As Integer
  loc_127EC7B: Set var_A8 = Me.Txt
  loc_127EC81: Call 0.Method_Command2_UnknownEvent_90 (CInt(&HF))
  loc_127EC89: Set var_B0 = var_AC
  loc_127ECA2: Set var_B4 = Me.Txt
  loc_127ECA8: Call 0.Method_Command2_UnknownEvent_90 (CInt(&HF), var_B8)
  loc_127ECB0: var_B8.Text = Proc_6_33_15125B8(var_B0)
  loc_127ECD1: Set var_A8 = Me.Txt
  loc_127ECD7: Call 0.Method_Command2_UnknownEvent_90 (CInt(&HB), var_AC)
  loc_127ECDF: var_BC = var_AC.Tag
  loc_127ECF6: If (var_BC <> vbNullString) Then
  loc_127ED00:   var_C0 = var_A0 & " And I.RestCode='"
  loc_127ED11:   Set var_A8 = Me.Txt
  loc_127ED17:   Call 0.Method_Command2_UnknownEvent_90 (CInt(&HB), var_AC, var_BC)
  loc_127ED1F:   var_C0 = var_AC.Tag
  loc_127ED2F:   var_A0 = var_AC & var_BC & "'"
  loc_127ED42: End If
  loc_127ED4D: Set var_A8 = Me.Txt
  loc_127ED53: Call 0.Method_Command2_UnknownEvent_90 (CInt(&H10))
  loc_127ED7C: If (Trim(CVar(var_AC)) = "Yes") Then
  loc_127ED86:   var_A0 = var_A0 & " And I.ActiveYN<>'No' "
  loc_127ED89: End If
  loc_127ED94: Set var_A8 = Me.Txt
  loc_127ED9A: Call 0.Method_Command2_UnknownEvent_90 (CInt(&H10), var_AC)
  loc_127EDA9: var_E4 = Trim(CVar(var_AC))
  loc_127EDC3: If (var_E4 = "No") Then
  loc_127EDCD:   var_A0 = var_A0 & " And I.ActiveYN='No' "
  loc_127EDD0: End If
  loc_127EDDB: Set var_A8 = Me.Txt
  loc_127EDE1: Call 0.Method_Command2_UnknownEvent_90 (CInt(&HF), var_AC)
  loc_127EDF8: If IsDate(CVar(var_AC)) Then
  loc_127EE10:   Set var_A8 = Me.Txt
  loc_127EE16:   Call 0.Method_Command2_UnknownEvent_90 (CInt(&HF), var_AC)
  loc_127EE1E:   var_D4 = CVar(var_AC) 'Address
  loc_127EE25:   Proc_6_7_F26918(var_E4, var_D4)
  loc_127EE32:   var_A4 = CStr(CVar(var_A4 & " And ItemRate.AppDate=") & var_E4)
  loc_127EE43: End If
  loc_127EE43: On Error Goto loc_127F1B0
  loc_127EE49: var_116 = KeyCode
  loc_127EE52: If (var_116 = 0) Then
  loc_127EE5C:   Set var_A8 = Me.Check2
  loc_127EE70:   If (var_A8.Value = 1) Then
  loc_127EE87:     var_E4 = CVar("SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate ,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, " & " REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,ItemRate.MRP,IsNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(itemrate.Party,'')='' left Join TaxStru T On IC.TaxStru=T.Code Left Join Depart K on K.Code=I.Kitchen Inner Join (Select Max(ItemCode) As mItem,Max(AppDate) As MaxDate from itemrate Where AppDate<=") 'String
  loc_127EE95:     Proc_6_7_F26918(var_D4, MemVar_1F950EC, var_E4, var_188)
  loc_127EE9D:     var_104 = -1 & var_D4 
  loc_127EEA1:     var_128 = " Group by itemcode ) Q On I.Code=Q.mItem Where Q.MaxDate=ItemRate.AppDate And IG.Type IN ('Finish','Semi Finish') "
  loc_127EEA6:     var_114 = CVar(var_A4 & " And ItemRate.AppDate=") & var_128 
  loc_127EEAD:     var_138 = CVar(var_A0) 'String
  loc_127EEC7:     unk_53C1E2.Execute CStr(var_114 & var_138 & " And I.DispCode<>9999 order by I.Name"), var_A8, var_116
  loc_127EED2:     Set var_88 = var_A8
  loc_127EEEF:   Else
  loc_127EF03:     var_BC = "SELECT Distinct I.Code,I.Name,I.Unit,I.ItemGroup,I.DISPCODE,IG.Type,ItemRate.Rate as SaleRate ,IC.Name As ItemCategory,Disc= CASE I.DiscApp WHEN 'Y' THEN 'Yes' ELSE 'No' END,REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,I.U_Name,IG.Name as ItemGrpName,T.Name TaxStru,Convert(Varchar(11),ItemRate.AppDate,106) As AppDate,I.NType,SChrApp=CASE I.SChrgApp WHEN 'Y' THEN 'Yes' ELSE 'No' END, " & " REdit=CASE I.RateEdit WHEN 'Y' THEN 'Yes' ELSE 'No' END,RateIncTax=CASE I.RateIncTax WHEN 'Y' THEN 'Yes' ELSE 'No' END, K.Name as KitchenName,I.ActiveYN,I.BarCode,ItemRate.MRP,IsNull(I.CommodityCode,'') HSNCode FROM ((ItemMast I  Left join ItemGrp IG on IG.Code=I.ItemGroup) Left Join ItemCatMast IC on I.ItemCatCode=IC.Code) Left Join ItemRate on I.Code=ItemRate.ItemCode And I.RestCode=ItemRate.RestCode And IsNull(itemrate.Party,'')='' left Join TaxStru T On IC.TaxStru=T.Code Left Join Depart K on K.Code=I.Kitchen Where IG.Type IN ('Finish','Semi Finish') "
  loc_127EF21:     unk_53C1E2.Execute var_BC & var_A0 & var_A4 & " And I.DispCode<>9999 order by I.Name", var_D4, -1
  loc_127EF2C:     Set var_88 = var_A8
  loc_127EF40:   End If
  loc_127EF56:   Set var_A8 = var_88 
  loc_127EF62:   var_118 = CreateFieldDefFile(var_A8, MemVar_1F950B4 & "\ItemMastFinish.ttx", &HFF)
  loc_127EF6C:   Set var_88 = var_A8
  loc_127EF72:   var_F4 = CVar(var_118) 'Integer
  loc_127EF75:   var_98 = var_F4 'Variant
  loc_127EF91:   var_BC = MemVar_1F950B4 & "\ItemMastFinish.RPT"
  loc_127EF9A:   Call 0.Method_arg_1C (var_BC, var_F4, var_A8)
  loc_127EFA5:   MemVar_1F951E8 = var_A8
  loc_127EFC0:   Call 0.Method_arg_90 (var_A8, var_190, var_9A, 1)
  loc_127EFC8:   Call 0.Method_arg_24 (var_118, var_A8)
  loc_127EFD4:   For var_194 =  To CInt(var_190): var_AC = var_194 'Integer
  loc_127EFED:     Call 0.Method_arg_90 (var_A8, CLng(var_9A))
  loc_127EFF5:     Call 0.Method_arg_20 (var_AC)
  loc_127EFFD:     Call 0.Method_arg_30 (var_BC)
  loc_127F013:     var_1A4 = Ucase(CVar(var_BC)) 'Variant
  loc_127F043:     If (var_1A4 = Ucase("Title")) Then
  loc_127F059:       Call 0.Method_arg_90 (var_A8, CLng(var_9A))
  loc_127F061:       Call 0.Method_arg_20 (var_AC)
  loc_127F069:       Call 0.Method_arg_38 ("'Menu Item Entry'")
  loc_127F078:     Else
  loc_127F09A:       If (var_1A4 = Ucase("RestName")) Then
  loc_127F0AE:         Set var_A8 = Me.Txt
  loc_127F0B4:         Call 0.Method_Command2_UnknownEvent_90 (CInt(&HB), var_AC)
  loc_127F0BC:         var_BC = var_AC.Text
  loc_127F0C5:         var_C0 = "'" & var_BC
  loc_127F0DF:         Call 0.Method_arg_90 (var_B0, CLng(var_9A))
  loc_127F0E7:         Call 0.Method_arg_20 (var_B4)
  loc_127F0EF:         Call 0.Method_arg_38 (var_C0 & "'")
  loc_127F108:       End If
  loc_127F108:     End If
  loc_127F10B:   Next var_194 'Integer
  loc_127F129:   Call 0.Method_arg_64 (var_A8, CVar(var_88))
  loc_127F131:   Call 0.Method_arg_2C (var_128)
  loc_127F13F:   Call 0.Method_arg_150 (var_138)
  loc_127F14A:   Call 0.Method_arg_50 (var_BC)
  loc_127F154:   Set var_AC = Nothing
  loc_127F16E:   Set var_A8 = MemVar_1F951E8 
  loc_127F17A:   Proc_6_99_1484404(var_A8, 0, var_BC)
  loc_127F185:   MemVar_1F951E8 = var_A8
  loc_127F193: End If
  loc_127F198: Set var_88 = Nothing
  loc_127F1A7: Me.Frame1.Visible = False
  loc_127F1AF: Exit Sub
  loc_127F1B0: ' Referenced from: 127EE43
  loc_127F1B8: Set var_A8 = Err()
  loc_127F1BE: Call 0.Method_arg_2C (var_BC, &HFF)
  loc_127F1C9: Call 0.Method_arg_50 (var_C0)
  loc_127F1E5: MsgBox(CVar(var_BC), &H10, CVar(var_C0), CVar(var_A4 & " And ItemRate.AppDate="), var_114)
  loc_127F1F8: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F55684
  'Data Table: 53C1B4
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F555A6: If (Me.ListView.ListItems.Count > 0) Then
  loc_F555AD:   Set var_A8 = Me.ListView
  loc_F555F7:   Set var_C0 = Me.Txt
  loc_F555FD:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F55605:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F55625: End If
  loc_F55631: Me.FrmList.Visible = False
  loc_F55661: Set var_9C = Me.Txt
  loc_F55667: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5566F: var_A8.SetFocus
  loc_F55683: Exit Sub
End Sub

Private Sub Command1_UnknownEvent_9 '106450C
  'Data Table: 53C1B4
  Dim var_9C As String
  Dim var_AC As String
  Dim var_A4 As TextBox
  Dim var_C0 As Variant
  Dim unk_53C1E2 As Connection15
  Dim var_88 As Recordset15
  Dim var_90 As Variant
  Dim var_D0 As Variant
  Dim var_94 As TextBox
  Dim var_124 As Boolean
  loc_10642BC: Set var_8C = New FrmConsumMast
  loc_10642DD: Set var_90 = Me.Frame1
  loc_10642E3: Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94, var_98, "Select Top 1 BOM.FinItem+BOM.RestCode+Convert(Varchar(11),BOM.AppDate,103) as SearchCode From BOM Where FinItem='")
  loc_10642EB: var_134 = FrmConsumMast.Frame1.Tag
  loc_10642F4: var_9C = -1 & var_98
  loc_10642FB: var_AC = var_9C & "' And RestCode='"
  loc_106430C: Set var_A0 = Me.Txt
  loc_1064312: Call 0.Method_Command1_UnknownEvent_90 (CInt(8), var_A4, var_A8)
  loc_106431A: var_AC = var_A4.Tag
  loc_1064338: Proc_6_7_F26918(var_D0, MemVar_1F950EC)
  loc_1064357: unk_53C1E2.Execute CStr(CVar(var_138 & var_A8 & "' And AppDate<=") & var_D0 & " Order By FinItem,RestCode,AppDate Desc"), , 
  loc_1064362: Set var_88 = var_138
  loc_10643A2: If (var_88.RecordCount > 0) Then
  loc_10643B2:   Me.Global.Load var_8C
  loc_10643D1:   var_94 = var_88.Fields.Item("SearchCode")
  loc_10643D9:   var_D0 = CVar(var_94) 'Address
  loc_10643E1:   Call var_8C.SEARCHBACK
  loc_10643F0:   Call var_8C.TopCtrl1_eEdit
  loc_10643F9: Else
  loc_10643FC:   Call var_8C.TopCtrl1_eAdd
  loc_1064402:   var_C0 = 0
  loc_1064413:   Set var_90 = Me.Txt
  loc_1064419:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94)
  loc_1064421:   var_D0 = CVar(var_94) 'Address
  loc_1064429:   LateMemCallSt
  loc_1064443:   Set var_90 = Me.Txt
  loc_1064449:   Call 0.Method_Command1_UnknownEvent_90 (CInt(0), var_94, var_98, var_8C)
  loc_1064451:   var_D0 = var_94.Tag
  loc_106445D:   var_C0 = 0
  loc_106446E:   var_8C.Txt.Tag = var_C0
  loc_106448B:   Set var_90 = var_94(CInt(8))
  loc_1064491:   Call 0.Method_Command1_UnknownEvent_90 (CVar(var_98), var_C0)
  loc_10644B9:   Set var_90 = var_94(CInt(8))
  loc_10644BF:   Call 0.Method_Command1_UnknownEvent_90 (var_98)
  loc_10644C7:   var_D0 = var_8C.TextBox.Tag
  loc_10644DB:   CVar(var_94).Tag = CVar(var_98)
  loc_10644ED:   var_C0 = 0
  loc_10644F3:   var_124 = True
  loc_10644FA:   Call var_8C.Txt_Validate
  loc_1064500: End If
  loc_1064503: Call var_8C.Show
  loc_1064509: Exit Sub
End Sub

Public Function global_52Get() '53DF68
  global_52Get = global_52
End Function

Public Sub global_52Put(Value) '53DF77
  global_52 = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'EEA4FC
  'Data Table: 53C1B4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_EEA44E: On Error Goto loc_EEA4B7
  loc_EEA457: Me.MoveFirst
  loc_EEA471: var_8C = "code='" & MyValue
  loc_EEA481: Me.Find var_8C & "'", 0, 1
  loc_EEA48D: Call Proc_44_52_160B528(var_A0)
  loc_EEA4AE: Proc_5_0_1107AD0(&HFF, Me)
  loc_EEA4B6: Exit Sub
  loc_EEA4B7: ' Referenced from: EEA44E
  loc_EEA4BF: Set var_A8 = Err()
  loc_EEA4C5: Call 0.Method_arg_2C (var_8C, global_64)
  loc_EEA4E6: MsgBox(CVar(var_8C), &H40, "Information", var_EC, var_10C)
  loc_EEA4F9: Exit Sub
  loc_EEA4FA: Exit Sub
End Sub

Public Sub Proc_44_49_10685A8(arg_C) '10685A8
  'Data Table: 53C1B4
  Dim var_8C As Recordset15
  loc_1068319: Set var_8C = arg_C 
  loc_1068341: var_8C.Fields.Append "Code", &HC8, 8
  loc_106836D: var_8C.Fields.Append "Item", &HC8, &H23
  loc_1068399: var_8C.Fields.Append "Unit", &HC8, 6
  loc_10683C5: var_8C.Fields.Append "DispCode", &HC8, 4
  loc_10683F1: var_8C.Fields.Append "BarCode", &HC8, &H1E
  loc_106841D: var_8C.Fields.Append "Rate", &HC8, &HB
  loc_1068449: var_8C.Fields.Append "LblName", &HC8, &H28
  loc_1068475: var_8C.Fields.Append "LblQty", &HC8, &H28
  loc_10684A1: var_8C.Fields.Append "LblRem1", &HC8, &H28
  loc_10684CD: var_8C.Fields.Append "LblRem2", &HC8, &H28
  loc_10684F9: var_8C.Fields.Append "LblRem3", &HC8, &H28
  loc_1068525: var_8C.Fields.Append "LblRem4", &HC8, &H28
  loc_1068551: var_8C.Fields.Append "LblRem5", &HC8, &H28
  loc_1068561: var_8C.CursorType = 3
  loc_106856E: var_8C.LockType = 3
  loc_106858D: var_8C.Open var_A0, var_B0, -1
  loc_1068594: Set var_8C = Nothing 
  loc_106859B: Set var_88 = arg_C 
  loc_106859F: Proc_44_49_10685A8 = -1
  loc_10685A5: ArrayRebase1Var
End Sub

Public Sub Proc_44_50_FB3DBC(arg_C) 'FB3DBC
  'Data Table: 53C1B4
  Dim var_98 As TextBox
  Dim var_8C As DTPicker
  loc_FB3C1E: Set var_8C = Me.Txt
  loc_FB3C24: Call 0.Method_Proc_44_50_FB3DBCC (var_8E, var_86)
  loc_FB3C34: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FB3C4A:   Set var_8C = Me.Txt
  loc_FB3C50:   Call 0.Method_Proc_44_50_FB3DBC0 (CInt(var_86), var_98)
  loc_FB3C58:   var_98.Enabled = arg_C
  loc_FB3C67: Next var_92 'Byte
  loc_FB3C7A: Set var_8C = Me.Command1
  loc_FB3C80: Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_FB3C9A: Set var_8C = Me.Txt
  loc_FB3CA0: Call 0.Method_Proc_44_50_FB3DBC0 (CInt(&HB), var_98)
  loc_FB3CA8: var_98.Enabled = Not(arg_C)
  loc_FB3CC3: Set var_8C = Me.Txt
  loc_FB3CC9: Call 0.Method_Proc_44_50_FB3DBC0 (CInt(&HF), var_98)
  loc_FB3CD1: var_98.Enabled = Not(arg_C)
  loc_FB3CEC: Set var_8C = Me.Txt
  loc_FB3CF2: Call 0.Method_Proc_44_50_FB3DBC0 (CInt(&H10), var_98)
  loc_FB3CFA: var_98.Enabled = Not(arg_C)
  loc_FB3D15: Set var_8C = Me.Txt
  loc_FB3D1B: Call 0.Method_Proc_44_50_FB3DBC0 (CInt(&H12), var_98)
  loc_FB3D23: var_98.Enabled = Not(arg_C)
  loc_FB3D3C: Set var_8C = Me.Txt
  loc_FB3D42: Call 0.Method_Proc_44_50_FB3DBC0 (CInt(&H13), var_98)
  loc_FB3D4A: var_98.Enabled = False
  loc_FB3D63: Set var_8C = Me.Txt
  loc_FB3D69: Call 0.Method_Proc_44_50_FB3DBC0 (CInt(&H1C), var_98)
  loc_FB3D71: var_98.Enabled = False
  loc_FB3D8A: Set var_8C = Me.CmdLabelPrint
  loc_FB3D90: Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_FB3DAE: Me.DTP.Enabled = Not(arg_C)
  loc_FB3DB9: Exit Sub
End Sub

Public Sub Proc_44_51_F5FF88
  'Data Table: 53C1B4
  Dim var_94 As TextBox
  loc_F5FE6A: Set var_90 = Me.Txt
  loc_F5FE70: Call 0.Method_Proc_44_51_F5FF880 (CInt(1), var_94)
  loc_F5FE80: var_8C = var_94.Text
  loc_F5FE98: Set var_90 = Me.Txt
  loc_F5FE9E: Call 0.Method_Proc_44_51_F5FF88C (var_9A, var_86)
  loc_F5FEAE: For var_9E =  To CByte((var_9A - 1)): CByte(0) = var_9E 'Byte
  loc_F5FEC4:   Set var_90 = Me.Txt
  loc_F5FECA:   Call 0.Method_Proc_44_51_F5FF880 (CInt(var_86), var_94)
  loc_F5FED2:   var_94.Text = vbNullString
  loc_F5FEE1: Next var_9E 'Byte
  loc_F5FEF5: Set var_90 = Me.Txt
  loc_F5FEFB: Call 0.Method_Proc_44_51_F5FF880 (CInt(4), var_94)
  loc_F5FF03: var_94.Text = "No"
  loc_F5FF1D: Set var_90 = Me.Txt
  loc_F5FF23: Call 0.Method_Proc_44_51_F5FF880 (CInt(5), var_94)
  loc_F5FF2B: var_94.Text = "No"
  loc_F5FF45: Set var_90 = Me.Txt
  loc_F5FF4B: Call 0.Method_Proc_44_51_F5FF880 (CInt(1), var_94)
  loc_F5FF53: var_94.Text = var_8C
  loc_F5FF6D: Set var_90 = Me.Txt
  loc_F5FF73: Call 0.Method_Proc_44_51_F5FF880 (CInt(&HE), var_94)
  loc_F5FF7B: var_94.Text = "Yes"
  loc_F5FF87: Exit Sub
End Sub

Public Sub Proc_44_52_160B528
  'Data Table: 53C1B4
  Dim Me As Variant
  Dim var_CC As Variant
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim var_FC As Variant
  Dim var_100 As String
  Dim unk_53C1E2 As Connection15
  Dim var_8C As Recordset15
  Dim var_BC As Variant
  Dim var_124 As Variant
  Dim var_190 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_1D8 As String
  Dim var_1DC As Variant
  Dim var_128 As Variant
  Dim var_1A4 As Variant
  Dim var_14C As Variant
  Dim var_88 As Recordset15
  loc_160A0B0: On Error Goto loc_160B51F
  loc_160A0CA: If (Me.RecordCount > 0) Then
  loc_160A0DA:   var_CC = "Select U_Name,U_AE,U_EntDt From ItemMast where Code+RestCode='"
  loc_160A123:   unk_53C1E2.Execute CStr(var_CC & Me.Fields.Item("Code").Value & "'  "), var_120, -1
  loc_160A12E:   Set var_8C = var_124
  loc_160A182:   var_124 = var_8C.Fields
  loc_160A1EB:   var_18C = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_160A230:   Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_Name")), var_18C)))
  loc_160A2AA:   var_128 = var_8C.Fields.Item("U_AE")
  loc_160A30B:   var_18C = IIf((Proc_6_38_E69628(CVar(var_8C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128)) = "E"), "Last Update : ", "entdt : "))
  loc_160A32A:   var_1A4 = var_8C.Fields.Item("U_EntDt")
  loc_160A33E:   var_1D4 = var_18C & CVar(Proc_6_38_E69628(CVar(var_1A4))) 
  loc_160A34A:   Set var_1DC = Me.LblLDt
  loc_160A350:   var_1DC.Caption = CStr(var_1D4)
  loc_160A388: End If
  loc_160A38E: Proc_183_45_E5CCA8(global_64)
  loc_160A3AA: If (Me.RecordCount <= 0) Then
  loc_160A3AD:   Call Proc_44_51_F5FF88()
  loc_160A3B5: Else
  loc_160A3E9:   global_56 = CStr(Me.Fields.Item("Type").Value)
  loc_160A42E:   global_128 = CStr(Me.Fields.Item("Name").Value)
  loc_160A47B:   Set var_124 = Me.Txt
  loc_160A481:   Call 0.Method_Proc_44_52_160B5280 (CInt(0), var_128)
  loc_160A489:   var_128.Text = CStr(Me.Fields.Item("Name").Value)
  loc_160A4DB:   Set var_124 = Me.Txt
  loc_160A4E1:   Call 0.Method_Proc_44_52_160B5280 (CInt(&HA), var_128)
  loc_160A4E9:   var_128.Text = CStr(Me.Fields.Item("DispCode").Value)
  loc_160A53B:   Set var_124 = Me.Txt
  loc_160A541:   Call 0.Method_Proc_44_52_160B5280 (CInt(0), var_128)
  loc_160A549:   var_128.Tag = CStr(Me.Fields.Item("ItemCode").Value)
  loc_160A598:   Set var_124 = Me.Txt
  loc_160A59E:   Call 0.Method_Proc_44_52_160B5280 (CInt(1), var_128)
  loc_160A5A6:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")))
  loc_160A5F3:   Set var_124 = Me.Txt
  loc_160A5F9:   Call 0.Method_Proc_44_52_160B5280 (CInt(2), var_128)
  loc_160A601:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGrpName")))
  loc_160A64E:   Set var_124 = Me.Txt
  loc_160A654:   Call 0.Method_Proc_44_52_160B5280 (CInt(2), var_128)
  loc_160A65C:   var_128.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemGroup")))
  loc_160A6A9:   Set var_124 = Me.Txt
  loc_160A6AF:   Call 0.Method_Proc_44_52_160B5280 (CInt(6), var_128)
  loc_160A6B7:   var_128.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCatCode")))
  loc_160A704:   Set var_124 = Me.Txt
  loc_160A70A:   Call 0.Method_Proc_44_52_160B5280 (CInt(6), var_128)
  loc_160A712:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ItemCategory")))
  loc_160A75F:   Set var_124 = Me.Txt
  loc_160A765:   Call 0.Method_Proc_44_52_160B5280 (CInt(4), var_128)
  loc_160A76D:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Disc")))
  loc_160A7BA:   Set var_124 = Me.Txt
  loc_160A7C0:   Call 0.Method_Proc_44_52_160B5280 (CInt(&HC), var_128)
  loc_160A7C8:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("SChrApp")))
  loc_160A824:   var_128 = Me.Fields.Item("RateIncTax")
  loc_160A86C:   var_14C = IIf(((Proc_6_38_E69628(CVar(Me.Fields.Item("RateIncTax"))) = vbNullString) Or (Proc_6_38_E69628(CVar(var_128)) = "N")), "No", "Yes")
  loc_160A874:   var_1D8 = CStr(var_14C)
  loc_160A883:   Set var_190 = Me.Txt
  loc_160A889:   Call 0.Method_Proc_44_52_160B5280 (CInt(&HD), var_1A4)
  loc_160A891:   var_1A4.Text = var_1D8
  loc_160A8F6:   Set var_124 = Me.Txt
  loc_160A8FC:   Call 0.Method_Proc_44_52_160B5280 (CInt(5), var_128)
  loc_160A904:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("REdit")))
  loc_160A951:   Set var_124 = Me.Txt
  loc_160A957:   Call 0.Method_Proc_44_52_160B5280 (CInt(8), var_128)
  loc_160A95F:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RestName")))
  loc_160A9AC:   Set var_124 = Me.Txt
  loc_160A9B2:   Call 0.Method_Proc_44_52_160B5280 (CInt(8), var_128)
  loc_160A9BA:   var_128.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RestCode")))
  loc_160AA07:   Set var_124 = Me.Txt
  loc_160AA0D:   Call 0.Method_Proc_44_52_160B5280 (CInt(3), var_128)
  loc_160AA15:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("KitchenName")))
  loc_160AA62:   Set var_124 = Me.Txt
  loc_160AA68:   Call 0.Method_Proc_44_52_160B5280 (CInt(3), var_128)
  loc_160AA70:   var_128.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Kitchen")))
  loc_160AAAF:   var_100 = Proc_6_38_E69628(CVar(Me.Fields.Item("NType")))
  loc_160AABD:   Set var_124 = Me.Txt
  loc_160AAC3:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H11), var_128)
  loc_160AACB:   var_128.Text = var_100
  loc_160AAEC:   ReDim var_1E8(0 To 3)
  loc_160AB03:   var_1E8(0) = "Manufactured Item"
  loc_160AB12:   var_1E8(1) = "Trade Item"
  loc_160AB21:   var_1E8(2) = "Proprietary Item"
  loc_160AB30:   var_1E8(3) = "Other"
  loc_160AB47:   global_100 = Array(var_1E8)
  loc_160AB52:   Set var_128 = Me.ListView
  loc_160AB59:   Set var_190 = Me.Txt
  loc_160AB71:   Set var_AC = var_190
  loc_160AB8B:   Set global_116 = Proc_6_66_F0048C(var_128, var_AC, CInt(&H11))
  loc_160ABAA:   Set var_98 = Me.Txt
  loc_160ABB0:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H11), var_AC, var_100)
  loc_160ABCB:   Set var_124 = Me.Txt
  loc_160ABD1:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H11), var_128, var_100)
  loc_160ABD9:   var_128.Tag = 4
  loc_160AC25:   Me.ListView.SelectedItem = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("NType"))))
  loc_160AC71:   Set var_124 = Me.Txt
  loc_160AC77:   Call 0.Method_Proc_44_52_160B5280 (CInt(&HE), var_128)
  loc_160AC7F:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ActiveYN")))
  loc_160ACCC:   Set var_124 = Me.Txt
  loc_160ACD2:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H13), var_128)
  loc_160ACDA:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("BarCode")))
  loc_160AD27:   Set var_124 = Me.Txt
  loc_160AD2D:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H1C), var_128)
  loc_160AD35:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CommodityCode")))
  loc_160AD82:   Set var_124 = Me.Txt
  loc_160AD88:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H14), var_128)
  loc_160AD90:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelName")))
  loc_160ADDD:   Set var_124 = Me.Txt
  loc_160ADE3:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H15), var_128)
  loc_160ADEB:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelQty")))
  loc_160AE38:   Set var_124 = Me.Txt
  loc_160AE3E:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H16), var_128)
  loc_160AE46:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark1")))
  loc_160AE93:   Set var_124 = Me.Txt
  loc_160AE99:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H17), var_128)
  loc_160AEA1:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark2")))
  loc_160AEEE:   Set var_124 = Me.Txt
  loc_160AEF4:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H18), var_128)
  loc_160AEFC:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark3")))
  loc_160AF49:   Set var_124 = Me.Txt
  loc_160AF4F:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H19), var_128)
  loc_160AF57:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark4")))
  loc_160AFA4:   Set var_124 = Me.Txt
  loc_160AFAA:   Call 0.Method_Proc_44_52_160B5280 (CInt(&H1A), var_128)
  loc_160AFB2:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("LabelRemark5")))
  loc_160AFE8:   var_BC = CVar(Me.Fields.Item("DiscApp")) 'Address
  loc_160AFF7:   global_120 = Proc_6_38_E69628(var_BC)
  loc_160B021:   Proc_6_7_F26918(var_BC, MemVar_1F950EC, "Select Rate,MRP,Appdate From ItemRate Where AppDate<=", var_1D4)
  loc_160B029:   var_DC = -1 & var_BC 
  loc_160B05B:   var_120 = Me.Fields.Item("ItemCode").Value
  loc_160B08D:   var_128 = Me.Fields.Item("RestCode")
  loc_160B09D:   var_1B4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("NType")))) & " And ItemCode='" & var_120 & "' And RestCode='" & var_128.Value 
  loc_160B0B4:   unk_53C1E2.Execute CStr(var_1B4 & "' And IsNull(Party,'')='' Order By AppDate Desc "), var_190, Me.Fields.Item("ItemCode").Text
  loc_160B0BF:   Set var_88 = var_190
  loc_160B0FD:   If (var_88.RecordCount > 0) Then
  loc_160B152:     Set var_124 = Me.Txt
  loc_160B158:     Call 0.Method_Proc_44_52_160B5280 (CInt(7), var_128, CStr(Format(CVar(var_88.Fields.Item("Rate")), "0.00")))
  loc_160B160:     var_128.Text = 1
  loc_160B1A5:     var_DC = "0.00"
  loc_160B1B5:     var_FC = Format(CVar(var_88.Fields.Item("MRP")), var_DC)
  loc_160B1CC:     Set var_124 = Me.Txt
  loc_160B1D2:     Call 0.Method_Proc_44_52_160B5280 (CInt(&H1B), var_128, CStr(var_FC))
  loc_160B1DA:     var_128.Text = 1
  loc_160B20E:     var_AC = var_88.Fields.Item("AppDate")
  loc_160B216:     var_BC = var_AC.Value
  loc_160B21F:     var_100 = CStr(var_BC)
  loc_160B22D:     Set var_124 = Me.Txt
  loc_160B233:     Call 0.Method_Proc_44_52_160B5280 (CInt(9), var_128, var_100)
  loc_160B23B:     var_128.Text = 1
  loc_160B254:   Else
  loc_160B262:     Set var_98 = Me.Txt
  loc_160B268:     Call 0.Method_Proc_44_52_160B5280 (CInt(7), var_AC)
  loc_160B270:     var_AC.Text = vbNullString
  loc_160B28A:     Set var_98 = Me.Txt
  loc_160B290:     Call 0.Method_Proc_44_52_160B5280 (CInt(&H1B), var_AC)
  loc_160B298:     var_AC.Text = vbNullString
  loc_160B2B2:     Set var_98 = Me.Txt
  loc_160B2B8:     Call 0.Method_Proc_44_52_160B5280 (CInt(9), var_AC)
  loc_160B2C0:     var_AC.Text = vbNullString
  loc_160B2CC:   End If
  loc_160B2CC: End If
  loc_160B2D2: var_CC = 0
  loc_160B2F9: Set var_98 = Me.Txt
  loc_160B2FF: Call 0.Method_Proc_44_52_160B5280 (CInt(0), var_AC, var_100, "Select Count(*) From BOM Where FinItem='", var_BC, -1)
  loc_160B328: Set var_124 = Me.Txt
  loc_160B32E: Call 0.Method_Proc_44_52_160B5280 (CInt(8), var_128, var_1D8, var_1A4 & var_100 & "' And RestCode='")
  loc_160B336: var_CC = var_128.Tag
  loc_160B34F: unk_53C1E2.Execute var_1DC & var_1D8 & "'", var_DC, 1
  loc_160B357:  = var_AC.Tag.Fields
  loc_160B35F:  = var_1A4.Item()
  loc_160B367:  = var_1DC.Value
  loc_160B372: Proc_6_39_E7D3A0(var_FC)
  loc_160B3AB: If (var_FC > 0) Then
  loc_160B3B7:   Set var_98 = Me.CmdCopyConsumption
  loc_160B3BD:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_160B3C8: Else
  loc_160B3D0:   Set var_98 = Me.CmdCopyConsumption
  loc_160B3D6:   Call {33AD4EEA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_160B3DE: End If
  loc_160B3F9: If (Me.FrCopyConsumption.Visible = &HFF) Then
  loc_160B408:   Me.FrCopyConsumption.Visible = False
  loc_160B410: End If
  loc_160B427: If (Me.RecordCount > 0) Then
  loc_160B469:   var_DC = "Select LabelPrinting From Depart Where Code='" & Me.Fields.Item("RestCode").Value 
  loc_160B480:   unk_53C1E2.Execute CStr(var_DC & "'"), var_120, -1
  loc_160B4DE:   If (Proc_6_38_E69628(CVar(var_124.Fields.Item("LabelPrinting")), var_124) = "Y") Then
  loc_160B4E9:     Set var_98 = Me.ChkLblInfo
  loc_160B4EF:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_160B4FA:   Else
  loc_160B503:     Set var_98 = Me.ChkLblInfo
  loc_160B509:     Call {33AD4EDB-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_160B511:   End If
  loc_160B511: End If
  loc_160B511: Call Proc_44_54_102E7A4(var_DC)
  loc_160B51B: Set var_88 = Nothing
  loc_160B51E: Exit Sub
  loc_160B51F: ' Referenced from: 160A0B0
  loc_160B51F: Proc_6_60_E63754()
  loc_160B524: Exit Sub
End Sub

Public Sub Proc_44_53_12F346C
  'Data Table: 53C1B4
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_53C1E2 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  Dim var_AC As String
  Dim var_A0 As Variant
  loc_12F2DCB: If (Me.RecordCount = 0) Then
  loc_12F2DCE:   Proc_44_53_12F346C = 
  loc_12F2DD4: End If
  loc_12F2DD8: Set var_90 = Me.TopCtrl1
  loc_12F2DDE: Call {33AD4EFA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12F2DF7: If (CStr() = "Add") Then
  loc_12F2E00:   var_F4 = 0
  loc_12F2E35:   Set var_90 = Me.Txt
  loc_12F2E3B:   Call 0.Method_Proc_44_53_12F346C0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12F2E64:   Set var_B8 = Me.Txt
  loc_12F2E6A:   Call 0.Method_Proc_44_53_12F346C0 (CInt(0), var_BC, var_C0, var_E4 & var_AC & "' and Code='")
  loc_12F2E72:   var_F4 = var_BC.Tag
  loc_12F2E8B:   unk_53C1E2.Execute var_F8 & var_C0 & "'", var_108, 
  loc_12F2E93:    = var_A8.Tag.Fields
  loc_12F2E9B:    = var_E4.Item()
  loc_12F2EA3:    = var_F8.Value
  loc_12F2EDE:   If (var_108 > 0) Then
  loc_12F2EEC:     var_108 = "Information"
  loc_12F2EFC:     var_A0 = "Duplicate Name"
  loc_12F2F02:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F2F1D:     Set var_90 = Me.Txt
  loc_12F2F23:     Call 0.Method_Proc_44_53_12F346C0 (CInt(0))
  loc_12F2F2B:     var_A8.SetFocus
  loc_12F2F3C:     Proc_44_53_12F346C = &HFF
  loc_12F2F42:   End If
  loc_12F2F50:   Set var_90 = Me.Txt
  loc_12F2F56:   Call 0.Method_Proc_44_53_12F346C0 (CInt(&HA), var_A8)
  loc_12F2F75:   If (var_A8.Text <> vbNullString) Then
  loc_12F2F7E:     var_F4 = 0
  loc_12F2FB3:     Set var_90 = Me.Txt
  loc_12F2FB9:     Call 0.Method_Proc_44_53_12F346C0 (CInt(8), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and restcode='", var_A0, -1)
  loc_12F2FE2:     Set var_B8 = Me.Txt
  loc_12F2FE8:     Call 0.Method_Proc_44_53_12F346C0 (CInt(&HA), var_BC, var_C0, var_E4 & var_AC & "' and DispCode=")
  loc_12F2FF0:     var_F4 = var_BC.Text
  loc_12F3009:     unk_53C1E2.Execute var_F8 & var_C0 & vbNullString, var_108, var_A8
  loc_12F3011:      = var_A8.Tag.Fields
  loc_12F3019:      = var_E4.Item()
  loc_12F3021:      = var_F8.Value
  loc_12F305C:     If (var_108 > 0) Then
  loc_12F306A:       var_108 = "Information"
  loc_12F307A:       var_A0 = "Duplicate Disp Code"
  loc_12F3080:       MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F309B:       Set var_90 = Me.Txt
  loc_12F30A1:       Call 0.Method_Proc_44_53_12F346C0 (CInt(&HA))
  loc_12F30A9:       var_A8.SetFocus
  loc_12F30BA:       Proc_44_53_12F346C = &HFF
  loc_12F30C0:     End If
  loc_12F30C0:   End If
  loc_12F30C3: Else
  loc_12F30C9:   var_F4 = 0
  loc_12F30FE:   Set var_90 = Me.Txt
  loc_12F3104:   Call 0.Method_Proc_44_53_12F346C0 (CInt(0), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Code='", var_A0, -1)
  loc_12F312D:   Set var_B8 = Me.Txt
  loc_12F3133:   Call 0.Method_Proc_44_53_12F346C0 (CInt(8), var_BC, var_C0, var_E4 & var_AC & "' And restcode='")
  loc_12F313B:   var_F4 = var_BC.Tag
  loc_12F3165:   unk_53C1E2.Execute var_F8 & var_C0 & "' and Name<>'" & global_128 & "'", var_108, var_A8
  loc_12F316D:    = var_A8.Tag.Fields
  loc_12F3175:    = var_E4.Item()
  loc_12F317D:    = var_F8.Value
  loc_12F31BC:   If (var_108 > 0) Then
  loc_12F31CA:     var_108 = "Information"
  loc_12F31DA:     var_A0 = "Duplicate Name"
  loc_12F31E0:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_12F31FB:     Set var_90 = Me.Txt
  loc_12F3201:     Call 0.Method_Proc_44_53_12F346C0 (CInt(0))
  loc_12F3209:     var_A8.SetFocus
  loc_12F321A:     Proc_44_53_12F346C = &HFF
  loc_12F3220:   End If
  loc_12F322E:   Set var_90 = Me.Txt
  loc_12F3234:   Call 0.Method_Proc_44_53_12F346C0 (CInt(&HA), var_A8)
  loc_12F3253:   If (var_A8.Text <> vbNullString) Then
  loc_12F325C:     var_F4 = 0
  loc_12F3291:     Set var_90 = Me.Txt
  loc_12F3297:     Call 0.Method_Proc_44_53_12F346C0 (CInt(&HA), var_A8, var_AC, "Select Count(*) From ItemMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and DispCode=", var_A0, -1)
  loc_12F32C0:     Set var_B8 = Me.Txt
  loc_12F32C6:     Call 0.Method_Proc_44_53_12F346C0 (CInt(8), var_BC, var_C0, var_E4 & var_AC & " And restcode='")
  loc_12F32CE:     var_F4 = var_BC.Tag
  loc_12F32FD:     unk_53C1E2.Execute var_F8 & var_C0 & "' and DispCode<> " & CStr(global_60) & vbNullString, var_108, var_A8
  loc_12F3305:      = var_A8.Text.Fields
  loc_12F330D:      = var_E4.Item()
  loc_12F3315:      = var_F8.Value
  loc_12F3356:     If (var_108 > 0) Then
  loc_12F337A:       MsgBox("Duplicate Disp Code", &H40, "Information", var_128, var_148)
  loc_12F3395:       Set var_90 = Me.Txt
  loc_12F339B:       Call 0.Method_Proc_44_53_12F346C0 (CInt(&HA))
  loc_12F33A3:       var_A8.SetFocus
  loc_12F33B4:       Proc_44_53_12F346C = &HFF
  loc_12F33BA:     End If
  loc_12F33BA:   End If
  loc_12F33BA: End If
  loc_12F33C8: Set var_90 = Me.Txt
  loc_12F33CE: Call 0.Method_Proc_44_53_12F346C0 (CInt(&HA), var_A8)
  loc_12F33ED: If (var_A8.Text = "9999") Then
  loc_12F341E:   MsgBox(CVar("This Code is reserved for special items" & vbCrLf & vbCrLf & "Please choose another code"), &H40, "HMS", var_128, var_148)
  loc_12F3440:   Set var_90 = Me.Txt
  loc_12F3446:   Call 0.Method_Proc_44_53_12F346C0 (CInt(&HA), var_A8)
  loc_12F344E:   var_A8.SetFocus
  loc_12F345F:   Proc_44_53_12F346C = &HFF
  loc_12F3465: End If
  loc_12F3465: Proc_44_53_12F346C = var_A8
End Sub

Public Sub Proc_44_54_102E7A4
  'Data Table: 53C1B4
  loc_102E570: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_102E582:   Me.DGHelp.Visible = False
  loc_102E58A: End If
  loc_102E5A6: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_102E5B8:   Me.DGRest.Visible = False
  loc_102E5C0: End If
  loc_102E5DC: If (CBool(Me.DGItemGroup.Visible) = &HFF) Then
  loc_102E5EE:   Me.DGItemGroup.Visible = False
  loc_102E5F6: End If
  loc_102E612: If (CBool(Me.DGItemCat.Visible) = &HFF) Then
  loc_102E624:   Me.DGItemCat.Visible = False
  loc_102E62C: End If
  loc_102E648: If (CBool(Me.DGUnit.Visible) = &HFF) Then
  loc_102E65A:   Me.DGUnit.Visible = False
  loc_102E662: End If
  loc_102E67E: If (CBool(Me.DGAppDate.Visible) = &HFF) Then
  loc_102E690:   Me.DGAppDate.Visible = False
  loc_102E698: End If
  loc_102E6B3: If (Me.Frame1.Visible = &HFF) Then
  loc_102E6C5:   Me.DGUnit.Visible = False
  loc_102E6CD: End If
  loc_102E6E9: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_102E6FB:   Me.FGPoint.Visible = False
  loc_102E703: End If
  loc_102E71F: If (CBool(Me.DGFinItem.Visible) = &HFF) Then
  loc_102E731:   Me.DGFinItem.Visible = False
  loc_102E739: End If
  loc_102E755: If (CBool(Me.DGDispCode.Visible) = &HFF) Then
  loc_102E767:   Me.DGDispCode.Visible = False
  loc_102E76F: End If
  loc_102E78A: If (Me.FrmList.Visible = &HFF) Then
  loc_102E799:   Me.FrmList.Visible = False
  loc_102E7A1: End If
  loc_102E7A1: Exit Sub
End Sub

Public Sub Proc_44_55_1127704
  'Data Table: 53C1B4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_112738C: On Error Goto loc_11276FB
  loc_112739D: Set var_88 = Me.Txt
  loc_11273A3: Call 0.Method_Proc_44_55_11277040 (CInt(0), var_8C)
  loc_11273C2: Me.DGHelp.Left = CVar(var_8C.Left)
  loc_11273DE: Set var_B4 = Me.Txt
  loc_11273E4: Call 0.Method_Proc_44_55_11277040 (CInt(0), var_B8)
  loc_11273FF: Set var_88 = Me.Txt
  loc_1127405: Call 0.Method_Proc_44_55_11277040 (CInt(0), var_8C)
  loc_112741D: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_112742C: Me.DGHelp.Top = CVar(var_8C.Left)
  loc_112744C: Set var_88 = Me.Txt
  loc_1127452: Call 0.Method_Proc_44_55_11277040 (CInt(6), var_8C)
  loc_1127471: Me.DGItemCat.Left = CVar(var_8C.Left)
  loc_112748D: Set var_B4 = Me.Txt
  loc_1127493: Call 0.Method_Proc_44_55_11277040 (CInt(6), var_B8)
  loc_11274AE: Set var_88 = Me.Txt
  loc_11274B4: Call 0.Method_Proc_44_55_11277040 (CInt(6), var_8C)
  loc_11274CC: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H1E))) 'Single
  loc_11274DB: Me.DGItemCat.Top = CVar(var_8C.Left)
  loc_11274FB: Set var_88 = Me.Txt
  loc_1127501: Call 0.Method_Proc_44_55_11277040 (CInt(2), var_8C)
  loc_1127520: Me.DGItemGroup.Left = CVar(var_8C.Left)
  loc_112753C: Set var_B4 = Me.Txt
  loc_1127542: Call 0.Method_Proc_44_55_11277040 (CInt(2), var_B8)
  loc_112755D: Set var_88 = Me.Txt
  loc_1127563: Call 0.Method_Proc_44_55_11277040 (CInt(2), var_8C)
  loc_112757B: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_112758A: Me.DGItemGroup.Top = CVar(var_8C.Left)
  loc_11275AA: Set var_88 = Me.Txt
  loc_11275B0: Call 0.Method_Proc_44_55_11277040 (CInt(1), var_8C)
  loc_11275CF: Me.DGUnit.Left = CVar(var_8C.Left)
  loc_11275EB: Set var_B4 = Me.Txt
  loc_11275F1: Call 0.Method_Proc_44_55_11277040 (CInt(1), var_B8)
  loc_112760C: Set var_88 = Me.Txt
  loc_1127612: Call 0.Method_Proc_44_55_11277040 (CInt(1), var_8C)
  loc_112762A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_1127639: Me.DGUnit.Top = CVar(var_8C.Left)
  loc_1127659: Set var_88 = Me.Txt
  loc_112765F: Call 0.Method_Proc_44_55_11277040 (CInt(&H12), var_8C)
  loc_112767E: Me.DGFinItem.Left = CVar(var_8C.Left)
  loc_112769A: Set var_B4 = Me.Txt
  loc_11276A0: Call 0.Method_Proc_44_55_11277040 (CInt(&H12), var_B8)
  loc_11276BB: Set var_88 = Me.Txt
  loc_11276C1: Call 0.Method_Proc_44_55_11277040 (CInt(&H12), var_8C)
  loc_11276D9: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&H19))) 'Single
  loc_11276E8: Me.DGFinItem.Top = CVar(var_8C.Left)
  loc_11276FA: Exit Sub
  loc_11276FB: ' Referenced from: 112738C
  loc_11276FB: Proc_6_60_E63754()
  loc_1127700: Exit Sub
End Sub

Public Sub Proc_44_56_E81B10
  'Data Table: 53C1B4
  loc_E81AB0: Call Proc_44_54_102E7A4()
  loc_E81AEC: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E81AEF:   Call TopCtrl1_UnknownEvent_16()
  loc_E81AF7: Else
  loc_E81AFD:   Call 0.Method_arg_1E8 (var_108)
  loc_E81B05:   Call var_108.SetFocus
  loc_E81B0E: End If
  loc_E81B0E: Exit Sub
End Sub
