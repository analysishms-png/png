VERSION 5.00
Begin VB.Form RsTouchScreenTOKENEntry
  Caption = "KOT Entry"
  BackColor = &HDEE6FE&
  ForeColor = &H40&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = True
  FontTransparent = True
  FillColor = &H80&
  'Icon = n/a
  LinkTopic = "form4"
  ControlBox = 0   'False
  Visible = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 630
  ClientWidth = 14640
  ClientHeight = 8835
  LockControls = -1  'True
  BeginProperty Font
    Name = "System"
    Size = 9.75
    Charset = 0
    Weight = 700
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  WhatsThisHelp = -1  'True
  Begin MSHFlexGrid FGrid1
    Left = 8280
    Top = 6960
    Width = 5940
    Height = 2325
    TabIndex = 122
  End
  Begin Frame Frame
    BackColor = &H80000003&
    Left = 0
    Top = 8055
    Width = 7425
    Height = 6405
    Visible = 0   'False
    TabIndex = 31
    BorderStyle = 0 'None
    Begin MSHFlexGrid FGNCType
      Left = 15
      Top = 465
      Width = 3735
      Height = 5925
      TabIndex = 35
    End
    Begin TextBox TxtNCTOKEN
      Index = 0
      Left = 180
      Top = 1935
      Width = 3420
      Height = 255
      Visible = 0   'False
      TabIndex = 33
      BorderStyle = 0 'None
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtNCTOKEN
      Index = 1
      Left = 15
      Top = 15
      Width = 3735
      Height = 435
      TabIndex = 32
      BorderStyle = 0 'None
      Locked = -1  'True
      BeginProperty Font
        Name = "Tahoma"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSFlexGrid FGPointSt
      Left = 540
      Top = 2640
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 34
    End
    Begin BtnEnh CmNC
      Index = 0
      Left = 3765
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 94
    End
    Begin BtnEnh CmNC
      Index = 1
      Left = 4680
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 95
    End
    Begin BtnEnh CmNC
      Index = 2
      Left = 5595
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 96
    End
    Begin BtnEnh CmNC
      Index = 3
      Left = 6510
      Top = 0
      Width = 900
      Height = 900
      TabIndex = 97
    End
    Begin BtnEnh CmNC
      Index = 4
      Left = 3765
      Top = 915
      Width = 900
      Height = 900
      TabIndex = 98
    End
    Begin BtnEnh CmNC
      Index = 5
      Left = 4680
      Top = 915
      Width = 900
      Height = 900
      TabIndex = 99
    End
    Begin BtnEnh CmNC
      Index = 6
      Left = 5595
      Top = 915
      Width = 900
      Height = 900
      TabIndex = 100
    End
    Begin BtnEnh CmNC
      Index = 7
      Left = 6510
      Top = 915
      Width = 900
      Height = 900
      TabIndex = 101
    End
    Begin BtnEnh CmNC
      Index = 8
      Left = 3765
      Top = 1830
      Width = 900
      Height = 900
      TabIndex = 102
    End
    Begin BtnEnh CmNC
      Index = 9
      Left = 4680
      Top = 1830
      Width = 900
      Height = 900
      TabIndex = 103
    End
    Begin BtnEnh CmNC
      Index = 10
      Left = 5595
      Top = 1830
      Width = 900
      Height = 900
      TabIndex = 104
    End
    Begin BtnEnh CmNC
      Index = 11
      Left = 6510
      Top = 1830
      Width = 900
      Height = 900
      TabIndex = 105
    End
    Begin BtnEnh CmNC
      Index = 12
      Left = 3765
      Top = 2745
      Width = 900
      Height = 900
      TabIndex = 106
    End
    Begin BtnEnh CmNC
      Index = 13
      Left = 4680
      Top = 2745
      Width = 900
      Height = 900
      TabIndex = 107
    End
    Begin BtnEnh CmNC
      Index = 14
      Left = 5595
      Top = 2745
      Width = 900
      Height = 900
      TabIndex = 108
    End
    Begin BtnEnh CmNC
      Index = 15
      Left = 6510
      Top = 2745
      Width = 900
      Height = 900
      TabIndex = 109
    End
    Begin BtnEnh CmNC
      Index = 16
      Left = 3765
      Top = 3660
      Width = 900
      Height = 900
      TabIndex = 110
    End
    Begin BtnEnh CmNC
      Index = 17
      Left = 4680
      Top = 3660
      Width = 900
      Height = 900
      TabIndex = 111
    End
    Begin BtnEnh CmNC
      Index = 18
      Left = 5595
      Top = 3660
      Width = 900
      Height = 900
      TabIndex = 112
    End
    Begin BtnEnh CmNC
      Index = 19
      Left = 6510
      Top = 3660
      Width = 900
      Height = 900
      TabIndex = 113
    End
    Begin BtnEnh CmNC
      Index = 20
      Left = 3765
      Top = 4575
      Width = 900
      Height = 900
      TabIndex = 114
    End
    Begin BtnEnh CmNC
      Index = 21
      Left = 4680
      Top = 4575
      Width = 900
      Height = 900
      TabIndex = 115
    End
    Begin BtnEnh CmNC
      Index = 22
      Left = 5595
      Top = 4575
      Width = 900
      Height = 900
      TabIndex = 116
    End
    Begin BtnEnh CmNC
      Index = 23
      Left = 6510
      Top = 4575
      Width = 900
      Height = 900
      TabIndex = 117
    End
    Begin BtnEnh CmNC
      Index = 24
      Left = 3765
      Top = 5490
      Width = 900
      Height = 900
      TabIndex = 118
    End
    Begin BtnEnh CmNC
      Index = 25
      Left = 4680
      Top = 5490
      Width = 900
      Height = 900
      TabIndex = 119
    End
    Begin BtnEnh CmNC
      Index = 26
      Left = 5595
      Top = 5490
      Width = 900
      Height = 900
      TabIndex = 120
    End
    Begin BtnEnh CmNC
      Index = 27
      Left = 6510
      Top = 5490
      Width = 900
      Height = 900
      TabIndex = 121
    End
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8670
    Width = 14640
    Height = 165
    Visible = 0   'False
    TabIndex = 93
  End
  Begin CheckBox ChkNCTOKEN
    Caption = "NC "
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11190
    Top = 885
    Width = 1125
    Height = 270
    TabIndex = 80
    Alignment = 1 'Right Justify
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
    Index = 2
    Left = 7980
    Top = 30
    Width = 555
    Height = 285
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 1
    Left = 6870
    Top = 30
    Width = 1095
    Height = 285
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 12
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
    Index = 0
    ForeColor = &HFF0000&
    Left = 5655
    Top = 30
    Width = 1200
    Height = 285
    TabIndex = 0
    BorderStyle = 0 'None
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
  Begin Frame FrameQty
    BackColor = &H808080&
    ForeColor = &H8000000A&
    Left = 5685
    Top = 8445
    Width = 7755
    Height = 1590
    Visible = 0   'False
    TabIndex = 40
    BeginProperty Font
      Name = "Times New Roman"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox TxtQty
      ForeColor = &HFF0000&
      Left = 15
      Top = 1200
      Width = 2190
      Height = 390
      TabIndex = 43
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox TxtQtyFormat
      Left = 45
      Top = 810
      Width = 495
      Height = 360
      Visible = 0   'False
      TabIndex = 42
      BorderStyle = 0 'None
      Alignment = 2 'Center
      MaxLength = 4
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 11.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin BtnEnh CmdQty
      Index = 1
      Left = 2220
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 41
    End
    Begin BtnEnh CmdQty
      Index = 0
      Left = 4605
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 44
    End
    Begin BtnEnh CmdQty
      Index = 2
      Left = 3015
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 45
    End
    Begin BtnEnh CmdQty
      Index = 3
      Left = 3810
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 46
    End
    Begin BtnEnh CmdQty
      Index = 4
      Left = 4605
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 47
    End
    Begin BtnEnh CmdQty
      Index = 5
      Left = 5385
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 48
    End
    Begin BtnEnh CmdQty
      Index = 6
      Left = 6165
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 49
    End
    Begin BtnEnh CmdQty
      Index = 7
      Left = 2220
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 50
    End
    Begin BtnEnh CmdQty
      Index = 8
      Left = 3015
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 51
    End
    Begin BtnEnh CmdQty
      Index = 9
      Left = 3810
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 52
    End
    Begin BtnEnh CmdQty
      Index = 10
      Left = 5385
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 53
    End
    Begin BtnEnh CmdQty
      Index = 11
      Left = 6945
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 54
    End
    Begin BtnEnh CmdQty
      Index = 12
      Left = 6945
      Top = 0
      Width = 795
      Height = 795
      TabIndex = 55
    End
    Begin BtnEnh CmdQty
      Index = 13
      Left = 6165
      Top = 780
      Width = 795
      Height = 795
      TabIndex = 56
    End
    Begin Label LblVtype
      BackColor = &HFF8080&
      ForeColor = &HFFFFFF&
      Left = 15
      Top = 810
      Width = 2190
      Height = 390
      TabIndex = 58
      Alignment = 2 'Center
      BeginProperty Font
        Name = "Arial"
        Size = 14.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblIndex
      Left = 585
      Top = 825
      Width = 1500
      Height = 360
      Visible = 0   'False
      TabIndex = 57
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
  End
  Begin TextBox Txt
    Index = 13
    ForeColor = &HFF0000&
    Left = 2520
    Top = 930
    Width = 450
    Height = 240
    TabIndex = 4
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
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    Left = 5475
    Top = 1185
    Width = 1290
    Height = 240
    Visible = 0   'False
    TabIndex = 37
    BorderStyle = 0 'None
    MaxLength = 11
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
    ForeColor = &HFF0000&
    Left = 1110
    Top = 1185
    Width = 4350
    Height = 240
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 36
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
    Index = 10
    ForeColor = &HFF0000&
    Left = 1035
    Top = 8580
    Width = 3480
    Height = 240
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
    Index = 9
    ForeColor = &HFF0000&
    Left = 1035
    Top = 8310
    Width = 3480
    Height = 240
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
    Index = 8
    ForeColor = &HFF0000&
    Left = 1035
    Top = 8040
    Width = 3480
    Height = 240
    Enabled = 0   'False
    TabIndex = 25
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
    ForeColor = &HFF0000&
    Left = 10725
    Top = 1170
    Width = 2730
    Height = 255
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
  Begin DataGrid DGTable
    Left = 13605
    Top = 8370
    Width = 9240
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 22
  End
  Begin TextBox Txt
    Index = 6
    ForeColor = &HFF0000&
    Left = 6840
    Top = 915
    Width = 4350
    Height = 240
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
  Begin DataGrid DGRest
    Left = 13275
    Top = 8010
    Width = 5910
    Height = 3390
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 18
  End
  Begin DataGrid DGItem
    Left = 14145
    Top = 7860
    Width = 4035
    Height = 4710
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 17
  End
  Begin TextBox Txt
    Index = 5
    ForeColor = &HFF0000&
    Left = 3705
    Top = 915
    Width = 2355
    Height = 240
    TabIndex = 5
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
    Index = 4
    ForeColor = &HFF0000&
    Left = 1110
    Top = 930
    Width = 960
    Height = 240
    TabIndex = 3
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
    Index = 3
    BackColor = &H80000000&
    Left = 8190
    Top = 10215
    Width = 2325
    Height = 210
    Visible = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 40
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HC0FFFF&
    ForeColor = &H80000012&
    Left = 810
    Top = 1695
    Width = 765
    Height = 240
    Visible = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
    MultiLine = -1  'True
    MaxLength = 150
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin MSFlexGrid FGPoint
    Left = 11130
    Top = 9120
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 19
  End
  Begin MSHFlexGrid FGrid
    Left = 0
    Top = 1440
    Width = 7200
    Height = 6090
    TabIndex = 7
  End
  Begin BtnEnh Head
    Index = 1
    Left = 0
    Top = 360
    Width = 945
    Height = 540
    TabIndex = 72
  End
  Begin BtnEnh Head
    Index = 2
    Left = 945
    Top = 360
    Width = 945
    Height = 540
    TabIndex = 73
  End
  Begin BtnEnh Head
    Index = 3
    Left = 1890
    Top = 360
    Width = 945
    Height = 540
    TabIndex = 74
  End
  Begin BtnEnh Head
    Index = 4
    Left = 2820
    Top = 360
    Width = 945
    Height = 540
    TabIndex = 75
  End
  Begin BtnEnh Head
    Index = 5
    Left = 3780
    Top = 345
    Width = 945
    Height = 540
    TabIndex = 76
  End
  Begin BtnEnh Head
    Index = 6
    Left = 4725
    Top = 345
    Width = 945
    Height = 540
    TabIndex = 77
  End
  Begin BtnEnh HeadExit
    Left = 5670
    Top = 345
    Width = 945
    Height = 540
    TabIndex = 78
  End
  Begin BtnEnh cmdNCBill
    Left = 11175
    Top = 345
    Width = 1140
    Height = 540
    Visible = 0   'False
    TabIndex = 79
  End
  Begin BtnEnh CmChngSteward
    Left = 6615
    Top = 345
    Width = 1140
    Height = 540
    TabIndex = 81
  End
  Begin BtnEnh CmNoOfPersons
    Left = 7755
    Top = 345
    Width = 1140
    Height = 540
    TabIndex = 82
  End
  Begin BtnEnh CmChngToNC
    Left = 8895
    Top = 345
    Width = 1140
    Height = 540
    TabIndex = 83
  End
  Begin BtnEnh CmTransKOT
    Left = 10035
    Top = 345
    Width = 1140
    Height = 540
    TabIndex = 84
  End
  Begin BtnEnh CmChngMember
    Left = 12315
    Top = 345
    Width = 1140
    Height = 540
    Visible = 0   'False
    TabIndex = 85
  End
  Begin BtnEnh CmFgrid
    Index = 0
    Left = 7215
    Top = 1455
    Width = 1050
    Height = 675
    TabIndex = 86
  End
  Begin BtnEnh CmFgrid
    Index = 1
    Left = 7215
    Top = 5505
    Width = 1050
    Height = 675
    TabIndex = 87
  End
  Begin BtnEnh CmFgrid
    Index = 2
    Left = 7215
    Top = 2130
    Width = 1050
    Height = 675
    TabIndex = 88
  End
  Begin BtnEnh CmFgrid
    Index = 3
    Left = 7215
    Top = 2805
    Width = 1050
    Height = 675
    TabIndex = 89
  End
  Begin BtnEnh CmFgrid
    Index = 4
    Left = 7215
    Top = 3480
    Width = 1050
    Height = 675
    TabIndex = 90
  End
  Begin BtnEnh CmFgrid
    Index = 6
    Left = 7215
    Top = 4155
    Width = 1050
    Height = 675
    TabIndex = 91
  End
  Begin BtnEnh CmFgrid
    Index = 5
    Left = 7215
    Top = 4830
    Width = 1050
    Height = 675
    TabIndex = 92
  End
  Begin Frame FrameGrpItem
    BackColor = &H80000003&
    Left = 8280
    Top = 1455
    Width = 6600
    Height = 5085
    TabIndex = 59
    BorderStyle = 0 'None
    Begin BtnEnh CmdCatType
      Index = 0
      Left = 0
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 60
    End
    Begin BtnEnh CmdCatType
      Index = 1
      Left = 1875
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 61
    End
    Begin BtnEnh CmdCatType
      Index = 2
      Left = 3750
      Top = 0
      Width = 1875
      Height = 600
      TabIndex = 62
    End
    Begin BtnEnh CmdCatType
      Index = 4
      Left = 1875
      Top = 600
      Width = 1875
      Height = 615
      TabIndex = 63
    End
    Begin BtnEnh CmdCatType
      Index = 5
      Left = 3750
      Top = 600
      Width = 1875
      Height = 615
      TabIndex = 64
    End
    Begin BtnEnh SSPNext
      Left = 5640
      Top = 600
      Width = 960
      Height = 615
      TabIndex = 65
    End
    Begin BtnEnh SSPPrevious
      Left = 5640
      Top = 0
      Width = 960
      Height = 600
      TabIndex = 66
    End
    Begin BtnEnh CmdCatType
      Index = 3
      Left = 0
      Top = 600
      Width = 1875
      Height = 615
      TabIndex = 67
    End
    Begin BtnEnh SSPGroup
      Index = 0
      Left = 15
      Top = 300
      Width = 1560
      Height = 945
      Visible = 0   'False
      TabIndex = 69
    End
    Begin BtnEnh SSPItem
      Index = 0
      Left = 15
      Top = 300
      Width = 1560
      Height = 945
      Visible = 0   'False
      TabIndex = 68
    End
  End
  Begin Label LblPendingKot
    ForeColor = &HC00000&
    Left = 8250
    Top = 6600
    Width = 4110
    Height = 345
    TabIndex = 123
    Alignment = 2 'Center
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
  Begin Label LblState
    BackColor = &HFFFFFF&
    ForeColor = &HFF&
    Left = 8550
    Top = 30
    Width = 2595
    Height = 285
    TabIndex = 16
    Alignment = 2 'Center
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
  Begin Label LblKotNm
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3915
    Top = 30
    Width = 1725
    Height = 285
    TabIndex = 71
    Alignment = 2 'Center
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
  Begin Label lblSession
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HC00000&
    Left = 2295
    Top = 30
    Width = 1665
    Height = 315
    TabIndex = 20
    Alignment = 2 'Center
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
  Begin Label LblRest
    Caption = "#"
    BackColor = &HC0C0C0&
    ForeColor = &HFF0000&
    Left = 60
    Top = 30
    Width = 2115
    Height = 270
    TabIndex = 15
    Alignment = 2 'Center
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 11.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label2
    BackColor = &HFFFFFF&
    Left = 0
    Top = 0
    Width = 11205
    Height = 345
    TabIndex = 70
  End
  Begin Label Label1
    Caption = "Pax"
    Index = 6
    ForeColor = &HFF0000&
    Left = 2115
    Top = 900
    Width = 375
    Height = 240
    TabIndex = 39
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
    Caption = "Member"
    Index = 11
    ForeColor = &HFF0000&
    Left = 30
    Top = 1170
    Width = 780
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
    Caption = "Comment3"
    Index = 9
    ForeColor = &H80&
    Left = 15
    Top = 8595
    Width = 1020
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
  Begin Label Label1
    Caption = "Comment2"
    Index = 8
    ForeColor = &H80&
    Left = 15
    Top = 8325
    Width = 1020
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
  Begin Label Label1
    Caption = "Comment1"
    Index = 7
    ForeColor = &H80&
    Left = 15
    Top = 8055
    Width = 1020
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
  Begin Label Label1
    Caption = " NC Category"
    Index = 4
    ForeColor = &HFF0000&
    Left = 9405
    Top = 1170
    Width = 1245
    Height = 240
    Visible = 0   'False
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
  Begin Label Label1
    Caption = "Remark"
    Index = 0
    BackColor = &H80&
    ForeColor = &HFF0000&
    Left = 6090
    Top = 885
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
  End
  Begin Label Label1
    Caption = "Server"
    Index = 5
    ForeColor = &HFF0000&
    Left = 3030
    Top = 900
    Width = 630
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
  End
  Begin Label Label1
    Caption = "Table Code"
    Index = 2
    BackColor = &H80&
    ForeColor = &HFF0000&
    Left = 15
    Top = 915
    Width = 1095
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
  End
  Begin Label Label1
    Caption = "KOT#"
    Index = 3
    ForeColor = &H40&
    Left = 19680
    Top = 7425
    Width = 465
    Height = 225
    Visible = 0   'False
    TabIndex = 12
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
  Begin Label Label1
    Caption = "Date"
    Index = 1
    ForeColor = &H40&
    Left = 19710
    Top = 7650
    Width = 390
    Height = 225
    Visible = 0   'False
    TabIndex = 11
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
  Begin Label LblVPrefix
    Caption = "VPrefix"
    ForeColor = &H40&
    Left = 19710
    Top = 7965
    Width = 630
    Height = 225
    Visible = 0   'False
    TabIndex = 10
    Alignment = 1 'Right Justify
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

Attribute VB_Name = "RsTouchScreenTOKENEntry"

Private global_126 As Integer
Private global_112 As Long
Private global_116 As Long
Private MasterFormExit As Integer
Private global_196 As Long
Private global_120 As Long
Private global_264 As Long

Private Sub CmdQty_UnknownEvent_9 '126807C
  'Data Table: 58F144
  Dim var_86 As Integer
  Dim var_98 As Variant
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_C0 As Variant
  Dim var_118 As Variant
  Dim var_128 As Variant
  Dim var_12C As MSHFlexGrid
  Dim var_13C As Variant
  Dim var_14C As Variant
  loc_1267B0F: var_86 = KeyCode
  loc_1267B18: If Not (var_86 = 0) Then
  loc_1267B21:   If Not (var_86 = 1) Then
  loc_1267B2A:     If Not (var_86 = 2) Then
  loc_1267B33:       If Not (var_86 = 3) Then
  loc_1267B3C:         If Not (var_86 = 4) Then
  loc_1267B45:           If Not (var_86 = 5) Then
  loc_1267B4E:             If Not (var_86 = 6) Then
  loc_1267B57:               If Not (var_86 = 7) Then
  loc_1267B60:                 If Not (var_86 = 8) Then
  loc_1267B69:                   If (var_86 = 9) Then
  loc_1267B6C:                   End If
  loc_1267B6C:                 End If
  loc_1267B6C:               End If
  loc_1267B6C:             End If
  loc_1267B6C:           End If
  loc_1267B6C:         End If
  loc_1267B6C:       End If
  loc_1267B6C:     End If
  loc_1267B6C:   End If
  loc_1267B90:   If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_1267BB2:     Set var_BC = Me.CmdQty
  loc_1267BB8:     Call 0.Method_CmdQty_UnknownEvent_90 (KeyCode, var_C0)
  loc_1267BC0:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1267BD9:     Me.TxtQty.Text = CStr(var_86)
  loc_1267BF8:   Else
  loc_1267C07:     Me.TxtQty.MaxLength = 5
  loc_1267C2E:     Set var_BC = Me.CmdQty
  loc_1267C34:     Call 0.Method_CmdQty_UnknownEvent_90 (KeyCode, var_C0)
  loc_1267C3C:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1267C55:     Me.TxtQty.Text = CStr()
  loc_1267C71:   End If
  loc_1267C74: Else
  loc_1267C7A:   If (var_86 = &HA) Then
  loc_1267CA7:     If (InStr(1, CVar(Me.TxtQty), ".", 0) = 0) Then
  loc_1267CC9:       Set var_C0 = Me.TxtQty
  loc_1267CCF:       var_C0.MaxLength = (Me.TxtQty.MaxLength + 1)
  loc_1267CFA:       Set var_BC = Me.CmdQty
  loc_1267D00:       Call 0.Method_CmdQty_UnknownEvent_90 (KeyCode, var_C0)
  loc_1267D08:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1267D21:       Me.TxtQty.Text = CStr()
  loc_1267D7C:       var_128 = (Len(Left(CVar(Me.TxtQty), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 3)
  loc_1267D8C:       Me.TxtQty.MaxLength = CLng(var_128)
  loc_1267DA5:     End If
  loc_1267DA8:   Else
  loc_1267DB0:     If (var_86 = CInt(&HB)) Then
  loc_1267DC0:       Me.TxtQty.Text = vbNullString
  loc_1267DCB:     Else
  loc_1267DD3:       If (var_86 = CInt(&HD)) Then
  loc_1267DF7:         Set var_C0 = Me.LblIndex
  loc_1267E1E:         If ((Me.LblVtype.Caption = "No.of Person") And (CDbl(Val(var_C0.Caption)) = CDbl(0))) Then
  loc_1267E2D:           Me.FrameGrpItem.Enabled = True
  loc_1267E43:           Me.FGrid.Enabled = True
  loc_1267E88:           Set var_BC = Me.Txt
  loc_1267E8E:           Call 0.Method_CmdQty_UnknownEvent_90 (CInt(&HD), var_C0, CStr(Format(CVar(Me.TxtQty), "0")))
  loc_1267E96:           var_C0.Text = 1
  loc_1267EB3:         Else
  loc_1267EFB:           If ((Me.LblVtype.Caption = "Qty") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_1267F02:             Set var_12C = Me.FGrid
  loc_1267F11:             var_98 = CVar(CLng(var_12C.RowSel)) 'Long
  loc_1267F19:             var_13C = CVar(CLng(0)) 'Long
  loc_1267F3E:             If (CStr(var_12C.TextMatrix)) = vbNullString) Then
  loc_1267F41:               Exit Sub
  loc_1267F42:             End If
  loc_1267F67:             If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(2)) Then
  loc_1267F8A:               If (Me.TxtQty.Text = vbNullString) Then
  loc_1267F9A:                 Me.TxtQty.Text = "1"
  loc_1267FA2:               End If
  loc_1267FB5:               var_E4 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_1267FBD:               var_14C = CVar(CLng(7)) 'Long
  loc_1267FEA:               var_118 = CVar(CStr(Format(CVar(Me.TxtQty), "0.000"))) 'String
  loc_1267FF1:               LateIdCallSt
  loc_1268009:             End If
  loc_126800B:             Set var_12C = Nothing 
  loc_126800F:           End If
  loc_126800F:         End If
  loc_126801C:         Me.TxtQty.Text = vbNullString
  loc_1268030:         Me.FrameQty.Visible = False
  loc_126803B:       Else
  loc_1268041:         If (var_86 = &HC) Then
  loc_1268050:           Me.FrameQty.Visible = False
  loc_126805B:         Else
  loc_1268063:           If (var_86 = CInt(&HC)) Then
  loc_1268072:             Me.FrameGrpItem.Enabled = True
  loc_126807A:           End If
  loc_126807A:         End If
  loc_126807A:       End If
  loc_126807A:     End If
  loc_126807A:   End If
  loc_126807A: End If
  loc_126807A: Exit Sub
End Sub

Private Sub CmNC_UnknownEvent_9 '1188A4C
  'Data Table: 58F144
  Dim var_8E As Integer
  Dim var_AC As String
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_D4 As TextBox
  Dim var_C8 As Variant
  Dim var_94 As Variant
  loc_1188673: var_8E = KeyCode
  loc_118867C: If Not (var_8E = 0) Then
  loc_1188685:   If Not (var_8E = 1) Then
  loc_118868E:     If Not (var_8E = 2) Then
  loc_1188697:       If Not (var_8E = 3) Then
  loc_11886A0:         If Not (var_8E = 4) Then
  loc_11886A9:           If Not (var_8E = 5) Then
  loc_11886B2:             If Not (var_8E = 6) Then
  loc_11886BB:               If Not (var_8E = 7) Then
  loc_11886C4:                 If Not (var_8E = 8) Then
  loc_11886CD:                   If Not (var_8E = 9) Then
  loc_11886D6:                     If Not (var_8E = &HA) Then
  loc_11886DF:                       If Not (var_8E = &HB) Then
  loc_11886E8:                         If Not (var_8E = &HC) Then
  loc_11886F1:                           If Not (var_8E = &HD) Then
  loc_11886FA:                             If Not (var_8E = &HE) Then
  loc_1188703:                               If Not (var_8E = &HF) Then
  loc_118870C:                                 If Not (var_8E = &H10) Then
  loc_1188715:                                   If Not (var_8E = &H11) Then
  loc_118871E:                                     If Not (var_8E = &H12) Then
  loc_1188727:                                       If Not (var_8E = &H13) Then
  loc_1188730:                                         If Not (var_8E = &H14) Then
  loc_1188739:                                           If Not (var_8E = &H15) Then
  loc_1188742:                                             If Not (var_8E = &H16) Then
  loc_118874B:                                               If Not (var_8E = &H17) Then
  loc_1188754:                                                 If Not (var_8E = &H18) Then
  loc_118875D:                                                   If (var_8E = &H19) Then
  loc_1188760:                                                   End If
  loc_1188760:                                                 End If
  loc_1188760:                                               End If
  loc_1188760:                                             End If
  loc_1188760:                                           End If
  loc_1188760:                                         End If
  loc_1188760:                                       End If
  loc_1188760:                                     End If
  loc_1188760:                                   End If
  loc_1188760:                                 End If
  loc_1188760:                               End If
  loc_1188760:                             End If
  loc_1188760:                           End If
  loc_1188760:                         End If
  loc_1188760:                       End If
  loc_1188760:                     End If
  loc_1188760:                   End If
  loc_1188760:                 End If
  loc_1188760:               End If
  loc_1188760:             End If
  loc_1188760:           End If
  loc_1188760:         End If
  loc_1188760:       End If
  loc_1188760:     End If
  loc_1188760:   End If
  loc_118876A:   Set var_94 = Me.CmNC
  loc_1188770:   Call 0.Method_CmNC_UnknownEvent_90 (KeyCode, var_98)
  loc_1188778:   Call {33AD4EE2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_8E)
  loc_1188780:   var_AC = CStr()
  loc_1188788:   var_86 = Asc(var_AC)
  loc_11887A8:   var_8C = CStr(Chr(CLng(var_86)))
  loc_11887B4:   Me.MoveFirst
  loc_11887D8:   Set var_94 = Me.TxtNCTOKEN
  loc_11887DE:   Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98, var_AC, "NcType Like '")
  loc_11887E6:   0 = var_98.Text
  loc_1188806:   Me.Find 1 & var_AC & var_8C & "", var_C8, var_86
  loc_1188846:   If ((Me.BOF = 0) And (Me.EOF = 0)) Then
  loc_1188857:     Set var_94 = Me.TxtNCTOKEN
  loc_118885D:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98)
  loc_118887F:     Set var_D0 = Me.TxtNCTOKEN
  loc_1188885:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_D4)
  loc_118888D:     var_D4.Text = var_98.Text & var_8C
  loc_11888C6:     Me.FGNCType.Row = CVar(CLng(Me.Bookmark))
  loc_11888E4:     Me.FGNCType.Col = 1
  loc_11888EC:   End If
  loc_11888EF: Else
  loc_11888F7:   If (var_8E = CInt(&H1A)) Then
  loc_1188908:     Set var_94 = Me.TxtNCTOKEN
  loc_118890E:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98)
  loc_1188916:     var_98.Text = vbNullString
  loc_1188925:   Else
  loc_118892D:     If (var_8E = CInt(&H1B)) Then
  loc_1188943:       var_C8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_1188974:       Set var_D0 = Me.Txt
  loc_118897A:       Call 0.Method_CmNC_UnknownEvent_90 (CInt(7), var_D4, CStr(Me.FGNCType.TextMatrix)))
  loc_1188982:       var_D4.Text = 1
  loc_11889AF:       var_C8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_11889E0:       Set var_D0 = Me.Txt
  loc_11889E6:       Call 0.Method_CmNC_UnknownEvent_90 (CInt(7), var_D4, CStr(Me.FGNCType.TextMatrix)))
  loc_11889EE:       var_D4.Tag = 0
  loc_1188A14:       Me.Frame.Visible = False
  loc_1188A20:       Set var_94 = Me.CmChngSteward
  loc_1188A26:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_C8)
  loc_1188A39:       Me.FrameGrpItem.Enabled = CBool(var_C8)
  loc_1188A48:     End If
  loc_1188A48:   End If
  loc_1188A48: End If
  loc_1188A48: Exit Sub
End Sub

Private Sub FGNCType_UnknownEvent_9 'E98D5C
  'Data Table: 58F144
  Dim var_A8 As Variant
  Dim var_F4 As TextBox
  loc_E98CFF: var_A8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_E98D30: Set var_F0 = Me.TxtNCTOKEN
  loc_E98D36: Call 0.Method_FGNCType_UnknownEvent_90 (CInt(1), var_F4, CStr(Me.FGNCType.TextMatrix)))
  loc_E98D3E: var_F4.Text = 1
  loc_E98D58: Exit Sub
End Sub

Private Sub SSPPrevious_UnknownEvent_9 '10EDFC0
  'Data Table: 58F144
  Dim Me As Variant
  loc_10EDCA3: If (global_228 = "Item") Then
  loc_10EDCAC:   global_228 = "Item"
  loc_10EDCC7:   If (Me.AbsolutePosition = -3) Then
  loc_10EDCD5:     If (global_236 > CInt(&H10)) Then
  loc_10EDCF9:       Me.AbsolutePosition = CLng((((global_236 - (global_236 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10EDD12:       Set var_94 = Me.SSPItem
  loc_10EDD35:       Call Proc_333_76_1285370(Me.SSPItem, CInt(4), global_244)
  loc_10EDD41:       global_224 = CInt(var_A4)
  loc_10EDD52:     End If
  loc_10EDD55:   Else
  loc_10EDD84:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EDD9C:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10EDDAA:         Me.AbsolutePosition = 1
  loc_10EDDB2:       Else
  loc_10EDDD8:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10EDDDD:       End If
  loc_10EDE14:       Call Proc_333_76_1285370(Me.SSPItem, CInt(4), global_244, CInt(4), Me.SSPItem)
  loc_10EDE20:       global_224 = CInt(var_A4)
  loc_10EDE31:     End If
  loc_10EDE31:   End If
  loc_10EDE34: Else
  loc_10EDE3A:   global_228 = "Group"
  loc_10EDE55:   If (Me.AbsolutePosition = -3) Then
  loc_10EDE63:     If (global_232 > CInt(&H10)) Then
  loc_10EDE87:       Me.AbsolutePosition = CLng((((global_232 - (global_232 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10EDEC3:       Call Proc_333_76_1285370(Me.SSPGroup, CInt(4), global_248, CInt(4), Me.SSPGroup, var_A4)
  loc_10EDECF:       global_224 = CInt(var_A4)
  loc_10EDEE0:     End If
  loc_10EDEE3:   Else
  loc_10EDF12:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10EDF2A:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10EDF38:         Me.AbsolutePosition = 1
  loc_10EDF40:       Else
  loc_10EDF66:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10EDF6B:       End If
  loc_10EDFA2:       Call Proc_333_76_1285370(Me.SSPGroup, CInt(4), global_248, CInt(4), Me.SSPGroup, var_A4, global_224)
  loc_10EDFAE:       global_224 = CInt(var_A4)
  loc_10EDFBF:     End If
  loc_10EDFBF:   End If
  loc_10EDFBF: End If
  loc_10EDFBF: Exit Sub
End Sub

Private Sub SSPNext_UnknownEvent_9 'F34728
  'Data Table: 58F144
  Dim Me As Variant
  loc_F3461B: If (global_228 = "Item") Then
  loc_F34624:   global_228 = "Item"
  loc_F3463F:   If (Me.AbsolutePosition > 0) Then
  loc_F34648:     Me.MoveNext
  loc_F34661:     Set var_94 = Me.SSPItem
  loc_F34684:     Call Proc_333_76_1285370(Me.SSPItem, CInt(4), global_244)
  loc_F34690:     global_224 = CInt(var_A4)
  loc_F346A1:   End If
  loc_F346A4: Else
  loc_F346AA:   global_228 = "Group"
  loc_F346C5:   If (Me.AbsolutePosition > 0) Then
  loc_F346CE:     Me.MoveNext
  loc_F3470A:     Call Proc_333_76_1285370(Me.SSPGroup, CInt(4), global_248, CInt(4), Me.SSPGroup)
  loc_F34716:     global_224 = CInt(var_A4)
  loc_F34727:   End If
  loc_F34727: End If
  loc_F34727: Exit Sub
End Sub

Private Sub CmChngMember_UnknownEvent_9 'F8F014
  'Data Table: 58F144
  Dim var_B4 As String
  Dim var_88 As Recordset15
  Dim var_CC As Fields15
  Dim var_C8 As Variant
  Dim var_D8 As TextBox
  Dim var_D0 As TextBox
  loc_F8EECD: RsTouchScreenSteward.pOpenAs = "Member"
  loc_F8EEE5: Call 0.Method_arg_2B0 (1)
  loc_F8EF0C: var_B4 = "Select Name,CardNo From SubGroup where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And SubCode='" & MemVar_1F95234
  loc_F8EF1C: RsTouchScreenSteward.Connection15.Execute var_B4 & "'", var_C8, -1
  loc_F8EF27: Set var_88 = var_CC
  loc_F8EF4A: var_CC = var_88.Fields
  loc_F8EF52: var_D0 = var_CC.Item("Name")
  loc_F8EF71: Set var_D4 = Me.Txt
  loc_F8EF77: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HB), var_D8)
  loc_F8EF7F: var_D8.Text = Proc_6_38_E69628(CVar(var_D0), var_CC)
  loc_F8EFA1: Set var_CC = Me.Txt
  loc_F8EFA7: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HB), var_D0)
  loc_F8EFAF: var_D0.Tag = MemVar_1F95234
  loc_F8EFF1: Set var_D4 = Me.Txt
  loc_F8EFF7: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HC), var_D8)
  loc_F8EFFF: var_D8.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))
  loc_F8F013: Exit Sub
End Sub

Private Sub HeadExit_UnknownEvent_9 'E178EC
  'Data Table: 58F144
  loc_E178E1: Me.Global.Unload Me
  loc_E178E9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E0E3F8
  'Data Table: 58F144
  loc_E0E3E9: Call FGrid_UnknownEvent_C()
  loc_E0E3F3: global_126 = 0
  loc_E0E3F6: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F7B284
  'Data Table: 58F144
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As MSHFlexGrid
  loc_F7B13C: Set var_88 = Me.TopCtrl1
  loc_F7B142: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F7B15B: If (CStr() = "Browse") Then
  loc_F7B15E:   Exit Sub
  loc_F7B15F: End If
  loc_F7B172: var_A0 = CLng(Me.FGrid.Col)
  loc_F7B182: If (var_A0 = CLng(4)) Then
  loc_F7B185:   GoTo loc_F7B26B
  loc_F7B188: End If
  loc_F7B18F: If (var_A0 = CLng(2)) Then
  loc_F7B192:   GoTo loc_F7B26B
  loc_F7B195: End If
  loc_F7B19C: If (var_A0 = CLng(6)) Then
  loc_F7B1B2:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7B1BA:   var_D0 = CVar(CLng(&HA)) 'Long
  loc_F7B1ED:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_F7B1F0:     Exit Sub
  loc_F7B1F1:   End If
  loc_F7B1FD:   RsTouchScreenSteward.pRestCode = LocalRestCode
  loc_F7B20B:   RsTouchScreenSteward.pOpenAs = "Description"
  loc_F7B214:   var_B0 = 1
  loc_F7B223:   Call 0.Method_arg_2B0 (var_B0, var_C0, var_D0)
  loc_F7B22C:   Set var_88 = var_A0(var_B0)
  loc_F7B23B:   var_B0 = CVar(CLng(RsTouchScreenSteward.FGrid.Row)) 'Long
  loc_F7B243:   var_D0 = CVar(CLng(6)) 'Long
  loc_F7B253:   Set var_E4 = Me.FGrid
  loc_F7B259:   LateIdCallSt
  loc_F7B26B:   ' Referenced from: F7B192
  loc_F7B26B:   ' Referenced from: F7B185
  loc_F7B26B: End If
  loc_F7B275: If (CLng(KeyCode) <> &HD) Then
  loc_F7B27D:   global_126 = &HFF
  loc_F7B280: End If
  loc_F7B280: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_E 'E532EC
  'Data Table: 58F144
  loc_E532BE: If (KeyCode = 1) Then
  loc_E532D7:   global_112 = CLng(Me.FGrid.TopRow)
  loc_E532E7:   global_116 = CLng(arg_18)
  loc_E532EA: End If
  loc_E532EA: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_F 'F2C9EC
  'Data Table: 58F144
  Dim var_A8 As Variant
  loc_F2C8E2: If (KeyCode = 1) Then
  loc_F2C8FE:   If (CDbl(Abs(((arg_18 - CDbl(global_116)) / CDbl(global_120)))) >= CDbl(1)) Then
  loc_F2C90D:     If (CDbl(arg_18) > CDbl(global_116)) Then
  loc_F2C92F:       If (CLng(Me.FGrid.TopRow) > 1) Then
  loc_F2C94B:         var_A8 = CVar((CLng(Me.FGrid.TopRow) - 1)) 'Long
  loc_F2C95A:         Me.FGrid.TopRow = var_A8
  loc_F2C969:       End If
  loc_F2C96C:     Else
  loc_F2C9A7:       If ((CLng(Me.FGrid.TopRow) + 1) < CLng(Me.FGrid.Rows)) Then
  loc_F2C9C3:         var_A8 = CVar((CLng(Me.FGrid.TopRow) + 1)) 'Long
  loc_F2C9D2:         Me.FGrid.TopRow = var_A8
  loc_F2C9E1:       End If
  loc_F2C9E1:     End If
  loc_F2C9E8:     global_116 = CLng(arg_18)
  loc_F2C9EB:   End If
  loc_F2C9EB: End If
  loc_F2C9EB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'FA7B78
  'Data Table: 58F144
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_FA79F9: Me.TxtQty.Text = vbNullString
  loc_FA7A0E: Me.TxtQty.Tag = vbNullString
  loc_FA7A23: Me.LblVtype.Caption = vbNullString
  loc_FA7A2F: Set var_88 = Me.TopCtrl1
  loc_FA7A35: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FA7A4E: If (CStr() = "Browse") Then
  loc_FA7A51:   Exit Sub
  loc_FA7A52: End If
  loc_FA7A65: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA7A6D: var_CC = CVar(CLng(&HA)) 'Long
  loc_FA7AA0: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FA7AA3:   Exit Sub
  loc_FA7AA4: End If
  loc_FA7AB7: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA7ABF: var_CC = CVar(CLng(0)) 'Long
  loc_FA7AF2: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FA7AF5:   Exit Sub
  loc_FA7AF6: End If
  loc_FA7B19: If (CLng(Me.FGrid.Col) = CLng(7)) Then
  loc_FA7B28:   Me.FrameQty.Visible = True
  loc_FA7B3D:   Me.TxtQty.Text = vbNullString
  loc_FA7B56:   Me.TxtQty.Tag = CStr(2)
  loc_FA7B6E:   Me.LblVtype.Caption = "Qty"
  loc_FA7B76: End If
  loc_FA7B76: Exit Sub
End Sub

Private Sub Form_Load() '1523F0C
  'Data Table: 58F144
  Dim var_A8 As String
  Dim var_B0 As String
  Dim var_B4 As String
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_58F167 As Connection15
  Dim var_AC As Recordset15
  Dim var_DC As Variant
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim MemVar_1F95E84 As String
  Dim var_104 As Variant
  Dim var_B8 As String
  Dim Me As Variant
  Dim var_EC As Variant
  Dim var_134 As Variant
  Dim var_11C As Variant
  Dim var_1EC As Integer
  Dim var_120 As Recordset15
  Dim var_1DC As Fields15
  Dim var_1F0 As Field20
  Dim var_114 As Variant
  Dim var_158 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As String
  Dim var_168 As Variant
  Dim var_178 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  loc_1522FF4: On Error Goto loc_1523F04
  loc_1522FF7: Call Proc_333_87_1020CDC()
  loc_1523003: Call 0.Method_arg_7C (CDbl(0))
  loc_152300F: Call 0.Method_arg_74 (CDbl(0))
  loc_1523025: If (OpenMode = 1) Then
  loc_1523036:   LocalRestCode = pRestCode
  loc_152303D: End If
  loc_1523040: MemVar_1F95E84 = "***P"
  loc_152306D: var_BC = "SELECT Param_Str AS UPrivilege FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128 & "' AND [Option]='"
  loc_1523076: Call 0.Method_arg_50 (var_B8, var_BC, var_EC)
  loc_152307F: var_C0 = -1 & var_B8
  loc_15230A0: unk_58F167.Execute var_C0 & "' And OutletCode='" & LocalRestCode & "'", var_F0, 
  loc_15230AB: Set var_AC = var_F0
  loc_15230DD: If (var_AC.RecordCount > 0) Then
  loc_15230FA:   var_F4 = var_AC.Fields.Item("UPrivilege")
  loc_152310B:   MemVar_1F95E84 = CStr(var_F4.Value)
  loc_1523119: End If
  loc_152311E: Set var_AC = Nothing
  loc_1523150: global_76 = LocalRestCode
  loc_1523164: Me.LblRest.Caption = global_80
  loc_152317A: var_EC = Trim(global_68)
  loc_152318D: If CBool(var_EC <> "Room Service") Then
  loc_152319D:   Set var_F0 = Me.Label1
  loc_15231A3:   Call 0.Method_Form_Load0 (CInt(7), var_F4, 0, Proc_96_17_FDCB2C(LocalRestCode, global_68, global_80))
  loc_15231AB:   var_F4.Visible = global_72
  loc_15231C4:   Set var_F0 = Me.Label1
  loc_15231CA:   Call 0.Method_Form_Load0 (CInt(8), var_F4, 0)
  loc_15231D2:   var_F4.Visible = global_84
  loc_15231EB:   Set var_F0 = Me.Label1
  loc_15231F1:   Call 0.Method_Form_Load0 (CInt(9), var_F4)
  loc_15231F9:   var_F4.Visible = False
  loc_1523212:   Set var_F0 = Me.Txt
  loc_1523218:   Call 0.Method_Form_Load0 (CInt(8), var_F4)
  loc_1523220:   var_F4.Visible = False
  loc_1523239:   Set var_F0 = Me.Txt
  loc_152323F:   Call 0.Method_Form_Load0 (CInt(9), var_F4)
  loc_1523247:   var_F4.Visible = False
  loc_1523260:   Set var_F0 = Me.Txt
  loc_1523266:   Call 0.Method_Form_Load0 (CInt(&HA), var_F4)
  loc_152326E:   var_F4.Visible = False
  loc_152327A: End If
  loc_1523291: var_A8 = "Select Distinct IG.Code,IG.Name as Name,IC.CatType,IG.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & LocalRestCode
  loc_15232A6: var_B8 = var_A8 & "' And (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_15232AF: unk_58F167.Execute var_B8, var_EC, -1
  loc_15232F0: var_A8 = "Select I.Code,I.Name as Name,I.ItemGroup,IC.CatType,i.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & LocalRestCode
  loc_1523305: var_B8 = var_A8 & "' And (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_152330E: unk_58F167.Execute var_B8, var_EC, -1
  loc_152331F: Set global_244 = var_F0
  loc_1523349: var_EC = CVar(Me.RecordCount) 'Long
  loc_1523350: Proc_6_39_E7D3A0(var_114, var_EC, var_F0)
  loc_152335C: global_232 = CInt(var_114)
  loc_152337A: Set var_F4 = Me.SSPItem
  loc_152339D: Call Proc_333_76_1285370(Me.SSPGroup, CInt(4), Me.SSPGroup, CInt(4), var_F4)
  loc_15233A9: global_224 = CInt(var_EC)
  loc_15233C4: Set global_188 = New 
  loc_15233D6: Me.SSPItem.CursorLocation = 3
  loc_15233FE: Me.Open "SELECT NcPer,NCType FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F95044), 3
  loc_152340C: CVarUnk
  loc_1523411: VerifyVarObj
  loc_1523417: Set var_F0 = Me.FGNCType
  loc_152341D: LateIdStAd
  loc_152342F: Set var_124 = Me.FGNCType
  loc_1523432: var_DC = 0
  loc_152343B: var_134 = 0
  loc_1523447: LateIdCallSt
  loc_152344F: var_DC = 1
  loc_1523458: var_134 = &HE74
  loc_1523464: LateIdCallSt
  loc_152346C: var_DC = 1
  loc_152347B: var_134 = CVar(CInt(1)) 'Integer
  loc_1523482: LateIdCallSt
  loc_152348A: var_DC = 1
  loc_1523499: var_134 = CVar(CInt(1)) 'Integer
  loc_15234A0: LateIdCallSt
  loc_15234B7: var_EC = Me.FGNCType.Rows
  loc_15234CD: For var_148 = 1 To CInt((CLng(var_EC) - 1)): var_96 = var_148 'Integer
  loc_15234D7:   var_DC = CVar(CLng(var_96)) 'Long
  loc_15234DC:   var_134 = &H320
  loc_15234E8:   LateIdCallSt
  loc_15234F3: Next var_148 'Integer
  loc_15234FA: Set var_124 = Nothing 
  loc_15234FE: Call Proc_333_93_11FDCD8()
  loc_152350D: Set global_92 = New 
  loc_152351F: Me.var_EC.CursorLocation = 3
  loc_1523527: var_DC = MemVar_1F950EC
  loc_152352F: Proc_6_7_F26918(var_EC)
  loc_152353A: var_134 = 0
  loc_152356A: unk_58F167.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_168, -1
  loc_1523572: var_F0 = var_F0.Fields
  loc_152357A: var_134 = var_F4.Item(var_F4)
  loc_1523582: var_11C = var_11C.Value
  loc_152358D: var_1EC = 0
  loc_15235AD: var_B8 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_15235BD: unk_58F167.Execute var_B8 & "'", var_1D8, -1
  loc_15235C5: var_120 = var_120.Fields
  loc_15235CD: var_1EC = var_1DC.Item(var_1DC)
  loc_15235D5: var_1F0 = var_1F0.Value
  loc_15235F8: var_A8 = "Select Distinct K.DocId as SearchCode,K.DocID,K.RESTCODE,K.SITE_CODE,K.LOGSITE_CODE  From TOKEN K WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_15235FF: var_114 = CVar(var_A8 & "' AND (K.Pending='Y' AND NCTOKEN='N' And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") 'String
  loc_1523611: var_188 = (" And DelFlag NOT IN ('Y') OR DelFlag IS NULL) AND (K.VType='T" + var_178)
  loc_1523639: Me.Open var_114 & var_EC & var_188 & "' OR K.VType='" & var_200 & "') Order by Docid", CVar(MemVar_1F95044), 3
  loc_152367F: var_A8 = "RESTCODE='" & LocalRestCode
  loc_1523686: var_EC = CVar(var_A8 & "'") 'String
  loc_1523690: Me.Filter = var_EC
  loc_15236C0: Call 0.Method_arg_50 (var_A8, "SELECT COUNT(*) FROM LASTVOU WHERE  ENAME='", var_EC, -1, var_F0, var_F4, 0)
  loc_15236E7: unk_58F167.Execute var_11C & var_A8 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_114, 1
  loc_15236EF: -1 = var_F0.Fields
  loc_15236F7: var_178 = var_F4.Item(var_200)
  loc_15236FF: var_DC = var_11C.Value
  loc_152372C: If (var_114 > 0) Then
  loc_1523767:   Call 0.Method_arg_50 (var_A8, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_EC, -1, var_F0, var_F4, 0)
  loc_152378E:   unk_58F167.Execute var_11C & var_A8 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_114, "SearchCode='"
  loc_1523796:   0 = var_F0.Fields
  loc_152379E:   var_1A8 = var_F4.Item(1)
  loc_15237A6:    = var_11C.Value
  loc_15237C5:   Me.Find CStr(var_114 & "'"), , 
  loc_15237ED: End If
  loc_1523804: If (Me.RecordCount > 0) Then
  loc_1523810:   var_116 = Me.EOF
  loc_152381B:   If (var_116 = &HFF) Then
  loc_1523824:     Me.MoveLast
  loc_1523829:   End If
  loc_1523829: End If
  loc_1523832: Call 0.Method_arg_160 (var_F0)
  loc_1523840: Call 0.Method_arg_164 (var_F0)
  loc_152386B: Call Proc_333_88_104D3D4(Proc_5_1_100EC1C("INI", Me))
  loc_1523882: Set var_F0 = Me.CmdCatType
  loc_1523888: Call 0.Method_Form_Load8 (var_116, var_96)
  loc_1523893: For var_244 = global_92 To var_116: 0 = var_244 'Integer
  loc_15238AA:   Set var_F0 = Me.CmdCatType
  loc_15238B0:   Call 0.Method_Form_Load0 (var_96, var_F4)
  loc_15238B8:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15238C7: Next var_244 'Integer
  loc_15238D7: Set var_F0 = Me.SSPPrevious
  loc_15238DD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15238E8: var_DC = CVar(MemVar_1F951B4) 'String
  loc_15238F0: Set var_F0 = Me.SSPNext
  loc_15238F6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(var_DC)
  loc_1523909: Set var_F0 = Me.CmChngSteward
  loc_152390F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_1523922: Set var_F0 = Me.CmNoOfPersons
  loc_1523928: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_152393B: Set var_F0 = Me.CmChngToNC
  loc_1523941: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_1523954: Set var_F0 = Me.CmTransKOT
  loc_152395A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_152396D: Set var_F0 = Me.CmChngMember
  loc_1523973: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_152398E: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_152399D: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_15239B0: Me.FrameQty.BackColor = CLng(MemVar_1F951B4)
  loc_15239CB: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_15239E1: Me.LblPendingKot.BackColor = CLng(MemVar_1F951B4)
  loc_15239F5: Set var_F0 = Me.CmFgrid
  loc_15239FB: Call 0.Method_Form_Load8 (var_116, var_96)
  loc_1523A06: For var_248 =  To var_116: 0 = var_248 'Integer
  loc_1523A1D:   Set var_F0 = Me.CmFgrid
  loc_1523A23:   Call 0.Method_Form_Load0 (var_96, var_F4)
  loc_1523A2B:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_1523A3A: Next var_248 'Integer
  loc_1523A4D: Me.ChkNCTOKEN.BackColor = CLng(MemVar_1F951B4)
  loc_1523A63: Me.FrameGrpItem.BackColor = CLng(MemVar_1F951B4)
  loc_1523A6B: Call Proc_333_72_1273824()
  loc_1523A79: Set var_F0 = Me.SSPGroup
  loc_1523A7F: Call 0.Method_Form_Load0 (0)
  loc_1523A87: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_F4)
  loc_1523AA8: Me.FrameGrpItem.Width = ((CDbl(4) * CDbl(var_EC)) + CDbl(&H32))
  loc_1523AD6: If (Me.FrameGrpItem.Width < CDbl(6600)) Then
  loc_1523AE8:   Me.FrameGrpItem.Width = CDbl(6600)
  loc_1523AF0: End If
  loc_1523AF9: Set var_F0 = Me.SSPGroup
  loc_1523AFF: Call 0.Method_Form_Load0 (0)
  loc_1523B07: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_F4)
  loc_1523B2C: Set var_11C = Me.FrameGrpItem
  loc_1523B32: var_11C.Height = (((CDbl((CInt(4) + 1)) * CDbl(var_EC)) + CDbl(&H32)) + CDbl(300))
  loc_1523B46: var_104 = 0
  loc_1523B73: unk_58F167.Execute "Select FreeiteminKOT from enviro where LogSite_code='" & MemVar_1F95078 & "'", var_EC, -1
  loc_1523B7B: var_F0 = var_F0.Fields
  loc_1523B83: var_104 = var_F4.Item(var_F4)
  loc_1523B8B: var_114 = CVar(var_11C) 'Address
  loc_1523BB3: If (Proc_6_38_E69628(var_114) <> "Yes") Then
  loc_1523BC6:   Set var_F0 = Me.CmFgrid
  loc_1523BCC:   Call 0.Method_Form_Load0 (CInt(5), var_F4)
  loc_1523BD4:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1523BE0: End If
  loc_1523BFB: var_B0 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1523C09: var_158 = CVar(var_B0 & MemVar_1F95078 & "') and V_Type='") 'String
  loc_1523C12: var_104 = 0
  loc_1523C32: var_B8 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_1523C39: var_BC = var_11C & "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND UNAME='" & MemVar_1F950C8 & "'"
  loc_1523C42: unk_58F167.Execute var_BC, var_EC, -1
  loc_1523C4A: var_F0 = var_F0.Fields
  loc_1523C52: var_104 = var_F4.Item(var_F4)
  loc_1523C5A: var_11C = var_11C.Value
  loc_1523C79: unk_58F167.Execute CStr(var_114 & var_114 & "' Order by Description"), var_158, var_188
  loc_1523C84: Set var_8C = var_120
  loc_1523CC4: If (var_8C.RecordCount > 0) Then
  loc_1523CF8:   global_152 = CStr(var_8C.Fields.Item(0).Value)
  loc_1523D09: End If
  loc_1523D0E: Set var_88 = Nothing
  loc_1523D16: Set var_8C = Nothing
  loc_1523D1D: Set var_94 = New 
  loc_1523D28: Me.Recordset15.CursorLocation = 3
  loc_1523D5C: var_B4 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 & "'or LOGSITE_CODE='HO') and Code='" & LocalRestCode
  loc_1523D6A: var_94.Open CVar(var_B4 & "'"), CVar(MemVar_1F95044), 3
  loc_1523D8F: If (var_94.RecordCount > 0) Then
  loc_1523DA9:   var_F4 = var_94.Fields.Item("MemberInfo")
  loc_1523DB1:   var_EC = CVar(var_F4) 'Address
  loc_1523DBA:   var_A8 = Proc_6_38_E69628(var_EC, 1, -1)
  loc_1523DCB:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 = "Y") Then
  loc_1523DDB:     Set var_F0 = Me.Txt
  loc_1523DE1:     Call 0.Method_Form_Load0 (CInt(&HB), var_F4, &HFF)
  loc_1523DE9:     var_F4.Visible = True
  loc_1523E00:     Set var_F0 = Me.Label1
  loc_1523E06:     Call 0.Method_Form_Load0 (&HB, var_F4, &HFF)
  loc_1523E0E:     var_F4.Visible = var_120
  loc_1523E27:     Set var_F0 = Me.Txt
  loc_1523E2D:     Call 0.Method_Form_Load0 (CInt(&HC), var_F4)
  loc_1523E35:     var_F4.Visible = True
  loc_1523E49:     Set var_F0 = Me.CmChngMember
  loc_1523E4F:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_1523E74:     Proc_6_17_EAAE40(var_EC, MemVar_1F95078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_158)
  loc_1523E7C:     var_114 = -1 & var_EC 
  loc_1523E8A:     unk_58F167.Execute CStr(var_114), var_F0, var_11C
  loc_1523E95:     Set var_90 = var_F0
  loc_1523EBB:     If (var_90.RecordCount > 0) Then
  loc_1523EEC:       global_168 = Proc_6_38_E69628(CVar(var_90.Fields.Item("MemberVarificationInKOT")))
  loc_1523EF9:     End If
  loc_1523EF9:   End If
  loc_1523EF9: End If
  loc_1523EF9: Call Proc_333_85_16BE030()
  loc_1523EFE: Call Proc_333_69_127CDF8()
  loc_1523F03: Exit Sub
  loc_1523F04: ' Referenced from: 1522FF4
  loc_1523F04: Proc_6_60_E63754()
  loc_1523F09: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8CFE8
  'Data Table: 58F144
  loc_E8CF7B: Set global_100 = Nothing
  loc_E8CF8D: Set global_88 = Nothing
  loc_E8CF9F: Set global_104 = Nothing
  loc_E8CFB1: Set global_96 = Nothing
  loc_E8CFC3: Set global_92 = Nothing
  loc_E8CFD5: Set global_188 = Nothing
  loc_E8CFE1: MasterFormExit = 0
  loc_E8CFE4: Exit Sub
End Sub

Private Sub Form_Activate() 'F903D8
  'Data Table: 58F144
  Dim var_90 As String
  Dim var_F8 As Variant
  Dim var_D4 As Integer
  Dim var_98 As String
  Dim unk_58F167 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  loc_F902BF: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_F902CD: var_F8 = CVar(var_90 & MemVar_1F95078 & "') AND V_Type='") 'String
  loc_F902D6: var_D4 = 0
  loc_F902F6: var_98 = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_F90306: unk_58F167.Execute var_98 & "'", var_BC, -1
  loc_F9030E: var_C0 = var_C0.Fields
  loc_F90316: var_D4 = var_C4.Item(var_C4)
  loc_F9031E: var_D8 = var_D8.Value
  loc_F90326: var_108 = var_E8 & var_E8 
  loc_F9033D: unk_58F167.Execute CStr(var_108 & "' Order by Description"), var_F8, var_14C
  loc_F90388: If (var_150.RecordCount > 0) Then
  loc_F9038B:   GoTo loc_F903CD
  loc_F9038E: End If
  loc_F903A7: MsgBox("TOKEN Not Configured for selected Restaurant", 0, var_E8, var_F8, var_108)
  loc_F903C4: Me.Global.Unload Me
  loc_F903CC: Exit Sub
  loc_F903CD: ' Referenced from: F9038B
  loc_F903D2: Set var_88 = Nothing
  loc_F903D5: Exit Sub
  loc_F903D6: CExtInstUnk
End Sub

Private Sub Form_Deactivate() 'E24FA4
  'Data Table: 58F144
  loc_E24F89: If (MasterFormExit = &HFF) Then
  loc_E24F99:   Me.Global.Unload Me
  loc_E24FA1: End If
  loc_E24FA1: Exit Sub
  loc_E24FA2: Loop Until  'do at: E21B8F
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E98CB0
  'Data Table: 58F144
  Dim var_88 As Frame
  loc_E98C30: On Error Goto loc_E98CA8
  loc_E98C37: Set var_88 = Me.TopCtrl1
  loc_E98C3D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E98C56: If (CStr() = "Edit") Then
  loc_E98C6A:   If ((CLng(KeyCode) = &H4D) And (Shift = 2)) Then
  loc_E98C7A:     Me.Frame.Caption = "Go"
  loc_E98C82:   End If
  loc_E98C82: End If
  loc_E98C82: Call Proc_333_74_DFC9FC()
  loc_E98C9F: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E98CA7: Exit Sub
  loc_E98CA8: ' Referenced from: E98C30
  loc_E98CA8: Proc_6_60_E63754(Shift)
  loc_E98CAD: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A2DD0
  'Data Table: 58F144
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A2B1F: Me.DGItem.Visible = False
  loc_10A2B3E: If (Me.RecordCount > 0) Then
  loc_10A2B7B:   Set var_B4 = Me.TxtGrid
  loc_10A2B81:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A2B89:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A2BB2:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A2BBA:   var_EC = CVar(CLng(4)) 'Long
  loc_10A2BED:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A2BF5:   Set var_B8 = Me.FGrid
  loc_10A2BFB:   LateIdCallSt
  loc_10A2C2A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A2C32:   var_EC = CVar(CLng(&HA)) 'Long
  loc_10A2C65:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A2C73:   LateIdCallSt
  loc_10A2CDA:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(5)))) 'String
  loc_10A2CE2:   Set var_B8 = Me.FGrid
  loc_10A2CE8:   LateIdCallSt
  loc_10A2D15:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A2D1D:   var_EC = CVar(CLng(3)) 'Long
  loc_10A2D3F:   var_B0 = Me.Fields.Item("DispCode")
  loc_10A2D50:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A2D58:   Set var_B8 = Me.FGrid
  loc_10A2D5E:   LateIdCallSt
  loc_10A2D7A: End If
  loc_10A2D86: Set var_A8 = Me.TxtGrid
  loc_10A2D8C: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A2D94: var_B8 = var_B0.Visible
  loc_10A2DA6: If (var_12E = &HFF) Then
  loc_10A2DB2:   Set var_A8 = Me.TxtGrid
  loc_10A2DB8:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_A4)
  loc_10A2DC0:   var_B0.SetFocus
  loc_10A2DCC: End If
  loc_10A2DCC: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9DC60
  'Data Table: 58F144
  Dim var_A8 As Variant
  loc_E9DBE4: Set var_88 = Me.DGItem
  loc_E9DC0E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9DC16: Set var_BC = Me.DGItem
  loc_E9DC50: Proc_6_138_106E830(Me.DGItem, global_88, 0, Me.FGPoint)
  loc_E9DC5E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '11B3D00
  'Data Table: 58F144
  Dim var_9C As Variant
  Dim var_114 As Double
  Dim var_104 As String
  Dim var_10C As String
  Dim unk_58F167 As Connection15
  Dim var_94 As Variant
  Dim var_AC As Variant
  Dim var_11C As Variant
  Dim var_12C As Integer
  Dim MemVar_1F9501C As String
  Dim var_134 As TextBox
  loc_11B38EC: On Error Goto loc_11B3CF7
  loc_11B3912: Call Proc_333_88_104D3D4(Proc_5_1_100EC1C("ADD", Me))
  loc_11B391D: Call Proc_333_69_127CDF8(global_92)
  loc_11B3922: Call Proc_333_87_1020CDC()
  loc_11B393A: Set var_94 = Me.Txt
  loc_11B3940: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_11B3948: var_9C.Text = CStr(MemVar_1F950EC)
  loc_11B3957: Call ChkNCTOKEN_Click()
  loc_11B399C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C, CStr(Format(Time, "hh:nn")))
  loc_11B39A4: var_9C.Text = 1
  loc_11B39BF: var_AC = Time
  loc_11B39D3: var_CC = "HH:MM"
  loc_11B3A1A: var_8C = Replace(CStr(Left(CVar(CStr(Format(var_AC, var_CC))), 5)), ":", ".", 1, -1, 0)
  loc_11B3A37: var_114 = Val(var_8C)
  loc_11B3A68: var_10C = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND " & CStr(var_114) & " BETWEEN FromTime AND ToTime"
  loc_11B3A71: unk_58F167.Execute var_10C, var_AC, -1
  loc_11B3A7C: Set var_88 = Me.Txt
  loc_11B3AA9: If (Me.Recordset15.RecordCount > 0) Then
  loc_11B3ABE:   var_94 = Me.Recordset15.Fields
  loc_11B3AC6:   var_9C = var_94.Item("Name")
  loc_11B3ACE:   var_AC = CVar(var_9C) 'Address
  loc_11B3AE4:   Me.lblSession.Caption = Proc_6_38_E69628(var_AC, var_94, var_114)
  loc_11B3AF6: End If
  loc_11B3B0A: If (RsTouchScreenTOKENEntry.OpenMode = 1) Then
  loc_11B3B1E:   Set var_94 = Me.Txt
  loc_11B3B24:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C, global_204)
  loc_11B3B2C:   var_9C.Text = 1
  loc_11B3B49:   Set var_94 = Me.Txt
  loc_11B3B4F:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C, global_204)
  loc_11B3B57:   var_9C.Tag = 1
  loc_11B3B63: End If
  loc_11B3B6E: If (global_212 = vbNullString) Then
  loc_11B3B71:   Call CmChngSteward_UnknownEvent_9()
  loc_11B3B79: Else
  loc_11B3B7F:   var_12C = 0
  loc_11B3BAD:   var_104 = "Select W.Code From Waiter W Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and W.name like ' & global_212
  loc_11B3BBD:   unk_58F167.Execute var_104 & "", var_AC, -1
  loc_11B3BC5:   var_94 = var_94.Fields
  loc_11B3BCD:   var_12C = var_9C.Item(var_9C)
  loc_11B3BD5:   var_11C = var_11C.Value
  loc_11B3BE2:   MemVar_1F9501C = Proc_6_38_E69628(var_CC, var_CC)
  loc_11B3C01: End If
  loc_11B3C07: var_12C = 0
  loc_11B3C32: var_104 = "Select Max(W.Name) As Name From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9501C
  loc_11B3C42: unk_58F167.Execute var_104 & "'", var_AC, -1
  loc_11B3C4A: var_94 = var_94.Fields
  loc_11B3C52: var_12C = var_9C.Item(var_9C)
  loc_11B3C5A: var_11C = var_11C.Value
  loc_11B3C75: Set var_130 = Me.Txt
  loc_11B3C7B: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_134, Proc_6_38_E69628(var_CC, var_CC))
  loc_11B3C83: var_134.Text = MemVar_1F9501C
  loc_11B3CB7: Set var_94 = Me.Txt
  loc_11B3CBD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_9C)
  loc_11B3CC5: var_9C.Tag = MemVar_1F9501C
  loc_11B3CDC: Set var_94 = Me.Txt
  loc_11B3CE2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_11B3CEA: var_9C.SetFocus
  loc_11B3CF6: Exit Sub
  loc_11B3CF7: ' Referenced from: 11B38EC
  loc_11B3CF7: Proc_6_60_E63754(1)
  loc_11B3CFC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA5BC4
  'Data Table: 58F144
  loc_EA5B48: On Error Goto loc_EA5BBE
  loc_EA5B82: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA5BA8:   Call Proc_333_88_104D3D4(Proc_5_1_100EC1C("INI", Me))
  loc_EA5BB3:   Call Proc_333_85_16BE030(global_92)
  loc_EA5BB8:   Call Proc_333_69_127CDF8()
  loc_EA5BBD: End If
  loc_EA5BBD: Exit Sub
  loc_EA5BBE: ' Referenced from: EA5B48
  loc_EA5BBE: Proc_6_60_E63754()
  loc_EA5BC3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '123A508
  'Data Table: 58F144
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_114 As Fields15
  Dim var_158 As Variant
  Dim var_138 As Variant
  Dim var_1D4 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_178 As Variant
  Dim var_19C As String
  Dim unk_58F167 As Connection15
  Dim var_1C0 As Recordset15
  Dim var_1C4 As Fields15
  Dim var_1D8 As Field20
  Dim var_98 As Recordset15
  Dim var_220 As String
  loc_123A030: On Error Goto loc_123A4B7
  loc_123A036: Call Proc_333_97_FF7A30(var_A6)
  loc_123A041: If (var_A6 = 0) Then
  loc_123A044:   Exit Sub
  loc_123A045: End If
  loc_123A053: If (Proc_183_56_FE8B08(global_92) = &HFF) Then
  loc_123A056:   Exit Sub
  loc_123A057: End If
  loc_123A093: var_114 = Me.Fields
  loc_123A0A0: var_158 = 1
  loc_123A0AD: var_138 = CVar(var_114.Item("SearchCode")) 'Address
  loc_123A0B4: var_168 = Mid(var_138, 4, var_158)
  loc_123A0BF: var_1D4 = 0
  loc_123A0ED: var_178 = "Select count(*) from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & var_168 
  loc_123A104: unk_58F167.Execute CStr(var_178 & "'<>'N'"), var_1BC, -1
  loc_123A10C: var_1C0 = var_1C0.Fields
  loc_123A114: var_1D4 = var_1C4.Item(var_1C4)
  loc_123A11C: var_1D8 = var_1D8.Value
  loc_123A155: If (var_1E8 > 0) Then
  loc_123A1AE:   unk_58F167.Execute CStr("Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_123A205:   var_110 = "**** Deletion Not Allowed ****"
  loc_123A23F:   var_220 = "Bill Allready Prepared For this TOKEN" & vbCrLf & vbCrLf & "Ref. No. " & CStr(var_114.Fields.Item(0).Value) & vbCrLf & vbCrLf
  loc_123A250:   MsgBox(CVar(var_220 & vbCrLf & vbCrLf), &H10, var_110, var_138, var_158)
  loc_123A27E:   Exit Sub
  loc_123A27F: End If
  loc_123A2B6: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_110, var_138) = 6) Then
  loc_123A2E3:   var_9C = InputBox("Please Specify, Reason For Delete ?", "Reason", var_110, var_138, var_158, var_168, var_178)
  loc_123A300:   unk_58F167.BeginTrans var_228
  loc_123A316:   var_94 = Me.Bookmark 'Variant
  loc_123A331:   var_F0 = "N"
  loc_123A358:   var_A4 = CStr(IIf((Me.ChkNCTOKEN.Value = 1), "Y", var_F0))
  loc_123A37D:   var_19C = "Update TOKEN Set DelFlag='Y',U_Name1='" & MemVar_1F950C8
  loc_123A384:   var_110 = CVar(var_19C & "',U_EntDt1=") 'String
  loc_123A395:   Proc_6_7_F26918(var_F0, Date, var_110, var_1BC)
  loc_123A39D:   var_138 = -1 & var_F0 
  loc_123A3EE:   unk_58F167.Execute CStr(var_138 & ",U_AE1='E' Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_114, var_114
  loc_123A41E:   unk_58F167.CommitTrans
  loc_123A42E:   Me.Requery -1
  loc_123A44E:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_123A45B:     Me.Bookmark = var_94
  loc_123A463:   Else
  loc_123A477:     If (Me.EOF = 0) Then
  loc_123A480:       Me.MoveLast
  loc_123A485:     End If
  loc_123A485:   End If
  loc_123A485:   Call Proc_333_85_16BE030(var_1E8)
  loc_123A4A6:   Proc_5_0_1107AD0(&HFF, Me)
  loc_123A4AE: End If
  loc_123A4B3: Set var_98 = Nothing
  loc_123A4B6: Exit Sub
  loc_123A4B7: ' Referenced from: 123A030
  loc_123A4BD: unk_58F167.RollbackTrans
  loc_123A4CA: Set var_AC = Err()
  loc_123A4D0: Call 0.Method_arg_2C (var_19C, global_92)
  loc_123A4F1: MsgBox(CVar(var_19C), &H10, " Deletion Message", var_110, var_138)
  loc_123A504: Exit Sub
  loc_123A505: StUdtVar
End Sub

Private Sub TopCtrl1_UnknownEvent_D '12755AC
  'Data Table: 58F144
  Dim var_130 As Variant
  Dim var_A0 As String
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_F4 As Variant
  Dim unk_58F167 As Connection15
  Dim var_11C As Variant
  Dim var_120 As Variant
  Dim var_134 As Field20
  Dim var_144 As Integer
  Dim var_118 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_88 As Recordset15
  Dim var_1A4 As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  loc_1275040: On Error Goto loc_12755A4
  loc_1275046: Call Proc_333_97_FF7A30(var_8A)
  loc_1275051: If (var_8A = 0) Then
  loc_1275054:   Exit Sub
  loc_1275055: End If
  loc_1275063: If (Proc_183_55_FE8490(global_92) = &HFF) Then
  loc_1275066:   Exit Sub
  loc_1275067: End If
  loc_127506D: var_130 = 0
  loc_12750CC: unk_58F167.Execute CStr("Select count(*) from TOKEN Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And ContraDocId is not null"), var_118, -1
  loc_12750D4: var_11C = var_11C.Fields
  loc_12750DC: var_130 = var_120.Item(var_120)
  loc_12750E4: var_134 = var_134.Value
  loc_1275111: If (var_144 > 0) Then
  loc_127519B:   var_174 = "Select VType,VNo from Stock Where Delflag<>'D' and KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & Mid(CVar(Me.Fields.Item("SearchCode")), 4, 1) 
  loc_12751B2:   unk_58F167.Execute CStr(var_174 & "'<>'N'"), var_1A4, -1
  loc_12751BD:   Set var_88 = var_134
  loc_12751F7:   If (var_88.RecordCount > 0) Then
  loc_1275214:     var_A4 = var_88.Fields.Item("vType")
  loc_1275233:     var_11C = var_88.Fields
  loc_1275279:     var_F4 = (CVar("Bill Allready Prepared For this TOKEN" & vbCrLf & vbCrLf & "Ref. No. ") + var_A4.Value)
  loc_1275282:     var_118 = ("Select VType,VNo from Stock Where Delflag<>'D' and KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" + "/")
  loc_127528E:     var_174 = (CVar(Me.Fields.Item("SearchCode")) + CVar(CStr(var_11C.Item("VNo").Value)))
  loc_1275297:     var_184 = (var_174 + vbCrLf)
  loc_12752A0:     var_1A4 = (var_174 & "'<>'N'" + vbCrLf)
  loc_12752A9:     var_1BC = (var_1A4 + vbCrLf)
  loc_12752B2:     var_1CC = (var_1BC + vbCrLf)
  loc_12752B6:     MsgBox(var_1CC, &H10, "**** Modification Not Allowed ****", var_20C, var_22C)
  loc_12752EC:     Exit Sub
  loc_12752F0:   Else
  loc_12752F0:     var_A0 = vbNullString
  loc_12752FA:     Set var_90 = Me.FGrid
  loc_127530B:   End If
  loc_127530B: End If
  loc_127532E: Call Proc_333_88_104D3D4(Proc_5_1_100EC1C("EDIT", Me, global_92, FGrid.DispID_10000), var_A0)
  loc_1275339: Call Proc_333_69_127CDF8(var_134)
  loc_127534B: Set var_90 = Me.Txt
  loc_1275351: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A4)
  loc_1275371: Me.ChkNCTOKEN.Enabled = False
  loc_1275387: Set var_90 = Me.Txt
  loc_127538D: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A4)
  loc_12753A7: If (False = &HFF) Then
  loc_12753B5:   Set var_90 = Me.Txt
  loc_12753BB:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A4)
  loc_12753C3:   var_A4.SetFocus
  loc_12753D2: Else
  loc_12753DD:   Set var_90 = Me.Txt
  loc_12753E3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_A4)
  loc_12753EB:   var_A4.SetFocus
  loc_12753F7: End If
  loc_127540E: If (Me.RecordCount > 0) Then
  loc_1275467:   unk_58F167.Execute CStr("Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From TOKEN K Where K.Docid='" & Me.Fields.Item("DocID").Value & "'"), CVar(Me.Fields.Item("SearchCode")), -1
  loc_1275472:   Set var_88 = var_11C
  loc_127548F:   Set var_230 = var_88 
  loc_12754C4:   global_132 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_1275506:   global_144 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_1275546:   global_136 = CDate(var_88.Fields.Item("U_EntDt").Value)
  loc_1275584:   global_148 = CStr(var_88.Fields.Item("Pending").Value)
  loc_1275597:   Set var_230 = Nothing 
  loc_127559B: End If
  loc_12755A0: Set var_88 = Nothing
  loc_12755A3: Exit Sub
  loc_12755A4: ' Referenced from: 1275040
  loc_12755A4: Proc_6_60_E63754(global_136, var_11C)
  loc_12755A9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E175F4
  'Data Table: 58F144
  loc_E175E9: Me.Global.Unload Me
  loc_E175F1: Exit Sub
  loc_E175F2: BranchFVar -13312
End Sub

Private Sub TopCtrl1_UnknownEvent_F '1131830
  'Data Table: 58F144
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_D8 As Integer
  Dim unk_58F167 As Connection15
  Dim var_118 As Recordset15
  Dim var_11C As Fields15
  Dim var_120 As Field20
  Dim var_140 As Variant
  Dim var_170 As Variant
  Dim var_1B0 As Integer
  Dim var_174 As String
  Dim var_19C As Recordset15
  Dim var_1A0 As Fields15
  Dim var_1B4 As Field20
  Dim MemVar_1F950E4 As String
  loc_1131504: On Error Goto loc_1131827
  loc_113151E: If (Me.RecordCount <= 0) Then
  loc_1131527:   var_B8 = "Information"
  loc_113153C:   var_A8 = "No Records To Search."
  loc_1131542:   MsgBox(var_A8, &H40, var_B8, var_E8, var_108)
  loc_1131552:   Exit Sub
  loc_1131553: End If
  loc_1131566: If (OpenType = "Pending TOKEN") Then
  loc_1131570:   var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],K.VDate as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((TOKEN K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F95078
  loc_1131585:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_113158D:   var_E8 = CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate=") & var_A8 
  loc_113159C:   var_D8 = 0
  loc_11315CC:   unk_58F167.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_11315D4:   var_118 = var_118.Fields
  loc_11315DC:   var_D8 = var_11C.Item(var_11C)
  loc_11315E4:   var_120 = var_120.Value
  loc_11315EC:   var_140 = (var_130 + var_130)
  loc_11315F9:   var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_1131603:   var_1B0 = 0
  loc_1131623:   var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_1131633:   unk_58F167.Execute var_174 & "'", var_198, -1
  loc_113163B:   var_19C = var_19C.Fields
  loc_1131643:   var_1B0 = var_1A0.Item(var_1A0)
  loc_113164B:   var_1B4 = var_1B4.Value
  loc_113167C:   MemVar_1F950E4 = CStr(var_1C4 & var_1C4 & "') And Pending='Y' AND K.ROOMNO='" & CVar(PTableNo) & "' Order by Docid")
  loc_11316C0: Else
  loc_11316C7:   var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],K.VDate as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((TOKEN K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F95078
  loc_11316DC:   Proc_6_7_F26918(var_A8, MemVar_1F950EC, CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate="))
  loc_11316E4:   var_E8 = MemVar_1F950E4 & var_A8 
  loc_11316F3:   var_D8 = 0
  loc_1131723:   unk_58F167.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_113172B:   var_118 = var_118.Fields
  loc_1131733:   var_D8 = var_11C.Item(var_11C)
  loc_113173B:   var_120 = var_120.Value
  loc_1131743:   var_140 = (var_130 + var_130)
  loc_1131750:   var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_113175A:   var_1B0 = 0
  loc_113177A:   var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_113178A:   unk_58F167.Execute var_174 & "'", var_198, -1
  loc_1131792:   var_19C = var_19C.Fields
  loc_113179A:   var_1B0 = var_1A0.Item(var_1A0)
  loc_11317A2:   var_1B4 = var_1B4.Value
  loc_11317B8:   MemVar_1F950E4 = CStr(var_1C4 & var_1C4 & "') Order by Docid")
  loc_11317F3: End If
  loc_11317FC: Proc_6_126_F1C850("800,1500,800,1000,1800,1800", MemVar_1F950E4, var_170)
  loc_113180A: MemVar_1F95120 = Me
  loc_1131821: Call 0.Method_arg_2B0 (1, var_B8, var_E8)
  loc_1131826: Exit Sub
  loc_1131827: ' Referenced from: 1131504
  loc_1131827: Proc_6_60_E63754(var_170)
  loc_113182C: Exit Sub
  loc_113182D: BranchFVar 6911
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32648
  'Data Table: 58F144
  loc_E32638: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32640: Call Proc_333_85_16BE030(global_92)
  loc_E32645: Exit Sub
  loc_E32646: Loop Until 1 'do at: E2F254
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E32588
  'Data Table: 58F144
  loc_E32578: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32580: Call Proc_333_85_16BE030(global_92)
  loc_E32585: Exit Sub
  loc_E32586: Loop Until 4 'do at: E2F194
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E32468
  'Data Table: 58F144
  Dim var_3301 As Double
  loc_E32458: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32460: Call Proc_333_85_16BE030(global_92)
  loc_E32465: Exit Sub
  loc_E32466: var_3301 = 3
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E323A8
  'Data Table: 58F144
  loc_E32398: Proc_5_0_1107AD0(&HFF, Me)
  loc_E323A0: Call Proc_333_85_16BE030(global_92)
  loc_E323A5: Exit Sub
  loc_E323A6: Loop Until 2 'do at: E2EFB4
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1C81EAC
  'Data Table: 58F144
  Dim var_138 As Variant
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_14C As String
  Dim unk_58F167 As Connection15
  Dim var_100 As Recordset15
  Dim var_170 As Variant
  Dim var_128 As Variant
  Dim var_17C As String
  Dim var_BC As Recordset15
  Dim var_E6 As Integer
  Dim var_15C As Variant
  Dim var_190 As Fields15
  Dim var_18C As Variant
  Dim var_1D4 As Variant
  Dim var_16C As Variant
  Dim var_E8 As Integer
  Dim Me As Recordset15
  Dim var_178 As Variant
  Dim var_1EC As String
  Dim var_D0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_102 As Integer
  Dim var_1A4 As Variant
  Dim var_194 As Field20
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_1FC As Variant
  Dim var_1E4 As Variant
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_B8 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_284 As Variant
  Dim var_30C As String
  Dim var_310 As String
  Dim var_224 As Variant
  Dim var_354 As Variant
  Dim var_364 As Variant
  Dim var_DC As Recordset15
  Dim var_2D4 As Variant
  Dim var_2E4 As Variant
  Dim var_174 As Long
  Dim var_308 As String
  Dim var_304 As Variant
  Dim var_340 As Variant
  Dim var_2F4 As Variant
  Dim var_2B4 As Variant
  Dim var_3DC As Variant
  Dim var_3EC As Variant
  loc_1C7B82C: On Error Goto loc_1C81EA6
  loc_1C7B84C: Proc_6_17_EAAE40(var_128, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1C7B862: unk_58F167.Execute CStr(var_16C & var_128), -1, var_170
  loc_1C7B86D: Set var_100 = var_170
  loc_1C7B893: If (var_100.RecordCount > 0) Then
  loc_1C7B8CD:   var_F0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader1"))))))
  loc_1C7B913:   var_F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader2"))))))
  loc_1C7B959:   var_F8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader3"))))))
  loc_1C7B977:   var_170 = var_100.Fields
  loc_1C7B987:   var_128 = CVar(var_170.Item("KOTHeader4")) 'Address
  loc_1C7B99F:   var_FC = CStr(Trim(CVar(Proc_6_38_E69628(var_128))))
  loc_1C7B9AE: End If
  loc_1C7B9B3: Set var_100 = Nothing
  loc_1C7B9DD: unk_58F167.Execute "Select CKOTPrintYN,NoOfKot From Depart Where Code='" & LocalRestCode & "'", var_128, -1
  loc_1C7B9E8: Set var_BC = var_170
  loc_1C7BA0C: If (var_BC.RecordCount > 0) Then
  loc_1C7BA37:   var_148 = CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1C7BA51:   var_E4 = CStr(Ucase(Trim(var_148)))
  loc_1C7BA88:   Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C7BA91:   var_E6 = CInt(var_148)
  loc_1C7BAC4:   Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C7BAD8:   var_190 = var_BC.Fields
  loc_1C7BAEF:   Proc_6_39_E7D3A0(var_1A4, CVar(var_190.Item("NoOfKot")))
  loc_1C7BB1C:   var_E8 = CInt(IIf((var_148 <= 0), 1, var_1A4))
  loc_1C7BB37: End If
  loc_1C7BB3F: If (var_E4 = "Y") Then
  loc_1C7BB45:   Call Proc_333_81_1BB8F5C(var_1E6, var_E8)
  loc_1C7BB50:   If (var_1E6 = 0) Then
  loc_1C7BB53:     Exit Sub
  loc_1C7BB54:   End If
  loc_1C7BB54: End If
  loc_1C7BB57: MemVar_1F953C4 = "N"
  loc_1C7BB5E: MemVar_1F953C8 = "N"
  loc_1C7BB65: MemVar_1F953CC = "K"
  loc_1C7BB70: var_14C = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCTOKEN, K.Remarks , K.ContraDocId, D.ShortName,K.U_AE " & "From ((TOKEN K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode)"
  loc_1C7BBB5: var_88 = CStr(CVar(var_14C & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C7BBD4: var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7BBF4: var_178 = Me.Fields.Item("SearchCode")
  loc_1C7BBFC: var_128 = var_178.Value
  loc_1C7BC04: var_16C = var_148 & var_128 
  loc_1C7BC0D: var_18C = var_16C & "'" 
  loc_1C7BC12: var_8C = CStr(var_18C)
  loc_1C7BC2F: If (var_88 = vbNullString) Then
  loc_1C7BC32:   Exit Sub
  loc_1C7BC33: End If
  loc_1C7BC3B: If (var_8C = vbNullString) Then
  loc_1C7BC3E:   Exit Sub
  loc_1C7BC3F: End If
  loc_1C7BC63: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4), var_178, var_14C, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='", var_128)
  loc_1C7BC6B: -1 = var_178.Text
  loc_1C7BC84: unk_58F167.Execute var_190 & var_14C & "' AND CONTRADOCID IS NULL", var_E6, Me.Txt
  loc_1C7BCBB: If (var_190.RecordCount = 1) Then
  loc_1C7BCC1:   var_C8 = "New Order"
  loc_1C7BCC7: Else
  loc_1C7BCCE:   Set var_170 = Me.LblState
  loc_1C7BCDC:   var_C8 = var_170.Caption
  loc_1C7BCE2: End If
  loc_1C7BCF8: unk_58F167.Execute var_88, var_128, -1
  loc_1C7BD03: Set var_B4 = var_170
  loc_1C7BD22: unk_58F167.Execute "SELECT KOTPrinting,KOTPrintEdited FROM Enviro", var_128, -1
  loc_1C7BD2D: Set var_D0 = var_170
  loc_1C7BD45: var_170 = var_B4.Fields
  loc_1C7BD6F: If (Proc_6_38_E69628(CVar(var_170.Item("ContraDocId")), var_170) <> vbNullString) Then
  loc_1C7BD8B:   MsgBox("Sale Bill Already Generated !!", &H40, var_148, var_16C, var_18C)
  loc_1C7BD9B:   Exit Sub
  loc_1C7BD9C: End If
  loc_1C7BDD5: If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_AE"))) = "E") Then
  loc_1C7BDDA:   var_102 = &HFF
  loc_1C7BDDD: End If
  loc_1C7BE1D: If (var_102 And (Proc_6_38_E69628(CVar(var_D0.Fields.Item("KOTPrintEdited")), (var_102 = &HFF)) = "No Print")) Then
  loc_1C7BE20:   Exit Sub
  loc_1C7BE21: End If
  loc_1C7BE3A: var_170 = var_D0.Fields
  loc_1C7BE6B: var_1A4 = var_170 And (Trim(CVar(Proc_6_38_E69628(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "Void Items")
  loc_1C7BE7F: If CBool(var_1A4) Then
  loc_1C7BE91:   var_170 = var_D0.Fields
  loc_1C7BEA1:   var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C7BECC:   If (Trim(CVar(Proc_6_38_E69628(var_128))) = vbNullString) Then
  loc_1C7BEE3:     var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1C7BEF3:     unk_58F167.Execute var_14C & "MK'", var_128, -1
  loc_1C7BEFE:     Set var_BC = var_170
  loc_1C7BF11:   Else
  loc_1C7BF25:     var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7BF6C:     unk_58F167.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'"), var_1A4, -1
  loc_1C7BF77:     Set var_BC = var_190
  loc_1C7BF93:   End If
  loc_1C7BF96: Else
  loc_1C7BFE0:   var_1A4 = var_190 And (Trim(CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "All Items")
  loc_1C7BFF4:   If CBool(var_1A4) Then
  loc_1C7C006:     var_170 = var_D0.Fields
  loc_1C7C016:     var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C7C041:     If (Trim(CVar(Proc_6_38_E69628(var_128))) = vbNullString) Then
  loc_1C7C058:       var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1C7C068:       unk_58F167.Execute var_14C & "MK'", var_128, -1
  loc_1C7C073:       Set var_BC = var_170
  loc_1C7C086:     Else
  loc_1C7C09A:       var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7C0E1:       unk_58F167.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "'"), var_1A4, -1
  loc_1C7C0EC:       Set var_BC = var_190
  loc_1C7C108:     End If
  loc_1C7C10B:   Else
  loc_1C7C11A:     var_170 = var_D0.Fields
  loc_1C7C12A:     var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C7C155:     If (Trim(CVar(Proc_6_38_E69628(var_128, var_190))) = vbNullString) Then
  loc_1C7C16C:       var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1C7C17C:       unk_58F167.Execute var_14C & "MK'", var_128, -1
  loc_1C7C187:       Set var_BC = var_170
  loc_1C7C19A:     Else
  loc_1C7C1AE:       var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7C1F5:       unk_58F167.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN<>'Y'"), var_1A4, -1
  loc_1C7C200:       Set var_BC = var_190
  loc_1C7C21C:       ' Referenced from:       1C81E8A
  loc_1C7C21C:     End If
  loc_1C7C21C:   End If
  loc_1C7C21C: End If
  loc_1C7C22B: If Not(var_BC.EOF) Then
  loc_1C7C247:   var_170 = var_D0.Fields
  loc_1C7C28C:   If CBool(var_170 And (Trim(CVar(Proc_6_38_E69628(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF), var_190))) = "Void Items")) Then
  loc_1C7C29E:     var_170 = var_D0.Fields
  loc_1C7C2D9:     If (Trim(CVar(Proc_6_38_E69628(CVar(var_170.Item("KOTPrinting")), var_170))) = "Seperate for All Kitchen") Then
  loc_1C7C2E3:       var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7C35C:       var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C7C398:       var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN='Y'")
  loc_1C7C3C6:     Else
  loc_1C7C3CD:       var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7C40B:       var_8C = CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'")
  loc_1C7C420:     End If
  loc_1C7C423:   Else
  loc_1C7C43C:     var_170 = var_D0.Fields
  loc_1C7C481:     If CBool(var_170 And (Trim(CVar(Proc_6_38_E69628(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "All Items")) Then
  loc_1C7C4CE:       If (Trim(CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("KOTPrinting"))))) = "Seperate for All Kitchen") Then
  loc_1C7C4D8:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7C551:         var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C7C58D:         var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "'")
  loc_1C7C5BB:       Else
  loc_1C7C5C2:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7C600:         var_8C = CStr(var_148 & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C7C615:       End If
  loc_1C7C618:     Else
  loc_1C7C662:       If (Trim(CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("KOTPrinting"))))) = "Seperate for All Kitchen") Then
  loc_1C7C66C:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7C6E5:         var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C7C721:         var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN<>'Y'")
  loc_1C7C74F:       Else
  loc_1C7C756:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C7C76E:         var_170 = Me.Fields
  loc_1C7C77E:         var_128 = var_170.Item("SearchCode").Value
  loc_1C7C794:         var_8C = CStr(var_148 & var_128 & "' And K.VoidYN<>'Y'")
  loc_1C7C7A9:       End If
  loc_1C7C7A9:     End If
  loc_1C7C7A9:   End If
  loc_1C7C7BF:   unk_58F167.Execute var_8C, var_128, -1
  loc_1C7C7CA:   Set var_B8 = var_170
  loc_1C7C7D9:   var_174 = var_B8.RecordCount
  loc_1C7C7E7:   If (var_174 > 0) Then
  loc_1C7C7F9:     var_170 = var_BC.Fields
  loc_1C7C818:     var_264 = Trim(CVar(var_170.Item("PrintType"))) 'Variant
  loc_1C7C82D:     If (var_264 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1C7C83D:       Call Proc_333_82_EFA504(New, var_170)
  loc_1C7C845:       Set var_D4 = var_170
  loc_1C7C84B:       Me.Recordset15.MoveFirst
  loc_1C7C850:       ' Referenced from: 1C7D5DE
  loc_1C7C85F:       If Not(var_B4.EOF) Then
  loc_1C7C864:         var_92 = 0
  loc_1C7C98C:         var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")), var_92) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7C995:         var_90 = CStr(var_304)
  loc_1C7C9D9:         If (var_92 = 0) Then
  loc_1C7C9DF:           var_1EC = vbNullString
  loc_1C7C9FA:           Call Proc_333_83_F145C8(var_D4, vbNullString, vbNullString)
  loc_1C7CA36:           var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1C7CA6D:           var_148 = CVar(Me.LblRest.Caption) 'String
  loc_1C7CA70:           var_16C = (Space(1) + var_148)
  loc_1C7CA85:           Call Proc_333_83_F145C8(var_D4, vbNullString, CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))))
  loc_1C7CAB7:           Call Proc_333_83_F145C8(var_D4, vbNullString, var_90, vbNullString)
  loc_1C7CAE6:           Call Proc_333_83_F145C8(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C7CB1A:           Proc_6_39_E7D3A0(var_148, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C7CB4E:           var_1EC = vbNullString
  loc_1C7CB57:           Call Proc_333_83_F145C8(var_D4, var_1EC, " TOKEN No.   : " & Proc_6_45_EADFB8(CStr(var_148), &HA, vbNullString))
  loc_1C7CC13:           var_310 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")), " TOKEN Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1C7CC27:           Call Proc_333_83_F145C8(var_D4, vbNullString, " TOKEN Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC) & " " & var_310)
  loc_1C7CC6E:           var_178 = var_B4.Fields.Item("Remarks")
  loc_1C7CCB9:           Call Proc_333_83_F145C8(var_D4, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178), vbNullString), &H1E))
  loc_1C7CCEB:           Set var_170 = Me.Label1
  loc_1C7CCF1:           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C7CD5C:           var_30C = vbNullString
  loc_1C7CD6B:           var_1A4 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C7CD74:           var_1B4 = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) + ": ")
  loc_1C7CD7B:           var_1E4 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1C7CD7E:           var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) + var_1E4)
  loc_1C7CD93:           Call Proc_333_83_F145C8(var_D4, vbNullString, CStr("* NC LOT *"))
  loc_1C7CDCA:           var_17C = vbNullString
  loc_1C7CDDF:           Call Proc_333_83_F145C8(var_D4, vbNullString, var_C0)
  loc_1C7CDEB:         End If
  loc_1C7CE11:         var_16C = (var_17C + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))))
  loc_1C7CE25:         var_1A4 = (Trim(CVar(var_178)) + Space(1))
  loc_1C7CE3C:         var_1B4 = CVar(Proc_6_52_EAE084("Qty", 6, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))) 'String
  loc_1C7CE3F:         var_1D4 = (var_30C + var_1B4)
  loc_1C7CE44:         var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C7CE62:         var_17C = vbNullString
  loc_1C7CE77:         Call Proc_333_83_F145C8(var_D4, vbNullString, var_AC)
  loc_1C7CE86:         var_17C = vbNullString
  loc_1C7CE9B:         Call Proc_333_83_F145C8(var_D4, vbNullString, var_C0)
  loc_1C7CEAD:         var_92 = (var_92 + 4)
  loc_1C7CEB3:         var_B8.MoveFirst
  loc_1C7CEB8:         ' Referenced from: 1C7D239
  loc_1C7CEC7:         If Not(var_B8.EOF) Then
  loc_1C7CF00:           var_190 = var_B8.Fields
  loc_1C7CF17:           Proc_6_39_E7D3A0(var_1E4, CVar(var_190.Item("qty")), &H12)
  loc_1C7CF42:           var_1C4 = "Cancel"
  loc_1C7CF7C:           var_1FC = "Y"
  loc_1C7CFBA:           var_18C = (1 + CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1C7CFCE:           var_1B4 = (Space(1) + Space(1))
  loc_1C7CFE7:           var_284 = (var_17C + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0")), 3, var_1B4)))
  loc_1C7CFFD:           var_354 = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item(var_1C4).Value = var_1FC), "Void", vbNullString)), 5, CVar(var_B4.Fields.Item("NCTOKEN")))) 'String
  loc_1C7D000:           var_364 = (var_17C + var_354)
  loc_1C7D05F:           Call Proc_333_83_F145C8(var_D4, vbNullString, CStr(var_364))
  loc_1C7D071:           var_92 = (var_92 + 1)
  loc_1C7D0AD:           If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C7D0DE:             var_30C = vbNullString
  loc_1C7D105:             Call Proc_333_83_F145C8(var_D4, vbNullString, "(" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), vbNullString) & ")")
  loc_1C7D125:             var_92 = (var_92 + 1)
  loc_1C7D128:           End If
  loc_1C7D132:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C7D14D:             Call Proc_333_83_F145C8(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C7D177:             Call Proc_333_83_F145C8(var_D4, vbNullString, " Contd.", vbNullString)
  loc_1C7D18B:             var_94 = (var_94 + 1)
  loc_1C7D1AB:             Call Proc_333_83_F145C8(var_D4, vbNullString, var_90, vbNullString, 0)
  loc_1C7D1D4:             Call Proc_333_83_F145C8(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C7D1F8:             Call Proc_333_83_F145C8(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C7D21C:             Call Proc_333_83_F145C8(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C7D22E:             var_92 = (var_92 + 4)
  loc_1C7D231:           End If
  loc_1C7D234:           var_B8.MoveNext
  loc_1C7D239:           GoTo loc_1C7CEB8
  loc_1C7D23C:         End If
  loc_1C7D246:         If (&H12 < (&H45 - var_A6)) Then
  loc_1C7D249:           ' Referenced from: 1C7D28B
  loc_1C7D253:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C7D274:             Call Proc_333_83_F145C8(var_D4, vbNullString, vbNullString, vbNullString, &H12)
  loc_1C7D288:             var_92 = (var_92 + 1)
  loc_1C7D28B:             GoTo loc_1C7D249
  loc_1C7D28E:           End If
  loc_1C7D28E:         End If
  loc_1C7D2A6:         Call Proc_333_83_F145C8(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C7D2F4:         var_30C = vbNullString
  loc_1C7D314:         Call Proc_333_83_F145C8(var_D4, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1C7D36F:         Call Proc_333_83_F145C8(var_D4, vbNullString, CStr(" ***  " & Trim(var_C8) & "  ***"), vbNullString)
  loc_1C7D3CE:         var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C7D3DC:         unk_58F167.Execute CStr(var_16C), Space(1), -1
  loc_1C7D43D:         If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C7D467:           Call Proc_333_83_F145C8(var_D4, vbNullString, " ***  " & "Changed TOKEN" & "  ***", vbNullString)
  loc_1C7D47A:         Else
  loc_1C7D487:           var_138 = "Select Printed from TOKEN where docid='"
  loc_1C7D4BD:           var_15C = "'"
  loc_1C7D4D0:           unk_58F167.Execute CStr(var_138 & Me.Fields.Item("SearchCode").Value & var_15C), Space(1), -1
  loc_1C7D4F8:           var_118 = 0
  loc_1C7D52E:           If (Proc_6_38_E69628(CVar(var_190.Fields.Item(var_118)), var_190, var_190) = "Y") Then
  loc_1C7D558:             Call Proc_333_83_F145C8(var_D4, vbNullString, " ***  " & "DUPLICATE TOKEN" & "  ***", vbNullString)
  loc_1C7D56B:           Else
  loc_1C7D589:             Call Proc_333_83_F145C8(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C7D597:           End If
  loc_1C7D597:         End If
  loc_1C7D59C:         Set var_DC = Nothing
  loc_1C7D5C6:         Call Proc_333_83_F145C8(var_D4, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1C7D5D9:         var_B4.MoveNext
  loc_1C7D5DE:         GoTo loc_1C7C850
  loc_1C7D5E1:       End If
  loc_1C7D5E4:       var_D8 = "WinKOTPrint"
  loc_1C7D60B:       Set var_170 = var_D4 
  loc_1C7D612:       CreateFieldDefFile(var_170, MemVar_1F950B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1C7D654:       Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_118, var_170)
  loc_1C7D65F:       MemVar_1F951E8 = var_170
  loc_1C7D688:       Call 0.Method_arg_64 (var_170, CVar(var_170), var_138, var_15C)
  loc_1C7D690:       Call 0.Method_arg_2C (var_30C, var_30C)
  loc_1C7D6D1:       If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1C7D71E:         If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C7D74D:           Call Proc_333_80_F110E8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C7D75B:         End If
  loc_1C7D75B:       End If
  loc_1C7D76A:       var_138 = CVar(var_E8) 'Integer
  loc_1C7D779:       Call 0.Method_Me8 (False, var_138, var_15C)
  loc_1C7D783:       Set var_D4 = Nothing
  loc_1C7D789:     Else
  loc_1C7D794:       If (var_264 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1C7D79A:         var_B4.MoveFirst
  loc_1C7D79F:         ' Referenced from:   1C7E573
  loc_1C7D7AE:         If Not(var_B4.EOF) Then
  loc_1C7D7B4:           var_118 = "ShortName"
  loc_1C7D7E4:           var_18C = 3
  loc_1C7D807:           var_1C4 = "NCTOKEN"
  loc_1C7D813:           var_190 = var_B4.Fields
  loc_1C7D81B:           var_194 = var_190.Item(var_1C4)
  loc_1C7D850:           var_1FC = (Proc_6_38_E69628(CVar(var_194), var_1FC) = "Y")
  loc_1C7D8BD:           var_15C = "LAU"
  loc_1C7D8C7:           var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item(var_118)), var_1C4))), 1, var_18C)) = var_15C) 'Variant
  loc_1C7D8D1:           var_304 = IIf(var_2F4, IIf(var_1FC, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7D8DA:           var_90 = CStr(var_304)
  loc_1C7D91B:           var_D8 = "KOTPrint"
  loc_1C7D942:           Set var_170 = var_B8 
  loc_1C7D949:           CreateFieldDefFile(var_170, MemVar_1F950B4 & "\" & var_D8 & ".ttx")
  loc_1C7D955:           Set var_B8 = var_170
  loc_1C7D98B:           Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_118, var_170)
  loc_1C7D996:           MemVar_1F951E8 = var_170
  loc_1C7D9BF:           Call 0.Method_arg_64 (var_170, CVar(var_B8), var_138)
  loc_1C7D9C7:           Call 0.Method_arg_2C (var_15C, &HFF)
  loc_1C7D9D5:           Call 0.Method_arg_150 (var_170)
  loc_1C7DA22:           var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C7DA30:           unk_58F167.Execute CStr(var_16C), var_18C, -1
  loc_1C7DA91:           If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C7DA97:             var_CC = "Changed TOKEN"
  loc_1C7DA9D:           Else
  loc_1C7DAF3:             unk_58F167.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C7DB27:             var_170 = var_190.Fields
  loc_1C7DB2F:             var_178 = var_170.Item(0)
  loc_1C7DB40:             var_14C = Proc_6_38_E69628(CVar(var_178), var_190)
  loc_1C7DB51:             If (var_14C = "Y") Then
  loc_1C7DB57:               var_CC = "DUPLICATE TOKEN"
  loc_1C7DB5D:             Else
  loc_1C7DB60:               var_CC = vbNullString
  loc_1C7DB63:             End If
  loc_1C7DB63:           End If
  loc_1C7DB68:           Set var_DC = Nothing
  loc_1C7DB7C:           Call 0.Method_arg_90 (var_170, var_174, var_AE)
  loc_1C7DB84:           Call 0.Method_arg_24 (1)
  loc_1C7DB90:           For var_368 =  To CInt(var_174):   var_190 = var_368 'Integer
  loc_1C7DBA9:             Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7DBB1:             Call 0.Method_arg_20 (var_178)
  loc_1C7DBB9:             Call 0.Method_arg_30 (var_14C)
  loc_1C7DBCF:             var_378 = Ucase(CVar(var_14C)) 'Variant
  loc_1C7DBFF:             If (var_378 = Ucase("comp_name")) Then
  loc_1C7DC23:               Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7DC2B:               Call 0.Method_arg_20 (var_178)
  loc_1C7DC33:               Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1C7DC49:             Else
  loc_1C7DC6B:               If (var_378 = Ucase("comp_add1")) Then
  loc_1C7DC8F:                 Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7DC97:                 Call 0.Method_arg_20 (var_178)
  loc_1C7DC9F:                 Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1C7DCB5:               Else
  loc_1C7DCD7:                 If (var_378 = Ucase("comp_pin")) Then
  loc_1C7DCFB:                   Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7DD03:                   Call 0.Method_arg_20 (var_178)
  loc_1C7DD0B:                   Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1C7DD21:                 Else
  loc_1C7DD43:                   If (var_378 = Ucase("comp_GSTIN")) Then
  loc_1C7DD67:                     Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7DD6F:                     Call 0.Method_arg_20 (var_178)
  loc_1C7DD77:                     Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1C7DD8D:                   Else
  loc_1C7DDAF:                     If (var_378 = Ucase("RestName")) Then
  loc_1C7DDBC:                       Set var_170 = Me.LblRest
  loc_1C7DDE5:                       Call 0.Method_arg_90 (var_178, CLng(var_AE))
  loc_1C7DDED:                       Call 0.Method_arg_20 (var_190)
  loc_1C7DDF5:                       Call 0.Method_arg_38 ("'" & var_170.Caption & "'")
  loc_1C7DE0F:                     Else
  loc_1C7DE31:                       If (var_378 = Ucase("mTitle")) Then
  loc_1C7DE55:                         Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7DE5D:                         Call 0.Method_arg_20 (var_178)
  loc_1C7DE65:                         Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1C7DE7B:                       Else
  loc_1C7DE83:                         var_128 = "Header1"
  loc_1C7DE9D:                         If (var_378 = Ucase(var_128)) Then
  loc_1C7DEAB:                           Proc_6_17_EAAE40(var_128)
  loc_1C7DEC7:                           Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C7DECF:                           Call 0.Method_arg_20 (CStr(var_128))
  loc_1C7DED7:                           Call 0.Method_arg_38 (var_F0)
  loc_1C7DEEC:                         Else
  loc_1C7DEF4:                           var_128 = "Header2"
  loc_1C7DF0E:                           If (var_378 = Ucase(var_128)) Then
  loc_1C7DF1C:                             Proc_6_17_EAAE40(var_128)
  loc_1C7DF38:                             Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C7DF40:                             Call 0.Method_arg_20 (CStr(var_128))
  loc_1C7DF48:                             Call 0.Method_arg_38 (var_F4)
  loc_1C7DF5D:                           Else
  loc_1C7DF65:                             var_128 = "Header3"
  loc_1C7DF7F:                             If (var_378 = Ucase(var_128)) Then
  loc_1C7DF8D:                               Proc_6_17_EAAE40(var_128)
  loc_1C7DFA9:                               Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C7DFB1:                               Call 0.Method_arg_20 (CStr(var_128))
  loc_1C7DFB9:                               Call 0.Method_arg_38 (var_F8)
  loc_1C7DFCE:                             Else
  loc_1C7DFD6:                               var_128 = "Header4"
  loc_1C7DFF0:                               If (var_378 = Ucase(var_128)) Then
  loc_1C7DFFE:                                 Proc_6_17_EAAE40(var_128)
  loc_1C7E01A:                                 Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C7E022:                                 Call 0.Method_arg_20 (CStr(var_128))
  loc_1C7E02A:                                 Call 0.Method_arg_38 (var_FC)
  loc_1C7E03F:                               Else
  loc_1C7E050:                                 var_148 = Ucase("KotNo")
  loc_1C7E061:                                 If (var_378 = var_148) Then
  loc_1C7E08F:                                   Proc_6_39_E7D3A0(var_148, CVar(var_B4.Fields.Item("VNo")))
  loc_1C7E09B:                                   var_15C = "'"
  loc_1C7E0B8:                                   Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7E0C0:                                   Call 0.Method_arg_20 (var_194)
  loc_1C7E0C8:                                   Call 0.Method_arg_38 (CStr("'" & var_148 & var_15C))
  loc_1C7E0E7:                                 Else
  loc_1C7E109:                                   If (var_378 = Ucase("KotDate")) Then
  loc_1C7E155:                                     Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7E15D:                                     Call 0.Method_arg_20 (var_194)
  loc_1C7E165:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1C7E182:                                   Else
  loc_1C7E1A4:                                     If (var_378 = Ucase("KotTime")) Then
  loc_1C7E1F0:                                       Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7E1F8:                                       Call 0.Method_arg_20 (var_194)
  loc_1C7E200:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1C7E21D:                                     Else
  loc_1C7E23F:                                       If (var_378 = Ucase("Remarks")) Then
  loc_1C7E25C:                                         var_178 = var_B4.Fields.Item("Remarks")
  loc_1C7E28B:                                         Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7E293:                                         Call 0.Method_arg_20 (var_194)
  loc_1C7E29B:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_178)) & "'")
  loc_1C7E2B8:                                       Else
  loc_1C7E2DA:                                         If (var_378 = Ucase("TableTitle")) Then
  loc_1C7E2EB:                                           Set var_170 = Me.Label1
  loc_1C7E2F1:                                           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C7E329:                                           Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7E331:                                           Call 0.Method_arg_20 (var_194)
  loc_1C7E339:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_178)) & "'"))
  loc_1C7E358:                                         Else
  loc_1C7E37A:                                           If (var_378 = Ucase("TableNo")) Then
  loc_1C7E3C6:                                             Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7E3CE:                                             Call 0.Method_arg_20 (var_194)
  loc_1C7E3D6:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1C7E3F3:                                           Else
  loc_1C7E415:                                             If (var_378 = Ucase("Steward")) Then
  loc_1C7E42A:                                               var_170 = var_B4.Fields
  loc_1C7E432:                                               var_178 = var_170.Item("WaiterName")
  loc_1C7E461:                                               Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C7E469:                                               Call 0.Method_arg_20 (var_194)
  loc_1C7E471:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_178)) & "'")
  loc_1C7E48E:                                             Else
  loc_1C7E4B0:                                               If (var_378 = Ucase("KotStatus")) Then
  loc_1C7E4D4:                                                 Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7E4DC:                                                 Call 0.Method_arg_20 (var_178)
  loc_1C7E4E4:                                                 Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_1C7E4FA:                                               Else
  loc_1C7E51C:                                                 If (var_378 = Ucase("KotRemark")) Then
  loc_1C7E540:                                                   Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C7E548:                                                   Call 0.Method_arg_20 (var_178)
  loc_1C7E550:                                                   Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1C7E563:                                                 End If
  loc_1C7E563:                                               End If
  loc_1C7E563:                                             End If
  loc_1C7E563:                                           End If
  loc_1C7E563:                                         End If
  loc_1C7E563:                                       End If
  loc_1C7E563:                                     End If
  loc_1C7E563:                                   End If
  loc_1C7E563:                                 End If
  loc_1C7E563:                               End If
  loc_1C7E563:                             End If
  loc_1C7E563:                           End If
  loc_1C7E563:                         End If
  loc_1C7E563:                       End If
  loc_1C7E563:                     End If
  loc_1C7E563:                   End If
  loc_1C7E563:                 End If
  loc_1C7E563:               End If
  loc_1C7E563:             End If
  loc_1C7E566:           Next var_368 'Integer
  loc_1C7E56E:           var_B4.MoveNext
  loc_1C7E573:           GoTo loc_1C7D79F
  loc_1C7E576:         End If
  loc_1C7E59E:         var_14C = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")))
  loc_1C7E5AF:         If (var_14C <> vbNullString) Then
  loc_1C7E5FC:           If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C7E62B:             Call Proc_333_80_F110E8(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C7E639:           End If
  loc_1C7E639:         End If
  loc_1C7E63F:         If (var_E6 <= 0) Then
  loc_1C7E648:           Call 0.Method_arg_50 (var_14C)
  loc_1C7E652:           Set var_178 = Nothing
  loc_1C7E66C:           Set var_170 = MemVar_1F951E8 
  loc_1C7E678:           Proc_6_99_1484404(var_170, 0, var_14C)
  loc_1C7E683:           MemVar_1F951E8 = var_170
  loc_1C7E694:         Else
  loc_1C7E6B2:           Call 0.Method_Me8 (False, CVar(var_E6), var_15C, var_1C4)
  loc_1C7E6B7:         End If
  loc_1C7E6BA:       Else
  loc_1C7E6C5:         If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1C7E6CA:           Close 1
  loc_1C7E6F1:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C7E701:           var_B4.MoveFirst
  loc_1C7E706:           ' Referenced from:     1C7F79E
  loc_1C7E715:           If Not(var_B4.EOF) Then
  loc_1C7E71A:             var_92 = 0
  loc_1C7E755:             var_18C = 3
  loc_1C7E7F5:             var_308 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")), &HFF)
  loc_1C7E811:             var_17C = var_308
  loc_1C7E838:             var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92))), 1, var_18C)) = "LAU") 'Variant
  loc_1C7E842:             var_304 = IIf(var_2F4, IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")), (Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")), var_1FC) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_17C = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7E84B:             var_90 = CStr(var_304)
  loc_1C7E88F:             If (var_92 = 0) Then
  loc_1C7E894:               Print 1
  loc_1C7E8C8:               var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C7E8D9:               If (var_F0 <> vbNullString) Then
  loc_1C7E902:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1C7E908:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C7E91A:               End If
  loc_1C7E922:               If (var_F4 <> vbNullString) Then
  loc_1C7E94B:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1C7E951:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C7E963:               End If
  loc_1C7E96B:               If (var_F8 <> vbNullString) Then
  loc_1C7E994:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1C7E99A:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C7E9AC:               End If
  loc_1C7E9B4:               If (var_FC <> vbNullString) Then
  loc_1C7E9DD:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1C7E9E3:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C7E9F5:               End If
  loc_1C7E9F7:               Print 1
  loc_1C7EA27:               Call Proc_333_94_10AAF48(Me.LblRest.Caption, "D", &H28)
  loc_1C7EA31:               Print 1, var_308
  loc_1C7EA57:               Call Proc_333_94_10AAF48(var_90, "D", &H28)
  loc_1C7EA61:               Print 1, var_17C
  loc_1C7EA75:               Print 1
  loc_1C7EA7D:               Print 1
  loc_1C7EAB6:               Proc_6_39_E7D3A0(var_18C, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C7EAD8:               var_148 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_1C7EAE2:               var_1B4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_18C), &HA, Proc_6_45_EADFB8(CStr(var_18C), &HA, var_17C))))
  loc_1C7EAE8:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, var_18C))
  loc_1C7EB9A:               var_148 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_1C7EBA4:               var_1A4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_308), &HC)))
  loc_1C7EBAD:               var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_308), &HC))), &HA, Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_308), &HC))), &HA, var_17C))) + " ")
  loc_1C7EBB7:               var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_308), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C7EBBD:               Print 1, "* NC LOT *"
  loc_1C7EC12:               var_178 = var_B4.Fields.Item("Remarks")
  loc_1C7EC4F:               var_148 = (Chr(&HF) + "Remarks :     ")
  loc_1C7EC59:               var_1A4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32)))
  loc_1C7EC60:               var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32))), &HA, Proc_6_38_E69628(CVar(var_178)))) + Chr(&H12))
  loc_1C7EC66:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C7EC9F:               Set var_170 = Me.Label1
  loc_1C7ECA5:               Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C7ED16:               var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C7ED1F:               var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))), &HA, Proc_6_38_E69628(CVar(var_178)))) + ":     ")
  loc_1C7ED29:               var_224 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1C7ED2F:               Print 1, "* NC LOT *"
  loc_1C7ED74:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7ED7A:               Print 1, CVar(var_178)
  loc_1C7ED87:             End If
  loc_1C7EDAD:             var_16C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B)) + Space(1))
  loc_1C7EDC7:             var_1A4 = (Trim(CVar(var_178)) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1C7EDCC:             var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6))), &HA, "Qty")))
  loc_1C7EDF9:             var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C7EDFF:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B))
  loc_1C7EE22:             var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7EE28:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B))
  loc_1C7EE3B:             var_92 = (var_92 + 4)
  loc_1C7EE41:             var_B8.MoveFirst
  loc_1C7EE46:             ' Referenced from:     1C7F3B7
  loc_1C7EE55:             If Not(var_B8.EOF) Then
  loc_1C7EE86:               var_16C = Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ItemName")), &H12)))
  loc_1C7EE8F:               var_108 = CStr(var_16C)
  loc_1C7EEC4:               Proc_6_39_E7D3A0(var_16C, CVar(var_B8.Fields.Item("qty")))
  loc_1C7EEFB:               var_190 = var_B8.Fields
  loc_1C7EF67:               var_1D4 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_16C, "0.00")), 6, Space(1))))
  loc_1C7EF7D:               var_2D4 = CVar(Proc_6_52_EAE084(CStr(IIf((var_190.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, CVar(var_B4.Fields.Item("TableNo")))) 'String
  loc_1C7EF80:               var_2E4 = (1 + var_2D4)
  loc_1C7EF85:               var_C4 = CStr(IIf(("Qty" = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7EFB7:               ' Referenced from:     1C7F1BC
  loc_1C7EFC1:               If (Len(var_108) <> 0) Then
  loc_1C7EFF2:                 var_174 = InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0)
  loc_1C7F029:                 var_18C = CVar((InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0) - 1)) 'Long
  loc_1C7F07C:                 var_308 = Proc_6_45_EADFB8(CStr(Mid(var_108, 1, IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 27, "0.00"))), &H1B)
  loc_1C7F0B8:                 var_148 = (Chr(&HF) + CVar(var_308 & var_308 & var_C4))
  loc_1C7F0BE:                 Print 1, Left(var_108, &H1B)
  loc_1C7F0D1:                 var_92 = (var_92 + 1)
  loc_1C7F0D7:                 var_C4 = vbNullString
  loc_1C7F0E4:                 If (Len(var_108) > &H1B) Then
  loc_1C7F115:                   var_174 = InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0)
  loc_1C7F13D:                   var_17C = CStr(Left(var_108, &H1B))
  loc_1C7F14C:                   var_18C = CVar((InStrRev(var_17C, " ", -1, 0) + 1)) 'Long
  loc_1C7F18D:                   var_1D4 = Mid(var_108, CLng(IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00")), CVar(Len(var_108)))
  loc_1C7F196:                   var_108 = CStr(var_1D4)
  loc_1C7F1B6:                 Else
  loc_1C7F1B9:                   var_108 = vbNullString
  loc_1C7F1BC:                 End If
  loc_1C7F1BC:                 GoTo loc_1C7EFB7
  loc_1C7F1BF:               End If
  loc_1C7F1F8:               If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), var_BC.AbsolutePosition, &H12) <> vbNullString) Then
  loc_1C7F23B:                 var_148 = (Chr(&HF) + "(")
  loc_1C7F245:                 var_1A4 = (Left(var_108, &H1B) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), var_BC.AbsolutePosition)))
  loc_1C7F24E:                 var_1B4 = (IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00") + ")")
  loc_1C7F254:                 Print 1, CVar(Len(var_108))
  loc_1C7F275:                 var_92 = (var_92 + 1)
  loc_1C7F278:               End If
  loc_1C7F282:               If (&H12 = (&H45 - var_A6)) Then
  loc_1C7F29B:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7F2A1:                 Print 1, Left(var_108, &H1B)
  loc_1C7F2B3:                 Print 1, "Contd."
  loc_1C7F2CB:                 Print 1, Chr(&HC)
  loc_1C7F2DA:                 var_94 = (var_94 + 1)
  loc_1C7F2F0:                 Call Proc_333_95_11FFA94(1, 0, &H28, var_312)
  loc_1C7F30F:                 Call Proc_333_94_10AAF48(var_90, "B", &H28, var_17C, var_312)
  loc_1C7F319:                 Print 1, var_17C
  loc_1C7F328:                 var_92 = &H12
  loc_1C7F341:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7F347:                 Print 1, Left(var_108, &H1B)
  loc_1C7F36A:                 var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C7F370:                 Print 1, Left(var_108, &H1B)
  loc_1C7F393:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7F399:                 Print 1, Left(var_108, &H1B)
  loc_1C7F3AC:                 var_92 = (var_92 + 4)
  loc_1C7F3AF:               End If
  loc_1C7F3B2:               var_B8.MoveNext
  loc_1C7F3B7:               GoTo loc_1C7EE46
  loc_1C7F3BA:             End If
  loc_1C7F3C4:             If (var_92 < (&H45 - var_A6)) Then
  loc_1C7F3C7:               ' Referenced from:     1C7F3E8
  loc_1C7F3D1:               If (var_92 = (&H45 - var_A6)) Then
  loc_1C7F3D9:                 Print 1, vbNullString
  loc_1C7F3E5:                 var_92 = (var_92 + 1)
  loc_1C7F3E8:                 GoTo loc_1C7F3C7
  loc_1C7F3EB:               End If
  loc_1C7F3EB:             End If
  loc_1C7F401:             var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C7F407:             Print 1, Left(var_108, &H1B)
  loc_1C7F468:             var_148 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1C7F46F:             var_18C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C7F472:             var_1A4 = (Left(var_108, &H1B) + var_18C)
  loc_1C7F478:             Print 1, IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00")
  loc_1C7F4BC:             var_148 = (Chr(&HF) + "***  ")
  loc_1C7F4C3:             var_18C = Left(var_108, &H1B) & Trim(var_C8) 
  loc_1C7F4D2:             Print 1, var_18C & "  ***"
  loc_1C7F52D:             var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C7F53B:             unk_58F167.Execute CStr(var_16C), var_18C, -1
  loc_1C7F59C:             If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C7F5CD:               Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("Changed TOKEN", &H14, var_190), "D", &H28, var_308)
  loc_1C7F5D7:               Print 1, var_308
  loc_1C7F5ED:             Else
  loc_1C7F643:               unk_58F167.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C7F6A1:               If (Proc_6_38_E69628(CVar(var_190.Fields.Item(0)), var_190, 1) = "Y") Then
  loc_1C7F6B7:                 var_30C = Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14)
  loc_1C7F6D2:                 Call Proc_333_94_10AAF48(var_30C, "D", &H28)
  loc_1C7F6DC:                 Print 1, var_308
  loc_1C7F6F2:               Else
  loc_1C7F6F4:                 Print 1
  loc_1C7F6FA:               End If
  loc_1C7F6FA:             End If
  loc_1C7F6FF:             Set var_DC = Nothing
  loc_1C7F717:             var_148 = (Chr(&HF) + "** ")
  loc_1C7F721:             var_16C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1C7F72A:             var_18C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C7F730:             Print 1, var_18C
  loc_1C7F744:             var_B4.MoveNext
  loc_1C7F74B:             Print 1
  loc_1C7F753:             Print 1
  loc_1C7F75B:             Print 1
  loc_1C7F763:             Print 1
  loc_1C7F789:             var_16C = (Chr(&H1B) + Chr(&H6D))
  loc_1C7F78F:             Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C7F79E:             GoTo loc_1C7E706
  loc_1C7F7A1:           End If
  loc_1C7F7A3:           Close 1
  loc_1C7F7DE:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C7F806:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C7F85E:             var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C7F864:             Print 1, var_16C
  loc_1C7F884:           Else
  loc_1C7F8A9:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C7F8E0:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C7F8F1:           End If
  loc_1C7F8F3:           Close 1
  loc_1C7F8FD:           If (MemVar_1F953BC = "Y") Then
  loc_1C7F92F:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C7F940:           Else
  loc_1C7F948:             For var_37C = 1 To var_E8:       var_EA = var_37C 'Integer
  loc_1C7F97D:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C7F98E:             Next var_37C 'Integer
  loc_1C7F993:           End If
  loc_1C7F996:         Else
  loc_1C7F9A1:           If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1C7F9A6:             Close 1
  loc_1C7F9CD:             Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C7F9DD:             var_B4.MoveFirst
  loc_1C7F9E2:             ' Referenced from:       1C808D5
  loc_1C7F9F1:             If Not(var_B4.EOF) Then
  loc_1C7FA31:               var_18C = 3
  loc_1C7FA79:               var_1EC = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN")))
  loc_1C7FB14:               var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C)) = "LAU") 'Variant
  loc_1C7FB1E:               var_304 = IIf(var_2F4, IIf((var_1EC = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C7FB27:               var_90 = CStr(var_304)
  loc_1C7FB6B:               If (0 = 0) Then
  loc_1C7FB70:                 Print 1
  loc_1C7FBA4:                 var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C7FBB5:                 If (var_F0 <> vbNullString) Then
  loc_1C7FBDE:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1C7FBE4:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C7FBF6:                 End If
  loc_1C7FBFE:                 If (var_F4 <> vbNullString) Then
  loc_1C7FC27:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1C7FC2D:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C7FC3F:                 End If
  loc_1C7FC47:                 If (var_F8 <> vbNullString) Then
  loc_1C7FC70:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1C7FC76:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C7FC88:                 End If
  loc_1C7FC90:                 If (var_FC <> vbNullString) Then
  loc_1C7FCB9:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1C7FCBF:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C7FCD1:                 End If
  loc_1C7FCD3:                 Print 1
  loc_1C7FD17:                 Call Proc_333_94_10AAF48(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1C7FD21:                 Print 1, var_30C
  loc_1C7FD5F:                 Call Proc_333_94_10AAF48(Proc_6_45_EADFB8(var_90, &H14), "D", &H28)
  loc_1C7FD69:                 Print 1, var_1EC
  loc_1C7FD81:                 Print 1
  loc_1C7FD89:                 Print 1
  loc_1C7FDC2:                 Proc_6_39_E7D3A0(var_18C, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C7FDE4:                 var_148 = (Chr(&HF) + "TOKEN No.   :       ")
  loc_1C7FDEE:                 var_1B4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_18C), &HA, var_1EC)))
  loc_1C7FDF4:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C))
  loc_1C7FEA6:                 var_148 = (Chr(&HF) + "TOKEN Dt.   :       ")
  loc_1C7FEAD:                 var_18C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1C7FEB0:                 var_1A4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + var_18C)
  loc_1C7FEB9:                 var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(var_18C), &HA, Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")))))) + " ")
  loc_1C7FEC3:                 var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C7FEC9:                 Print 1, "* NC LOT *"
  loc_1C7FF1E:                 var_178 = var_B4.Fields.Item("Remarks")
  loc_1C7FF5B:                 var_148 = (Chr(&HF) + "Remarks :       ")
  loc_1C7FF65:                 var_1A4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32)))
  loc_1C7FF6C:                 var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32))) + Chr(&H12))
  loc_1C7FF72:                 Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C7FFAB:                 Set var_170 = Me.Label1
  loc_1C7FFB1:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C80002:                 var_308 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C80022:                 var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C8002B:                 var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))) + ":       ")
  loc_1C80035:                 var_224 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_308, 5)))
  loc_1C8003B:                 Print 1, "* NC LOT *"
  loc_1C80080:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C80086:                 Print 1, CVar(var_178)
  loc_1C80093:               End If
  loc_1C800B9:               var_16C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1C800C5:               var_17C = "Qty"
  loc_1C800D3:               var_1A4 = (Trim(CVar(var_178)) + CVar(Proc_6_52_EAE084(var_17C, 6)))
  loc_1C800D8:               var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_17C, 6))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))))
  loc_1C80105:               var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C8010B:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C8012E:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C80134:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C80147:               var_92 = (var_92 + 4)
  loc_1C8014D:               var_B8.MoveFirst
  loc_1C80152:               ' Referenced from:       1C804F3
  loc_1C80161:               If Not(var_B8.EOF) Then
  loc_1C8019A:                 var_190 = var_B8.Fields
  loc_1C801B1:                 Proc_6_39_E7D3A0(Chr(&H12), CVar(var_190.Item("qty")))
  loc_1C80254:                 var_18C = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C8026D:                 var_234 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_17C, 6)))))
  loc_1C80283:                 var_304 = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C80286:                 var_340 = (&H12 + var_304)
  loc_1C802DF:                 var_148 = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C802E5:                 Print 1, Space(3)
  loc_1C802F8:                 var_92 = (var_92 + 1)
  loc_1C80334:                 If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C80377:                   var_148 = (Chr(&HF) + "(")
  loc_1C80381:                   var_1A4 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1C8038A:                   var_1B4 = (CVar(var_190.Item("qty")) + ")")
  loc_1C80390:                   Print 1, Chr(&H12)
  loc_1C803B1:                   var_92 = (var_92 + 1)
  loc_1C803B4:                 End If
  loc_1C803BE:                 If (&H12 = (&H45 - var_A6)) Then
  loc_1C803D7:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C803DD:                   Print 1, Space(3)
  loc_1C803EF:                   Print 1, "Contd."
  loc_1C80407:                   Print 1, Chr(&HC)
  loc_1C80416:                   var_94 = (var_94 + 1)
  loc_1C8042C:                   Call Proc_333_95_11FFA94(1, 0, &H28, var_312)
  loc_1C8044B:                   Call Proc_333_94_10AAF48(var_90, "B", &H28, var_17C, var_312)
  loc_1C80455:                   Print 1, var_17C
  loc_1C80464:                   var_92 = &H12
  loc_1C8047D:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C80483:                   Print 1, Space(3)
  loc_1C804A6:                   var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C804AC:                   Print 1, Space(3)
  loc_1C804CF:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C804D5:                   Print 1, Space(3)
  loc_1C804E8:                   var_92 = (var_92 + 4)
  loc_1C804EB:                 End If
  loc_1C804EE:                 var_B8.MoveNext
  loc_1C804F3:                 GoTo loc_1C80152
  loc_1C804F6:               End If
  loc_1C80500:               If (var_92 < (&H45 - var_A6)) Then
  loc_1C80503:                 ' Referenced from:       1C80524
  loc_1C8050D:                 If (var_92 = (&H45 - var_A6)) Then
  loc_1C80515:                   Print 1, vbNullString
  loc_1C80521:                   var_92 = (var_92 + 1)
  loc_1C80524:                   GoTo loc_1C80503
  loc_1C80527:                 End If
  loc_1C80527:               End If
  loc_1C8053D:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C80543:               Print 1, Space(3)
  loc_1C80599:               var_1EC = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)
  loc_1C805A4:               var_148 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1C805AE:               var_1A4 = (Space(3) + CVar(var_1EC))
  loc_1C805B4:               Print 1, CVar(var_190.Item("qty"))
  loc_1C805F8:               var_148 = (Chr(&HF) + "***  ")
  loc_1C805FF:               var_18C = Space(3) & Trim(var_C8) 
  loc_1C8060E:               Print 1, var_18C & "  ***"
  loc_1C80669:               var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C80677:               unk_58F167.Execute CStr(var_16C), var_18C, -1
  loc_1C806D8:               If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C80709:                 Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("Changed TOKEN", &H14, var_190), "D", &H28, var_308)
  loc_1C80713:                 Print 1, var_308
  loc_1C80729:               Else
  loc_1C8077F:                 unk_58F167.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C807DD:                 If (Proc_6_38_E69628(CVar(var_190.Fields.Item(0)), var_190, 1) = "Y") Then
  loc_1C8080E:                   Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1C80818:                   Print 1, var_308
  loc_1C8082E:                 Else
  loc_1C80830:                   Print 1
  loc_1C80836:                 End If
  loc_1C80836:               End If
  loc_1C8083B:               Set var_DC = Nothing
  loc_1C80853:               var_148 = (Chr(&HF) + "** ")
  loc_1C8085D:               var_16C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1C80866:               var_18C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C8086C:               Print 1, var_18C
  loc_1C80880:               var_B4.MoveNext
  loc_1C80887:               Print 1
  loc_1C8088F:               Print 1
  loc_1C80897:               Print 1
  loc_1C8089F:               Print 1
  loc_1C808A7:               Print 1
  loc_1C808AF:               Print 1
  loc_1C808B7:               Print 1
  loc_1C808BF:               Print 1
  loc_1C808C7:               Print 1
  loc_1C808CF:               Print 1
  loc_1C808D5:               GoTo loc_1C7F9E2
  loc_1C808D8:             End If
  loc_1C808DA:             Close 1
  loc_1C80915:             If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C8093D:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C80995:               var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C8099B:               Print 1, var_16C
  loc_1C809BB:             Else
  loc_1C809E0:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C80A17:               Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C80A28:             End If
  loc_1C80A2A:             Close 1
  loc_1C80A34:             If (MemVar_1F953BC = "Y") Then
  loc_1C80A66:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C80A77:             Else
  loc_1C80A7F:               For var_380 = 1 To var_E8:         var_EA = var_380 'Integer
  loc_1C80AB4:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C80AC5:               Next var_380 'Integer
  loc_1C80ACA:             End If
  loc_1C80ACD:           Else
  loc_1C80AD8:             If (var_264 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1C80ADD:               Close 1
  loc_1C80B04:               Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C80B14:               var_B4.MoveFirst
  loc_1C80B19:               ' Referenced from:         1C81BB3
  loc_1C80B28:               If Not(var_B4.EOF) Then
  loc_1C80C55:                 var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1C80C5E:                 var_90 = CStr(var_304)
  loc_1C80CCA:                 var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1C80CD9:                 If (0 = 0) Then
  loc_1C80CDE:                   Print 1
  loc_1C80CEC:                   If (var_F0 <> vbNullString) Then
  loc_1C80D22:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H2A)))
  loc_1C80D29:                     var_1A4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C80D2F:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C80D45:                   End If
  loc_1C80D4D:                   If (var_F4 <> vbNullString) Then
  loc_1C80D83:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H2A)))
  loc_1C80D8A:                     var_1A4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C80D90:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C80DA6:                   End If
  loc_1C80DAE:                   If (var_F8 <> vbNullString) Then
  loc_1C80DE4:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H2A)))
  loc_1C80DEB:                     var_1A4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C80DF1:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C80E07:                   End If
  loc_1C80E0F:                   If (var_FC <> vbNullString) Then
  loc_1C80E45:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H2A)))
  loc_1C80E4C:                     var_1A4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C80E52:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C80E68:                   End If
  loc_1C80E6A:                   Print 1
  loc_1C80E99:                   var_1A4 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C80EDC:                   var_2E4 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C80EEE:                   var_304 = Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)))
  loc_1C80F06:                   var_1E4 = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1C80F0D:                   var_254 = (CVar(var_B4.Fields.Item("NCTOKEN")) + Trim(CVar(Me.LblRest)))
  loc_1C80F14:                   var_340 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") + var_304)
  loc_1C80F1B:                   var_364 = (IIf((var_B8.Fields.Item(2).Value = (Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1C80F21:                   Print 1, var_364
  loc_1C80F6F:                   var_18C = (40 - Len(Trim(var_90)))
  loc_1C80FA2:                   var_254 = (40 - Len(Trim(var_90)))
  loc_1C80FB4:                   var_2B4 = Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") / 2)))
  loc_1C80FCC:                   var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1C80FD6:                   var_1E4 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1C80FDD:                   var_2D4 = (CVar(var_B4.Fields.Item("NCTOKEN")) + var_2B4)
  loc_1C80FE4:                   var_2F4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1C80FEA:                   Print 1, (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)
  loc_1C8100E:                   Print 1
  loc_1C81016:                   Print 1
  loc_1C8104F:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")))
  loc_1C8107E:                   var_148 = (Chr(&HF) + "TOKEN No.   :         ")
  loc_1C81088:                   var_1B4 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)))
  loc_1C8108F:                   var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1C81095:                   Print 1, CVar(var_B4.Fields.Item("NCTOKEN"))
  loc_1C81158:                   var_148 = (Chr(&HF) + "TOKEN Dt.   :         ")
  loc_1C81162:                   var_1A4 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), &H12), &HC)))
  loc_1C8116B:                   var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + " ")
  loc_1C81175:                   var_224 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C8117C:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C81182:                   Print 1, IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *")
  loc_1C811DB:                   var_178 = var_B4.Fields.Item("Remarks")
  loc_1C81218:                   var_148 = (Chr(&HF) + "Remarks :         ")
  loc_1C81222:                   var_1A4 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H20)))
  loc_1C81229:                   var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + Chr(&H12))
  loc_1C8122F:                   Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C81268:                   Set var_170 = Me.Label1
  loc_1C8126E:                   Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C812BF:                   var_308 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C812EC:                   var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C812F5:                   var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + ":         ")
  loc_1C812FF:                   var_224 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_308, 5)))
  loc_1C81306:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C8130C:                   Print 1, IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *")
  loc_1C81362:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C81369:                   var_18C = (CVar(var_178) + Chr(&H12))
  loc_1C8136F:                   Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))
  loc_1C81380:                 End If
  loc_1C813A6:                 var_16C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Space(1))
  loc_1C813C0:                 var_1A4 = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 7)))
  loc_1C813CC:                 var_1B4 = Space(1)
  loc_1C813D4:                 var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + var_1B4)
  loc_1C813EE:                 var_224 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 7)))
  loc_1C81437:                 var_148 = (Chr(&HF) + CVar(CStr(Trim(var_90))))
  loc_1C8143E:                 var_18C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C81444:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1C81478:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C8147F:                 var_18C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C81485:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1C8149C:                 var_92 = (var_92 + 4)
  loc_1C814A2:                 var_B8.MoveFirst
  loc_1C814A7:                 ' Referenced from:         1C817B5
  loc_1C814B6:                 If Not(var_B8.EOF) Then
  loc_1C814EF:                   var_190 = var_B8.Fields
  loc_1C81506:                   Proc_6_39_E7D3A0(var_1B4, CVar(var_190.Item("qty")))
  loc_1C81551:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1C815F4:                   var_18C = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1, 1)) + Space(1))
  loc_1C8160D:                   var_234 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1B4, "0.000")), 7, CVar(Proc_6_52_EAE084("Qty", 7)))))
  loc_1C81621:                   var_284 = (Chr(&H12) + Space(1))
  loc_1C81637:                   var_304 = CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 7, (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCTOKEN"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) 'String
  loc_1C8163A:                   var_340 = (&H12 + var_304)
  loc_1C81650:                   var_3DC = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C81653:                   var_3EC = (IIf((var_B8.Fields.Item("Rate").Value = "0.00"), "Void", vbNullString) + var_3DC)
  loc_1C816CD:                   var_148 = (Chr(&HF) + CVar(CStr(var_3EC)))
  loc_1C816D4:                   var_18C = (Space(1) + Chr(&H12))
  loc_1C816DA:                   Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1C816F1:                   var_92 = (var_92 + 1)
  loc_1C8172D:                   If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C81770:                     var_148 = (Chr(&HF) + "(")
  loc_1C8177A:                     var_1A4 = (Space(1) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1C81783:                     var_1B4 = (CVar(var_190.Item("qty")) + ")")
  loc_1C81789:                     Print 1, var_1B4
  loc_1C817AA:                     var_92 = (var_92 + 1)
  loc_1C817AD:                   End If
  loc_1C817B0:                   var_B8.MoveNext
  loc_1C817B5:                   GoTo loc_1C814A7
  loc_1C817B8:                 End If
  loc_1C817DB:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C817E2:                 var_18C = (Space(1) + Chr(&H12))
  loc_1C817E8:                 Print 1, CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description"))))
  loc_1C8185A:                 var_148 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1C81864:                 var_1A4 = (Space(1) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1C8186B:                 var_1D4 = (CVar(var_190.Item("qty")) + Chr(&H12))
  loc_1C81871:                 Print 1, "0.000"
  loc_1C818B9:                 var_1A4 = Chr(&H12)
  loc_1C818C6:                 var_148 = (Chr(&HF) + "***  ")
  loc_1C818CD:                 var_18C = Space(1) & Trim(var_C8) 
  loc_1C818D9:                 var_1B4 = ("  ***" + var_1A4)
  loc_1C818E3:                 Print 1, var_18C & Chr(&H12)
  loc_1C81942:                 var_16C = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C81950:                 unk_58F167.Execute CStr(var_16C), var_18C, -1
  loc_1C819B1:                 If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C819E2:                   Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("Changed TOKEN", &H14), "D", &H28)
  loc_1C819EC:                   Print 1, var_308
  loc_1C81A02:                 Else
  loc_1C81A58:                   unk_58F167.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C81AB6:                   If (Proc_6_38_E69628(CVar(var_190.Fields.Item(0)), var_190, var_308) = "Y") Then
  loc_1C81AE7:                     Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1C81AF1:                     Print 1, var_308
  loc_1C81B07:                   Else
  loc_1C81B09:                     Print 1
  loc_1C81B0F:                   End If
  loc_1C81B0F:                 End If
  loc_1C81B14:                 Set var_DC = Nothing
  loc_1C81B2C:                 var_148 = (Chr(&HF) + "** ")
  loc_1C81B36:                 var_16C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1C81B3F:                 var_18C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C81B45:                 Print 1, var_18C
  loc_1C81B59:                 var_B4.MoveNext
  loc_1C81B60:                 Print 1
  loc_1C81B68:                 Print 1
  loc_1C81B70:                 Print 1
  loc_1C81B78:                 Print 1
  loc_1C81B9E:                 var_16C = (Chr(&H1B) + Chr(&H6D))
  loc_1C81BA4:                 Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C81BB3:                 GoTo loc_1C80B19
  loc_1C81BB6:               End If
  loc_1C81BB8:               Close 1
  loc_1C81BF3:               If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C81C1B:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C81C73:                 var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C81C79:                 Print 1, var_16C
  loc_1C81C99:               Else
  loc_1C81CBE:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C81CF5:                 Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C81D06:               End If
  loc_1C81D08:               Close 1
  loc_1C81D12:               If (MemVar_1F953BC = "Y") Then
  loc_1C81D44:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C81D55:               Else
  loc_1C81D5D:                 For var_3F0 = 1 To var_E8:           var_EA = var_3F0 'Integer
  loc_1C81D92:                   var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C81DA3:                 Next var_3F0 'Integer
  loc_1C81DA8:               End If
  loc_1C81DA8:             End If
  loc_1C81DA8:           End If
  loc_1C81DA8:         End If
  loc_1C81DA8:       End If
  loc_1C81DA8:     End If
  loc_1C81DFE:     unk_58F167.Execute CStr("UPDATE TOKEN SET PRINTED='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C81E1D:   Else
  loc_1C81E67:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_18C, var_1A4, Chr(&H12))
  loc_1C81E82:   End If
  loc_1C81E85:   var_BC.MoveNext
  loc_1C81E8A:   GoTo loc_1C7C21C
  loc_1C81E8D: End If
  loc_1C81E92: Set var_B4 = Nothing
  loc_1C81E9A: Set var_B8 = Nothing
  loc_1C81EA2: Set var_BC = Nothing
  loc_1C81EA5: Exit Sub
  loc_1C81EA6: ' Referenced from: 1C7B82C
  loc_1C81EA6: Proc_6_60_E63754(var_190)
  loc_1C81EAB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1A8DDE0
  'Data Table: 58F144
  Dim var_C4 As Variant
  Dim var_AC As Variant
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_A8 As Variant
  Dim var_F4 As Variant
  Dim var_148 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As Variant
  Dim var_158 As String
  Dim unk_58F167 As Connection15
  Dim var_B0 As Variant
  Dim MemVar_1F950EC As Double
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_114 As Variant
  Dim var_18C As Variant
  Dim var_17C As Variant
  Dim var_1DC As Variant
  Dim var_150 As Double
  Dim var_228 As TextBox
  Dim var_9C8 As Double
  Dim var_298 As Variant
  Dim var_2EC As Variant
  Dim var_30C As Variant
  Dim var_320 As MSHFlexGrid
  Dim var_380 As Variant
  Dim var_3A0 As Variant
  Dim var_3B4 As Variant
  Dim var_3C4 As Variant
  Dim var_414 As Variant
  Dim var_45C As String
  Dim var_9D0 As Double
  Dim var_4F4 As String
  Dim var_9D8 As Double
  Dim var_5DC As String
  Dim var_67C As Variant
  Dim var_69C As Variant
  Dim var_710 As Variant
  Dim var_730 As Variant
  Dim var_744 As MSHFlexGrid
  Dim var_7FC As Variant
  Dim var_81C As Variant
  Dim var_9E0 As Double
  Dim var_914 As Variant
  Dim var_934 As Variant
  Dim var_948 As MSHFlexGrid
  Dim var_958 As Variant
  Dim var_200 As String
  Dim var_204 As String
  Dim var_208 As String
  Dim var_21C As String
  Dim var_230 As String
  Dim var_238 As String
  Dim var_134 As Variant
  Dim var_250 As Variant
  Dim var_260 As Variant
  Dim var_270 As Variant
  Dim var_280 As Variant
  Dim var_2BC As Variant
  Dim var_340 As Variant
  Dim var_47C As Variant
  Dim var_514 As Variant
  Dim var_554 As Variant
  Dim var_5A4 As Variant
  Dim var_64C As Variant
  Dim var_6E0 As Variant
  Dim var_794 As Variant
  Dim var_7CC As Variant
  Dim var_854 As Variant
  Dim var_884 As Variant
  Dim var_8C4 As Variant
  Dim var_8E4 As Variant
  Dim var_23C As Label
  Dim var_294 As TextBox
  Dim var_2FC As Variant
  Dim var_31C As Variant
  Dim var_3B0 As Variant
  Dim var_5C8 As MSHFlexGrid
  Dim var_5D8 As Variant
  Dim var_22C As String
  Dim var_EA4 As Double
  Dim var_9C0 As TextBox
  Dim var_B5C As Field20
  Dim var_29C As String
  Dim var_EAC As Double
  Dim var_C88 As Variant
  Dim var_CB8 As Variant
  Dim var_D18 As Variant
  Dim var_D5C As Variant
  Dim var_DA4 As Variant
  Dim var_DF4 As Variant
  Dim var_E14 As Variant
  Dim var_E28 As MSHFlexGrid
  Dim var_594 As Variant
  Dim var_9BC As Variant
  Dim var_A44 As Variant
  Dim var_B7C As Variant
  Dim var_C10 As Variant
  Dim var_C50 As Variant
  Dim var_D08 As Variant
  Dim var_D7C As Variant
  Dim var_DC4 As Variant
  Dim var_DD4 As Variant
  Dim var_E68 As Variant
  Dim var_BDC As Variant
  Dim var_C78 As TextBox
  Dim var_DA0 As MSHFlexGrid
  Dim var_E98 As Variant
  Dim var_88 As Recordset15
  Dim var_214 As String
  loc_1A8A354: On Error Goto loc_1A8DDC6
  loc_1A8A362: Set var_A8 = Me.Txt
  loc_1A8A368: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1A8A391: If (Proc_6_27_EA61EC(var_AC, "Voucher Date") = 0) Then
  loc_1A8A394:   Exit Sub
  loc_1A8A395: End If
  loc_1A8A3A0: Set var_A8 = Me.Txt
  loc_1A8A3A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1A8A3CF: If (Proc_6_27_EA61EC(var_AC, "Voucher No") = 0) Then
  loc_1A8A3D2:   Exit Sub
  loc_1A8A3D3: End If
  loc_1A8A3DE: If (LocalRestCode = vbNullString) Then
  loc_1A8A3FA:   MsgBox("Open RestaurantChange Master", 0, var_F4, var_114, var_134)
  loc_1A8A40A:   Exit Sub
  loc_1A8A40B: End If
  loc_1A8A416: Set var_A8 = Me.Txt
  loc_1A8A41C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1A8A445: If (Proc_6_27_EA61EC(var_AC, "TOKEN Time") = 0) Then
  loc_1A8A448:   Exit Sub
  loc_1A8A449: End If
  loc_1A8A454: Set var_A8 = Me.Txt
  loc_1A8A45A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1A8A483: If (Proc_6_27_EA61EC(var_AC, "WAITER") = 0) Then
  loc_1A8A486:   Exit Sub
  loc_1A8A487: End If
  loc_1A8A492: Set var_A8 = Me.Txt
  loc_1A8A498: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1A8A4C1: If (Proc_6_27_EA61EC(var_AC, "TABLE CODE") = 0) Then
  loc_1A8A4C4:   Exit Sub
  loc_1A8A4C5: End If
  loc_1A8A4D3: Set var_A8 = Me.Txt
  loc_1A8A4D9: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1A8A4EF: var_F4 = Trim(CVar(var_AC.Tag))
  loc_1A8A50D: If (var_F4 = vbNullString) Then
  loc_1A8A529:   MsgBox("TABLE CODE is required field.", &H10, var_F4, var_114, var_134)
  loc_1A8A547:   Set var_A8 = Me.Txt
  loc_1A8A54D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1A8A567:   If (var_AC.Enabled = &HFF) Then
  loc_1A8A575:     Set var_A8 = Me.Txt
  loc_1A8A57B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1A8A583:     var_AC.SetFocus
  loc_1A8A58F:   End If
  loc_1A8A58F:   Exit Sub
  loc_1A8A590: End If
  loc_1A8A59E: Set var_A8 = Me.Txt
  loc_1A8A5A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1A8A5BA: var_F4 = Trim(CVar(var_AC.Tag))
  loc_1A8A5D8: If (var_F4 = vbNullString) Then
  loc_1A8A5F4:   MsgBox("Steward Name is required field.", &H10, var_F4, var_114, var_134)
  loc_1A8A612:   Set var_A8 = Me.Txt
  loc_1A8A618:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1A8A620:   var_136 = var_AC.Enabled
  loc_1A8A632:   If (var_136 = &HFF) Then
  loc_1A8A640:     Set var_A8 = Me.Txt
  loc_1A8A646:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1A8A64E:     var_AC.SetFocus
  loc_1A8A65A:   End If
  loc_1A8A65A:   Exit Sub
  loc_1A8A65B: End If
  loc_1A8A65B: var_C4 = 1
  loc_1A8A664: var_104 = 1
  loc_1A8A682: var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A8A688: var_114 = Trim(var_F4)
  loc_1A8A6A4: If (var_114 = vbNullString) Then
  loc_1A8A6C0:   MsgBox("Fill Item Name ", 0, var_F4, var_114, var_134)
  loc_1A8A6E3:   Me.FGrid.Row = 1
  loc_1A8A6EF:   Set var_A8 = Me.FGrid
  loc_1A8A713:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1A8A71B:   Exit Sub
  loc_1A8A71C: End If
  loc_1A8A71C: var_C4 = 1
  loc_1A8A728: var_104 = CVar(CLng(4)) 'Long
  loc_1A8A742: var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A8A748: var_114 = Trim(var_F4)
  loc_1A8A764: If (var_114 = vbNullString) Then
  loc_1A8A780:   MsgBox("Item Detail Required ", 0, var_F4, var_114, var_134)
  loc_1A8A7A3:   Me.FGrid.Row = 1
  loc_1A8A7AF:   Set var_A8 = Me.FGrid
  loc_1A8A7C4:   var_C4 = CVar(CLng("14737632")) 'Long
  loc_1A8A7D3:   Me.FGrid.CellBackColor = var_C4
  loc_1A8A7DB:   Exit Sub
  loc_1A8A7DC: End If
  loc_1A8A7DF: Call Proc_333_86_1080E20(var_136, FGrid.DispID_8001, var_104, var_C4)
  loc_1A8A7EF: Set var_A8 = Me.TxtGrid
  loc_1A8A7F5: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_AC, 0, FGrid.DispID_8001)
  loc_1A8A7FD: var_AC.Visible = var_104
  loc_1A8A809: Call Proc_333_89_EF8E58(var_C4)
  loc_1A8A81C: Set var_A8 = Me.Txt
  loc_1A8A822: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1A8A84A: If (Proc_6_91_EF38D0(CDate(var_AC.Text)) = 0) Then
  loc_1A8A858:   Set var_A8 = Me.Txt
  loc_1A8A85E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1A8A866:   var_AC.SetFocus
  loc_1A8A872:   Exit Sub
  loc_1A8A873: End If
  loc_1A8A8A8: var_114 = IIf((Me.ChkNCTOKEN.Value = 1), "Y", "N")
  loc_1A8A8B1: var_9C = CStr(var_114)
  loc_1A8A8C6: Set var_A8 = Me.TopCtrl1
  loc_1A8A8CC: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_1A8A8E5: If (CStr() = "Add") Then
  loc_1A8A903:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A8A906:     ' Referenced from: 1A8A9BA
  loc_1A8A90A:     Set var_154 = New RsTouchScreenKeyBoard
  loc_1A8A918:     var_154.ParentForm = CVar(Me)
  loc_1A8A925:     var_154.CAPTION = "Please Specify, Reason of NC TOKEN ?"
  loc_1A8A937:     var_154.TxtKeyBoard.MaxLength = 150
  loc_1A8A93E:     var_C4 = 1
  loc_1A8A94A:     Call var_154.Show
  loc_1A8A986:     If (Trim(TxtKeyBoard) = vbNullString) Then
  loc_1A8A994:       var_F4 = "Reason"
  loc_1A8A9A4:       var_D4 = "Please Enter a Valid Reason for NC TOKEN."
  loc_1A8A9AA:       MsgBox(var_D4, 0, var_F4, var_114, var_134)
  loc_1A8A9BA:       GoTo loc_1A8A906
  loc_1A8A9BD:     End If
  loc_1A8A9BD:   End If
  loc_1A8A9C3:   var_E4 = 0
  loc_1A8A9E0:   var_B4 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F95078
  loc_1A8A9F0:   unk_58F167.Execute var_B4 & "'", var_D4, -1
  loc_1A8A9F8:   var_A8 = var_A8.Fields
  loc_1A8AA00:   var_E4 = var_AC.Item(var_AC)
  loc_1A8AA08:   var_B0 = var_B0.Value
  loc_1A8AA12:   MemVar_1F950EC = CDate(var_F4)
  loc_1A8AA59:   Set var_A8 = Me.Txt
  loc_1A8AA5F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Select Count(*) From TOKEN Where DocID='", var_D4, -1, var_B0)
  loc_1A8AA80:   unk_58F167.Execute 0 & var_B4 & "'", var_164, var_F4
  loc_1A8AA88:   MemVar_1F950EC = var_B0.Fields
  loc_1A8AA90:   var_C4 = var_AC.Text.Item(var_F4)
  loc_1A8AA98:    = var_164.Value
  loc_1A8AAC5:   If (var_F4 > 0) Then
  loc_1A8AACE:     Call Proc_333_91_10E8008(MemVar_1F95044)
  loc_1A8AAE1:     Set var_A8 = Me.Txt
  loc_1A8AAE7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_1A8AAEF:     var_AC.Text = var_B4
  loc_1A8AAFE:   End If
  loc_1A8AB01: Else
  loc_1A8AB35:   global_256 = CStr(Me.Fields.Item("DocID").Value)
  loc_1A8AB46:   ' Referenced from:   1A8ABFA
  loc_1A8AB4A:   Set var_154 = New RsTouchScreenKeyBoard
  loc_1A8AB58:   var_154.ParentForm = CVar(Me)
  loc_1A8AB65:   var_154.CAPTION = "Please Specify, Reason of Editing ?"
  loc_1A8AB77:   var_154.TxtKeyBoard.MaxLength = 150
  loc_1A8AB7E:   var_C4 = 1
  loc_1A8AB8A:   Call var_154.Show
  loc_1A8AB9E:   global_180 = TxtKeyBoard
  loc_1A8ABC6:   If (Trim(global_180) = vbNullString) Then
  loc_1A8ABDF:     var_C4 = "Please Enter a Valid Reason for Editing."
  loc_1A8ABEA:     MsgBox(var_C4, 0, "Reason", var_114, var_134)
  loc_1A8ABFA:     GoTo loc_1A8AB46
  loc_1A8ABFD:   End If
  loc_1A8ABFD: End If
  loc_1A8ABFF: Set var_154 = Nothing 
  loc_1A8AC05: var_8A = &HFF
  loc_1A8AC11: unk_58F167.BeginTrans var_168
  loc_1A8AC1A: Set var_A8 = Me.TopCtrl1
  loc_1A8AC20: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_1A8AC39: If (CStr(var_C4) = "Edit") Then
  loc_1A8AC92:   unk_58F167.Execute CStr("Select * from TOKEN Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1A8AC9D:   Set var_88 = var_B0
  loc_1A8ACCE:   If (Me.RecordCount > 0) Then
  loc_1A8AD27:     unk_58F167.Execute CStr("Delete From TOKEN Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1A8AD99:     unk_58F167.Execute CStr("Delete From Stock Where KOTDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1A8ADE4:     var_AC = Me.Fields.Item("SearchCode")
  loc_1A8ADEC:     var_D4 = var_AC.Value
  loc_1A8AE01:     var_B4 = CStr("Delete From Stock Where DocID='" & var_D4 & "'")
  loc_1A8AE0B:     unk_58F167.Execute var_B4, var_134, -1
  loc_1A8AE27:   End If
  loc_1A8AE45:   Set var_A8 = Me.Txt
  loc_1A8AE4B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Delete From TOKEN Where DocID='", var_D4, -1)
  loc_1A8AE53:   var_B0 = var_AC.Text
  loc_1A8AE6C:   unk_58F167.Execute var_B0 & var_B4 & "'", var_B0, var_B0
  loc_1A8AE86: End If
  loc_1A8AEA1: If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A8AEC9:   For var_16C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_16C 'Integer
  loc_1A8AED3:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A8AEDB:     var_104 = CVar(CLng(9)) 'Long
  loc_1A8AF24:     If (Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = "CANCEL") Then
  loc_1A8AF2A:       var_A0 = "Y"
  loc_1A8AF30:     Else
  loc_1A8AF33:       var_A0 = "N"
  loc_1A8AF36:     End If
  loc_1A8AF3A:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A8AF62:     var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A8AF89:     Set var_AC = Me.FGrid
  loc_1A8AF9A:     var_B4 = CStr(var_AC.TextMatrix))
  loc_1A8AFE9:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0)) And (Me.RecordCount > 0)) Then
  loc_1A8AFFA:       Set var_A8 = Me.Txt
  loc_1A8B000:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (var_114 <> vbNullString), CVar(CLng(&HA)))
  loc_1A8B008:       var_C4 = var_AC.Text
  loc_1A8B011:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A8B03B:       var_150 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8B05E:       Set var_164 = Me.Txt
  loc_1A8B064:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_228, var_22C, var_150, CVar(CLng(0)), var_C4)
  loc_1A8B06C:       var_104 = var_228.Text
  loc_1A8B079:       var_9C8 = Val(var_22C)
  loc_1A8B087:       Set var_23C = Me.Txt
  loc_1A8B08D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_240, var_9C8, var_C4)
  loc_1A8B09C:       Proc_6_7_F26918(var_114, CVar(var_240), 1)
  loc_1A8B0AF:       Set var_294 = Me.Txt
  loc_1A8B0B5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298, var_29C)
  loc_1A8B0BD:       var_B0 = var_298.Tag
  loc_1A8B0C6:       var_2EC = CVar(CLng(var_92)) 'Long
  loc_1A8B0CE:       var_30C = CVar(CLng(&HA)) 'Long
  loc_1A8B0ED:       var_380 = CVar(CLng(var_92)) 'Long
  loc_1A8B0F5:       var_3A0 = CVar(CLng(5)) 'Long
  loc_1A8B104:       var_3C4 = Me.FGrid.TextMatrix)
  loc_1A8B13E:       var_9D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8B16F:       var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8B180:       Proc_6_7_F26918(var_594, Date, var_9D8, CVar(CLng(8)), CVar(CLng(var_92)), var_9D0, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A8B189:       Set var_5C8 = Me.TopCtrl1
  loc_1A8B18F:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_3C4)
  loc_1A8B1CA:       var_67C = CVar(CLng(var_92)) 'Long
  loc_1A8B1D2:       var_69C = CVar(CLng(&HB)) 'Long
  loc_1A8B1F1:       var_710 = CVar(CLng(var_92)) 'Long
  loc_1A8B1F9:       var_730 = CVar(CLng(&HB)) 'Long
  loc_1A8B242:       var_7FC = CVar(CLng(var_92)) 'Long
  loc_1A8B24A:       var_81C = CVar(CLng(0)) 'Long
  loc_1A8B273:       var_914 = CVar(CLng(var_92)) 'Long
  loc_1A8B27B:       var_934 = CVar(CLng(1)) 'Long
  loc_1A8B2AA:       var_158 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDOCID,KOTSNO,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B4
  loc_1A8B2F1:       var_230 = var_158 & "'," & CStr(var_150) & ",'" & global_152 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "',"
  loc_1A8B349:       var_280 = CVar(var_230 & CStr(var_9C8) & ",") & var_114 & ",'" & CVar(MemVar_1F951A8) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1A8B398:       var_47C = var_280 & "','" & CVar(var_29C) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_3C4)) & "'," & CVar(var_9D0) 
  loc_1A8B3DF:       var_64C = var_47C & "," & CVar(var_9D8) & ",'" & CVar(MemVar_1F950C8) & "'," & var_594 & ",'" & IIf((CStr(var_5D8) = "Add"), "A", "E") 
  loc_1A8B417:       var_7CC = var_64C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Me.Fields.Item("SearchCode").Value 
  loc_1A8B451:       var_8E4 = var_7CC & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(var_A0) & "','" & CVar(MemVar_1F95078) 
  loc_1A8B47C:       unk_58F167.Execute CStr(var_8E4 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_9BC, -1
  loc_1A8B565:     Else
  loc_1A8B591:       var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A8B5B8:       Set var_AC = Me.FGrid
  loc_1A8B5C9:       var_B4 = CStr(var_AC.TextMatrix))
  loc_1A8B5F7:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1A8B608:         Set var_A8 = Me.Txt
  loc_1A8B60E:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (var_114 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A8B616:         var_9C0 = var_AC.Text
  loc_1A8B630:         Set var_B0 = Me.FGrid
  loc_1A8B649:         var_150 = Val(CStr(var_B0.TextMatrix)))
  loc_1A8B653:         Set var_160 = Me.LblVPrefix
  loc_1A8B659:         var_214 = var_160.Caption
  loc_1A8B66C:         Set var_164 = Me.Txt
  loc_1A8B672:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_228, var_22C, var_150, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1A8B67A:         var_958 = var_228.Text
  loc_1A8B687:         var_9C8 = Val(var_22C)
  loc_1A8B695:         Set var_23C = Me.Txt
  loc_1A8B69B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_240, var_9C8, var_934)
  loc_1A8B6AA:         Proc_6_7_F26918(var_114, CVar(var_240), var_914)
  loc_1A8B6BD:         Set var_294 = Me.Txt
  loc_1A8B6C3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_298, var_29C)
  loc_1A8B6CB:         var_9E0 = var_298.Tag
  loc_1A8B6D4:         var_2EC = CVar(CLng(var_92)) 'Long
  loc_1A8B6DC:         var_30C = CVar(CLng(&HA)) 'Long
  loc_1A8B6FB:         var_380 = CVar(CLng(var_92)) 'Long
  loc_1A8B703:         var_3A0 = CVar(CLng(5)) 'Long
  loc_1A8B70C:         Set var_3B4 = Me.FGrid
  loc_1A8B712:         var_3C4 = var_3B4.TextMatrix)
  loc_1A8B744:         var_45C = CStr(Me.FGrid.TextMatrix))
  loc_1A8B74C:         var_9D0 = Val(var_45C)
  loc_1A8B77D:         var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8B78E:         Proc_6_7_F26918(var_594, Date, var_9D8, CVar(CLng(8)), CVar(CLng(var_92)), var_9D0, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1A8B797:         Set var_5C8 = Me.TopCtrl1
  loc_1A8B79D:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_3C4)
  loc_1A8B7D8:         var_67C = CVar(CLng(var_92)) 'Long
  loc_1A8B7E0:         var_69C = CVar(CLng(&HB)) 'Long
  loc_1A8B7FF:         var_710 = CVar(CLng(var_92)) 'Long
  loc_1A8B807:         var_730 = CVar(CLng(&HB)) 'Long
  loc_1A8B826:         var_81C = CVar(CLng(var_92)) 'Long
  loc_1A8B82E:         var_854 = CVar(CLng(1)) 'Long
  loc_1A8B85D:         var_158 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B4
  loc_1A8B864:         var_200 = var_158 & "',"
  loc_1A8B88F:         var_21C = var_200 & CStr(var_150) & ",'" & global_152 & "','" & var_214
  loc_1A8B8B0:         var_238 = var_21C & "','" & MemVar_1F95070 & "'," & CStr(var_9C8)
  loc_1A8B8BD:         var_17C = CVar(var_238 & ",") & var_114 
  loc_1A8B90F:         var_2BC = var_17C & ",'" & CVar(MemVar_1F951A8) & "','" & CVar(global_156) & "','" & CVar(global_160) & "','" & CVar(var_29C) 
  loc_1A8B95F:         var_514 = var_2BC & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_3C4)) & "'," & CVar(var_9D0) & "," & CVar(var_9D8) 
  loc_1A8B9A6:         var_6E0 = var_514 & ",'" & CVar(MemVar_1F950C8) & "'," & var_594 & ",'" & IIf((CStr(var_5D8) = "Add"), "A", "E") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1A8B9F4:         var_8A4 = var_6E0 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_A0) & "','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1A8B9FD:         var_8C4 = var_8A4 & "')" 
  loc_1A8BA0B:         unk_58F167.Execute CStr(var_8C4), var_8E4, -1
  loc_1A8BADD:       End If
  loc_1A8BADD:     End If
  loc_1A8BAE0:   Next var_16C 'Integer
  loc_1A8BAE8: Else
  loc_1A8BAEC:   Set var_A8 = Me.TopCtrl1
  loc_1A8BAF2:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A8BB0B:   If (CStr() = "Edit") Then
  loc_1A8BB25:     If (Me.RecordCount > 0) Then
  loc_1A8BB3C:       var_B4 = "UPDATE TOKEN SET NCTOKEN='" & var_9C
  loc_1A8BB63:       var_AC = Me.Fields.Item("SearchCode")
  loc_1A8BB8A:       unk_58F167.Execute CStr(CVar(var_B4 & "' Where DocID='") & var_AC.Value & "'"), var_17C, -1
  loc_1A8BBAC:     End If
  loc_1A8BBCA:     Set var_A8 = Me.Txt
  loc_1A8BBD0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Delete From TOKEN Where CONTRADocID='")
  loc_1A8BBD8:     var_D4 = var_AC.Text
  loc_1A8BBE1:     var_158 = -1 & var_B4
  loc_1A8BBF1:     unk_58F167.Execute CStr(CVar(var_B4 & "' Where DocID='") & var_AC.Value & "'") & "'", var_B0, var_B0
  loc_1A8BC0B:   End If
  loc_1A8BC0B: End If
  loc_1A8BC30: For var_9E4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_9E4 'Integer
  loc_1A8BC51:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A8BC58:     Set var_A8 = Me.TopCtrl1
  loc_1A8BC5E:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1A8BC77:     If (CStr() = "Edit") Then
  loc_1A8BC7E:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A8BC86:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1A8BCA0:       var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A8BCCD:       Set var_AC = Me.FGrid
  loc_1A8BCDE:       var_B4 = CStr(var_AC.TextMatrix))
  loc_1A8BD0C:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1A8BD1D:         Set var_A8 = Me.Txt
  loc_1A8BD23:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)))
  loc_1A8BD2B:         (Trim(var_F4) <> vbNullString) = var_AC.Text
  loc_1A8BD3E:         Set var_B0 = Me.Txt
  loc_1A8BD44:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_200)
  loc_1A8BD4C:         var_104 = var_160.Text
  loc_1A8BD59:         var_150 = Val(var_200)
  loc_1A8BD67:         Set var_164 = Me.Txt
  loc_1A8BD6D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_228)
  loc_1A8BD75:         var_D4 = CVar(var_228) 'Address
  loc_1A8BD7C:         Proc_6_7_F26918(var_F4, var_D4)
  loc_1A8BDA1:         Set var_240 = Me.Txt
  loc_1A8BDA7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_294, var_214)
  loc_1A8BDB8:         var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A8BDC0:         var_31C = CVar(CLng(0)) 'Long
  loc_1A8BDE2:         var_9C8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8BDF3:         Set var_320 = Me.Txt
  loc_1A8BDF9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_3B4, var_21C, var_9C8)
  loc_1A8BE01:         var_31C = var_3B4.Text
  loc_1A8BE0A:         var_3B0 = CVar(CLng(var_92)) 'Long
  loc_1A8BE12:         var_414 = CVar(CLng(&HA)) 'Long
  loc_1A8BE21:         var_514 = Me.FGrid.TextMatrix)
  loc_1A8BE5B:         var_9D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8BF17:         var_794 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1A8BF2A:         Proc_6_7_F26918(var_8C4, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_9D0)
  loc_1A8BF33:         Set var_744 = Me.TopCtrl1
  loc_1A8BF39:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(7)))
  loc_1A8BF9E:         var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8BFCF:         var_9E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8C000:         var_EA4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8C013:         var_5DC = Proc_6_38_E69628(global_180, var_EA4, CVar(CLng(8)), CVar(CLng(var_92)), var_9E0, CVar(CLng(7)), CVar(CLng(var_92)), var_9D8)
  loc_1A8C024:         Set var_948 = Me.Txt
  loc_1A8C02A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C0, var_238, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1A8C054:         var_B5C = Me.Fields.Item("SearchCode")
  loc_1A8C087:         var_29C = CStr(Me.FGrid.TextMatrix))
  loc_1A8C08F:         var_EAC = Val(var_29C)
  loc_1A8C09D:         Set var_C74 = Me.Txt
  loc_1A8C0A3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_C78, var_EAC, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1A8C0DD:         var_D18 = CVar(CLng(var_92)) 'Long
  loc_1A8C0F4:         var_D5C = Me.FGrid.TextMatrix)
  loc_1A8C10E:         Set var_DA0 = Me.Txt
  loc_1A8C114:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_DA4, var_45C, var_D5C, CVar(CLng(6)))
  loc_1A8C11C:         var_D18 = var_DA4.Tag
  loc_1A8C125:         var_DF4 = CVar(CLng(var_92)) 'Long
  loc_1A8C12D:         var_E14 = CVar(CLng(1)) 'Long
  loc_1A8C15C:         var_158 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,Remarks,ContraDocID,ContraSno,Logsite_Code,NCType,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A8C187:         var_C4 = ",'"
  loc_1A8C196:         var_E4 = CVar(global_152) 'String
  loc_1A8C1AC:         var_260 = CVar(var_158 & var_B4 & "'," & CStr(var_294.Tag) & ",") & var_F4 & var_C4 & var_E4 & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1A8C201:         var_340 = var_260 & "','" & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1A8C24F:         var_554 = var_340 & "','" & CVar(var_214) & "','Y'," & CVar(var_9C8) & ",'" & CVar(var_21C) & "','" & CVar(CStr(var_9C0.Text)) 
  loc_1A8C2A2:         var_884 = var_554 & "'," & CVar(var_9D0) & ",'" & var_794 & "','" & CVar(MemVar_1F9501C) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_1A8C2E9:         var_A44 = var_884 & var_8C4 & ",'" & IIf((CStr(var_958) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_9D8) & "," 
  loc_1A8C342:         var_C10 = var_A44 & CVar((var_9E0 * var_EA4)) & ",'" & CVar(var_5DC) & "','" & CVar(var_238) & "','" & var_B5C.Value & "'," & CVar(var_EAC) 
  loc_1A8C379:         var_D7C = var_C10 & ",'" & CVar(MemVar_1F95078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_C78)), vbNullString) & "','" & CVar(CStr(var_D5C)) 
  loc_1A8C3B7:         unk_58F167.Execute CStr(var_D7C & "','" & CVar(var_45C) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_E98, -1
  loc_1A8C4F5:       End If
  loc_1A8C4F8:     Else
  loc_1A8C4FC:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1A8C504:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1A8C524:       var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1A8C52C:       var_148 = vbNullString
  loc_1A8C53A:       var_18C = CVar(CLng(var_92)) 'Long
  loc_1A8C58A:       If CBool(CVar(CLng(7)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_1A8C5B8:         var_148 = CVar(CLng(var_92)) 'Long
  loc_1A8C5C9:         Set var_AC = Me.FGrid
  loc_1A8C5CF:         var_F4 = var_AC.TextMatrix)
  loc_1A8C5E2:         var_150 = Val(CStr(var_F4))
  loc_1A8C5F9:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1A8C604:         var_200 = "Update TOKEN Set VoidYN='Y',PENDING='N' Where Docid='" & var_B4 & "' And Sno="
  loc_1A8C619:         unk_58F167.Execute var_200 & CStr(var_150), var_114, -1
  loc_1A8C64D:         Set var_A8 = Me.Txt
  loc_1A8C653:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, var_B0, var_150, CVar(CLng(&HD)), var_148)
  loc_1A8C65B:         var_D4 = var_AC.Text
  loc_1A8C66E:         Set var_B0 = Me.Txt
  loc_1A8C674:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_200, CVar(CLng(&HC)), CVar(CLng(var_92)))
  loc_1A8C67C:         var_18C = var_160.Text
  loc_1A8C689:         var_150 = Val(var_200)
  loc_1A8C697:         Set var_164 = Me.Txt
  loc_1A8C69D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_228, var_150)
  loc_1A8C6A5:         var_D4 = CVar(var_228) 'Address
  loc_1A8C6AC:         Proc_6_7_F26918(var_F4, var_D4, (var_114 <> var_148))
  loc_1A8C6D1:         Set var_240 = Me.Txt
  loc_1A8C6D7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_294, var_214)
  loc_1A8C6DF:         var_104 = var_294.Tag
  loc_1A8C6E8:         var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A8C6F0:         var_31C = CVar(CLng(0)) 'Long
  loc_1A8C712:         var_9C8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8C723:         Set var_320 = Me.Txt
  loc_1A8C729:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_3B4, var_21C, var_9C8)
  loc_1A8C731:         var_31C = var_3B4.Text
  loc_1A8C73A:         var_3B0 = CVar(CLng(var_92)) 'Long
  loc_1A8C751:         var_514 = Me.FGrid.TextMatrix)
  loc_1A8C78B:         var_9D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8C847:         var_794 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1A8C85A:         Proc_6_7_F26918(var_8C4, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_9D0)
  loc_1A8C863:         Set var_744 = Me.TopCtrl1
  loc_1A8C869:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(7)))
  loc_1A8C8CE:         var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8C8FF:         var_9E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8C930:         var_EA4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8C943:         var_5DC = Proc_6_38_E69628(global_180, var_EA4, CVar(CLng(8)), CVar(CLng(var_92)), var_9E0, CVar(CLng(7)), CVar(CLng(var_92)), var_9D8)
  loc_1A8C954:         Set var_948 = Me.Txt
  loc_1A8C95A:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C0, var_238, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1A8C972:         Set var_B48 = Me.Txt
  loc_1A8C978:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B5C, CVar(CLng(&HA)))
  loc_1A8C9B2:         var_BDC = CVar(CLng(var_92)) 'Long
  loc_1A8C9C9:         var_C88 = Me.FGrid.TextMatrix)
  loc_1A8C9E3:         Set var_C74 = Me.Txt
  loc_1A8C9E9:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_C78, var_29C, var_C88, CVar(CLng(6)))
  loc_1A8C9F1:         var_BDC = var_C78.Tag
  loc_1A8C9FA:         var_CB8 = CVar(CLng(var_92)) 'Long
  loc_1A8CA02:         var_D18 = CVar(CLng(1)) 'Long
  loc_1A8CA21:         var_D48 = CVar(CLng(var_92)) 'Long
  loc_1A8CA29:         var_DD4 = CVar(CLng(&HC)) 'Long
  loc_1A8CA38:         var_DC4 = Me.FGrid.TextMatrix)
  loc_1A8CA48:         var_E14 = CVar(CLng(var_92)) 'Long
  loc_1A8CA50:         var_E68 = CVar(CLng(&HD)) 'Long
  loc_1A8CA72:         var_EAC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8CA89:         var_158 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Description,Party,ItemRestCode,ContraDocId,ContraSNo) " & " Values ('"
  loc_1A8CAC3:         var_E4 = CVar(global_152) 'String
  loc_1A8CAE2:         var_270 = CVar(var_158 & var_B4 & "'," & CStr(var_150) & ",") & var_F4 & ",'" & var_E4 & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1A8CB2E:         var_340 = var_270 & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) 
  loc_1A8CB7C:         var_554 = var_340 & "','" & CVar(var_214) & "','Y'," & CVar(var_9C8) & ",'" & CVar(var_21C) & "','" & CVar(CStr(var_9C0.Text)) 
  loc_1A8CBCF:         var_884 = var_554 & "'," & CVar(var_9D0) & ",'" & var_794 & "','" & CVar(MemVar_1F9501C) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_1A8CC16:         var_A44 = var_884 & var_8C4 & ",'" & IIf((CStr(var_958) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_9D8) & "," 
  loc_1A8CC67:         var_B7C = var_A44 & CVar((var_9E0 * var_EA4)) & ",'" & CVar(var_5DC) & "','" & CVar(var_238) & "','" & CVar(MemVar_1F95078) & "','" 
  loc_1A8CC95:         var_D08 = var_B7C & IIf((var_9C = "Y"), Trim(CVar(var_B5C)), vbNullString) & "','" & CVar(CStr(var_C88)) & "','" & CVar(var_29C) 
  loc_1A8CCE8:         unk_58F167.Execute CStr(var_D08 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_DC4)) & "'," & CVar(var_EAC) & ")"), var_EEC, -1
  loc_1A8CE26:       End If
  loc_1A8CE26:     End If
  loc_1A8CE29:   Else
  loc_1A8CE4F:     var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1A8CE7C:     Set var_AC = Me.FGrid
  loc_1A8CE8D:     var_B4 = CStr(var_AC.TextMatrix))
  loc_1A8CEBB:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1A8CECC:       Set var_A8 = Me.Txt
  loc_1A8CED2:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (Trim(var_F4) <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1A8CEDA:       var_E28 = var_AC.Text
  loc_1A8CEED:       Set var_B0 = Me.Txt
  loc_1A8CEF3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_200, var_EAC, var_E68)
  loc_1A8CEFB:       var_E14 = var_160.Text
  loc_1A8CF08:       var_150 = Val(var_200)
  loc_1A8CF16:       Set var_164 = Me.Txt
  loc_1A8CF1C:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_228, var_150)
  loc_1A8CF24:       var_D4 = CVar(var_228) 'Address
  loc_1A8CF2B:       Proc_6_7_F26918(var_F4, var_D4, var_DC4)
  loc_1A8CF37:       Set var_23C = Me.LblVPrefix
  loc_1A8CF50:       Set var_240 = Me.Txt
  loc_1A8CF56:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_294, var_214)
  loc_1A8CF5E:       var_DD4 = var_294.Tag
  loc_1A8CF67:       var_2FC = CVar(CLng(var_92)) 'Long
  loc_1A8CF6F:       var_31C = CVar(CLng(0)) 'Long
  loc_1A8CF91:       var_9C8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8CFA2:       Set var_320 = Me.Txt
  loc_1A8CFA8:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_3B4, var_21C, var_9C8)
  loc_1A8CFB0:       var_31C = var_3B4.Text
  loc_1A8CFB9:       var_3B0 = CVar(CLng(var_92)) 'Long
  loc_1A8CFD0:       var_514 = Me.FGrid.TextMatrix)
  loc_1A8D00A:       var_9D0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8D0C6:       var_794 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1A8D0D9:       Proc_6_7_F26918(var_8C4, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_9D0)
  loc_1A8D0E2:       Set var_744 = Me.TopCtrl1
  loc_1A8D0E8:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(7)))
  loc_1A8D14D:       var_9D8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8D17E:       var_9E0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8D1AF:       var_EA4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1A8D1C2:       var_4F4 = Proc_6_38_E69628(global_180, var_EA4, CVar(CLng(8)), CVar(CLng(var_92)), var_9E0, CVar(CLng(7)), CVar(CLng(var_92)), var_9D8)
  loc_1A8D1D3:       Set var_948 = Me.Txt
  loc_1A8D1D9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_9C0, var_238, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1A8D1F1:       Set var_B48 = Me.Txt
  loc_1A8D1F7:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B5C, CVar(CLng(&HA)))
  loc_1A8D231:       var_BDC = CVar(CLng(var_92)) 'Long
  loc_1A8D248:       var_C88 = Me.FGrid.TextMatrix)
  loc_1A8D262:       Set var_C74 = Me.Txt
  loc_1A8D268:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_C78, var_29C, var_C88, CVar(CLng(6)))
  loc_1A8D270:       var_BDC = var_C78.Tag
  loc_1A8D279:       var_CB8 = CVar(CLng(var_92)) 'Long
  loc_1A8D281:       var_D18 = CVar(CLng(1)) 'Long
  loc_1A8D2B0:       var_158 = "Insert Into TOKEN(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCTOKEN,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Description,Party,ItemRestCode) " & " Values ('"
  loc_1A8D2C6:       var_208 = CStr(var_150)
  loc_1A8D2FD:       var_250 = CVar(var_23C.Caption) 'String
  loc_1A8D313:       var_280 = CVar(var_158 & var_B4 & "'," & var_208 & ",") & var_F4 & ",'" & CVar(global_152) & "','" & var_250 & "','" & CVar(MemVar_1F95070) 
  loc_1A8D368:       var_3C4 = var_280 & "','" & CVar(LocalRestCode) & "','" & CVar(global_156) & "','" & CVar(global_160) & "','" & CVar(var_214) 
  loc_1A8D3C0:       var_5A4 = var_3C4 & "','Y'," & CVar(var_9C8) & ",'" & CVar(var_21C) & "','" & CVar(CStr(var_9C0.Text)) & "'," & CVar(var_9D0) & ",'" 
  loc_1A8D40D:       var_9BC = var_5A4 & var_794 & "','" & CVar(MemVar_1F9501C) & "','" & CVar(MemVar_1F950C8) & "'," & var_8C4 & ",'" & IIf((CStr(var_958) = "Add"), "A", "E") 
  loc_1A8D468:       var_B04 = var_9BC & "','" & CVar(var_9C) & "'," & CVar(var_9D8) & "," & CVar((var_9E0 * var_EA4)) & ",'" & CVar(var_4F4) & "','" 
  loc_1A8D495:       var_C50 = var_B04 & CVar(var_238) & "','" & CVar(MemVar_1F95078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_B5C)), vbNullString) 
  loc_1A8D4E7:       unk_58F167.Execute CStr(var_C50 & "','" & CVar(CStr(var_C88)) & "','" & CVar(var_29C) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_DC4, -1
  loc_1A8D611:     End If
  loc_1A8D611:   End If
  loc_1A8D614: Next var_9E4 'Integer
  loc_1A8D61D: Set var_A8 = Me.TopCtrl1
  loc_1A8D623: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A8D63C: If (CStr() = "Add") Then
  loc_1A8D653:   var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1A8D679:   var_114 = CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_152 & "' And VP.Date_From<=") 'String
  loc_1A8D68A:   Set var_A8 = Me.Txt
  loc_1A8D690:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_208, var_114)
  loc_1A8D698:   var_1DC = var_AC.Text
  loc_1A8D6A6:   Proc_6_7_F26918(var_F4, CVar(var_208))
  loc_1A8D6AE:   var_134 = -1 & var_F4 
  loc_1A8D6C5:   unk_58F167.Execute CStr(CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & var_B4 & "'," & var_208 & ",") & var_F4 & " Order By VP.Date_From DESC"), var_B0, 
  loc_1A8D6D0:   Set var_88 = var_B0
  loc_1A8D70E:   If (var_88.RecordCount > 0) Then
  loc_1A8D71F:     Set var_A8 = Me.Txt
  loc_1A8D725:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1A8D73A:     var_150 = Val(var_AC.Text)
  loc_1A8D74F:     var_B0 = var_88.Fields
  loc_1A8D75F:     var_D4 = var_B0.Item("V_Type").Value
  loc_1A8D78A:     Proc_6_7_F26918(var_1DC, CVar(var_88.Fields.Item("Date_From")))
  loc_1A8D7AF:     var_200 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_150) & " Where (SITE_CODE='"
  loc_1A8D7DA:     var_134 = CVar(var_200 & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_D4 & "' and Date_From=" 
  loc_1A8D7EF:     unk_58F167.Execute CStr(var_134 & var_1DC), var_250, -1
  loc_1A8D829:   End If
  loc_1A8D829: End If
  loc_1A8D82D: Set var_A8 = Me.TopCtrl1
  loc_1A8D833: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_23C)
  loc_1A8D84C: If (CStr(var_150) = "Add") Then
  loc_1A8D872:   var_B4 = "SELECT COUNT(*) FROM LASTVOU WHERE lOGSITE_CODE='" & MemVar_1F95078
  loc_1A8D887:   var_204 = var_B4 & "' AND UNAME='" & MemVar_1F950C8 & "' AND ENAME='"
  loc_1A8D890:   Call 0.Method_arg_50 (var_200, var_204, var_D4, -1, var_A8)
  loc_1A8D8A9:   unk_58F167.Execute var_AC & var_200 & "' ", 0, var_B0
  loc_1A8D8B1:   var_F4 = var_A8.Fields
  loc_1A8D8B9:    = var_AC.Item()
  loc_1A8D8C1:    = var_B0.Value
  loc_1A8D8F2:   If (var_F4 > 0) Then
  loc_1A8D913:     Set var_A8 = Me.Txt
  loc_1A8D919:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "UPDATE LASTVOU  SET DOCID='")
  loc_1A8D921:     var_D4 = var_AC.Text
  loc_1A8D92A:     var_158 = -1 & var_B4
  loc_1A8D948:     Call 0.Method_arg_50 (var_204, var_B4 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_1A8D961:     unk_58F167.Execute var_B0 & var_204 & "'  ", , 
  loc_1A8D988:   Else
  loc_1A8D9AC:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "','", var_250)
  loc_1A8D9B5:     var_200 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='"
  loc_1A8D9BC:     var_208 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_1A8D9CD:     Set var_A8 = Me.Txt
  loc_1A8D9D3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_204)
  loc_1A8D9DB:     var_208 = var_AC.Text
  loc_1A8DA0A:     Proc_6_7_F26918(var_F4, Date)
  loc_1A8DA16:     var_C4 = ",'A','"
  loc_1A8DA22:     var_E4 = CVar(MemVar_1F95078) 'String
  loc_1A8DA3C:     unk_58F167.Execute CStr(CVar(var_B0 & var_204 & "','" & MemVar_1F95078 & "',") & var_F4 & var_C4 & var_E4 & "')"), , 
  loc_1A8DA74:   End If
  loc_1A8DA74: End If
  loc_1A8DA7A: unk_58F167.CommitTrans
  loc_1A8DA81: var_8A = 0
  loc_1A8DA92: Set var_A8 = Me.Txt
  loc_1A8DA98: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_1A8DAB4: var_8A = 0
  loc_1A8DAC2: Me.Requery -1
  loc_1A8DADE: If (Me.RecordCount > 0) Then
  loc_1A8DAFC:   If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_1A8DB24:     Me.Find "SearchCode ='" & var_AC.Text & "'", 0, 1
  loc_1A8DB33:   Else
  loc_1A8DB39:     Me.MoveLast
  loc_1A8DB3E:   End If
  loc_1A8DB3E: End If
  loc_1A8DB61: Call Proc_333_88_104D3D4(Proc_5_1_100EC1C("INI", Me, global_92), var_C4)
  loc_1A8DB6C: Call Proc_333_69_127CDF8(var_8A)
  loc_1A8DB88: If (Me.RecordCount > 0) Then
  loc_1A8DB9B:   Me.Global.Load MemVar_1F96F64
  loc_1A8DBBE:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_1A8DBCE:     FrmMsgBox.ParentForm = Me
  loc_1A8DBDF:     Call 0.Method_arg_54 ("Print")
  loc_1A8DBF0:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1A8DBF6:     FrmMsgBox.LblMsg.Caption = "Print NC TOKEN ?"
  loc_1A8DC0C:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1A8DC12:     FrmMsgBox.LblMsg.BackColor = &HFFFF
  loc_1A8DC25:     Call 0.Method_arg_64 (&HFFFF)
  loc_1A8DC3D:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1A8DC53:     If (MsgBoxTouch = 6) Then
  loc_1A8DC56:       Call TopCtrl1_UnknownEvent_14()
  loc_1A8DC5B:     End If
  loc_1A8DC68:     FrmMsgBox.ParentForm = Me
  loc_1A8DC79:     Call 0.Method_arg_54 ("Print")
  loc_1A8DC8A:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1A8DC90:     FrmMsgBox.LblMsg.Caption = "Print NC BILL ?"
  loc_1A8DCA6:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1A8DCAC:     FrmMsgBox.LblMsg.BackColor = &HFF00
  loc_1A8DCBF:     Call 0.Method_arg_64 (&HFF00)
  loc_1A8DCD7:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1A8DCED:     If (MsgBoxTouch = 6) Then
  loc_1A8DCF0:       Call cmdNCBill_UnknownEvent_9()
  loc_1A8DCF5:     End If
  loc_1A8DCF8:   Else
  loc_1A8DD05:     FrmMsgBox.ParentForm = Me
  loc_1A8DD16:     Call 0.Method_arg_54 ("Print")
  loc_1A8DD27:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1A8DD2D:     FrmMsgBox.LblMsg.Caption = "Print TOKEN ?"
  loc_1A8DD43:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1A8DD49:     FrmMsgBox.LblMsg.BackColor = &HFFFF
  loc_1A8DD5C:     Call 0.Method_arg_64 (&HFFFF)
  loc_1A8DD74:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1A8DD8A:     If (MsgBoxTouch = 6) Then
  loc_1A8DD8D:       Call TopCtrl1_UnknownEvent_14()
  loc_1A8DD92:     End If
  loc_1A8DD92:   End If
  loc_1A8DD92: End If
  loc_1A8DD97: Set var_88 = Nothing
  loc_1A8DDA9: Me.FGrid1.Visible = False
  loc_1A8DDBD: Me.LblPendingKot.Visible = False
  loc_1A8DDC5: Exit Sub
  loc_1A8DDC6: ' Referenced from: 1A8A354
  loc_1A8DDCC: If (var_8A = &HFF) Then
  loc_1A8DDD5:   unk_58F167.RollbackTrans
  loc_1A8DDDA: End If
  loc_1A8DDDA: Proc_6_60_E63754(var_8A)
  loc_1A8DDDF: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5C440
  'Data Table: 58F144
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5C320: On Error Goto loc_F5C43A
  loc_F5C332: Me.DGTable.Visible = False
  loc_F5C351: If (Me.RecordCount > 0) Then
  loc_F5C390:   Set var_B4 = Me.Txt
  loc_F5C396:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5C39E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5C3D1:   var_B0 = Me.Fields.Item("Code")
  loc_F5C3F0:   Set var_B4 = Me.Txt
  loc_F5C3F6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5C3FE:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5C414: End If
  loc_F5C41F: Set var_A8 = Me.Txt
  loc_F5C425: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F5C42D: var_B0.SetFocus
  loc_F5C439: Exit Sub
  loc_F5C43A: ' Referenced from: F5C320
  loc_F5C43A: Proc_6_60_E63754(var_B0)
  loc_F5C43F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA5E18
  'Data Table: 58F144
  Dim var_A8 As Variant
  loc_EA5D98: Set var_88 = Me.DGTable
  loc_EA5DC2: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA5DCA: Set var_BC = Me.DGTable
  loc_EA5E06: Proc_6_138_106E830(Me.DGTable, global_100, CInt(4), Me.FGPoint)
  loc_EA5E14: Exit Sub
End Sub

Private Sub Head_UnknownEvent_9 'F6C6D4
  'Data Table: 58F144
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_8C As Variant
  loc_F6C593: var_86 = KeyCode
  loc_F6C59E: If (var_86 = CInt(0)) Then
  loc_F6C5A1:   GoTo loc_F6C6D2
  loc_F6C5A4: End If
  loc_F6C5AC: If (var_86 = CInt(1)) Then
  loc_F6C5AF:   Call TopCtrl1_UnknownEvent_D()
  loc_F6C5B7: Else
  loc_F6C5BF:   If (var_86 = CInt(2)) Then
  loc_F6C5C2:     Call TopCtrl1_UnknownEvent_C()
  loc_F6C5CA:   Else
  loc_F6C5D2:     If (var_86 = CInt(3)) Then
  loc_F6C5D5:       Call TopCtrl1_UnknownEvent_F()
  loc_F6C5DD:     Else
  loc_F6C5E5:       If (var_86 = CInt(4)) Then
  loc_F6C5E8:         Call TopCtrl1_UnknownEvent_14()
  loc_F6C5F0:       Else
  loc_F6C5F8:         If (var_86 = CInt(5)) Then
  loc_F6C5FB:           Call TopCtrl1_UnknownEvent_16()
  loc_F6C60D:           Set var_8C = Me.Txt
  loc_F6C613:           Call 0.Method_Head_UnknownEvent_90 (CInt(7), var_90)
  loc_F6C61B:           var_90.Visible = False
  loc_F6C632:           Set var_8C = Me.Label1
  loc_F6C638:           Call 0.Method_Head_UnknownEvent_90 (4, var_90)
  loc_F6C640:           var_90.Visible = False
  loc_F6C65A:           Set var_8C = Me.Txt
  loc_F6C660:           Call 0.Method_Head_UnknownEvent_90 (CInt(7), var_90)
  loc_F6C668:           var_90.Text = vbNullString
  loc_F6C678:           Set var_8C = Me.FGNCType
  loc_F6C696:           Me.FGNCType.Unload Me
  loc_F6C6A1:         Else
  loc_F6C6A9:           If (var_86 = CInt(6)) Then
  loc_F6C6AC:             Call TopCtrl1_UnknownEvent_B()
  loc_F6C6B4:           Else
  loc_F6C6BC:             If (var_86 = CInt(7)) Then
  loc_F6C6BF:               Call TopCtrl1_UnknownEvent_E()
  loc_F6C6C7:             Else
  loc_F6C6CF:               If (var_86 = CInt(8)) Then
  loc_F6C6D2:               End If
  loc_F6C6D2:             End If
  loc_F6C6D2:           End If
  loc_F6C6D2:         End If
  loc_F6C6D2:       End If
  loc_F6C6D2:     End If
  loc_F6C6D2:   End If
  loc_F6C6D2:   ' Referenced from: F6C5A1
  loc_F6C6D2: End If
  loc_F6C6D2: Exit Sub
End Sub

Private Sub cmdNCBill_UnknownEvent_9 '17A5B54
  'Data Table: 58F144
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_E8 As String
  Dim unk_58F1A4 As Connection15
  Dim var_D0 As Recordset15
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim Me As Recordset15
  Dim var_178 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim unk_58F167 As Connection15
  Dim var_BC As Recordset15
  Dim var_B8 As Recordset15
  Dim var_108 As Variant
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_188 As Variant
  Dim var_1AC As Variant
  Dim var_18C As Fields15
  Dim var_1C0 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_20C As Variant
  Dim var_21C As Variant
  Dim var_230 As Variant
  Dim var_1FC As Variant
  Dim var_298 As Variant
  Dim var_2B8 As Variant
  Dim var_398 As Variant
  Dim var_D8 As Double
  Dim var_248 As Variant
  Dim var_268 As Variant
  Dim var_278 As Variant
  loc_17A3C8C: On Error Goto loc_17A5B4D
  loc_17A3C92: MemVar_1F953C4 = "N"
  loc_17A3C99: MemVar_1F953C8 = "N"
  loc_17A3CA0: MemVar_1F953CC = "K"
  loc_17A3CD0: var_E8 = "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F95078 & "' AND RestCode='" & LocalRestCode & "'"
  loc_17A3CD9: unk_58F1A4.Execute var_E8, var_108, -1
  loc_17A3CE4: Set var_D0 = var_10C
  loc_17A3D0C: If (var_D0.RecordCount > 0) Then
  loc_17A3D12:   var_D0.MoveFirst
  loc_17A3D1A: Else
  loc_17A3D33:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_130, var_150, var_170)
  loc_17A3D43:   Exit Sub
  loc_17A3D44: End If
  loc_17A3D5F: If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_17A3D62:   Exit Sub
  loc_17A3D63: End If
  loc_17A3D6A: var_DC = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_17A3DAF: var_88 = CStr(CVar(var_DC & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_17A3DCE: var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A3E0C: var_8C = CStr(var_130 & Me.Fields.Item("SearchCode").Value & "'")
  loc_17A3E35: var_130 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (TOKEN K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A3E55: var_178 = Me.Fields.Item("SearchCode")
  loc_17A3E5D: var_108 = var_178.Value
  loc_17A3E72: var_DC = CStr(var_130 & var_108 & "'")
  loc_17A3E7C: unk_58F167.Execute var_DC, var_188, -1
  loc_17A3E87: Set var_BC = var_18C
  loc_17A3EAB: If (var_88 = vbNullString) Then
  loc_17A3EAE:   Exit Sub
  loc_17A3EAF: End If
  loc_17A3EB7: If (var_8C = vbNullString) Then
  loc_17A3EBA:   Exit Sub
  loc_17A3EBB: End If
  loc_17A3EDF: Call 0.Method_cmdNCBill_UnknownEvent_90 (CInt(4), var_178, var_DC, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='", var_108)
  loc_17A3EE7: -1 = var_178.Text
  loc_17A3F00: unk_58F167.Execute var_18C & var_DC & "' AND CONTRADOCID IS NULL", var_18C, Me.Txt
  loc_17A3F37: If (var_18C.RecordCount = 1) Then
  loc_17A3F3D:   var_C8 = "New Order"
  loc_17A3F43: Else
  loc_17A3F4A:   Set var_10C = Me.LblState
  loc_17A3F58:   var_C8 = var_10C.Caption
  loc_17A3F5E: End If
  loc_17A3F74: unk_58F167.Execute var_88, var_108, -1
  loc_17A3F7F: Set var_B4 = var_10C
  loc_17A3F88: ' Referenced from: 17A5B29
  loc_17A3F97: If Not(var_BC.EOF) Then
  loc_17A3FA1:   var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A3FB9:   var_10C = Me.Fields
  loc_17A3FC9:   var_108 = var_10C.Item("SearchCode").Value
  loc_17A3FDA:   var_170 = var_130 & var_108 & "' and K.VoidYN<>'Y'" 
  loc_17A400A:   unk_58F167.Execute CStr(var_170), var_108, -1
  loc_17A4015:   Set var_B8 = var_10C
  loc_17A4032:   If (var_B8.RecordCount > 0) Then
  loc_17A4063:     var_19C = Trim(CVar(var_BC.Fields.Item("PrintType"))) 'Variant
  loc_17A4078:     If Not (var_19C = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_17A4086:       If (var_19C = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_17A4089:       End If
  loc_17A408B:       Close 1
  loc_17A40A4:       var_E0 = "C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition)
  loc_17A40B2:       Open var_E0 & ".TXT" For Output As 1 Len = &HFF
  loc_17A40C2:       var_B4.MoveFirst
  loc_17A40C7:       ' Referenced from: 17A4B1E
  loc_17A40D6:       If Not(var_B4.EOF) Then
  loc_17A40EF:         If (0 = 0) Then
  loc_17A40F4:           Print 1
  loc_17A4128:           var_C0 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_17A415B:           Call Proc_333_94_10AAF48(Me.LblRest.Caption, "D", &H28, var_E8)
  loc_17A4165:           Print 1, var_E8
  loc_17A418B:           Call Proc_333_94_10AAF48("* NC Bill *", "D", &H28, var_E0)
  loc_17A4195:           Print 1, var_E0
  loc_17A41A4:           var_92 = &H12
  loc_17A41A9:           Print 1
  loc_17A41B1:           Print 1
  loc_17A41EA:           Proc_6_39_E7D3A0(var_170, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_17A420C:           var_130 = (Chr(&HF) + "V No.     : ")
  loc_17A4216:           var_1AC = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EADFB8(CStr(var_170), &HA, var_92)))
  loc_17A421C:           Print 1, var_1AC
  loc_17A4257:           var_10C = var_B4.Fields
  loc_17A42CE:           var_130 = (Chr(&HF) + "Date.     : ")
  loc_17A42D8:           var_188 = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C.Item("VDate")), var_10C), &HC)))
  loc_17A42E1:           var_1AC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C.Item("VDate")), var_10C), &HC))), &HA, var_92)) + " ")
  loc_17A42EB:           var_1E4 = (var_1AC + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_17A42F1:           Print 1, var_1E4
  loc_17A4346:           var_178 = var_B4.Fields.Item("Remarks")
  loc_17A4383:           var_130 = (Chr(&HF) + "Remarks : ")
  loc_17A438D:           var_188 = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32)))
  loc_17A4394:           var_1C0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_17A439A:           Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_17A43D3:           Set var_10C = Me.Label1
  loc_17A43D9:           Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_178)
  loc_17A446E:           var_188 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_17A4477:           var_1AC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))), &HA, var_92)) + ": ")
  loc_17A447E:           var_20C = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_17A4481:           var_21C = (Chr(&H12) + var_20C)
  loc_17A4487:           Print 1, var_21C
  loc_17A44D2:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A44D8:           Print 1, CVar(var_178)
  loc_17A44E5:         End If
  loc_17A450B:         var_150 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_17A4525:         var_188 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_178)))))
  loc_17A4531:         var_1AC = Space(3)
  loc_17A4539:         var_1C0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_178))))), &HA, var_92)) + var_1AC)
  loc_17A4553:         var_1E4 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_17A4567:         var_20C = ("000" + Space(3))
  loc_17A4581:         var_230 = (var_20C + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_17A45C7:         var_130 = (Chr(&HF) + CVar(CStr(var_230)))
  loc_17A45CD:         Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_17A45F0:         var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A45F6:         Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_17A4609:         var_92 = (var_92 + 4)
  loc_17A460F:         var_B8.MoveFirst
  loc_17A4614:         ' Referenced from: 17A491B
  loc_17A4623:         If Not(var_B8.EOF) Then
  loc_17A4673:           Proc_6_39_E7D3A0(var_1AC, CVar(var_B8.Fields.Item("qty")))
  loc_17A46BE:           Proc_6_39_E7D3A0(var_248, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A4709:           Proc_6_39_E7D3A0(var_2F0, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_17A4734:           Proc_6_39_E7D3A0(var_328, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A4784:           var_130 = Space(3)
  loc_17A478C:           var_170 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + var_130)
  loc_17A47A2:           var_1E4 = CVar(Proc_6_52_EAE084(CStr(Format(var_1AC, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_17A47A5:           var_1FC = (1 + var_1E4)
  loc_17A47B9:           var_21C = (Space(3) + Space(3))
  loc_17A47D2:           var_298 = (var_92 + CVar(Proc_6_52_EAE084(CStr(Format(var_248, "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", &HA)))))
  loc_17A47E6:           var_2B8 = (var_298 + Space(3))
  loc_17A47FF:           var_398 = (var_2B8 + CVar(Proc_6_52_EAE084(CStr(Format((var_2F0 * var_328), "0.00")), &HA)))
  loc_17A4874:           var_10C = var_B8.Fields
  loc_17A488B:           Proc_6_39_E7D3A0(var_130, CVar(var_10C.Item("qty")))
  loc_17A48B9:           Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_10C.Item("qty"))))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_17A48C5:           var_1AC = (var_10C + (CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_10C.Item("qty")))))))
  loc_17A48CA:           var_D8 = CSng(var_1AC)
  loc_17A48F7:           var_130 = (Chr(&HF) + CVar(CStr(var_398)))
  loc_17A48FD:           Print 1, var_130
  loc_17A4910:           var_92 = (var_92 + 1)
  loc_17A4916:           var_B8.MoveNext
  loc_17A491B:           GoTo loc_17A4614
  loc_17A491E:         End If
  loc_17A4934:         var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A493A:         Print 1, var_130
  loc_17A494C:         Print 1, vbNullString
  loc_17A49D2:         var_150 = (Chr(&HF) + Space(&H25))
  loc_17A49DC:         var_188 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8)))
  loc_17A49E6:         var_20C = ((CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_10C.Item("qty")))))) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_D8, "0.00"))))), &HB, 1)))
  loc_17A49EC:         Print 1, Space(3)
  loc_17A4A1D:         Print 1, vbNullString
  loc_17A4A77:         var_130 = (Chr(&HF) + "Waiter Name  : ")
  loc_17A4A81:         var_188 = (Space(&H25) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_17A4A87:         Print 1, (CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B4.Fields.Item("qty"))))))
  loc_17A4AA8:         Print 1
  loc_17A4AC3:         var_130 = (Chr(&HF) + "A Analysis Software")
  loc_17A4AC9:         Print 1, Space(&H25)
  loc_17A4AD9:         var_B4.MoveNext
  loc_17A4AE0:         Print 1
  loc_17A4AE8:         Print 1
  loc_17A4AF0:         Print 1
  loc_17A4AF8:         Print 1
  loc_17A4B00:         Print 1
  loc_17A4B08:         Print 1
  loc_17A4B10:         Print 1
  loc_17A4B18:         Print 1
  loc_17A4B1E:         GoTo loc_17A40C7
  loc_17A4B21:       End If
  loc_17A4B23:       Close 1
  loc_17A4B5E:       If (Proc_6_38_E69628(CVar(var_D0.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_17A4B86:         Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A4BE4:         Print 1, CVar("TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_D0.Fields.Item("Printer").Value
  loc_17A4C04:       Else
  loc_17A4C2E:         Print 1, "TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_17A4C3F:       End If
  loc_17A4C41:       Close 1
  loc_17A4C4B:       If (MemVar_1F953BC = "Y") Then
  loc_17A4C7D:         var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_17A4C8E:       Else
  loc_17A4CBD:         var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_17A4CCB:       End If
  loc_17A4CCE:     Else
  loc_17A4CD9:       If (var_19C = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_17A4CDE:         Close 1
  loc_17A4D05:         Open "C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_17A4D15:         var_B4.MoveFirst
  loc_17A4D1A:         ' Referenced from:   17A58DA
  loc_17A4D29:         If Not(var_B4.EOF) Then
  loc_17A4D39:           var_90 = "* NC BILL *"
  loc_17A4D6A:           var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_17A4D79:           If (0 = 0) Then
  loc_17A4D7E:             Print 1
  loc_17A4DAD:             var_188 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_17A4DF0:             var_268 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_17A4E1A:             var_1D4 = (Chr(&HF) + Space(CLng(((CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_D0.Fields.Item("qty")))))) / 2))))
  loc_17A4E21:             var_20C = (CVar(CStr(Format(var_D8, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_17A4E28:             var_298 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_17A4E2F:             var_2B8 = (var_298 + Chr(&H12))
  loc_17A4E35:             Print 1, var_2B8
  loc_17A4E83:             var_170 = (42 - Len(Trim(var_90)))
  loc_17A4EB6:             var_20C = (42 - Len(Trim(var_90)))
  loc_17A4EE0:             var_1C0 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_17A4EEA:             var_1D4 = (Space(CLng(((CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_D0.Fields.Item("qty")))))) / 2))) + CVar(var_90))
  loc_17A4EF1:             var_248 = (CVar(CStr(Format(var_D8, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_17A4EF8:             var_278 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_17A4EFE:             Print 1, ("0.00" / 2)
  loc_17A4F1D:             var_92 = &H12
  loc_17A4F22:             Print 1
  loc_17A4F2A:             Print 1
  loc_17A4F63:             Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")), var_92)
  loc_17A4F92:             var_130 = (Chr(&HF) + "TOKEN No.   :   ")
  loc_17A4F9C:             var_1AC = (Trim(var_90) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_17A4FA3:             var_1D4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_17A4FA9:             Print 1, CVar(CStr(Format(var_D8, "0.00")))
  loc_17A506C:             var_130 = (Chr(&HF) + "TOKEN Dt.   :   ")
  loc_17A5076:             var_188 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_92), &HC)))
  loc_17A507F:             var_1AC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_17A5089:             var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_17A5090:             var_20C = (Trim(var_90) + Chr(&H12))
  loc_17A5096:             Print 1, Space(3)
  loc_17A50EF:             var_178 = var_B4.Fields.Item("Remarks")
  loc_17A512C:             var_130 = (Chr(&HF) + "Remarks :   ")
  loc_17A5136:             var_188 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H20)))
  loc_17A513D:             var_1C0 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_17A5143:             Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_17A517C:             Set var_10C = Me.Label1
  loc_17A5182:             Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_178)
  loc_17A5224:             var_188 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_17A522D:             var_1AC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":   ")
  loc_17A5234:             var_20C = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_17A5237:             var_21C = (Chr(&H12) + var_20C)
  loc_17A523E:             var_248 = ((Space(3) / 2) + Chr(&H12))
  loc_17A5244:             Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_17A52A0:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A52A7:             var_170 = (CVar(var_178) + Chr(&H12))
  loc_17A52AD:             Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))
  loc_17A52BE:           End If
  loc_17A52E4:           var_150 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_17A52FE:           var_188 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))
  loc_17A530A:           var_1AC = Space(3)
  loc_17A5312:           var_1C0 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_1AC)
  loc_17A532C:           var_1E4 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_17A5375:           var_130 = (Chr(&HF) + CVar(CStr("000")))
  loc_17A537C:           var_170 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_17A5382:           Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_17A53B6:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A53BD:           var_170 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_17A53C3:           Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_17A53DA:           var_92 = (var_92 + 4)
  loc_17A53E0:           var_B8.MoveFirst
  loc_17A53E5:           ' Referenced from:   17A5637
  loc_17A53F4:           If Not(var_B8.EOF) Then
  loc_17A5444:             Proc_6_39_E7D3A0(var_1AC, CVar(var_B8.Fields.Item("qty")))
  loc_17A548F:             Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A54D1:             var_130 = Space(3)
  loc_17A54D9:             var_170 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H13, 1, 1)) + var_130)
  loc_17A54F2:             var_1FC = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1AC, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))))
  loc_17A5506:             var_21C = (Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000") + Space(3))
  loc_17A551F:             var_298 = (var_92 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_17A558F:             Proc_6_39_E7D3A0(var_130, CVar(var_B8.Fields.Item("qty")))
  loc_17A55BD:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_17A55C9:             var_1AC = (var_D8 + (CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))))
  loc_17A55CE:             var_D8 = CSng(var_1AC)
  loc_17A5608:             var_130 = (Chr(&HF) + CVar(CStr(var_298)))
  loc_17A560F:             var_170 = (var_130 + Chr(&H12))
  loc_17A5615:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_17A562C:             var_92 = (var_92 + 1)
  loc_17A5632:             var_B8.MoveNext
  loc_17A5637:             GoTo loc_17A53E5
  loc_17A563A:           End If
  loc_17A565D:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A5664:           var_170 = (var_130 + Chr(&H12))
  loc_17A566A:           Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_17A56F1:           var_150 = (Chr(&HF) + CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)))
  loc_17A56FB:           var_1E4 = (Chr(&H12) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_D8, "0.00"))))), &HB, 1)))
  loc_17A5701:           Print 1, CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(Format(var_D8, "0.00"))), "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))))
  loc_17A572E:           Print 1, vbNullString
  loc_17A5795:           var_130 = (Chr(&HF) + "Waiter Name  :   ")
  loc_17A579F:           var_188 = (CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_17A57A6:           var_1C0 = (Format(var_D8, "0.00") + Chr(&H12))
  loc_17A57AC:           Print 1, Trim(CVar(CStr(Format(var_D8, "0.00"))))
  loc_17A57F4:           var_188 = Chr(&H12)
  loc_17A5801:           var_130 = (Chr(&HF) + "***  ")
  loc_17A5814:           var_1AC = ("  ***" + var_188)
  loc_17A581E:           Print 1, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_C8) & Chr(&H12)
  loc_17A5837:           Print 1
  loc_17A585F:           var_130 = (Chr(&HF) + "** A Analysis Software **")
  loc_17A5866:           var_170 = (CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) + Chr(&H12))
  loc_17A586C:           Print 1, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_C8)
  loc_17A5880:           var_B4.MoveNext
  loc_17A5887:           Print 1
  loc_17A588F:           Print 1
  loc_17A5897:           Print 1
  loc_17A589F:           Print 1
  loc_17A58C5:           var_150 = (Chr(&H1B) + Chr(&H6D))
  loc_17A58CB:           Print 1, Chr(&H12)
  loc_17A58DA:           GoTo loc_17A4D1A
  loc_17A58DD:         End If
  loc_17A58DF:         Close 1
  loc_17A591A:         If (Proc_6_38_E69628(CVar(var_D0.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_17A5942:           Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A59A0:           Print 1, CVar("TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_D0.Fields.Item("Printer").Value
  loc_17A59C0:         Else
  loc_17A59E5:           Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A5A1C:           Print 1, "TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_17A5A2D:         End If
  loc_17A5A2F:         Close 1
  loc_17A5A39:         If (MemVar_1F953BC = "Y") Then
  loc_17A5A6B:           var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_17A5A7C:         Else
  loc_17A5AAB:           var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_17A5AB9:         End If
  loc_17A5AB9:       End If
  loc_17A5AB9:     End If
  loc_17A5ABC:   Else
  loc_17A5B06:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_C8), var_188, Chr(&H12))
  loc_17A5B21:   End If
  loc_17A5B24:   var_BC.MoveNext
  loc_17A5B29:   GoTo loc_17A3F88
  loc_17A5B2C: End If
  loc_17A5B31: Set var_B4 = Nothing
  loc_17A5B39: Set var_B8 = Nothing
  loc_17A5B41: Set var_BC = Nothing
  loc_17A5B49: Set var_D0 = Nothing
  loc_17A5B4C: Exit Sub
  loc_17A5B4D: ' Referenced from: 17A3C8C
  loc_17A5B4D: Proc_6_60_E63754(var_D8)
  loc_17A5B52: Exit Sub
End Sub

Private Sub CmChngToNC_UnknownEvent_9 '13FF1F0
  'Data Table: 58F144
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_118 As Field20
  Dim var_CC As Variant
  Dim var_13C As Variant
  Dim var_FC As Variant
  Dim unk_58F167 As Connection15
  Dim var_124 As Variant
  Dim var_128 As Fields15
  Dim var_12C As Field20
  Dim var_14C As Variant
  Dim var_17C As Variant
  Dim var_110 As Recordset15
  Dim var_112 As Integer
  Dim var_DC As Variant
  Dim var_AC As Variant
  Dim var_10C As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  loc_13FE801: var_8A = Me.ChkNCTOKEN.Value
  loc_13FE80F: If (var_8A = 1) Then
  loc_13FE82B:   MsgBox("Can't Change NC TOKEN.", &H10, var_CC, var_EC, var_10C)
  loc_13FE83B:   Exit Sub
  loc_13FE83C: End If
  loc_13FE83F: Call Proc_333_97_FF7A30(var_8A)
  loc_13FE84A: If (var_8A = 0) Then
  loc_13FE84D:   Exit Sub
  loc_13FE84E: End If
  loc_13FE85B: var_BC = "Select K1.*,I.name as ItemName,I.Unit,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (TOKEN K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Where K1.RoomNo In (Select RoomNo From TOKEN Where DocId='"
  loc_13FE89C: var_FC = 0
  loc_13FE8CC: unk_58F167.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_EC, -1
  loc_13FE8D4: var_124 = var_124.Fields
  loc_13FE8DC: var_FC = var_128.Item(var_128)
  loc_13FE8E4: var_12C = var_12C.Value
  loc_13FE8EC: var_14C = (var_10C + var_10C)
  loc_13FE8F9: var_17C = "') And IsNull(K1.ContraDocId,'')='' And (K1.DelFlag NOT IN ('Y') OR K1.DelFlag IS NULL) AND K1.VType='K" & var_14C & "' And K1.VoidYN='N' order by K1.DocId,K1.Sno" 
  loc_13FE907: unk_58F167.Execute CStr(var_17C), var_BC & Me.Fields.Item("SearchCode").Value, var_1A0
  loc_13FE954: If (var_1A4.RecordCount <= 0) Then
  loc_13FE95C:   Set var_110 = Nothing
  loc_13FE95F:   Exit Sub
  loc_13FE960: End If
  loc_13FE960: Call TopCtrl1_UnknownEvent_A()
  loc_13FE971: Me.ChkNCTOKEN.Value = 1
  loc_13FE985: Me.ChkNCTOKEN.Enabled = False
  loc_13FE99C: Me.FGrid.Redraw = False
  loc_13FE9B7: Me.FGrid.Rows = 1
  loc_13FE9C1: var_112 = 1
  loc_13FE9D8: If (var_110.RecordCount > 0) Then
  loc_13FE9DB:   ' Referenced from: 13FEFA5
  loc_13FE9EA:   If Not(var_110.EOF) Then
  loc_13FE9ED:     var_9C = vbNullString
  loc_13FE9F7:     Set var_88 = Me.FGrid
  loc_13FEA0C:     Set var_1AC = Me.FGrid
  loc_13FEA13:     var_9C = CVar(CLng(var_112)) 'Long
  loc_13FEA1B:     var_DC = CVar(CLng(0)) 'Long
  loc_13FEA25:     var_AC = CVar(CStr(var_112)) 'String
  loc_13FEA2C:     LateIdCallSt
  loc_13FEA3B:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FEA43:     var_FC = CVar(CLng(&HA)) 'Long
  loc_13FEA73:     var_CC = CVar(CStr(var_110.Fields.Item("Item").Value)) 'String
  loc_13FEA7A:     LateIdCallSt
  loc_13FEAC9:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_112)), var_1AC, var_CC, CVar(CLng(3)), CVar(CLng(var_112)))) 'String
  loc_13FEAD0:     LateIdCallSt
  loc_13FEB1B:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_112)), var_1AC, var_CC, var_1AC)) 'String
  loc_13FEB22:     LateIdCallSt
  loc_13FEB6D:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FEB74:     LateIdCallSt
  loc_13FEBBF:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FEBC6:     LateIdCallSt
  loc_13FEBF8:     var_DC = CVar(CLng(var_112)) 'Long
  loc_13FEC00:     var_13C = CVar(CLng(7)) 'Long
  loc_13FEC2D:     var_10C = CVar(CStr(Format(CVar(var_110.Fields.Item("qty")), "0.00"))) 'String
  loc_13FEC34:     LateIdCallSt
  loc_13FEC9F:     var_10C = CVar(CStr(Format(CVar(var_110.Fields.Item("Rate")), "0.00"))) 'String
  loc_13FECA6:     LateIdCallSt
  loc_13FECE4:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("VoidYN")), var_1AC, var_10C, 1, 1, CVar(CLng(8)), CVar(CLng(var_112)))) 'String
  loc_13FED26:     var_22C = CVar(CLng(var_112)) 'Long
  loc_13FED2E:     var_24C = CVar(CLng(9)) 'Long
  loc_13FED60:     var_1EC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("VoidYN")), var_1AC, var_10C, 1))) = "Y"), "Cancel", vbNullString)
  loc_13FED9A:     LateIdCallSt
  loc_13FEE01:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_112)), var_1AC, CVar(CStr(IIf((Trim(var_CC) = "F"), "Free", var_1EC))))) 'String
  loc_13FEE08:     LateIdCallSt
  loc_13FEE53:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FEE5A:     LateIdCallSt
  loc_13FEEA5:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FEEAC:     LateIdCallSt
  loc_13FEEC2:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FEECA:     var_FC = CVar(CLng(&HC)) 'Long
  loc_13FEEFA:     var_CC = CVar(CStr(var_110.Fields.Item("DocID").Value)) 'String
  loc_13FEF01:     LateIdCallSt
  loc_13FEF1B:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FEF23:     var_FC = CVar(CLng(&HD)) 'Long
  loc_13FEF53:     var_CC = CVar(CStr(var_110.Fields.Item("SNo").Value)) 'String
  loc_13FEF5A:     LateIdCallSt
  loc_13FEF74:     var_9C = CVar(CLng(var_112)) 'Long
  loc_13FEF86:     LateIdCallSt
  loc_13FEF90:     Set var_1AC = Nothing 
  loc_13FEF9A:     var_112 = (var_112 + 1)
  loc_13FEFA0:     var_110.MoveNext
  loc_13FEFA5:     GoTo loc_13FE9DB
  loc_13FEFA8:   End If
  loc_13FEFC1:   var_9C = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13FEFD4:   Set var_118 = Me.FGrid
  loc_13FEFDA:   LateIdCallSt
  loc_13FEFFF:   Me.FGrid.FixedRows = 1
  loc_13FF007: End If
  loc_13FF015: Me.FGrid.Redraw = True
  loc_13FF01D: var_9C = vbNullString
  loc_13FF027: Set var_88 = Me.FGrid
  loc_13FF03E: If (var_112 = 1) Then
  loc_13FF041:   var_9C = 1
  loc_13FF054:   Me.FGrid.Rows = var_9C
  loc_13FF07A:   var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_9C, var_118, global_120, var_9C, var_112))) 'String
  loc_13FF082:   Set var_118 = Me.FGrid
  loc_13FF0A6:   var_AC = Me.FGrid.Rows
  loc_13FF0B5:   var_9C = CVar((CLng(var_AC) - 1)) 'Long
  loc_13FF0C8:   Set var_118 = Me.FGrid
  loc_13FF0CE:   LateIdCallSt
  loc_13FF0F3:   Me.FGrid.FixedRows = 1
  loc_13FF0FB: End If
  loc_13FF104: Set var_88 = Me.CmChngSteward
  loc_13FF10A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_13FF11B: Set var_88 = Me.CmNoOfPersons
  loc_13FF121: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_13FF139: Set var_88 = Me.CmFgrid
  loc_13FF13F: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(2), var_118, False, var_118, global_120, False, FGrid.DispID_10000)
  loc_13FF147: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_AC)
  loc_13FF153: var_9C = False
  loc_13FF163: Set var_88 = Me.CmFgrid
  loc_13FF169: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(4), var_118, var_9C, var_1AC, global_120)
  loc_13FF171: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_9C)
  loc_13FF18D: Set var_88 = Me.CmFgrid
  loc_13FF193: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(5), var_118, False)
  loc_13FF19B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_1AC)
  loc_13FF1B7: Set var_88 = Me.CmFgrid
  loc_13FF1BD: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(6), var_118, False)
  loc_13FF1C5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_CC)
  loc_13FF1DD: Me.FrameGrpItem.Enabled = False
  loc_13FF1EA: Set var_110 = Nothing
  loc_13FF1ED: Exit Sub
End Sub

Private Sub CmChngSteward_UnknownEvent_9 'F51910
  'Data Table: 58F144
  Dim var_A4 As Integer
  Dim var_B0 As String
  Dim var_C8 As Recordset15
  Dim var_CC As Variant
  Dim var_D0 As Field20
  Dim var_E8 As TextBox
  loc_F51815: RsTouchScreenSteward.pOpenAs = "Steward"
  loc_F51826: RsTouchScreenSteward.pRestCode = LocalRestCode
  loc_F5183E: Call 0.Method_arg_2B0 (1)
  loc_F51849: var_A4 = 0
  loc_F51874: var_B0 = "Select W.Name As Name From Waiter W Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9501C
  loc_F51884: RsTouchScreenSteward.Connection15.Execute var_B0 & "'", var_C4, -1
  loc_F5188C: var_C8 = var_C8.Fields
  loc_F51894: var_A4 = var_CC.Item(var_CC)
  loc_F5189C: var_D0 = var_D0.Value
  loc_F518B3: Set var_E4 = Me.Txt
  loc_F518B9: Call 0.Method_CmChngSteward_UnknownEvent_90 (CInt(5), var_E8, CStr(var_E0))
  loc_F518C1: var_E8.Text = var_E0
  loc_F518F5: Set var_C8 = Me.Txt
  loc_F518FB: Call 0.Method_CmChngSteward_UnknownEvent_90 (CInt(5), var_CC)
  loc_F51903: var_CC.Tag = MemVar_1F9501C
  loc_F5190F: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E86A48
  'Data Table: 58F144
  loc_E869F4: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E869F7:   Call DGTable_UnknownEvent_9()
  loc_E869FC: End If
  loc_E86A18: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E86A1B:   Call DGItem_UnknownEvent_9()
  loc_E86A20: End If
  loc_E86A3C: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E86A3F:   Call DGRest_UnknownEvent_9()
  loc_E86A44: End If
  loc_E86A44: Exit Sub
  loc_E86A45: CExtInstUnk
End Sub

Private Sub CmNoOfPersons_UnknownEvent_9 'EAA42C
  'Data Table: 58F144
  loc_EAA3A4: Me.FrameQty.Visible = True
  loc_EAA3B9: Me.LblIndex.Caption = vbNullString
  loc_EAA3CE: Me.LblIndex.Tag = vbNullString
  loc_EAA3E3: Me.LblVtype.Caption = "No.of Person"
  loc_EAA3F8: Me.LblVtype.Tag = vbNullString
  loc_EAA40D: Me.TxtQty.Text = vbNullString
  loc_EAA422: Me.TxtQty.Tag = vbNullString
  loc_EAA42A: Exit Sub
End Sub

Private Sub CmTransKOT_UnknownEvent_9 'EE5650
  'Data Table: 58F144
  loc_EE5597: Call Proc_333_97_FF7A30(var_86)
  loc_EE55A2: If (var_86 = 0) Then
  loc_EE55A5:   Exit Sub
  loc_EE55A6: End If
  loc_EE55AE: If (MemVar_1F95210 = "Yes") Then
  loc_EE55B5:   Set var_8C = New RsTbChange
  loc_EE55BB: Else
  loc_EE55BF:   Set var_8C = New RsTbChange
  loc_EE55C2: End If
  loc_EE55CD: var_8C.ParentForm = CVar(Me)
  loc_EE55E3: var_8C.PTableNo = CVar(PTableNo)
  loc_EE55F5: Set var_C4 = var_C8(CInt(3))
  loc_EE55FB: Call 0.Method_CmTransKOT_UnknownEvent_90 ()
  loc_EE560B: var_8C.pDocId = CVar(var_C8)
  loc_EE5622: var_8C.LocalRestCode = CVar(LocalRestCode)
  loc_EE5632: var_8C.OpenMode = 1
  loc_EE563F: var_8C.CAPTION = "Transfer TOKEN"
  loc_EE5646: Call var_8C.Show
  loc_EE564C: Exit Sub
End Sub

Private Sub CmFgrid_UnknownEvent_9 '13CC488
  'Data Table: 58F144
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_AC As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_C2 As Integer
  Dim var_D4 As Variant
  Dim var_D8 As String
  Dim var_E8 As Variant
  Dim var_FC As MSHFlexGrid
  Dim var_11C As Variant
  loc_13CBB12: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CBB3A: var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CBB49: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CBB65: Me.LblIndex.Caption = vbNullString
  loc_13CBB7A: Me.LblIndex.Tag = vbNullString
  loc_13CBB8F: Me.LblVtype.Caption = vbNullString
  loc_13CBBA4: Me.LblVtype.Tag = vbNullString
  loc_13CBBB9: Me.TxtQty.Text = vbNullString
  loc_13CBBCE: Me.TxtQty.Tag = vbNullString
  loc_13CBBD9: var_C2 = KeyCode
  loc_13CBBE4: If (var_C2 = CInt(0)) Then
  loc_13CBC06:   If (CLng(Me.FGrid.Row) > 1) Then
  loc_13CBC22:     var_AC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_13CBC31:     Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CBC59:     var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CBC68:     Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CBC99:     Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_13CBCA8:   End If
  loc_13CBCAB: Else
  loc_13CBCB3:   If (var_C2 = CInt(1)) Then
  loc_13CBCF1:     If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_13CBD0D:       var_AC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_13CBD1C:       Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CBD44:       var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CBD53:       Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CBD84:       Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_13CBD93:     End If
  loc_13CBD96:   Else
  loc_13CBD9E:     If (var_C2 = CInt(2)) Then
  loc_13CBDA5:       Set var_8C = Me.TopCtrl1
  loc_13CBDAB:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C2)
  loc_13CBDC4:       If (CStr() = "Browse") Then
  loc_13CBDC7:         Exit Sub
  loc_13CBDC8:       End If
  loc_13CBDDB:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBDE3:       var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CBE16:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CBE19:         Exit Sub
  loc_13CBE1A:       End If
  loc_13CBE2D:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CBE35:       var_E8 = CVar(CLng(0)) 'Long
  loc_13CBE68:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CBE6B:         Exit Sub
  loc_13CBE6C:       End If
  loc_13CBE78:       Me.FrameQty.Visible = True
  loc_13CBE80:       var_AC = 0
  loc_13CBE90:       Me.FrameQty.ZOrder var_AC
  loc_13CBEA5:       Me.TxtQty.Text = vbNullString
  loc_13CBEBE:       Me.TxtQty.Tag = CStr(2)
  loc_13CBED6:       Me.LblVtype.Caption = "Qty"
  loc_13CBEE1:     Else
  loc_13CBEE9:       If (var_C2 = CInt(3)) Then
  loc_13CBEF0:         Set var_8C = Me.TopCtrl1
  loc_13CBEF6:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E8)
  loc_13CBF0F:         If (CStr(var_AC) = "Browse") Then
  loc_13CBF12:           Exit Sub
  loc_13CBF13:         End If
  loc_13CBF17:         Set var_FC = Me.FGrid
  loc_13CBF26:         var_AC = CVar(CLng(var_FC.Row)) 'Long
  loc_13CBF2E:         var_E8 = CVar(CLng(0)) 'Long
  loc_13CBF41:         var_D8 = CStr(var_FC.TextMatrix))
  loc_13CBF55:         var_11C = CVar(CLng(var_FC.Row)) 'Long
  loc_13CBF8B:         If (CVar(CLng(&HA)) And (CStr(var_FC.TextMatrix)) <> vbNullString)) Then
  loc_13CBF9A:           var_AC = CVar(CLng(var_FC.RowSel)) 'Long
  loc_13CBFD7:           For var_164 = CInt(CLng(var_FC.RowSel)) To CInt((CLng(var_FC.Rows) - 1)):       var_86 = var_164 'Integer
  loc_13CBFE1:             var_AC = CVar(CLng(var_86)) 'Long
  loc_13CBFE9:             var_E8 = CVar(CLng(0)) 'Long
  loc_13CBFF3:             var_9C = CVar(CStr(var_86)) 'String
  loc_13CBFFA:             LateIdCallSt
  loc_13CC008:           Next var_164 'Integer
  loc_13CC00D:         End If
  loc_13CC00F:         Set var_FC = Nothing 
  loc_13CC016:       Else
  loc_13CC01E:         If (var_C2 = CInt(4)) Then
  loc_13CC025:           Set var_8C = Me.TopCtrl1
  loc_13CC02B:           Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_13CC044:           If (CStr() = "Browse") Then
  loc_13CC047:             Exit Sub
  loc_13CC048:           End If
  loc_13CC05B:           var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC063:           var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CC096:           If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CC099:             Exit Sub
  loc_13CC09A:           End If
  loc_13CC0AD:           var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC0B5:           var_E8 = CVar(CLng(9)) 'Long
  loc_13CC0F7:           If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "CANCEL") Then
  loc_13CC10D:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC115:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CC11A:             var_11C = vbNullString
  loc_13CC124:             Set var_C0 = Me.FGrid
  loc_13CC12A:             LateIdCallSt
  loc_13CC13F:           Else
  loc_13CC152:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC15A:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CC15F:             var_11C = "Cancel"
  loc_13CC169:             Set var_C0 = Me.FGrid
  loc_13CC16F:             LateIdCallSt
  loc_13CC181:           End If
  loc_13CC184:         Else
  loc_13CC18C:           If (var_C2 = CInt(5)) Then
  loc_13CC193:             Set var_8C = Me.TopCtrl1
  loc_13CC199:             Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_13CC1B2:             If (CStr(var_11C) = "Browse") Then
  loc_13CC1B5:               Exit Sub
  loc_13CC1B6:             End If
  loc_13CC1C9:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC1D1:             var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CC204:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CC207:               Exit Sub
  loc_13CC208:             End If
  loc_13CC21B:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC223:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CC265:             If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "FREE") Then
  loc_13CC27B:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC283:               var_E8 = CVar(CLng(9)) 'Long
  loc_13CC288:               var_11C = vbNullString
  loc_13CC292:               Set var_C0 = Me.FGrid
  loc_13CC298:               LateIdCallSt
  loc_13CC2AD:             Else
  loc_13CC2C0:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC2C8:               var_E8 = CVar(CLng(9)) 'Long
  loc_13CC2CD:               var_11C = "Free"
  loc_13CC2D7:               Set var_C0 = Me.FGrid
  loc_13CC2DD:               LateIdCallSt
  loc_13CC2EF:             End If
  loc_13CC2F2:           Else
  loc_13CC2FA:             If (var_C2 = CInt(6)) Then
  loc_13CC301:               Set var_8C = Me.TopCtrl1
  loc_13CC307:               Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_13CC320:               If (CStr(var_11C) = "Browse") Then
  loc_13CC323:                 Exit Sub
  loc_13CC324:               End If
  loc_13CC337:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC33F:               var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CC372:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CC375:                 Exit Sub
  loc_13CC376:               End If
  loc_13CC386:               Set global_240 = New RsTouchScreenKeyBoard
  loc_13CC394:               var_AC = CVar(Me) 'Address
  loc_13CC39F:               Me.ParentForm = var_AC
  loc_13CC3A7:               Set var_8C = var_AC(var_E8)
  loc_13CC3B6:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC3BE:               var_E8 = CVar(CLng(6)) 'Long
  loc_13CC402:               var_9C = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_13CC407:               var_9C.MaxLength = 0
  loc_13CC421:               var_9C.Show 1, var_BC
  loc_13CC439:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC441:               var_E8 = CVar(CLng(6)) 'Long
  loc_13CC451:               var_D4 = CVar(TxtKeyBoard) 'String
  loc_13CC459:               Set var_C0 = Me.FGrid
  loc_13CC45F:               LateIdCallSt
  loc_13CC480:               Set global_240 = Nothing
  loc_13CC487:             End If
  loc_13CC487:           End If
  loc_13CC487:         End If
  loc_13CC487:       End If
  loc_13CC487:     End If
  loc_13CC487:   End If
  loc_13CC487: End If
  loc_13CC487: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'FE400C
  'Data Table: 58F144
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE3E47: Me.DGRest.Visible = False
  loc_FE3E66: If (Me.RecordCount > 0) Then
  loc_FE3EA3:   Set var_B4 = Me.TxtGrid
  loc_FE3EA9:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE3EB1:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE3EDA:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE3EE2:   var_EC = CVar(CLng(2)) 'Long
  loc_FE3F15:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE3F1D:   Set var_B8 = Me.FGrid
  loc_FE3F23:   LateIdCallSt
  loc_FE3F52:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE3F5A:   var_EC = CVar(CLng(1)) 'Long
  loc_FE3F7C:   var_B0 = Me.Fields.Item("Code")
  loc_FE3F8D:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE3F95:   Set var_B8 = Me.FGrid
  loc_FE3F9B:   LateIdCallSt
  loc_FE3FB7: End If
  loc_FE3FC3: Set var_A8 = Me.TxtGrid
  loc_FE3FC9: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE3FD1: var_A4 = var_B0.Visible
  loc_FE3FE3: If (var_12E = &HFF) Then
  loc_FE3FEF:   Set var_A8 = Me.TxtGrid
  loc_FE3FF5:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE3FFD:   var_B0.SetFocus
  loc_FE4009: End If
  loc_FE4009: Exit Sub
  loc_FE400A: ArrayRebase1Var
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9D5A0
  'Data Table: 58F144
  Dim var_A8 As Variant
  loc_E9D524: Set var_88 = Me.DGRest
  loc_E9D54E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9D556: Set var_BC = Me.DGRest
  loc_E9D590: Proc_6_138_106E830(Me.DGRest, global_104, 0, Me.FGPoint)
  loc_E9D59E: Exit Sub
End Sub

Private Sub CmdCatType_UnknownEvent_9 '101E5D0
  'Data Table: 58F144
  Dim Me As Variant
  Dim var_A8 As Variant
  loc_101E3B8: Set var_8C = Me.CmdCatType
  loc_101E3BE: Call 0.Method_CmdCatType_UnknownEvent_98 (var_8E, var_86)
  loc_101E3C9: For var_92 =  To var_8E: 0 = var_92 'Integer
  loc_101E3D9:   Set var_8C = Me.CmdCatType
  loc_101E3DF:   Call 0.Method_CmdCatType_UnknownEvent_90 (var_86)
  loc_101E3E7:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_69(var_98)
  loc_101E3FC:   If (CInt() = 1) Then
  loc_101E409:     Set var_8C = Me.CmdCatType
  loc_101E40F:     Call 0.Method_CmdCatType_UnknownEvent_90 (KeyCode)
  loc_101E417:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_98)
  loc_101E425:     global_172 = CStr()
  loc_101E436:   End If
  loc_101E439: Next var_92 'Integer
  loc_101E44D: Me.Filter = 0
  loc_101E458: Me.MoveFirst
  loc_101E46B: Set var_8C = Me.SSPGroup
  loc_101E471: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101E479: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_101E493: Set var_8C = Me.SSPItem
  loc_101E499: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101E4A1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_101E4C8: Me.Filter = CVar("CatType='" & global_172 & "'")
  loc_101E4E4: var_A8 = CVar(Me.RecordCount) 'Long
  loc_101E4EB: Proc_6_39_E7D3A0(var_E0)
  loc_101E4F7: global_236 = CInt(var_E0)
  loc_101E50C: If (global_228 = "Group") Then
  loc_101E515:   global_228 = "Group"
  loc_101E52D:   Set var_98 = Me.SSPGroup
  loc_101E550:   Call Proc_333_76_1285370(Me.SSPGroup, CInt(4), global_248, CInt(4))
  loc_101E55C:   global_224 = CInt(var_A8)
  loc_101E570: Else
  loc_101E576:   global_228 = "Group"
  loc_101E5B1:   Call Proc_333_76_1285370(Me.SSPGroup, CInt(4), global_248, CInt(4), Me.SSPItem, var_A8)
  loc_101E5BD:   global_224 = CInt(var_A8)
  loc_101E5CE: End If
  loc_101E5CE: Exit Sub
End Sub

Private Sub ChkNCTOKEN_Click() '126460C
  'Data Table: 58F144
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim var_E0 As Integer
  Dim var_CC As String
  Dim unk_58F167 As Connection15
  Dim var_E4 As Field20
  Dim var_88 As Recordset15
  loc_12640B0: Set var_8C = Me.TopCtrl1
  loc_12640B6: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_12640CF: If (CStr() = "Browse") Then
  loc_12640D2:   Exit Sub
  loc_12640D3: End If
  loc_12640EE: If (Me.ChkNCTOKEN.Value = 1) Then
  loc_12640FD:   Me.Frame.Visible = True
  loc_1264115:   Me.Frame.ZOrder 0
  loc_126412B:   Set var_8C = Me.Txt
  loc_1264131:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_1264139:   var_B8.Text = vbNullString
  loc_1264151:   Me.FrameGrpItem.Enabled = False
  loc_1264171:   Call 0.Method_Me8 (var_BC)
  loc_126418E:   Me.Frame.Top = Int(((var_BC - Me.Frame.Height) / CDbl(2)))
  loc_12641B2:   Call 0.Method_Me0 (var_BC)
  loc_12641C9:   Set var_B8 = Me.Frame
  loc_12641CF:   var_B8.Left = Int(((var_BC - Me.Frame.Width) / CDbl(2)))
  loc_12641E9:   Set var_8C = Me.Txt
  loc_12641EF:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_1264209:   If (var_B8.Visible = 0) Then
  loc_1264219:     Set var_8C = Me.Txt
  loc_126421F:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_1264227:     var_B8.Visible = True
  loc_126423E:     Set var_8C = Me.Label1
  loc_1264244:     Call 0.Method_ChkNCTOKEN_Click0 (4, var_B8)
  loc_126424C:     var_B8.Visible = True
  loc_1264258:   End If
  loc_1264273:   var_C4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_126428A:   var_E0 = 0
  loc_12642AA:   var_CC = "Select 'N'+ ShortName From Depart Where Code='" & LocalRestCode
  loc_12642BA:   unk_58F167.Execute var_CC & "'", var_9C, -1
  loc_12642C2:   var_8C = var_8C.Fields
  loc_12642CA:   var_E0 = var_B8.Item(var_B8)
  loc_12642D2:   var_E4 = var_E4.Value
  loc_12642F1:   unk_58F167.Execute CStr(var_F4 & var_F4 & "' Order by Description"), CVar(var_C4 & MemVar_1F95078 & "') AND V_Type='"), var_158
  loc_12642FC:   Set var_88 = var_15C
  loc_126433C:   If (var_88.RecordCount > 0) Then
  loc_1264359:     var_B8 = var_88.Fields.Item(0)
  loc_1264361:     var_9C = var_B8.Value
  loc_126436A:     var_A0 = CStr(var_9C)
  loc_1264370:     global_152 = var_A0
  loc_1264387:     Call Proc_333_91_10E8008(MemVar_1F95044, var_A0)
  loc_126439A:     Set var_8C = Me.Txt
  loc_12643A0:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(3), var_B8, var_A0)
  loc_12643A8:     var_B8.Text = -1
  loc_12643C4:     Me.LblKotNm.Caption = "NC TOKEN"
  loc_12643D4:     Set var_8C = Me.cmdNCBill
  loc_12643DA:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_12643E2:   End If
  loc_12643E5: Else
  loc_12643F3:   Set var_8C = Me.Txt
  loc_12643F9:   Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_1264413:   If (var_B8.Visible = &HFF) Then
  loc_1264423:     Set var_8C = Me.Txt
  loc_1264429:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(7), var_B8)
  loc_1264431:     var_B8.Visible = False
  loc_1264448:     Set var_8C = Me.Label1
  loc_126444E:     Call 0.Method_ChkNCTOKEN_Click0 (4, var_B8)
  loc_1264456:     var_B8.Visible = False
  loc_1264462:   End If
  loc_126447D:   var_C4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_1264494:   var_E0 = 0
  loc_12644B4:   var_CC = "Select 'T'+ShortName From Depart Where Code='" & LocalRestCode
  loc_12644C4:   unk_58F167.Execute var_CC & "'", var_9C, -1
  loc_12644CC:   var_8C = var_8C.Fields
  loc_12644D4:   var_E0 = var_B8.Item(var_B8)
  loc_12644DC:   var_E4 = var_E4.Value
  loc_12644FB:   unk_58F167.Execute CStr(var_F4 & var_F4 & "' Order by Description"), CVar(var_C4 & MemVar_1F95078 & "') AND V_Type='"), var_158
  loc_1264506:   Set var_88 = var_15C
  loc_1264546:   If (var_88.RecordCount > 0) Then
  loc_1264563:     var_B8 = var_88.Fields.Item(0)
  loc_1264574:     var_A0 = CStr(var_B8.Value)
  loc_126457A:     global_152 = var_A0
  loc_1264591:     Call Proc_333_91_10E8008(MemVar_1F95044, var_A0, -1)
  loc_12645A4:     Set var_8C = Me.Txt
  loc_12645AA:     Call 0.Method_ChkNCTOKEN_Click0 (CInt(3), var_B8, var_A0)
  loc_12645B2:     var_B8.Text = var_15C
  loc_12645CE:     Me.LblKotNm.Caption = "TOKEN"
  loc_12645DF:     Set var_8C = Me.cmdNCBill
  loc_12645E5:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_12645ED:   End If
  loc_12645F9:   Me.Frame.Visible = False
  loc_1264601: End If
  loc_1264606: Set var_88 = Nothing
  loc_1264609: Exit Sub
  loc_126460A: DOC
End Sub

Public Sub SSPItem_UnknownEvent_9(Index As Integer) '12ECF7C
  'Data Table: 58F144
  Dim var_90 As String
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_C0 As String
  Dim unk_58F167 As Connection15
  Dim var_E8 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_D0 As Variant
  Dim var_108 As Variant
  Dim var_A8 As Variant
  Dim var_128 As Variant
  Dim var_F8 As Variant
  Dim var_118 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Variant
  Dim var_98 As Variant
  Dim var_17C As TextBox
  Dim var_148 As Variant
  Dim var_1AC As Variant
  loc_12EC8EF: var_90 = "Select D.Code As OutletCode,D.Name As OutletName,I.Dispcode,I.Unit,I.Kitchen From ItemMast I Inner Join Depart D On I.RestCode=D.Code where I.RestCode='" & LocalRestCode
  loc_12EC8F6: var_AC = var_90 & "' And I.Code='"
  loc_12EC903: Set var_94 = Me.SSPItem
  loc_12EC909: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, var_AC)
  loc_12EC911: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_E0)
  loc_12EC919: var_B0 = CStr(-1)
  loc_12EC932: var_C0 = var_E4 & var_B0 & "' And (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999  "
  loc_12EC93B: unk_58F167.Execute var_C0, , 
  loc_12EC946: Set var_8C = var_E4
  loc_12EC96E: Set var_E8 = Me.FGrid
  loc_12EC983: var_D0 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EC98B: var_108 = CVar(CLng(0)) 'Long
  loc_12EC9A4: var_128 = CVar(CStr((CLng(var_E8.Rows) - 1))) 'String
  loc_12EC9AB: LateIdCallSt
  loc_12EC9CE: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EC9D6: var_118 = CVar(CLng(1)) 'Long
  loc_12ECA06: var_128 = CVar(CStr(var_8C.Fields.Item("OutletCode").Value)) 'String
  loc_12ECA0D: LateIdCallSt
  loc_12ECA37: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12ECA3F: var_118 = CVar(CLng(2)) 'Long
  loc_12ECA6F: var_128 = CVar(CStr(var_8C.Fields.Item("OutLetName").Value)) 'String
  loc_12ECA76: LateIdCallSt
  loc_12ECAA0: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12ECAA8: var_118 = CVar(CLng(3)) 'Long
  loc_12ECAC7: var_98 = var_8C.Fields.Item("DispCode")
  loc_12ECADF: LateIdCallSt
  loc_12ECB09: var_D0 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12ECB20: Set var_94 = Me.SSPItem
  loc_12ECB26: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, CVar(CLng(4)), "DispCode", var_E8, CVar(CStr(var_98.Value)), var_118)
  loc_12ECB2E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_F8)
  loc_12ECB36: var_128 = CVar(CStr(var_E8)) 'String
  loc_12ECB3D: LateIdCallSt
  loc_12ECB58: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E8)
  loc_12ECB67: var_D0 = CVar((CLng(var_128) - 1)) 'Long
  loc_12ECB7E: Set var_94 = Me.SSPItem
  loc_12ECB84: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, CVar(CLng(&HA)), "DispCode", var_128)
  loc_12ECB8C: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_118)
  loc_12ECB9B: LateIdCallSt
  loc_12ECBB6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E8)
  loc_12ECBC5: var_F8 = CVar((CLng(CVar(CStr(var_F8))) - 1)) 'Long
  loc_12ECBCD: var_118 = CVar(CLng(5)) 'Long
  loc_12ECBEC: var_98 = var_8C.Fields.Item("Unit")
  loc_12ECC04: LateIdCallSt
  loc_12ECC1F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E8)
  loc_12ECC2E: var_108 = CVar((CLng(CVar(CStr(var_98.Value))) - 1)) 'Long
  loc_12ECC55: var_A8 = "1"
  loc_12ECC6E: LateIdCallSt
  loc_12ECC8D: Set var_94 = Me.SSPItem
  loc_12ECC93: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, var_E8, CVar(CStr(Format(var_A8, "0.000"))), 1, 1)
  loc_12ECC9B: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(CVar(CLng(7)))
  loc_12ECCB2: Set var_E4 = Me.Txt
  loc_12ECCB8: Call 0.Method_SSPItem_UnknownEvent_90 (CInt(1), var_17C, var_AC, CVar(CLng(&HA)))
  loc_12ECCC0: var_118 = var_17C.Text
  loc_12ECD06: Call Proc_333_96_F20834(CStr(var_A8), var_AC, CStr(var_8C.Fields.Item("OutletCode").Value), var_18C)
  loc_12ECD1D: var_118 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12ECD25: var_148 = CVar(CLng(8)) 'Long
  loc_12ECD52: var_1AC = CVar(CStr(Format(CVar(var_18C), "0.00"))) 'String
  loc_12ECD59: LateIdCallSt
  loc_12ECD9C: var_D0 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12ECDB2: LateIdCallSt
  loc_12ECDCF: var_F8 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12ECDDF: var_D0 = "Kitchen"
  loc_12ECE04: var_128 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_D0)), CVar(CLng(&HB)), "0.000", var_E8, vbNullString, CVar(CLng(9)), var_D0)) 'String
  loc_12ECE0B: LateIdCallSt
  loc_12ECE31: var_D0 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12ECE43: LateIdCallSt
  loc_12ECE67: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12ECE76: Me.FGrid.Row = var_D0
  loc_12ECEA7: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_12ECEC8: var_D0 = CVar((CLng(var_E8.Rows) + 1)) 'Long
  loc_12ECEEA: var_D0 = CVar((CLng(CVar(CLng(Me.FGrid.Row))) - 1)) 'Long
  loc_12ECEFC: LateIdCallSt
  loc_12ECF09: Set var_E8 = Nothing 
  loc_12ECF26: var_D0 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_12ECF35: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_12ECF5D: var_D0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_12ECF6C: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_12ECF7B: Exit Sub
End Sub

Public Sub SSPGroup_UnknownEvent_9(Index As Integer) 'F758F0
  'Data Table: 58F144
  Dim Me As Variant
  Dim var_CC As Variant
  loc_F757CF: Me.Filter = 0
  loc_F757DA: Me.MoveFirst
  loc_F757EC: Set var_98 = Me.SSPGroup
  loc_F757F2: Call 0.Method_SSPGroup_UnknownEvent_90 (Index, var_9C)
  loc_F757FA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("ItemGroup='")
  loc_F7581E: var_CC = CVar(CStr() & "' And CatType='" & global_172 & "'") 'String
  loc_F75828: Me.Filter = var_CC
  loc_F7585E: Proc_6_39_E7D3A0(var_CC)
  loc_F7586A: global_236 = CInt(var_CC)
  loc_F7588B: If (Me.RecordCount > 0) Then
  loc_F75894:   global_228 = "Item"
  loc_F758AC:   Set var_9C = Me.SSPGroup
  loc_F758CF:   Call Proc_333_76_1285370(Me.SSPItem, CInt(4), global_244, CInt(4))
  loc_F758DB:   global_224 = CInt(CVar(Me.RecordCount))
  loc_F758EC: End If
  loc_F758EC: Exit Sub
End Sub

Public Function MasterFormExitGet() '5919C4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '5919D3
  MasterFormExit = Value
End Sub

Public Function LocalRestCodeGet() '5919E2
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '5919F1
  LocalRestCode = Value
End Sub

Public Function SpecialRateGet() '591A00
  SpecialRateGet = SpecialRate
End Function

Public Sub SpecialRatePut(Value) '591A0F
  SpecialRate = Value
End Sub

Public Property Let MsgBoxTouch(vNewValue) 'E0292C
  'Data Table: 58F144
  loc_E02929: Exit Sub
  loc_E0292A: Set var_3388 = vNewValue
End Sub

Public Property Get MsgBoxTouch() 'E07010
  'Data Table: 58F144
  loc_E07009: MsgBoxTouch = global_276
End Sub

Public Property Let PTableNo(vNewValue) 'E14F64
  'Data Table: 58F144
  loc_E14F5C: global_204 = vNewValue
  loc_E14F60: Exit Sub
End Sub

Public Property Get PTableNo() 'E14CDC
  'Data Table: 58F144
  loc_E14CD0: var_88 = global_204
  loc_E14CD3: PTableNo = 
End Sub

Public Property Let pRestCode(vNewValue) 'E14934
  'Data Table: 58F144
  loc_E1492C: global_208 = vNewValue
  loc_E14930: Exit Sub
End Sub

Public Property Get pRestCode() 'E148A4
  'Data Table: 58F144
  loc_E14898: var_88 = global_208
  loc_E1489B: pRestCode = 
End Sub

Public Property Let OpenType(vNewValue) 'E14814
  'Data Table: 58F144
  loc_E1480C: global_200 = vNewValue
  loc_E14810: Exit Sub
End Sub

Public Property Get OpenType() 'E14664
  'Data Table: 58F144
  loc_E14658: var_88 = global_200
  loc_E1465B: OpenType = 
End Sub

Public Property Get OpenMode() 'E06C90
  'Data Table: 58F144
  loc_E06C89: OpenMode = global_196
End Sub

Public Property Let OpenMode(vNewValue) 'E025E4
  'Data Table: 58F144
  loc_E025DE: global_196 = vNewValue
  loc_E025E1: Exit Sub
End Sub

Public Property Let TxtKeyBoard(vNewValue) 'E140C4
  'Data Table: 58F144
  loc_E140BC: global_216 = vNewValue
  loc_E140C0: Exit Sub
End Sub

Public Property Get TxtKeyBoard() 'E14034
  'Data Table: 58F144
  loc_E14028: var_88 = global_216
  loc_E1402B: TxtKeyBoard = 
End Sub

Public Property Let PSteward(vNewValue) 'E13FA4
  'Data Table: 58F144
  loc_E13F9C: global_212 = vNewValue
  loc_E13FA0: Exit Sub
End Sub

Public Property Get PSteward() 'E13F5C
  'Data Table: 58F144
  loc_E13F50: var_88 = global_212
  loc_E13F53: PSteward = 
End Sub

Public Sub SEARCHBACK_TransferKOT() 'E7DA60
  'Data Table: 58F144
  Dim Me As Recordset15
  loc_E7D9F8: On Error Goto loc_E7DA5A
  loc_E7DA06: Me.Requery -1
  loc_E7DA22: If (Me.RecordCount > 0) Then
  loc_E7DA2B:   Me.MoveFirst
  loc_E7DA30: End If
  loc_E7DA4C: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7DA54: Call Proc_333_85_16BE030(global_92)
  loc_E7DA59: Exit Sub
  loc_E7DA5A: ' Referenced from: E7D9F8
  loc_E7DA5A: Proc_6_60_E63754(0)
  loc_E7DA5F: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E95AF8
  'Data Table: 58F144
  Dim Me As Recordset15
  Dim var_33D4 As Variant
  loc_E95A86: On Error Goto loc_E95AEF
  loc_E95A8F: Me.MoveFirst
  loc_E95AB9: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E95AE1: Proc_5_0_1107AD0(&HFF, Me, global_92)
  loc_E95AE9: Call Proc_333_85_16BE030(0)
  loc_E95AEE: Exit Sub
  loc_E95AEF: ' Referenced from: E95A86
  loc_E95AEF: Proc_6_60_E63754(var_A0)
  loc_E95AF4: Exit Sub
  loc_E95AF5: var_33D4 =  
End Sub

Public Sub Proc_333_69_127CDF8
  'Data Table: 58F144
  Dim var_88 As Frame
  loc_127C838: Set var_88 = Me.TopCtrl1
  loc_127C83E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016()
  loc_127C857: Set var_9C = Me.Head
  loc_127C85D: Call 0.Method_Proc_333_69_127CDF80 (CInt(1), var_A0)
  loc_127C865: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127C87E: Set var_88 = Me.TopCtrl1
  loc_127C884: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017()
  loc_127C89D: Set var_9C = Me.Head
  loc_127C8A3: Call 0.Method_Proc_333_69_127CDF80 (CInt(2), var_A0)
  loc_127C8AB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127C8C4: Set var_88 = Me.TopCtrl1
  loc_127C8CA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030014()
  loc_127C8E3: Set var_9C = Me.Head
  loc_127C8E9: Call 0.Method_Proc_333_69_127CDF80 (CInt(3), var_A0)
  loc_127C8F1: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127C90A: Set var_88 = Me.TopCtrl1
  loc_127C910: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000F()
  loc_127C929: Set var_9C = Me.Head
  loc_127C92F: Call 0.Method_Proc_333_69_127CDF80 (CInt(4), var_A0)
  loc_127C937: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127C950: Set var_88 = Me.TopCtrl1
  loc_127C956: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000D()
  loc_127C96F: Set var_9C = Me.Head
  loc_127C975: Call 0.Method_Proc_333_69_127CDF80 (CInt(5), var_A0)
  loc_127C97D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127C996: Set var_88 = Me.TopCtrl1
  loc_127C99C: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030018()
  loc_127C9B5: Set var_9C = Me.Head
  loc_127C9BB: Call 0.Method_Proc_333_69_127CDF80 (CInt(6), var_A0)
  loc_127C9C3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127C9DC: Set var_88 = Me.TopCtrl1
  loc_127C9E2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016()
  loc_127C9F4: Set var_9C = Me.CmChngToNC
  loc_127C9FA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127CA11: Set var_88 = Me.TopCtrl1
  loc_127CA17: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016()
  loc_127CA29: Set var_9C = Me.CmTransKOT
  loc_127CA2F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127CA46: Set var_88 = Me.TopCtrl1
  loc_127CA4C: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_127CA65: If (CStr() = "Add") Then
  loc_127CA70:   Set var_88 = Me.CmChngSteward
  loc_127CA76:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CA86:   Set var_88 = Me.CmNoOfPersons
  loc_127CA8C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CAA3:   Set var_88 = Me.CmFgrid
  loc_127CAA9:   Call 0.Method_Proc_333_69_127CDF80 (CInt(2), var_9C)
  loc_127CAB1:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CACC:   Set var_88 = Me.CmFgrid
  loc_127CAD2:   Call 0.Method_Proc_333_69_127CDF80 (CInt(3), var_9C)
  loc_127CADA:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CAF5:   Set var_88 = Me.CmFgrid
  loc_127CAFB:   Call 0.Method_Proc_333_69_127CDF80 (CInt(4), var_9C)
  loc_127CB03:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CB1E:   Set var_88 = Me.CmFgrid
  loc_127CB24:   Call 0.Method_Proc_333_69_127CDF80 (CInt(5), var_9C)
  loc_127CB2C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CB47:   Set var_88 = Me.CmFgrid
  loc_127CB4D:   Call 0.Method_Proc_333_69_127CDF80 (CInt(6), var_9C)
  loc_127CB55:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CB6D:   Me.FrameGrpItem.Enabled = True
  loc_127CB78: Else
  loc_127CB7C:   Set var_88 = Me.TopCtrl1
  loc_127CB82:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_127CB9B:   If (CStr() = "Edit") Then
  loc_127CBA7:     Set var_88 = Me.CmChngSteward
  loc_127CBAD:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CBBE:     Set var_88 = Me.CmNoOfPersons
  loc_127CBC4:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CBDB:     Set var_88 = Me.CmFgrid
  loc_127CBE1:     Call 0.Method_Proc_333_69_127CDF80 (CInt(2), var_9C)
  loc_127CBE9:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CC05:     Set var_88 = Me.CmFgrid
  loc_127CC0B:     Call 0.Method_Proc_333_69_127CDF80 (CInt(3), var_9C)
  loc_127CC13:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CC2E:     Set var_88 = Me.CmFgrid
  loc_127CC34:     Call 0.Method_Proc_333_69_127CDF80 (CInt(4), var_9C)
  loc_127CC3C:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CC57:     Set var_88 = Me.CmFgrid
  loc_127CC5D:     Call 0.Method_Proc_333_69_127CDF80 (CInt(5), var_9C)
  loc_127CC65:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CC80:     Set var_88 = Me.CmFgrid
  loc_127CC86:     Call 0.Method_Proc_333_69_127CDF80 (CInt(6), var_9C)
  loc_127CC8E:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127CCA6:     Me.FrameGrpItem.Enabled = True
  loc_127CCB1:   Else
  loc_127CCB5:     Set var_88 = Me.TopCtrl1
  loc_127CCBB:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_127CCD4:     If (CStr() = "Browse") Then
  loc_127CCE0:       Set var_88 = Me.CmChngSteward
  loc_127CCE6:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CCF7:       Set var_88 = Me.CmNoOfPersons
  loc_127CCFD:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CD15:       Set var_88 = Me.CmFgrid
  loc_127CD1B:       Call 0.Method_Proc_333_69_127CDF80 (CInt(2), var_9C)
  loc_127CD23:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CD3F:       Set var_88 = Me.CmFgrid
  loc_127CD45:       Call 0.Method_Proc_333_69_127CDF80 (CInt(3), var_9C)
  loc_127CD4D:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CD69:       Set var_88 = Me.CmFgrid
  loc_127CD6F:       Call 0.Method_Proc_333_69_127CDF80 (CInt(4), var_9C)
  loc_127CD77:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CD93:       Set var_88 = Me.CmFgrid
  loc_127CD99:       Call 0.Method_Proc_333_69_127CDF80 (CInt(5), var_9C)
  loc_127CDA1:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CDBD:       Set var_88 = Me.CmFgrid
  loc_127CDC3:       Call 0.Method_Proc_333_69_127CDF80 (CInt(6), var_9C)
  loc_127CDCB:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127CDE3:       Me.FrameGrpItem.Enabled = False
  loc_127CDF0:       Call CmdCatType_UnknownEvent_9()
  loc_127CDF5:     End If
  loc_127CDF5:   End If
  loc_127CDF5: End If
  loc_127CDF5: Exit Sub
End Sub

Public Sub Proc_333_70_EF6358
  'Data Table: 58F144
  Dim var_BC As Boolean
  loc_EF6291: For var_9C = 1 To CInt(Me.UBound): var_86 = var_9C 'Integer
  loc_EF6297:   var_BC = False
  loc_EF62B0:   ).Visible = var_86
  loc_EF62D7:   Me..FrameGrpItem.Unload )
  loc_EF62E5: Next var_9C 'Integer
  loc_EF62FB: For var_D4 = 1 To CInt(Me.UBound): var_86 = var_D4 'Integer
  loc_EF6301:   var_BC = False
  loc_EF631A:   ).Visible = var_86
  loc_EF6341:   Me..FrameGrpItem.Unload )
  loc_EF634F: Next var_D4 'Integer
  loc_EF6354: Exit Sub
End Sub

Public Sub Proc_333_71_EF22AC
  'Data Table: 58F144
  Dim var_BC As Boolean
  loc_EF21E9: For var_9C = 1 To CInt(Me.UBound): var_86 = var_9C 'Integer
  loc_EF21EF:   var_BC = True
  loc_EF2207:   ).Visible = var_86
  loc_EF222E:   Me..FrameGrpItem.Unload )
  loc_EF223C: Next var_9C 'Integer
  loc_EF2252: For var_D4 = 1 To CInt(Me.UBound): var_86 = var_D4 'Integer
  loc_EF2258:   var_BC = True
  loc_EF2270:   ).Visible = var_86
  loc_EF2297:   Me..FrameGrpItem.Unload )
  loc_EF22A5: Next var_D4 'Integer
  loc_EF22AA: Exit Sub
End Sub

Public Sub Proc_333_72_1273824
  'Data Table: 58F144
  Dim var_94 As Variant
  Dim var_E4 As Variant
  Dim var_104 As String
  loc_127328A: Me.FGrid.Left = CVar(CDbl(0))
  loc_12732A5: Me.FGrid.Top = CVar(CDbl(1500))
  loc_12732C0: Me.FGrid.Height = CVar(CDbl(6300))
  loc_12732DB: Me.FGrid.Width = CVar(CDbl(7200))
  loc_1273301: Me.FrameGrpItem.Top = CDbl(Me.FGrid.Top)
  loc_127334C: Me.FrameGrpItem.Left = ((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width)) + CDbl(1050))
  loc_1273370: Me.FrameQty.Top = CDbl(7500)
  loc_12733AF: Me.FrameQty.Left = (CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width))
  loc_12733CC: global_120 = &H258
  loc_12733E2: Me.FGrid.Cols = &HE
  loc_12733EA: var_94 = CVar(CLng(0)) 'Long
  loc_12733EF: var_E4 = &H13B
  loc_12733FB: LateIdCallSt
  loc_1273403: var_94 = 0
  loc_127340F: var_E4 = CVar(CLng(1)) 'Long
  loc_1273414: var_104 = "Rest"
  loc_127341D: LateIdCallSt
  loc_1273428: var_94 = CVar(CLng(1)) 'Long
  loc_1273433: var_E4 = CVar(CInt(1)) 'Integer
  loc_127343A: LateIdCallSt
  loc_1273445: var_94 = CVar(CLng(1)) 'Long
  loc_127344A: var_E4 = 0
  loc_1273456: LateIdCallSt
  loc_127345E: var_94 = 0
  loc_127346A: var_E4 = CVar(CLng(2)) 'Long
  loc_127346F: var_104 = "Rest."
  loc_1273478: LateIdCallSt
  loc_1273483: var_94 = CVar(CLng(2)) 'Long
  loc_127348E: var_E4 = CVar(CInt(1)) 'Integer
  loc_1273495: LateIdCallSt
  loc_12734A0: var_94 = CVar(CLng(2)) 'Long
  loc_12734A5: var_E4 = 0
  loc_12734B1: LateIdCallSt
  loc_12734B9: var_94 = 0
  loc_12734C5: var_E4 = CVar(CLng(3)) 'Long
  loc_12734CA: var_104 = "Code"
  loc_12734D3: LateIdCallSt
  loc_12734DE: var_94 = CVar(CLng(3)) 'Long
  loc_12734E9: var_E4 = CVar(CInt(1)) 'Integer
  loc_12734F0: LateIdCallSt
  loc_12734FB: var_94 = CVar(CLng(3)) 'Long
  loc_1273500: var_E4 = 0
  loc_127350C: LateIdCallSt
  loc_1273514: var_94 = 0
  loc_1273520: var_E4 = CVar(CLng(4)) 'Long
  loc_1273525: var_104 = "Item Name"
  loc_127352E: LateIdCallSt
  loc_1273539: var_94 = CVar(CLng(4)) 'Long
  loc_1273544: var_E4 = CVar(CInt(1)) 'Integer
  loc_127354B: LateIdCallSt
  loc_1273556: var_94 = CVar(CLng(4)) 'Long
  loc_127355B: var_E4 = &H960
  loc_1273567: LateIdCallSt
  loc_127356F: var_94 = 0
  loc_127357B: var_E4 = CVar(CLng(5)) 'Long
  loc_1273580: var_104 = "Unit"
  loc_1273589: LateIdCallSt
  loc_1273594: var_94 = CVar(CLng(5)) 'Long
  loc_127359F: var_E4 = CVar(CInt(1)) 'Integer
  loc_12735A6: LateIdCallSt
  loc_12735B1: var_94 = CVar(CLng(5)) 'Long
  loc_12735B6: var_E4 = &H320
  loc_12735C2: LateIdCallSt
  loc_12735CA: var_94 = 0
  loc_12735D6: var_E4 = CVar(CLng(6)) 'Long
  loc_12735DB: var_104 = "Description"
  loc_12735E4: LateIdCallSt
  loc_12735EF: var_94 = CVar(CLng(6)) 'Long
  loc_12735FA: var_E4 = CVar(CInt(1)) 'Integer
  loc_1273601: LateIdCallSt
  loc_127360C: var_94 = CVar(CLng(6)) 'Long
  loc_1273617: var_E4 = CVar(CInt(1)) 'Integer
  loc_127361E: LateIdCallSt
  loc_1273629: var_94 = CVar(CLng(6)) 'Long
  loc_127362E: var_E4 = &H44C
  loc_127363A: LateIdCallSt
  loc_1273642: var_94 = 0
  loc_127364E: var_E4 = CVar(CLng(7)) 'Long
  loc_1273653: var_104 = "Qty"
  loc_127365C: LateIdCallSt
  loc_1273667: var_94 = CVar(CLng(7)) 'Long
  loc_1273672: var_E4 = CVar(CInt(7)) 'Integer
  loc_1273679: LateIdCallSt
  loc_1273684: var_94 = CVar(CLng(7)) 'Long
  loc_127368F: var_E4 = CVar(CInt(7)) 'Integer
  loc_1273696: LateIdCallSt
  loc_12736A1: var_94 = CVar(CLng(7)) 'Long
  loc_12736A6: var_E4 = &H320
  loc_12736B2: LateIdCallSt
  loc_12736BA: var_94 = 0
  loc_12736C6: var_E4 = CVar(CLng(8)) 'Long
  loc_12736CB: var_104 = "Rate"
  loc_12736D4: LateIdCallSt
  loc_12736DF: var_94 = CVar(CLng(8)) 'Long
  loc_12736EA: var_E4 = CVar(CInt(7)) 'Integer
  loc_12736F1: LateIdCallSt
  loc_12736FC: var_94 = CVar(CLng(8)) 'Long
  loc_1273707: var_E4 = CVar(CInt(7)) 'Integer
  loc_127370E: LateIdCallSt
  loc_1273719: var_94 = CVar(CLng(8)) 'Long
  loc_127371E: var_E4 = &H320
  loc_127372A: LateIdCallSt
  loc_1273732: var_94 = 0
  loc_127373E: var_E4 = CVar(CLng(9)) 'Long
  loc_1273743: var_104 = "Status"
  loc_127374C: LateIdCallSt
  loc_1273757: var_94 = CVar(CLng(9)) 'Long
  loc_1273762: var_E4 = CVar(CInt(1)) 'Integer
  loc_1273769: LateIdCallSt
  loc_1273774: var_94 = CVar(CLng(9)) 'Long
  loc_127377F: var_E4 = CVar(CInt(1)) 'Integer
  loc_1273786: LateIdCallSt
  loc_1273791: var_94 = CVar(CLng(9)) 'Long
  loc_1273796: var_E4 = &H2BC
  loc_12737A2: LateIdCallSt
  loc_12737AD: var_94 = CVar(CLng(&HA)) 'Long
  loc_12737B2: var_E4 = 0
  loc_12737BE: LateIdCallSt
  loc_12737C9: var_94 = CVar(CLng(&HB)) 'Long
  loc_12737CE: var_E4 = 0
  loc_12737DA: LateIdCallSt
  loc_12737E5: var_94 = CVar(CLng(&HC)) 'Long
  loc_12737EA: var_E4 = 0
  loc_12737F6: LateIdCallSt
  loc_1273801: var_94 = CVar(CLng(&HD)) 'Long
  loc_1273806: var_E4 = 0
  loc_1273812: LateIdCallSt
  loc_1273820: Exit Sub
  loc_1273821: Set var_88 = Nothing
End Sub

Public Sub Proc_333_73_1056DB0
  'Data Table: 58F144
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_1056B43: Me.LblPendingKot.Left = CDbl(8280)
  loc_1056B5A: Me.LblPendingKot.Top = CDbl(6630)
  loc_1056B75: Me.FGrid1.Left = CVar(CDbl(8280))
  loc_1056B90: Me.FGrid1.Top = CVar(CDbl(6960))
  loc_1056BAB: Me.FGrid1.Height = CVar(CDbl(5750))
  loc_1056BC6: Me.FGrid1.Width = CVar(CDbl(5100))
  loc_1056BD2: Set var_AC = Me.FGrid1
  loc_1056BE9: global_252 = CStr(CLng(var_AC.BackColor))
  loc_1056BFF: var_AC.Cols = 5
  loc_1056C07: var_98 = CVar(CLng(0)) 'Long
  loc_1056C0C: var_D0 = &H12C
  loc_1056C18: LateIdCallSt
  loc_1056C20: var_98 = 0
  loc_1056C2C: var_D0 = CVar(CLng(1)) 'Long
  loc_1056C31: var_F0 = "KotNo"
  loc_1056C3A: LateIdCallSt
  loc_1056C45: var_98 = CVar(CLng(1)) 'Long
  loc_1056C50: var_D0 = CVar(CInt(1)) 'Integer
  loc_1056C57: LateIdCallSt
  loc_1056C62: var_98 = CVar(CLng(1)) 'Long
  loc_1056C67: var_D0 = &H28A
  loc_1056C73: LateIdCallSt
  loc_1056C7B: var_98 = 0
  loc_1056C87: var_D0 = CVar(CLng(2)) 'Long
  loc_1056C8C: var_F0 = "Time"
  loc_1056C95: LateIdCallSt
  loc_1056CA0: var_98 = CVar(CLng(2)) 'Long
  loc_1056CAB: var_D0 = CVar(CInt(1)) 'Integer
  loc_1056CB2: LateIdCallSt
  loc_1056CBD: var_98 = CVar(CLng(2)) 'Long
  loc_1056CC2: var_D0 = &H258
  loc_1056CCE: LateIdCallSt
  loc_1056CD6: var_98 = 0
  loc_1056CE2: var_D0 = CVar(CLng(3)) 'Long
  loc_1056CE7: var_F0 = "Item Name"
  loc_1056CF0: LateIdCallSt
  loc_1056CFB: var_98 = CVar(CLng(3)) 'Long
  loc_1056D06: var_D0 = CVar(CInt(1)) 'Integer
  loc_1056D0D: LateIdCallSt
  loc_1056D18: var_98 = CVar(CLng(3)) 'Long
  loc_1056D1D: var_D0 = &H9C4
  loc_1056D29: LateIdCallSt
  loc_1056D31: var_98 = 0
  loc_1056D3D: var_D0 = CVar(CLng(4)) 'Long
  loc_1056D42: var_F0 = "Qty"
  loc_1056D4B: LateIdCallSt
  loc_1056D56: var_98 = CVar(CLng(4)) 'Long
  loc_1056D61: var_D0 = CVar(CInt(7)) 'Integer
  loc_1056D68: LateIdCallSt
  loc_1056D73: var_98 = CVar(CLng(4)) 'Long
  loc_1056D7E: var_D0 = CVar(CInt(7)) 'Integer
  loc_1056D85: LateIdCallSt
  loc_1056D90: var_98 = CVar(CLng(4)) 'Long
  loc_1056D95: var_D0 = &H2BC
  loc_1056DA1: LateIdCallSt
  loc_1056DAB: Set var_AC = Nothing 
  loc_1056DAF: Exit Sub
End Sub

Public Sub Proc_333_74_DFC9FC
  'Data Table: 58F144
  loc_DFC9F8: Exit Sub
End Sub

Public Sub Proc_333_75_18FE010
  'Data Table: 58F144
  Dim var_E8 As Variant
  Dim var_F0 As String
  Dim var_124 As Variant
  Dim var_100 As Variant
  Dim Me As Recordset15
  Dim var_104 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim var_158 As String
  Dim var_15C As String
  Dim unk_58F167 As Connection15
  Dim var_160 As Variant
  Dim var_D0 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_114 As Variant
  Dim var_B8 As Recordset15
  Dim var_96 As Integer
  Dim var_17C As String
  Dim var_1D4 As Variant
  Dim var_1F4 As Variant
  Dim var_1E4 As Variant
  Dim var_1B4 As Variant
  Dim var_1C4 As Variant
  Dim var_224 As Variant
  Dim var_234 As Variant
  Dim var_204 As Variant
  Dim var_214 As Variant
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_26C As Variant
  Dim var_280 As Variant
  Dim var_2A4 As Variant
  Dim var_2E4 As Variant
  Dim var_304 As Variant
  Dim var_3E4 As Variant
  Dim var_E4 As Double
  Dim var_2B4 As Variant
  Dim var_2C4 As Variant
  Dim var_3C4 As Variant
  Dim var_294 As Variant
  loc_18FB5D8: On Error Goto loc_18FE002
  loc_18FB5DE: MemVar_1F953C4 = "N"
  loc_18FB5E5: MemVar_1F953C8 = "N"
  loc_18FB5EC: MemVar_1F953CC = "K"
  loc_18FB60B: If (Me.ChkNCTOKEN.Value <> 1) Then
  loc_18FB613:   Proc_333_75_18FE010 = 0
  loc_18FB619: End If
  loc_18FB620: var_F0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_18FB665: var_8C = CStr(CVar(var_F0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_18FB684: var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_18FB6A4: var_104 = Me.Fields.Item("SearchCode")
  loc_18FB6C2: var_90 = CStr(var_124 & var_104.Value & "'")
  loc_18FB6DF: If (var_8C = vbNullString) Then
  loc_18FB6E7:   Proc_333_75_18FE010 = 0
  loc_18FB6ED: End If
  loc_18FB6F5: If (var_90 = vbNullString) Then
  loc_18FB6FD:   Proc_333_75_18FE010 = 0
  loc_18FB703: End If
  loc_18FB721: Set var_E8 = Me.Txt
  loc_18FB727: Call 0.Method_Proc_333_75_18FE0100 (CInt(4), var_104, var_F0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_18FB72F: var_114 = var_104.Text
  loc_18FB738: var_158 = -1 & var_F0
  loc_18FB748: unk_58F167.Execute var_158 & "' AND CONTRADOCID IS NULL", var_160, 
  loc_18FB771: var_144 = 0
  loc_18FB7A1: unk_58F167.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_114, -1
  loc_18FB7B1: var_144 = var_104.Item(var_104)
  loc_18FB7B9: var_160 = var_160.Value
  loc_18FB7C6: var_D4 = Proc_6_38_E69628(var_124)
  loc_18FB7F4: var_F0 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_18FB804: unk_58F167.Execute var_F0 & "MK'", var_114, -1
  loc_18FB80F: Set var_C0 = var_E8.Fields
  loc_18FB833: If (var_160.RecordCount = 1) Then
  loc_18FB839:   var_CC = "New Order"
  loc_18FB83F: Else
  loc_18FB846:   Set var_E8 = Me.LblState
  loc_18FB854:   var_CC = var_E8.Caption
  loc_18FB85A: End If
  loc_18FB870: unk_58F167.Execute var_8C, var_114, -1
  loc_18FB87B: Set var_B8 = var_E8
  loc_18FB884: ' Referenced from: 18FDFCC
  loc_18FB893: If Not(var_C0.EOF) Then
  loc_18FB8AC:   unk_58F167.Execute "SELECT KOTPrinting FROM Enviro", var_114, -1
  loc_18FB8B7:   Set var_D0 = var_E8
  loc_18FB8C7:   var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_18FB8DF:   var_E8 = Me.Fields
  loc_18FB8EF:   var_114 = var_E8.Item("SearchCode").Value
  loc_18FB930:   unk_58F167.Execute CStr(var_124 & var_114 & "' and K.VoidYN<>'Y'"), var_114, -1
  loc_18FB93B:   Set var_BC = var_E8
  loc_18FB958:   If (var_BC.RecordCount > 0) Then
  loc_18FB96A:     var_E8 = var_C0.Fields
  loc_18FB989:     var_174 = Trim(CVar(var_E8.Item("PrintType"))) 'Variant
  loc_18FB99E:     If (var_174 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_18FB9AE:       Call Proc_333_82_EFA504(New, var_E8, var_E8, var_E8)
  loc_18FB9B6:       Set var_D8 = var_E8
  loc_18FB9BC:       Me.Recordset15.MoveFirst
  loc_18FB9C1:       ' Referenced from: 18FC63B
  loc_18FB9D0:       If Not(var_B8.EOF) Then
  loc_18FB9E9:         If (0 = 0) Then
  loc_18FBA0A:           Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString, 1)
  loc_18FBA46:           var_C4 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_18FBA7D:           var_124 = CVar(Me.LblRest.Caption) 'String
  loc_18FBA80:           var_134 = (Space(1) + var_124)
  loc_18FBA95:           Call Proc_333_83_F145C8(var_D8, vbNullString, CStr(var_124 & Space(1)), vbNullString)
  loc_18FBAC7:           Call Proc_333_83_F145C8(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_18FBAD5:           var_96 = &H12
  loc_18FBAF6:           Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString, var_96)
  loc_18FBB22:           Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FBB3F:           var_E8 = var_B8.Fields
  loc_18FBB56:           Proc_6_39_E7D3A0(var_124, CVar(var_E8.Item("VNo")), var_96)
  loc_18FBB93:           Call Proc_333_83_F145C8(var_D8, vbNullString, " V No.     : " & Proc_6_45_EADFB8(CStr(var_124), &HA, var_E8))
  loc_18FBBC0:           var_E8 = var_B8.Fields
  loc_18FBC63:           Call Proc_333_83_F145C8(var_D8, vbNullString, " Date.     : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")), var_E8), 8))
  loc_18FBCAA:           var_104 = var_B8.Fields.Item("Remarks")
  loc_18FBCF5:           Call Proc_333_83_F145C8(var_D8, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104), vbNullString), &H1E))
  loc_18FBD27:           Set var_E8 = Me.Label1
  loc_18FBD2D:           Call 0.Method_Proc_333_75_18FE0100 (2, var_104)
  loc_18FBDB6:           var_190 = Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_18FBDBC:           var_17C = vbNullString
  loc_18FBDCB:           var_1B4 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_18FBDD4:           var_1C4 = (var_1B4 + ": ")
  loc_18FBDDE:           var_234 = (var_1C4 + CVar(var_190))
  loc_18FBDF3:           Call Proc_333_83_F145C8(var_D8, vbNullString, CStr(var_234))
  loc_18FBE45:           Call Proc_333_83_F145C8(var_D8, vbNullString, var_C4, vbNullString)
  loc_18FBE51:         End If
  loc_18FBE77:         var_134 = (var_17C + CVar(Proc_6_45_EADFB8("ITEM NAME", &H12, Space(1))))
  loc_18FBE8B:         var_1B4 = (Trim(CVar(var_104)) + Space(1))
  loc_18FBEA5:         var_1D4 = (1 + CVar(Proc_6_52_EAE084("Qty", 3, var_1B4)))
  loc_18FBEB1:         var_1E4 = Space(1)
  loc_18FBEB9:         var_204 = (CVar(var_B8.Fields.Item("TableNo")) + var_1E4)
  loc_18FBED3:         var_224 = ("000" + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_18FBEE7:         var_248 = (CVar(var_190) + Space(1))
  loc_18FBF01:         var_26C = (var_248 + CVar(Proc_6_52_EAE084("Amount", 7)))
  loc_18FBF38:         var_158 = vbNullString
  loc_18FBF4D:         Call Proc_333_83_F145C8(var_D8, vbNullString, CStr(var_26C))
  loc_18FBF5C:         var_158 = vbNullString
  loc_18FBF71:         Call Proc_333_83_F145C8(var_D8, vbNullString, var_C4)
  loc_18FBF83:         var_96 = (var_96 + 4)
  loc_18FBF89:         var_BC.MoveFirst
  loc_18FBF8E:         ' Referenced from: 18FC2A8
  loc_18FBF9D:         If Not(var_BC.EOF) Then
  loc_18FBFC2:           var_124 = var_BC.Fields.Item("ItemName").Value
  loc_18FBFED:           Proc_6_39_E7D3A0(var_1E4, CVar(var_BC.Fields.Item("qty")), var_96)
  loc_18FC015:           var_280 = "Rate"
  loc_18FC038:           Proc_6_39_E7D3A0(var_294, CVar(var_BC.Fields.Item(var_280)), 1, 1)
  loc_18FC047:           var_2A4 = "0.00"
  loc_18FC083:           Proc_6_39_E7D3A0(var_33C, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_18FC0AE:           Proc_6_39_E7D3A0(var_374, CVar(var_BC.Fields.Item("Rate")), var_158)
  loc_18FC106:           var_154 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_124), &H12, Space(1), 1)))
  loc_18FC11A:           var_1C4 = (Space(1) + Space(1))
  loc_18FC133:           var_234 = (var_158 + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0")), 3, CVar(Proc_6_52_EAE084("Qty", 3, Space(1))))))
  loc_18FC147:           var_25C = (Space(1) + Space(1))
  loc_18FC160:           var_2E4 = (CVar(Proc_6_52_EAE084("Amount", 7)) + CVar(Proc_6_52_EAE084(CStr(Format(var_294, var_2A4)), 6)))
  loc_18FC174:           var_304 = (var_2E4 + Space(1))
  loc_18FC18D:           var_3E4 = (var_304 + CVar(Proc_6_52_EAE084(CStr(Format((var_33C * var_374), "0.00")), 7)))
  loc_18FC1F3:           var_1F4 = CVar(var_E4) 'Double
  loc_18FC21D:           Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_18FC24B:           Proc_6_39_E7D3A0(Space(1), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_18FC257:           var_1C4 = (var_124 + (var_1F4 * Space(1)))
  loc_18FC25C:           var_E4 = CSng(CVar(Proc_6_52_EAE084("Qty", 3, (var_1F4 * Space(1)))))
  loc_18FC276:           var_158 = vbNullString
  loc_18FC28B:           Call Proc_333_83_F145C8(var_D8, vbNullString, CStr(var_3E4))
  loc_18FC29D:           var_96 = (var_96 + 1)
  loc_18FC2A3:           var_BC.MoveNext
  loc_18FC2A8:           GoTo loc_18FBF8E
  loc_18FC2AB:         End If
  loc_18FC2C3:         Call Proc_333_83_F145C8(var_D8, vbNullString, var_C4, vbNullString)
  loc_18FC2ED:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC328:         var_144 = "0.00"
  loc_18FC32D:         var_154 = var_144
  loc_18FC37A:         var_134 = (Space(&H16) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8, var_96)))
  loc_18FC384:         var_204 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, var_154))))), 8, 1)))
  loc_18FC399:         Call Proc_333_83_F145C8(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_18FC3E4:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC3F5:         var_100 = "WaiterName"
  loc_18FC434:         var_17C = vbNullString
  loc_18FC454:         Call Proc_333_83_F145C8(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_100)), 1), &H14))
  loc_18FC48E:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC4C3:         Call Proc_333_83_F145C8(var_D8, vbNullString, " ** " & MemVar_1F95220 & " **", vbNullString)
  loc_18FC4D6:         var_B8.MoveNext
  loc_18FC4F9:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC525:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC551:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC57D:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC5A9:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC5D5:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC601:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC62D:         Call Proc_333_83_F145C8(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FC63B:         GoTo loc_18FB9C1
  loc_18FC63E:       End If
  loc_18FC641:       var_DC = "WinKOTPrint"
  loc_18FC668:       Set var_E8 = var_D8 
  loc_18FC66F:       CreateFieldDefFile(var_E8, MemVar_1F950B4 & "\" & var_DC & ".ttx", &HFF)
  loc_18FC6A1:       var_158 = MemVar_1F950B4 & "\" & var_DC
  loc_18FC6A8:       var_15C = var_158 & ".RPT"
  loc_18FC6B1:       Call 0.Method_arg_1C (var_15C, var_100, var_E8)
  loc_18FC6BC:       MemVar_1F951E8 = var_E8
  loc_18FC6E5:       Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_144, var_1F4)
  loc_18FC6ED:       Call 0.Method_arg_2C (var_17C, var_158)
  loc_18FC6FD:       If (var_D4 <> vbNullString) Then
  loc_18FC71E:         If CBool(Ucase(var_D4) <> "PRN") Then
  loc_18FC724:           Call Proc_333_80_F110E8(var_D4)
  loc_18FC729:         End If
  loc_18FC729:       End If
  loc_18FC746:       Call 0.Method_Me8 (False, 1, var_1F4)
  loc_18FC750:       Set var_D8 = Nothing
  loc_18FC756:     Else
  loc_18FC761:       If Not (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_18FC76F:         If (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_18FC772:         End If
  loc_18FC774:         Close 1
  loc_18FC77D:         Open "C:\reptmp\NCBILL_C.TXT" For Output As 1 Len = &HFF
  loc_18FC784:         var_B8.MoveFirst
  loc_18FC789:         ' Referenced from:   18FD227
  loc_18FC798:         If Not(var_B8.EOF) Then
  loc_18FC79D:           var_96 = 0
  loc_18FC7B1:           If (var_96 = 0) Then
  loc_18FC7B6:             Print 1
  loc_18FC7EA:             var_C4 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_18FC831:             Call Proc_333_94_10AAF48(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14, 1, var_96), "D", &H28, var_17C)
  loc_18FC83B:             Print 1, var_17C
  loc_18FC879:             Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("* NC Bill *", &H14, var_280), "D", &H28)
  loc_18FC883:             Print 1, var_15C
  loc_18FC89B:             Print 1
  loc_18FC8A3:             Print 1
  loc_18FC8DC:             Proc_6_39_E7D3A0(var_154, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_18FC8FE:             var_124 = (Chr(&HF) + "V No.     :   ")
  loc_18FC908:             var_1C4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(CStr(var_154), &HA, var_15C)))
  loc_18FC90E:             Print 1, CVar(CStr(Format(var_E4, var_154)))
  loc_18FC9C0:             var_124 = (Chr(&HF) + "Date.     :   ")
  loc_18FC9CA:             var_1B4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC)))
  loc_18FC9D3:             var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))), &HA, Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4))) + " ")
  loc_18FC9DD:             var_204 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_18FC9E3:             Print 1, "0"
  loc_18FCA38:             var_104 = var_B8.Fields.Item("Remarks")
  loc_18FCA75:             var_124 = (Chr(&HF) + "Remarks :   ")
  loc_18FCA7F:             var_1B4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32)))
  loc_18FCA86:             var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32))) + Chr(&H12))
  loc_18FCA8C:             Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_18FCAC5:             Set var_E8 = Me.Label1
  loc_18FCACB:             Call 0.Method_Proc_333_75_18FE0100 (2, var_104)
  loc_18FCB60:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_18FCB69:             var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))) + ":   ")
  loc_18FCB70:             var_224 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_18FCB73:             var_234 = (Chr(&H12) + var_224)
  loc_18FCB79:             Print 1, Space(1)
  loc_18FCBC4:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FCBCA:             Print 1, CVar(var_104)
  loc_18FCBD7:           End If
  loc_18FCBFD:           var_134 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_18FCC17:           var_1B4 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_104)))))
  loc_18FCC23:           var_1C4 = Space(3)
  loc_18FCC2B:           var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_104))))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))) + var_1C4)
  loc_18FCC45:           var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_18FCC59:           var_224 = ("000" + Space(3))
  loc_18FCC73:           var_248 = (var_224 + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_18FCCB9:           var_124 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_18FCCBF:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_18FCCE2:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FCCE8:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_18FCCFB:           var_96 = (var_96 + 4)
  loc_18FCD01:           var_BC.MoveFirst
  loc_18FCD06:           ' Referenced from:   18FD00D
  loc_18FCD15:           If Not(var_BC.EOF) Then
  loc_18FCD65:             Proc_6_39_E7D3A0(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_18FCDB0:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Amount", 7)), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_18FCDFB:             Proc_6_39_E7D3A0(var_304, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_18FCE26:             Proc_6_39_E7D3A0(var_33C, CVar(var_BC.Fields.Item("Rate")), 1)
  loc_18FCE76:             var_124 = Space(3)
  loc_18FCE7E:             var_154 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + var_124)
  loc_18FCE94:             var_204 = CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("ItemName"))))))) 'String
  loc_18FCE97:             var_214 = (1 + var_204)
  loc_18FCEAB:             var_234 = (Space(3) + Space(3))
  loc_18FCEC1:             var_2B4 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", &HA)))) 'String
  loc_18FCEC4:             var_2C4 = (&H12 + var_2B4)
  loc_18FCED8:             var_2E4 = (Format(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_18FCEF1:             var_3C4 = (var_2E4 + CVar(Proc_6_52_EAE084(CStr(Format((var_304 * var_33C), "0.00")), &HA)))
  loc_18FCF7D:             Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_18FCFAB:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_18FCFB7:             var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))))
  loc_18FCFBC:             var_E4 = CSng(var_1C4)
  loc_18FCFE9:             var_124 = (Chr(&HF) + CVar(CStr(Format((var_33C * (var_304 * var_33C)), "0.00"))))
  loc_18FCFEF:             Print 1, var_124
  loc_18FD002:             var_96 = (var_96 + 1)
  loc_18FD008:             var_BC.MoveNext
  loc_18FD00D:             GoTo loc_18FCD06
  loc_18FD010:           End If
  loc_18FD026:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FD02C:           Print 1, var_124
  loc_18FD03E:           Print 1, vbNullString
  loc_18FD0C4:           var_134 = (Chr(&HF) + Space(&H25))
  loc_18FD0CE:           var_1B4 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8)))
  loc_18FD0D8:           var_224 = ((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_18FD0DE:           Print 1, Space(3)
  loc_18FD10F:           Print 1, vbNullString
  loc_18FD169:           var_124 = (Chr(&HF) + "Waiter Name  :   ")
  loc_18FD173:           var_1B4 = (Space(&H25) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_18FD179:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))))
  loc_18FD19A:           Print 1
  loc_18FD1B5:           var_124 = (Chr(&HF) + "** ")
  loc_18FD1BF:           var_134 = (Space(&H25) + CVar(MemVar_1F95220))
  loc_18FD1C8:           var_154 = (CVar(var_B8.Fields.Item("WaiterName")) + " **")
  loc_18FD1CE:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14))
  loc_18FD1E2:           var_B8.MoveNext
  loc_18FD1E9:           Print 1
  loc_18FD1F1:           Print 1
  loc_18FD1F9:           Print 1
  loc_18FD201:           Print 1
  loc_18FD209:           Print 1
  loc_18FD211:           Print 1
  loc_18FD219:           Print 1
  loc_18FD221:           Print 1
  loc_18FD227:           GoTo loc_18FC789
  loc_18FD22A:         End If
  loc_18FD22C:         Close 1
  loc_18FD236:         If (var_D4 <> vbNullString) Then
  loc_18FD240:           Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FD250:           Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & var_D4
  loc_18FD25C:         Else
  loc_18FD263:           Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FD273:           Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & MemVar_1F953B8
  loc_18FD27C:         End If
  loc_18FD27E:         Close 1
  loc_18FD288:         If (MemVar_1F953BC = "Y") Then
  loc_18FD2A4:           var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.PIF", 0)) 'Variant
  loc_18FD2AE:         Else
  loc_18FD2C7:           var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.BAT", 0)) 'Variant
  loc_18FD2CE:         End If
  loc_18FD2D1:       Else
  loc_18FD2DC:         If (var_174 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_18FD2E1:           Close 1
  loc_18FD2EA:           Open "C:\reptmp\NCBILL_C.TXT" For Output As 1 Len = &HFF
  loc_18FD2F1:           var_B8.MoveFirst
  loc_18FD2F6:           ' Referenced from:     18FDEB5
  loc_18FD305:           If Not(var_B8.EOF) Then
  loc_18FD315:             var_94 = "* NC BILL *"
  loc_18FD346:             var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_18FD355:             If (0 = 0) Then
  loc_18FD35A:               Print 1
  loc_18FD389:               var_1B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_18FD3CC:               var_26C = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_18FD3F6:               var_1E4 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))))
  loc_18FD3FD:               var_224 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_18FD404:               var_2C4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_18FD40B:               var_2E4 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_18FD411:               Print 1, var_2E4
  loc_18FD45F:               var_154 = (42 - Len(Trim(var_94)))
  loc_18FD492:               var_224 = (42 - Len(Trim(var_94)))
  loc_18FD4BC:               var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_18FD4C6:               var_1E4 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))) + CVar(var_94))
  loc_18FD4CD:               var_25C = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_18FD4D4:               var_294 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_18FD4DA:               Print 1, ("0.00" / 2)
  loc_18FD4F9:               var_96 = &H12
  loc_18FD4FE:               Print 1
  loc_18FD506:               Print 1
  loc_18FD53F:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")), var_96, 1)
  loc_18FD56E:               var_124 = (Chr(&HF) + "TOKEN No.   :     ")
  loc_18FD578:               var_1C4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)))
  loc_18FD57F:               var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_18FD585:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_18FD648:               var_124 = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_18FD652:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_96), &HC)))
  loc_18FD65B:               var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + " ")
  loc_18FD665:               var_204 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_18FD66C:               var_224 = (Trim(var_94) + Chr(&H12))
  loc_18FD672:               Print 1, Space(3)
  loc_18FD6CB:               var_104 = var_B8.Fields.Item("Remarks")
  loc_18FD708:               var_124 = (Chr(&HF) + "Remarks :     ")
  loc_18FD712:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H20)))
  loc_18FD719:               var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + Chr(&H12))
  loc_18FD71F:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_18FD758:               Set var_E8 = Me.Label1
  loc_18FD75E:               Call 0.Method_Proc_333_75_18FE0100 (2, var_104)
  loc_18FD800:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_18FD809:               var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + ":     ")
  loc_18FD810:               var_224 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_18FD813:               var_234 = (Chr(&H12) + var_224)
  loc_18FD81A:               var_25C = ((Space(3) / 2) + Chr(&H12))
  loc_18FD820:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_18FD87C:               var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FD883:               var_154 = (CVar(var_104) + Chr(&H12))
  loc_18FD889:               Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))
  loc_18FD89A:             End If
  loc_18FD8C0:             var_134 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_18FD8DA:             var_1B4 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))
  loc_18FD8E6:             var_1C4 = Space(3)
  loc_18FD8EE:             var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + var_1C4)
  loc_18FD908:             var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_18FD951:             var_124 = (Chr(&HF) + CVar(CStr("000")))
  loc_18FD958:             var_154 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_18FD95E:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_18FD992:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FD999:             var_154 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_18FD99F:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_18FD9B6:             var_96 = (var_96 + 4)
  loc_18FD9BC:             var_BC.MoveFirst
  loc_18FD9C1:             ' Referenced from:     18FDC13
  loc_18FD9D0:             If Not(var_BC.EOF) Then
  loc_18FDA20:               Proc_6_39_E7D3A0(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_18FDA6B:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_18FDAAD:               var_124 = Space(3)
  loc_18FDAB5:               var_154 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + var_124)
  loc_18FDACE:               var_214 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))))
  loc_18FDAE2:               var_234 = (Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000") + Space(3))
  loc_18FDAFB:               var_2C4 = (var_96 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_18FDB6B:               Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_18FDB99:               Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_18FDBA5:               var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))))
  loc_18FDBAA:               var_E4 = CSng(var_1C4)
  loc_18FDBE4:               var_124 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_18FDBEB:               var_154 = (var_124 + Chr(&H12))
  loc_18FDBF1:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_18FDC08:               var_96 = (var_96 + 1)
  loc_18FDC0E:               var_BC.MoveNext
  loc_18FDC13:               GoTo loc_18FD9C1
  loc_18FDC16:             End If
  loc_18FDC39:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FDC40:             var_154 = (var_124 + Chr(&H12))
  loc_18FDC46:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_18FDCCD:             var_134 = (Chr(&HF) + CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)))
  loc_18FDCD7:             var_204 = (Chr(&H12) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_18FDCDD:             Print 1, CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(Format(var_E4, "0.00"))), "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))))
  loc_18FDD0A:             Print 1, vbNullString
  loc_18FDD71:             var_124 = (Chr(&HF) + "Waiter Name  :     ")
  loc_18FDD7B:             var_1B4 = (CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_18FDD82:             var_1D4 = (Format(var_E4, "0.00") + Chr(&H12))
  loc_18FDD88:             Print 1, Trim(CVar(CStr(Format(var_E4, "0.00"))))
  loc_18FDDD0:             var_1B4 = Chr(&H12)
  loc_18FDDDD:             var_124 = (Chr(&HF) + "***  ")
  loc_18FDDF0:             var_1C4 = ("  ***" + var_1B4)
  loc_18FDDFA:             Print 1, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_CC) & Chr(&H12)
  loc_18FDE13:             Print 1
  loc_18FDE2E:             var_124 = (Chr(&HF) + "** ")
  loc_18FDE38:             var_134 = (CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) + CVar(MemVar_1F95220))
  loc_18FDE41:             var_154 = (Trim(var_CC) + " **")
  loc_18FDE47:             Print 1, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_CC)
  loc_18FDE5B:             var_B8.MoveNext
  loc_18FDE62:             Print 1
  loc_18FDE6A:             Print 1
  loc_18FDE72:             Print 1
  loc_18FDE7A:             Print 1
  loc_18FDEA0:             var_134 = (Chr(&H1B) + Chr(&H6D))
  loc_18FDEA6:             Print 1, Trim(var_CC)
  loc_18FDEB5:             GoTo loc_18FD2F6
  loc_18FDEB8:           End If
  loc_18FDEBA:           Close 1
  loc_18FDEC4:           If (var_D4 <> vbNullString) Then
  loc_18FDECE:             Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FDEDE:             Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & var_D4
  loc_18FDEEA:           Else
  loc_18FDEF1:             Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FDF01:             Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & MemVar_1F953B8
  loc_18FDF0A:           End If
  loc_18FDF0C:           Close 1
  loc_18FDF16:           If (MemVar_1F953BC = "Y") Then
  loc_18FDF32:             var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.PIF", 0)) 'Variant
  loc_18FDF3C:           Else
  loc_18FDF55:             var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.BAT", 0)) 'Variant
  loc_18FDF5C:           End If
  loc_18FDF5C:         End If
  loc_18FDF5C:       End If
  loc_18FDF5C:     End If
  loc_18FDF5F:   Else
  loc_18FDFA9:     MsgBox("Please Check Printer Setting of " & var_C0.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_CC), var_1B4, Chr(&H12))
  loc_18FDFC4:   End If
  loc_18FDFC7:   var_C0.MoveNext
  loc_18FDFCC:   GoTo loc_18FB884
  loc_18FDFCF: End If
  loc_18FDFD4: Set var_B8 = Nothing
  loc_18FDFDC: Set var_BC = Nothing
  loc_18FDFE4: Set var_C0 = Nothing
  loc_18FDFEC: Set var_D0 = Nothing
  loc_18FDFF4: Set var_D8 = Nothing
  loc_18FDFFC: Proc_333_75_18FE010 = &HFF
  loc_18FE002: ' Referenced from: 18FB5D8
  loc_18FE002: Proc_6_60_E63754(var_96)
  loc_18FE007: Proc_333_75_18FE010 = var_E4
End Sub

Public Sub Proc_333_76_1285370
  'Data Table: 58F144
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_F0 As Variant
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_9A As Integer
  Dim var_120 As Variant
  Dim var_144 As Variant
  Dim var_110 As Variant
  Dim Me As Recordset15
  loc_1284DBC: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(0)
  loc_1284DC6: False.Visible = 
  loc_1284DDB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(0)
  loc_1284DE5: False.Visible = 
  loc_1284DFD: For var_F4 = 1 To CInt(Me.UBound): var_9E = var_F4 'Integer
  loc_1284E12:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9E)
  loc_1284E1C:   False.Visible = 1
  loc_1284E2D:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9E)
  loc_1284E43:   Me.Global.Unload 
  loc_1284E51: Next var_F4 'Integer
  loc_1284E67: For var_FC = 1 To CInt(Me.UBound): var_9E = var_FC 'Integer
  loc_1284E7C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9E)
  loc_1284E86:   False.Visible = 1
  loc_1284E97:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9E)
  loc_1284EAD:   Me.Global.Unload 
  loc_1284EBB: Next var_FC 'Integer
  loc_1284ECE: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_1284ED5: Proc_6_39_E7D3A0(var_110)
  loc_1284EEC: If (var_110 > 0) Then
  loc_1284EF5:   var_96 = (arg_18 + 1)
  loc_1284EFA:   var_98 = 0
  loc_1284EFF:   var_9A = 0
  loc_1284F15:   var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_1284F1C:   Proc_6_39_E7D3A0(var_110, var_F0, var_9C, 1)
  loc_1284F2C:   For var_124 = var_98 To CInt(var_110): var_9A = var_124 'Integer
  loc_1284F3C:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284F52:     Me.Global.Load var_98
  loc_1284F71:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_1284F7A:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_1284F81:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(0)
  loc_1284F97:       var_D0 = CVar((var_9C - 1)) 'Integer
  loc_1284F9E:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(False)
  loc_1284FAE:       var_144 = (var_F0 + var_96.top.height)
  loc_1284FBD:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284FC7:       var_144.top = 
  loc_1284FE0:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_1284FE7:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(0)
  loc_1285002:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_128500C:       .left.left = 
  loc_1285027:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1285031:       True.Visible = 
  loc_128506E:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1285078:       CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")))).CAPTION = 
  loc_12850BE:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_12850C8:       CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")))).Tag = 
  loc_12850E3:       If (var_9C = (arg_18 * arg_10)) Then
  loc_12850F8:         var_94 = CVar(Me.Recordset15.AbsolutePosition) 'Variant
  loc_12850FC:         Exit For
  loc_12850FF:       End If
  loc_1285102:     Else
  loc_128510D:       If ((var_9C Mod var_96) = var_98) Then
  loc_1285117:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_128511E:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(CVar(Me.Recordset15.AbsolutePosition))
  loc_1285128:         var_120 = .left
  loc_1285135:         var_D0 = CVar((var_9C - arg_18)) 'Integer
  loc_128513C:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(False)
  loc_128514C:         var_144 = ( + var_120.width)
  loc_128515B:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1285165:         var_144.left = 
  loc_128517F:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_1285186:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(CVar(Me.Recordset15.AbsolutePosition))
  loc_12851A1:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_12851AB:         .top.top = 
  loc_12851C6:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_12851D0:         True.Visible = 
  loc_128520D:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1285217:         CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")))).CAPTION = 
  loc_128524F:         var_110 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")))) 'String
  loc_128525D:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1285267:         var_110.Tag = 
  loc_128527D:         var_9A = (var_9A + 1)
  loc_1285287:         var_98 = (var_96 - var_9A)
  loc_128528A:       End If
  loc_128528A:     End If
  loc_128528D:     Me.MoveNext
  loc_12852A6:     If (Me.AbsolutePosition = -3) Then
  loc_12852A9:       GoTo loc_12852B4
  loc_12852AC:     End If
  loc_12852AF:   Next var_124 'Integer
  loc_12852B4:   ' Referenced from: 12852A9
  loc_12852B4:   ' Referenced from: 12850FC
  loc_12852B4: End If
  loc_12852D4: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_12852DB: Proc_6_39_E7D3A0(var_110)
  loc_12852FA: Call Proc_333_78_E61848(Me.SSPPrevious, CInt(Me.Recordset15.AbsolutePosition), CInt(var_110))
  loc_1285336: Proc_6_39_E7D3A0(var_110, CVar(Me.Recordset15.RecordCount))
  loc_1285355: Call Proc_333_77_E55F20(Me.SSPNext, CInt(Me.AbsolutePosition), CInt(var_110))
  loc_128536A: Proc_333_76_1285370 = var_120
End Sub

Public Sub Proc_333_77_E55F20
  'Data Table: 58F144
  loc_E55EFC: If ((CLng(arg_10) = -3) Or ((arg_14 Mod CInt(&H10)) = 0)) Then
  loc_E55F07:   Me.Enabled = False
  loc_E55F0E: Else
  loc_E55F15:   Me.Enabled = True
  loc_E55F19: End If
  loc_E55F19: Proc_333_77_E55F20 = 
End Sub

Public Sub Proc_333_78_E61848
  'Data Table: 58F144
  loc_E61825: If (((arg_10 = CInt(&H10)) Or (CLng(arg_10) = -1)) Or ((CLng(arg_10) = -3) And (arg_14 < CInt(&H10)))) Then
  loc_E61830:   Me.Enabled = False
  loc_E61837: Else
  loc_E6183E:   Me.Enabled = True
  loc_E61842: End If
  loc_E61842: Proc_333_78_E61848 = 
End Sub

Public Sub Proc_333_79_EA5A40
  'Data Table: 58F144
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_EA59D3: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EA59DB: var_C8 = CVar(CLng(0)) 'Long
  loc_EA5A0E: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_EA5A11:   Exit Sub
  loc_EA5A12: End If
  loc_EA5A22: Me.FrameQty.ZOrder 0
  loc_EA5A37: Me.TxtQty.Text = vbNullString
  loc_EA5A3F: Exit Sub
End Sub

Public Sub Proc_333_80_F110E8(arg_C) 'F110E8
  'Data Table: 58F144
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F11017: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F11040: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F11049: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F11079: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F1108E: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F110A8: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F110BD: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F110DF: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F110E4: Exit Sub
End Sub

Public Sub Proc_333_81_1BB8F5C
  'Data Table: 58F144
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_140 As String
  Dim unk_58F167 As Connection15
  Dim var_FC As Recordset15
  Dim var_164 As Variant
  Dim var_11C As Variant
  Dim Me As Recordset15
  Dim var_16C As Variant
  Dim var_160 As Variant
  Dim var_17C As Variant
  Dim var_180 As String
  Dim var_184 As String
  Dim var_D4 As Recordset15
  Dim var_188 As Variant
  Dim var_B8 As Recordset15
  Dim var_C0 As Recordset15
  Dim var_BC As Recordset15
  Dim var_96 As Integer
  Dim var_98 As Integer
  Dim var_198 As Variant
  Dim var_1F0 As Variant
  Dim var_200 As Variant
  Dim var_278 As Variant
  Dim var_150 As Variant
  Dim var_300 As String
  Dim var_304 As String
  Dim var_1DC As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_220 As Variant
  Dim var_250 As Variant
  Dim var_348 As Variant
  Dim var_358 As Variant
  Dim var_E4 As Recordset15
  Dim var_1E0 As Field20
  Dim var_2C8 As Variant
  Dim var_2D8 As Variant
  Dim var_168 As Long
  Dim var_2FC As String
  Dim var_240 As Variant
  Dim var_2F8 As Variant
  Dim var_334 As Variant
  Dim var_2E8 As Variant
  loc_1BB3A84: On Error Goto loc_1BB8F4E
  loc_1BB3AA4: Proc_6_17_EAAE40(var_11C, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1BB3ABA: unk_58F167.Execute CStr(var_160 & var_11C), -1, var_164
  loc_1BB3AC5: Set var_FC = var_164
  loc_1BB3AEB: If (var_FC.RecordCount > 0) Then
  loc_1BB3B25:   var_EC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KOTHeader1"))))))
  loc_1BB3B6B:   var_F0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KOTHeader2"))))))
  loc_1BB3BB1:   var_F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KOTHeader3"))))))
  loc_1BB3BF7:   var_F8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KOTHeader4"))))))
  loc_1BB3C06: End If
  loc_1BB3C09: MemVar_1F953C4 = "N"
  loc_1BB3C10: MemVar_1F953C8 = "N"
  loc_1BB3C17: MemVar_1F953CC = "K"
  loc_1BB3C22: var_140 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCTOKEN,K.Remarks , K.ContraDocId, D.ShortName " & "From ((TOKEN K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode) "
  loc_1BB3C67: var_8C = CStr(CVar(var_140 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1BB3C86: var_13C = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BB3CA6: var_16C = Me.Fields.Item("SearchCode")
  loc_1BB3CB6: var_160 = var_13C & var_16C.Value 
  loc_1BB3CBF: var_17C = var_160 & "'" 
  loc_1BB3CC4: var_90 = CStr(var_17C)
  loc_1BB3CE1: If (var_8C = vbNullString) Then
  loc_1BB3CE9:   Proc_333_81_1BB8F5C = 0
  loc_1BB3CEF: End If
  loc_1BB3CF7: If (var_90 = vbNullString) Then
  loc_1BB3CFF:   Proc_333_81_1BB8F5C = 0
  loc_1BB3D05: End If
  loc_1BB3D23: Set var_164 = Me.Txt
  loc_1BB3D29: Call 0.Method_Proc_333_81_1BB8F5C0 (CInt(4), var_16C, var_140, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_1BB3D31: var_11C = var_16C.Text
  loc_1BB3D3A: var_180 = -1 & var_140
  loc_1BB3D4A: unk_58F167.Execute var_180 & "' AND CONTRADOCID IS NULL", var_188, 
  loc_1BB3D81: If (var_188.RecordCount = 1) Then
  loc_1BB3D87:   var_CC = "New Order"
  loc_1BB3D8D: Else
  loc_1BB3D94:   Set var_164 = Me.LblState
  loc_1BB3DA2:   var_CC = var_164.Caption
  loc_1BB3DA8: End If
  loc_1BB3DBE: unk_58F167.Execute var_8C, var_11C, -1
  loc_1BB3DC9: Set var_B8 = var_164
  loc_1BB3DE8: unk_58F167.Execute "SELECT KOTPrinting FROM Enviro", var_11C, -1
  loc_1BB3DF3: Set var_D4 = var_164
  loc_1BB3E02: var_12C = 0
  loc_1BB3E32: unk_58F167.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_11C, -1
  loc_1BB3E3A: var_164 = var_164.Fields
  loc_1BB3E42: var_12C = var_16C.Item(var_16C)
  loc_1BB3E4A: var_188 = var_188.Value
  loc_1BB3E57: var_D8 = Proc_6_38_E69628(var_13C, var_13C)
  loc_1BB3E80: var_164 = var_B8.Fields
  loc_1BB3EAA: If (Proc_6_38_E69628(CVar(var_164.Item("ContraDocId")), var_164) <> vbNullString) Then
  loc_1BB3EC0:   var_11C = "Sale Bill Already Generated !!"
  loc_1BB3EC6:   MsgBox(var_11C, &H40, var_13C, var_160, var_17C)
  loc_1BB3EDB:   Proc_333_81_1BB8F5C = 0
  loc_1BB3EE1: End If
  loc_1BB3EF8: var_140 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & LocalRestCode
  loc_1BB3F08: unk_58F167.Execute var_140 & "'", var_11C, -1
  loc_1BB3F13: Set var_C0 = var_164
  loc_1BB3F23: ' Referenced from: 1BB8F28
  loc_1BB3F32: If Not(var_C0.EOF) Then
  loc_1BB3F3C:   var_13C = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BB3F54:   var_164 = Me.Fields
  loc_1BB3F64:   var_11C = var_164.Item("SearchCode").Value
  loc_1BB3FA5:   unk_58F167.Execute CStr(var_13C & var_11C & "'"), var_11C, -1
  loc_1BB3FB0:   Set var_BC = var_164
  loc_1BB3FBF:   var_168 = var_BC.RecordCount
  loc_1BB3FCD:   If (var_168 > 0) Then
  loc_1BB3FDF:     var_164 = var_C0.Fields
  loc_1BB3FFE:     var_1AC = Trim(CVar(var_164.Item("PrintType"))) 'Variant
  loc_1BB4013:     If (var_1AC = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1BB4023:       Call Proc_333_82_EFA504(New, var_164, var_164)
  loc_1BB402B:       Set var_E0 = var_164
  loc_1BB4031:       Me.Recordset15.MoveFirst
  loc_1BB4036:       ' Referenced from: 1BB4DC4
  loc_1BB4045:       If Not(var_B8.EOF) Then
  loc_1BB404A:         var_96 = 0
  loc_1BB4061:         var_164 = var_B8.Fields
  loc_1BB4172:         var_2F8 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_164.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_164) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB417B:         var_94 = CStr(var_2F8)
  loc_1BB41BF:         If (var_96 = 0) Then
  loc_1BB41C5:           var_184 = vbNullString
  loc_1BB41E0:           Call Proc_333_83_F145C8(var_E0, vbNullString, vbNullString)
  loc_1BB421C:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1BB4253:           var_13C = CVar(Me.LblRest.Caption) 'String
  loc_1BB4256:           var_160 = (Space(1) + var_13C)
  loc_1BB426B:           Call Proc_333_83_F145C8(var_E0, vbNullString, CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.LblRest.Item("ShortName")), 1, var_96)))))
  loc_1BB429D:           Call Proc_333_83_F145C8(var_E0, vbNullString, var_94, vbNullString)
  loc_1BB42CC:           Call Proc_333_83_F145C8(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1BB4300:           Proc_6_39_E7D3A0(var_13C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB4334:           var_184 = vbNullString
  loc_1BB433D:           Call Proc_333_83_F145C8(var_E0, var_184, " TOKEN No.   : " & Proc_6_45_EADFB8(CStr(var_13C), &HA, vbNullString))
  loc_1BB43F9:           var_304 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")), " TOKEN Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1BB440D:           Call Proc_333_83_F145C8(var_E0, vbNullString, " TOKEN Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_304)
  loc_1BB4454:           var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB449F:           Call Proc_333_83_F145C8(var_E0, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C), vbNullString), &H1E))
  loc_1BB44D1:           Set var_164 = Me.Label1
  loc_1BB44D7:           Call 0.Method_Proc_333_81_1BB8F5C0 (2, var_16C)
  loc_1BB4542:           var_300 = vbNullString
  loc_1BB4551:           var_1BC = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB455A:           var_1CC = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1BB4561:           var_1F0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1BB4564:           var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3)) + var_1F0)
  loc_1BB4579:           Call Proc_333_83_F145C8(var_E0, vbNullString, CStr("* NC LOT *"))
  loc_1BB45B0:           var_180 = vbNullString
  loc_1BB45C5:           Call Proc_333_83_F145C8(var_E0, vbNullString, var_C4)
  loc_1BB45D1:         End If
  loc_1BB45F7:         var_160 = (var_180 + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))))
  loc_1BB460B:         var_1BC = (Trim(CVar(var_16C)) + Space(1))
  loc_1BB4622:         var_1CC = CVar(Proc_6_52_EAE084("Qty", 3, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1BB4625:         var_1DC = (var_300 + var_1CC)
  loc_1BB462A:         var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BB4648:         var_180 = vbNullString
  loc_1BB465D:         Call Proc_333_83_F145C8(var_E0, vbNullString, var_B0)
  loc_1BB466C:         var_180 = vbNullString
  loc_1BB4681:         Call Proc_333_83_F145C8(var_E0, vbNullString, var_C4)
  loc_1BB4693:         var_96 = (var_96 + 4)
  loc_1BB4699:         var_BC.MoveFirst
  loc_1BB469E:         ' Referenced from: 1BB4A1F
  loc_1BB46AD:         If Not(var_BC.EOF) Then
  loc_1BB46E6:           var_188 = var_BC.Fields
  loc_1BB46FD:           Proc_6_39_E7D3A0(var_1F0, CVar(var_188.Item("qty")), &H12)
  loc_1BB4728:           var_198 = "Cancel"
  loc_1BB4762:           var_200 = "Y"
  loc_1BB47A0:           var_17C = (1 + CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1BB47B4:           var_1CC = (Space(1) + Space(1))
  loc_1BB47CD:           var_278 = (var_180 + CVar(Proc_6_52_EAE084(CStr(Format(var_1F0, "0")), 3, var_1CC)))
  loc_1BB47E3:           var_348 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item(var_198).Value = var_200), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCTOKEN")))) 'String
  loc_1BB47E6:           var_358 = (var_180 + var_348)
  loc_1BB4845:           Call Proc_333_83_F145C8(var_E0, vbNullString, CStr(var_358))
  loc_1BB4857:           var_96 = (var_96 + 1)
  loc_1BB4893:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BB48C4:             var_300 = vbNullString
  loc_1BB48EB:             Call Proc_333_83_F145C8(var_E0, vbNullString, "(" & Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1BB490B:             var_96 = (var_96 + 1)
  loc_1BB490E:           End If
  loc_1BB4918:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BB4933:             Call Proc_333_83_F145C8(var_E0, vbNullString, var_C4, vbNullString)
  loc_1BB495D:             Call Proc_333_83_F145C8(var_E0, vbNullString, " Contd.", vbNullString)
  loc_1BB4971:             var_98 = (var_98 + 1)
  loc_1BB4991:             Call Proc_333_83_F145C8(var_E0, vbNullString, var_94, vbNullString, 0)
  loc_1BB49BA:             Call Proc_333_83_F145C8(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1BB49DE:             Call Proc_333_83_F145C8(var_E0, vbNullString, var_B0, vbNullString)
  loc_1BB4A02:             Call Proc_333_83_F145C8(var_E0, vbNullString, var_C4, vbNullString)
  loc_1BB4A14:             var_96 = (var_96 + 4)
  loc_1BB4A17:           End If
  loc_1BB4A1A:           var_BC.MoveNext
  loc_1BB4A1F:           GoTo loc_1BB469E
  loc_1BB4A22:         End If
  loc_1BB4A2C:         If (&H12 < (&H45 - var_AA)) Then
  loc_1BB4A2F:           ' Referenced from: 1BB4A71
  loc_1BB4A39:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BB4A5A:             Call Proc_333_83_F145C8(var_E0, vbNullString, vbNullString, vbNullString, &H12)
  loc_1BB4A6E:             var_96 = (var_96 + 1)
  loc_1BB4A71:             GoTo loc_1BB4A2F
  loc_1BB4A74:           End If
  loc_1BB4A74:         End If
  loc_1BB4A8C:         Call Proc_333_83_F145C8(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1BB4ADA:         var_300 = vbNullString
  loc_1BB4AFA:         Call Proc_333_83_F145C8(var_E0, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1BB4B55:         Call Proc_333_83_F145C8(var_E0, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1BB4BB4:         var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB4BC2:         unk_58F167.Execute CStr(var_160), Space(1), -1
  loc_1BB4C23:         If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB4C4D:           Call Proc_333_83_F145C8(var_E0, vbNullString, " ***  " & "Changed TOKEN" & "  ***", vbNullString)
  loc_1BB4C60:         Else
  loc_1BB4C6D:           var_12C = "Select Printed from TOKEN where docid='"
  loc_1BB4CA3:           var_150 = "'"
  loc_1BB4CB6:           unk_58F167.Execute CStr(var_12C & Me.Fields.Item("SearchCode").Value & var_150), Space(1), -1
  loc_1BB4CDE:           var_10C = 0
  loc_1BB4D14:           If (Proc_6_38_E69628(CVar(var_188.Fields.Item(var_10C)), var_188, var_188) = "Y") Then
  loc_1BB4D3E:             Call Proc_333_83_F145C8(var_E0, vbNullString, " ***  " & "DUPLICATE TOKEN" & "  ***", vbNullString)
  loc_1BB4D51:           Else
  loc_1BB4D6F:             Call Proc_333_83_F145C8(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1BB4D7D:           End If
  loc_1BB4D7D:         End If
  loc_1BB4D82:         Set var_E4 = Nothing
  loc_1BB4DAC:         Call Proc_333_83_F145C8(var_E0, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1BB4DBF:         var_B8.MoveNext
  loc_1BB4DC4:         GoTo loc_1BB4036
  loc_1BB4DC7:       End If
  loc_1BB4DCA:       var_DC = "WinKOTPrint"
  loc_1BB4DF1:       Set var_164 = var_E0 
  loc_1BB4DF8:       CreateFieldDefFile(var_164, MemVar_1F950B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1BB4E3A:       Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_DC & ".RPT", var_10C, var_164)
  loc_1BB4E45:       MemVar_1F951E8 = var_164
  loc_1BB4E6E:       Call 0.Method_arg_64 (var_164, CVar(var_164), var_12C, var_150)
  loc_1BB4E76:       Call 0.Method_arg_2C (var_300, var_300)
  loc_1BB4E86:       If (var_D8 <> vbNullString) Then
  loc_1BB4EA7:         If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1BB4EAD:           Call Proc_333_80_F110E8(var_D8)
  loc_1BB4EB2:         End If
  loc_1BB4EB2:       End If
  loc_1BB4EBE:       var_12C = 1
  loc_1BB4ECF:       Call 0.Method_Me8 (False, var_12C, var_150)
  loc_1BB4ED9:       Set var_E0 = Nothing
  loc_1BB4EDF:     Else
  loc_1BB4EEA:       If (var_1AC = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1BB4EF0:         var_B8.MoveFirst
  loc_1BB4EF5:         ' Referenced from:   1BB5CC9
  loc_1BB4F04:         If Not(var_B8.EOF) Then
  loc_1BB4F0A:           var_10C = "ShortName"
  loc_1BB4F3A:           var_17C = 3
  loc_1BB4F69:           var_188 = var_B8.Fields
  loc_1BB4F71:           var_1E0 = var_188.Item("NCTOKEN")
  loc_1BB5013:           var_150 = "LAU"
  loc_1BB501D:           var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_10C)), "NCTOKEN"))), 1, var_17C)) = var_150) 'Variant
  loc_1BB5027:           var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E69628(CVar(var_1E0), (Proc_6_38_E69628(CVar(var_1E0), var_200) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN"))) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB5030:           var_94 = CStr(var_2F8)
  loc_1BB5071:           var_DC = "KOTPrint"
  loc_1BB5098:           Set var_164 = var_BC 
  loc_1BB509F:           CreateFieldDefFile(var_164, MemVar_1F950B4 & "\" & var_DC & ".ttx")
  loc_1BB50AB:           Set var_BC = var_164
  loc_1BB50E1:           Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_DC & ".RPT", var_10C, var_164)
  loc_1BB50EC:           MemVar_1F951E8 = var_164
  loc_1BB5115:           Call 0.Method_arg_64 (var_164, CVar(var_BC), var_12C)
  loc_1BB511D:           Call 0.Method_arg_2C (var_150, &HFF)
  loc_1BB512B:           Call 0.Method_arg_150 (var_164)
  loc_1BB5178:           var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB5186:           unk_58F167.Execute CStr(var_160), var_17C, -1
  loc_1BB51E7:           If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB51ED:             var_D0 = "Changed TOKEN"
  loc_1BB51F3:           Else
  loc_1BB5249:             unk_58F167.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB527D:             var_164 = var_188.Fields
  loc_1BB5285:             var_16C = var_164.Item(0)
  loc_1BB5296:             var_140 = Proc_6_38_E69628(CVar(var_16C), var_188)
  loc_1BB52A7:             If (var_140 = "Y") Then
  loc_1BB52AD:               var_D0 = "DUPLICATE TOKEN"
  loc_1BB52B3:             Else
  loc_1BB52B6:               var_D0 = vbNullString
  loc_1BB52B9:             End If
  loc_1BB52B9:           End If
  loc_1BB52BE:           Set var_E4 = Nothing
  loc_1BB52D2:           Call 0.Method_arg_90 (var_164, var_168, var_B2)
  loc_1BB52DA:           Call 0.Method_arg_24 (1)
  loc_1BB52E6:           For var_35C =  To CInt(var_168):   var_188 = var_35C 'Integer
  loc_1BB52FF:             Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB5307:             Call 0.Method_arg_20 (var_16C)
  loc_1BB530F:             Call 0.Method_arg_30 (var_140)
  loc_1BB5325:             var_36C = Ucase(CVar(var_140)) 'Variant
  loc_1BB5355:             If (var_36C = Ucase("comp_name")) Then
  loc_1BB5379:               Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB5381:               Call 0.Method_arg_20 (var_16C)
  loc_1BB5389:               Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1BB539F:             Else
  loc_1BB53C1:               If (var_36C = Ucase("comp_add1")) Then
  loc_1BB53E5:                 Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB53ED:                 Call 0.Method_arg_20 (var_16C)
  loc_1BB53F5:                 Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1BB540B:               Else
  loc_1BB542D:                 If (var_36C = Ucase("comp_pin")) Then
  loc_1BB5451:                   Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB5459:                   Call 0.Method_arg_20 (var_16C)
  loc_1BB5461:                   Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1BB5477:                 Else
  loc_1BB5499:                   If (var_36C = Ucase("comp_GSTIN")) Then
  loc_1BB54BD:                     Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB54C5:                     Call 0.Method_arg_20 (var_16C)
  loc_1BB54CD:                     Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1BB54E3:                   Else
  loc_1BB5505:                     If (var_36C = Ucase("RestName")) Then
  loc_1BB5512:                       Set var_164 = Me.LblRest
  loc_1BB553B:                       Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BB5543:                       Call 0.Method_arg_20 (var_188)
  loc_1BB554B:                       Call 0.Method_arg_38 ("'" & var_164.Caption & "'")
  loc_1BB5565:                     Else
  loc_1BB5587:                       If (var_36C = Ucase("mTitle")) Then
  loc_1BB55AB:                         Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB55B3:                         Call 0.Method_arg_20 (var_16C)
  loc_1BB55BB:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1BB55D1:                       Else
  loc_1BB55D9:                         var_11C = "Header1"
  loc_1BB55F3:                         If (var_36C = Ucase(var_11C)) Then
  loc_1BB5601:                           Proc_6_17_EAAE40(var_11C)
  loc_1BB561D:                           Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB5625:                           Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB562D:                           Call 0.Method_arg_38 (var_EC)
  loc_1BB5642:                         Else
  loc_1BB564A:                           var_11C = "Header2"
  loc_1BB5664:                           If (var_36C = Ucase(var_11C)) Then
  loc_1BB5672:                             Proc_6_17_EAAE40(var_11C)
  loc_1BB568E:                             Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB5696:                             Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB569E:                             Call 0.Method_arg_38 (var_F0)
  loc_1BB56B3:                           Else
  loc_1BB56BB:                             var_11C = "Header3"
  loc_1BB56D5:                             If (var_36C = Ucase(var_11C)) Then
  loc_1BB56E3:                               Proc_6_17_EAAE40(var_11C)
  loc_1BB56FF:                               Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB5707:                               Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB570F:                               Call 0.Method_arg_38 (var_F4)
  loc_1BB5724:                             Else
  loc_1BB572C:                               var_11C = "Header4"
  loc_1BB5746:                               If (var_36C = Ucase(var_11C)) Then
  loc_1BB5754:                                 Proc_6_17_EAAE40(var_11C)
  loc_1BB5770:                                 Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BB5778:                                 Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BB5780:                                 Call 0.Method_arg_38 (var_F8)
  loc_1BB5795:                               Else
  loc_1BB57A6:                                 var_13C = Ucase("KotNo")
  loc_1BB57B7:                                 If (var_36C = var_13C) Then
  loc_1BB57E5:                                   Proc_6_39_E7D3A0(var_13C, CVar(var_B8.Fields.Item("VNo")))
  loc_1BB57F1:                                   var_150 = "'"
  loc_1BB580E:                                   Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB5816:                                   Call 0.Method_arg_20 (var_1E0)
  loc_1BB581E:                                   Call 0.Method_arg_38 (CStr("'" & var_13C & var_150))
  loc_1BB583D:                                 Else
  loc_1BB585F:                                   If (var_36C = Ucase("KotDate")) Then
  loc_1BB58AB:                                     Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB58B3:                                     Call 0.Method_arg_20 (var_1E0)
  loc_1BB58BB:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1BB58D8:                                   Else
  loc_1BB58FA:                                     If (var_36C = Ucase("KotTime")) Then
  loc_1BB5946:                                       Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB594E:                                       Call 0.Method_arg_20 (var_1E0)
  loc_1BB5956:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1BB5973:                                     Else
  loc_1BB5995:                                       If (var_36C = Ucase("Remarks")) Then
  loc_1BB59B2:                                         var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB59E1:                                         Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB59E9:                                         Call 0.Method_arg_20 (var_1E0)
  loc_1BB59F1:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_16C)) & "'")
  loc_1BB5A0E:                                       Else
  loc_1BB5A30:                                         If (var_36C = Ucase("TableTitle")) Then
  loc_1BB5A41:                                           Set var_164 = Me.Label1
  loc_1BB5A47:                                           Call 0.Method_Proc_333_81_1BB8F5C0 (2, var_16C)
  loc_1BB5A7F:                                           Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB5A87:                                           Call 0.Method_arg_20 (var_1E0)
  loc_1BB5A8F:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_16C)) & "'"))
  loc_1BB5AAE:                                         Else
  loc_1BB5AD0:                                           If (var_36C = Ucase("TableNo")) Then
  loc_1BB5B1C:                                             Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB5B24:                                             Call 0.Method_arg_20 (var_1E0)
  loc_1BB5B2C:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1BB5B49:                                           Else
  loc_1BB5B6B:                                             If (var_36C = Ucase("Steward")) Then
  loc_1BB5B80:                                               var_164 = var_B8.Fields
  loc_1BB5B88:                                               var_16C = var_164.Item("WaiterName")
  loc_1BB5BB7:                                               Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BB5BBF:                                               Call 0.Method_arg_20 (var_1E0)
  loc_1BB5BC7:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_16C)) & "'")
  loc_1BB5BE4:                                             Else
  loc_1BB5C06:                                               If (var_36C = Ucase("KotStatus")) Then
  loc_1BB5C2A:                                                 Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB5C32:                                                 Call 0.Method_arg_20 (var_16C)
  loc_1BB5C3A:                                                 Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1BB5C50:                                               Else
  loc_1BB5C72:                                                 If (var_36C = Ucase("KotRemark")) Then
  loc_1BB5C96:                                                   Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BB5C9E:                                                   Call 0.Method_arg_20 (var_16C)
  loc_1BB5CA6:                                                   Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1BB5CB9:                                                 End If
  loc_1BB5CB9:                                               End If
  loc_1BB5CB9:                                             End If
  loc_1BB5CB9:                                           End If
  loc_1BB5CB9:                                         End If
  loc_1BB5CB9:                                       End If
  loc_1BB5CB9:                                     End If
  loc_1BB5CB9:                                   End If
  loc_1BB5CB9:                                 End If
  loc_1BB5CB9:                               End If
  loc_1BB5CB9:                             End If
  loc_1BB5CB9:                           End If
  loc_1BB5CB9:                         End If
  loc_1BB5CB9:                       End If
  loc_1BB5CB9:                     End If
  loc_1BB5CB9:                   End If
  loc_1BB5CB9:                 End If
  loc_1BB5CB9:               End If
  loc_1BB5CB9:             End If
  loc_1BB5CBC:           Next var_35C 'Integer
  loc_1BB5CC4:           var_B8.MoveNext
  loc_1BB5CC9:           GoTo loc_1BB4EF5
  loc_1BB5CCC:         End If
  loc_1BB5CD4:         If (var_D8 <> vbNullString) Then
  loc_1BB5CF5:           If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1BB5CFB:             Call Proc_333_80_F110E8(var_D8)
  loc_1BB5D00:           End If
  loc_1BB5D00:         End If
  loc_1BB5D1D:         Call 0.Method_Me8 (False, 1, var_150)
  loc_1BB5D25:       Else
  loc_1BB5D30:         If (var_1AC = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1BB5D35:           Close 1
  loc_1BB5D3E:           Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BB5D45:           var_B8.MoveFirst
  loc_1BB5D4A:           ' Referenced from:     1BB6DE2
  loc_1BB5D59:           If Not(var_B8.EOF) Then
  loc_1BB5D5E:             var_96 = 0
  loc_1BB5D99:             var_17C = 3
  loc_1BB5DBC:             var_198 = "NCTOKEN"
  loc_1BB5E39:             var_2FC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")))
  loc_1BB5E55:             var_180 = var_2FC
  loc_1BB5E7C:             var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_17C)) = "LAU") 'Variant
  loc_1BB5E86:             var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_198)), var_198) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_180 = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB5E8F:             var_94 = CStr(var_2F8)
  loc_1BB5ED3:             If (var_96 = 0) Then
  loc_1BB5ED8:               Print 1
  loc_1BB5F0C:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BB5F1D:               If (var_EC <> vbNullString) Then
  loc_1BB5F46:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BB5F4C:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB5F5E:               End If
  loc_1BB5F66:               If (var_F0 <> vbNullString) Then
  loc_1BB5F8F:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BB5F95:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB5FA7:               End If
  loc_1BB5FAF:               If (var_F4 <> vbNullString) Then
  loc_1BB5FD8:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1BB5FDE:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB5FF0:               End If
  loc_1BB5FF8:               If (var_F8 <> vbNullString) Then
  loc_1BB6021:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1BB6027:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB6039:               End If
  loc_1BB603B:               Print 1
  loc_1BB606B:               Call Proc_333_94_10AAF48(Me.LblRest.Caption, "D", &H28)
  loc_1BB6075:               Print 1, var_2FC
  loc_1BB609B:               Call Proc_333_94_10AAF48(var_94, "D", &H28)
  loc_1BB60A5:               Print 1, var_180
  loc_1BB60B9:               Print 1
  loc_1BB60C1:               Print 1
  loc_1BB60FA:               Proc_6_39_E7D3A0(var_17C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB611C:               var_13C = (Chr(&HF) + "TOKEN No.   :     ")
  loc_1BB6126:               var_1CC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_17C), &HA, Proc_6_45_EADFB8(CStr(var_17C), &HA, var_180))))
  loc_1BB612C:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C))
  loc_1BB61DE:               var_13C = (Chr(&HF) + "TOKEN Dt.   :     ")
  loc_1BB61E8:               var_1BC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC)))
  loc_1BB61F1:               var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC))), &HA, Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC))), &HA, var_180))) + " ")
  loc_1BB61FB:               var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BB6201:               Print 1, "* NC LOT *"
  loc_1BB6256:               var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB6293:               var_13C = (Chr(&HF) + "Remarks :     ")
  loc_1BB629D:               var_1BC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32)))
  loc_1BB62A4:               var_1DC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32))), &HA, Proc_6_38_E69628(CVar(var_16C)))) + Chr(&H12))
  loc_1BB62AA:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BB62E3:               Set var_164 = Me.Label1
  loc_1BB62E9:               Call 0.Method_Proc_333_81_1BB8F5C0 (2, var_16C)
  loc_1BB635A:               var_1BC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB6363:               var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA))), &HA, Proc_6_38_E69628(CVar(var_16C)))) + ":     ")
  loc_1BB636D:               var_220 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BB6373:               Print 1, "* NC LOT *"
  loc_1BB63B8:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB63BE:               Print 1, CVar(var_16C)
  loc_1BB63CB:             End If
  loc_1BB63F1:             var_160 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B)) + Space(1))
  loc_1BB640B:             var_1BC = (Trim(CVar(var_16C)) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1BB6410:             var_B0 = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6))), &HA, "Qty")))
  loc_1BB643D:             var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB6443:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B))
  loc_1BB6466:             var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB646C:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B))
  loc_1BB647F:             var_96 = (var_96 + 4)
  loc_1BB6485:             var_BC.MoveFirst
  loc_1BB648A:             ' Referenced from:     1BB69FB
  loc_1BB6499:             If Not(var_BC.EOF) Then
  loc_1BB64CA:               var_160 = Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ItemName")), &H12)))
  loc_1BB64D3:               var_E8 = CStr(var_160)
  loc_1BB6508:               Proc_6_39_E7D3A0(var_160, CVar(var_BC.Fields.Item("qty")))
  loc_1BB653F:               var_188 = var_BC.Fields
  loc_1BB65AB:               var_1DC = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_160, "0.00")), 6, Space(1))))
  loc_1BB65C1:               var_2C8 = CVar(Proc_6_52_EAE084(CStr(IIf((var_188.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, CVar(var_B8.Fields.Item("TableNo")))) 'String
  loc_1BB65C4:               var_2D8 = (1 + var_2C8)
  loc_1BB65C9:               var_C8 = CStr(IIf(("Qty" = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB65FB:               ' Referenced from:     1BB6800
  loc_1BB6605:               If (Len(var_E8) <> 0) Then
  loc_1BB6636:                 var_168 = InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0)
  loc_1BB666D:                 var_17C = CVar((InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0) - 1)) 'Long
  loc_1BB66C0:                 var_2FC = Proc_6_45_EADFB8(CStr(Mid(var_E8, 1, IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 27, "0.00"))), &H1B)
  loc_1BB66FC:                 var_13C = (Chr(&HF) + CVar(var_2FC & var_2FC & var_C8))
  loc_1BB6702:                 Print 1, Left(var_E8, &H1B)
  loc_1BB6715:                 var_96 = (var_96 + 1)
  loc_1BB671B:                 var_C8 = vbNullString
  loc_1BB6728:                 If (Len(var_E8) > &H1B) Then
  loc_1BB6759:                   var_168 = InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0)
  loc_1BB6781:                   var_180 = CStr(Left(var_E8, &H1B))
  loc_1BB6790:                   var_17C = CVar((InStrRev(var_180, " ", -1, 0) + 1)) 'Long
  loc_1BB67DA:                   var_E8 = CStr(Mid(var_E8, CLng(IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00")), CVar(Len(var_E8))))
  loc_1BB67FA:                 Else
  loc_1BB67FD:                   var_E8 = vbNullString
  loc_1BB6800:                 End If
  loc_1BB6800:                 GoTo loc_1BB65FB
  loc_1BB6803:               End If
  loc_1BB683C:               If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), var_168, &H12) <> vbNullString) Then
  loc_1BB687F:                 var_13C = (Chr(&HF) + "(")
  loc_1BB6889:                 var_1BC = (Left(var_E8, &H1B) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), var_168)))
  loc_1BB6892:                 var_1CC = (IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00") + ")")
  loc_1BB6898:                 Print 1, CVar(Len(var_E8))
  loc_1BB68B9:                 var_96 = (var_96 + 1)
  loc_1BB68BC:               End If
  loc_1BB68C6:               If (&H12 = (&H45 - var_AA)) Then
  loc_1BB68DF:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB68E5:                 Print 1, Left(var_E8, &H1B)
  loc_1BB68F7:                 Print 1, "Contd."
  loc_1BB690F:                 Print 1, Chr(&HC)
  loc_1BB691E:                 var_98 = (var_98 + 1)
  loc_1BB6934:                 Call Proc_333_95_11FFA94(1, 0, &H28, var_306)
  loc_1BB6953:                 Call Proc_333_94_10AAF48(var_94, "B", &H28, var_180, var_306)
  loc_1BB695D:                 Print 1, var_180
  loc_1BB696C:                 var_96 = &H12
  loc_1BB6985:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB698B:                 Print 1, Left(var_E8, &H1B)
  loc_1BB69AE:                 var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB69B4:                 Print 1, Left(var_E8, &H1B)
  loc_1BB69D7:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB69DD:                 Print 1, Left(var_E8, &H1B)
  loc_1BB69F0:                 var_96 = (var_96 + 4)
  loc_1BB69F3:               End If
  loc_1BB69F6:               var_BC.MoveNext
  loc_1BB69FB:               GoTo loc_1BB648A
  loc_1BB69FE:             End If
  loc_1BB6A08:             If (var_96 < (&H45 - var_AA)) Then
  loc_1BB6A0B:               ' Referenced from:     1BB6A2C
  loc_1BB6A15:               If (var_96 = (&H45 - var_AA)) Then
  loc_1BB6A1D:                 Print 1, vbNullString
  loc_1BB6A29:                 var_96 = (var_96 + 1)
  loc_1BB6A2C:                 GoTo loc_1BB6A0B
  loc_1BB6A2F:               End If
  loc_1BB6A2F:             End If
  loc_1BB6A45:             var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB6A4B:             Print 1, Left(var_E8, &H1B)
  loc_1BB6AAC:             var_13C = (Chr(&HF) + "Waiter Name  :     ")
  loc_1BB6AB3:             var_17C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)) 'String
  loc_1BB6AB6:             var_1BC = (Left(var_E8, &H1B) + var_17C)
  loc_1BB6ABC:             Print 1, IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00")
  loc_1BB6B00:             var_13C = (Chr(&HF) + "***  ")
  loc_1BB6B07:             var_17C = Left(var_E8, &H1B) & Trim(var_CC) 
  loc_1BB6B16:             Print 1, var_17C & "  ***"
  loc_1BB6B71:             var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB6B7F:             unk_58F167.Execute CStr(var_160), var_17C, -1
  loc_1BB6BE0:             If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB6C11:               Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("Changed TOKEN", &H14, var_188), "D", &H28, var_2FC)
  loc_1BB6C1B:               Print 1, var_2FC
  loc_1BB6C31:             Else
  loc_1BB6C87:               unk_58F167.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB6CE5:               If (Proc_6_38_E69628(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1BB6CFB:                 var_300 = Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14)
  loc_1BB6D16:                 Call Proc_333_94_10AAF48(var_300, "D", &H28)
  loc_1BB6D20:                 Print 1, var_2FC
  loc_1BB6D36:               Else
  loc_1BB6D38:                 Print 1
  loc_1BB6D3E:               End If
  loc_1BB6D3E:             End If
  loc_1BB6D43:             Set var_E4 = Nothing
  loc_1BB6D5B:             var_13C = (Chr(&HF) + "** ")
  loc_1BB6D65:             var_160 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1BB6D6E:             var_17C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BB6D74:             Print 1, var_17C
  loc_1BB6D88:             var_B8.MoveNext
  loc_1BB6D8F:             Print 1
  loc_1BB6D97:             Print 1
  loc_1BB6D9F:             Print 1
  loc_1BB6DA7:             Print 1
  loc_1BB6DCD:             var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1BB6DD3:             Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BB6DE2:             GoTo loc_1BB5D4A
  loc_1BB6DE5:           End If
  loc_1BB6DE7:           Close 1
  loc_1BB6DF1:           If (var_D8 <> vbNullString) Then
  loc_1BB6DFB:             Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BB6E0B:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BB6E17:           Else
  loc_1BB6E23:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F953B8
  loc_1BB6E2C:           End If
  loc_1BB6E2E:           Close 1
  loc_1BB6E38:           If (MemVar_1F953BC = "Y") Then
  loc_1BB6E54:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BB6E5E:           Else
  loc_1BB6E77:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BB6E7E:           End If
  loc_1BB6E81:         Else
  loc_1BB6E8C:           If (var_1AC = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1BB6E91:             Close 1
  loc_1BB6E9A:             Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BB6EA1:             var_B8.MoveFirst
  loc_1BB6EA6:             ' Referenced from:       1BB7D99
  loc_1BB6EB5:             If Not(var_B8.EOF) Then
  loc_1BB6EBA:               var_96 = 0
  loc_1BB6EF5:               var_17C = 3
  loc_1BB6F3D:               var_184 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_2FC)
  loc_1BB6FD8:               var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_17C)) = "LAU") 'Variant
  loc_1BB6FE2:               var_2F8 = IIf(var_2E8, IIf((var_184 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB6FEB:               var_94 = CStr(var_2F8)
  loc_1BB702F:               If (var_96 = 0) Then
  loc_1BB7034:                 Print 1
  loc_1BB7068:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BB7079:                 If (var_EC <> vbNullString) Then
  loc_1BB70A2:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BB70A8:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB70BA:                 End If
  loc_1BB70C2:                 If (var_F0 <> vbNullString) Then
  loc_1BB70EB:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BB70F1:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB7103:                 End If
  loc_1BB710B:                 If (var_F4 <> vbNullString) Then
  loc_1BB7134:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1BB713A:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB714C:                 End If
  loc_1BB7154:                 If (var_F8 <> vbNullString) Then
  loc_1BB717D:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1BB7183:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB7195:                 End If
  loc_1BB7197:                 Print 1
  loc_1BB71DB:                 Call Proc_333_94_10AAF48(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1BB71E5:                 Print 1, var_300
  loc_1BB7223:                 Call Proc_333_94_10AAF48(Proc_6_45_EADFB8(var_94, &H14), "D", &H28)
  loc_1BB722D:                 Print 1, var_184
  loc_1BB7245:                 Print 1
  loc_1BB724D:                 Print 1
  loc_1BB7286:                 Proc_6_39_E7D3A0(var_17C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB72A8:                 var_13C = (Chr(&HF) + "TOKEN No.   :       ")
  loc_1BB72B2:                 var_1CC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_17C), &HA, var_184)))
  loc_1BB72B8:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C))
  loc_1BB736A:                 var_13C = (Chr(&HF) + "TOKEN Dt.   :       ")
  loc_1BB7371:                 var_17C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")))), &HC)) 'String
  loc_1BB7374:                 var_1BC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + var_17C)
  loc_1BB737D:                 var_1CC = (CVar(Proc_6_45_EADFB8(CStr(var_17C), &HA, Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")))))) + " ")
  loc_1BB7387:                 var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BB738D:                 Print 1, "* NC LOT *"
  loc_1BB73E2:                 var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB741F:                 var_13C = (Chr(&HF) + "Remarks :       ")
  loc_1BB7429:                 var_1BC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32)))
  loc_1BB7430:                 var_1DC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32))) + Chr(&H12))
  loc_1BB7436:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BB746F:                 Set var_164 = Me.Label1
  loc_1BB7475:                 Call 0.Method_Proc_333_81_1BB8F5C0 (2, var_16C)
  loc_1BB74C6:                 var_2FC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BB74E6:                 var_1BC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB74EF:                 var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA))) + ":       ")
  loc_1BB74F9:                 var_220 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_2FC, 5)))
  loc_1BB74FF:                 Print 1, "* NC LOT *"
  loc_1BB7544:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB754A:                 Print 1, CVar(var_16C)
  loc_1BB7557:               End If
  loc_1BB757D:               var_160 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1BB7589:               var_180 = "Qty"
  loc_1BB7597:               var_1BC = (Trim(CVar(var_16C)) + CVar(Proc_6_52_EAE084(var_180, 6)))
  loc_1BB759C:               var_B0 = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_180, 6))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA))))
  loc_1BB75C9:               var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB75CF:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BB75F2:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB75F8:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BB760B:               var_96 = (var_96 + 4)
  loc_1BB7611:               var_BC.MoveFirst
  loc_1BB7616:               ' Referenced from:       1BB79B7
  loc_1BB7625:               If Not(var_BC.EOF) Then
  loc_1BB765E:                 var_188 = var_BC.Fields
  loc_1BB7675:                 Proc_6_39_E7D3A0(Chr(&H12), CVar(var_188.Item("qty")))
  loc_1BB7718:                 var_17C = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BB7731:                 var_240 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_180, 6)))))
  loc_1BB7747:                 var_2F8 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BB774A:                 var_334 = (&H12 + var_2F8)
  loc_1BB77A3:                 var_13C = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BB77A9:                 Print 1, Space(3)
  loc_1BB77BC:                 var_96 = (var_96 + 1)
  loc_1BB77F8:                 If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BB783B:                   var_13C = (Chr(&HF) + "(")
  loc_1BB7845:                   var_1BC = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BB784E:                   var_1CC = (CVar(var_188.Item("qty")) + ")")
  loc_1BB7854:                   Print 1, Chr(&H12)
  loc_1BB7875:                   var_96 = (var_96 + 1)
  loc_1BB7878:                 End If
  loc_1BB7882:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1BB789B:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB78A1:                   Print 1, Space(3)
  loc_1BB78B3:                   Print 1, "Contd."
  loc_1BB78CB:                   Print 1, Chr(&HC)
  loc_1BB78DA:                   var_98 = (var_98 + 1)
  loc_1BB78F0:                   Call Proc_333_95_11FFA94(1, 0, &H28, var_306)
  loc_1BB790F:                   Call Proc_333_94_10AAF48(var_94, "B", &H28, var_180, var_306)
  loc_1BB7919:                   Print 1, var_180
  loc_1BB7928:                   var_96 = &H12
  loc_1BB7941:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB7947:                   Print 1, Space(3)
  loc_1BB796A:                   var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BB7970:                   Print 1, Space(3)
  loc_1BB7993:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB7999:                   Print 1, Space(3)
  loc_1BB79AC:                   var_96 = (var_96 + 4)
  loc_1BB79AF:                 End If
  loc_1BB79B2:                 var_BC.MoveNext
  loc_1BB79B7:                 GoTo loc_1BB7616
  loc_1BB79BA:               End If
  loc_1BB79C4:               If (var_96 < (&H45 - var_AA)) Then
  loc_1BB79C7:                 ' Referenced from:       1BB79E8
  loc_1BB79D1:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1BB79D9:                   Print 1, vbNullString
  loc_1BB79E5:                   var_96 = (var_96 + 1)
  loc_1BB79E8:                   GoTo loc_1BB79C7
  loc_1BB79EB:                 End If
  loc_1BB79EB:               End If
  loc_1BB7A01:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB7A07:               Print 1, Space(3)
  loc_1BB7A5D:               var_184 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)
  loc_1BB7A68:               var_13C = (Chr(&HF) + "Waiter Name  :       ")
  loc_1BB7A72:               var_1BC = (Space(3) + CVar(var_184))
  loc_1BB7A78:               Print 1, CVar(var_188.Item("qty"))
  loc_1BB7ABC:               var_13C = (Chr(&HF) + "***  ")
  loc_1BB7AC3:               var_17C = Space(3) & Trim(var_CC) 
  loc_1BB7AD2:               Print 1, var_17C & "  ***"
  loc_1BB7B2D:               var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB7B3B:               unk_58F167.Execute CStr(var_160), var_17C, -1
  loc_1BB7B9C:               If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB7BCD:                 Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("Changed TOKEN", &H14, var_188), "D", &H28, var_2FC)
  loc_1BB7BD7:                 Print 1, var_2FC
  loc_1BB7BED:               Else
  loc_1BB7C43:                 unk_58F167.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB7CA1:                 If (Proc_6_38_E69628(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1BB7CD2:                   Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1BB7CDC:                   Print 1, var_2FC
  loc_1BB7CF2:                 Else
  loc_1BB7CF4:                   Print 1
  loc_1BB7CFA:                 End If
  loc_1BB7CFA:               End If
  loc_1BB7CFF:               Set var_E4 = Nothing
  loc_1BB7D17:               var_13C = (Chr(&HF) + "** ")
  loc_1BB7D21:               var_160 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1BB7D2A:               var_17C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BB7D30:               Print 1, var_17C
  loc_1BB7D44:               var_B8.MoveNext
  loc_1BB7D4B:               Print 1
  loc_1BB7D53:               Print 1
  loc_1BB7D5B:               Print 1
  loc_1BB7D63:               Print 1
  loc_1BB7D6B:               Print 1
  loc_1BB7D73:               Print 1
  loc_1BB7D7B:               Print 1
  loc_1BB7D83:               Print 1
  loc_1BB7D8B:               Print 1
  loc_1BB7D93:               Print 1
  loc_1BB7D99:               GoTo loc_1BB6EA6
  loc_1BB7D9C:             End If
  loc_1BB7D9E:             Close 1
  loc_1BB7DA8:             If (var_D8 <> vbNullString) Then
  loc_1BB7DB2:               Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BB7DC2:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BB7DCE:             Else
  loc_1BB7DDA:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F953B8
  loc_1BB7DE3:             End If
  loc_1BB7DE5:             Close 1
  loc_1BB7DEF:             If (MemVar_1F953BC = "Y") Then
  loc_1BB7E0B:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BB7E15:             Else
  loc_1BB7E2E:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BB7E35:             End If
  loc_1BB7E38:           Else
  loc_1BB7E43:             If (var_1AC = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1BB7E48:               Close 1
  loc_1BB7E51:               Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BB7E58:               var_B8.MoveFirst
  loc_1BB7E5D:               ' Referenced from:         1BB8E11
  loc_1BB7E6C:               If Not(var_B8.EOF) Then
  loc_1BB7E71:                 var_96 = 0
  loc_1BB7F8F:                 var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1BB7F99:                 var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *"))
  loc_1BB7FA2:                 var_94 = CStr(var_2F8)
  loc_1BB800E:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1BB801D:                 If (var_96 = 0) Then
  loc_1BB8022:                   Print 1
  loc_1BB8030:                   If (var_EC <> vbNullString) Then
  loc_1BB8059:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BB805F:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB8071:                   End If
  loc_1BB8079:                   If (var_F0 <> vbNullString) Then
  loc_1BB80A2:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BB80A8:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB80BA:                   End If
  loc_1BB80C2:                   If (var_F4 <> vbNullString) Then
  loc_1BB80EB:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1BB80F1:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB8103:                   End If
  loc_1BB810B:                   If (var_F8 <> vbNullString) Then
  loc_1BB8134:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1BB813A:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BB814C:                   End If
  loc_1BB814E:                   Print 1
  loc_1BB817D:                   var_1BC = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BB818F:                   var_1DC = Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3) / 2)))
  loc_1BB81C0:                   var_2D8 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BB81C9:                   var_2E8 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96) = "Y"), "* NC TOKEN *", "* TOKEN *") / 2)
  loc_1BB81EA:                   var_1F0 = (Chr(&HF) + var_1DC)
  loc_1BB81F1:                   var_250 = (CVar(var_B8.Fields.Item("NCTOKEN")) + Trim(CVar(Me.LblRest)))
  loc_1BB81F8:                   var_334 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *") + Space(CLng(var_2E8)))
  loc_1BB81FF:                   var_358 = (IIf((var_BC.Fields.Item(2).Value = (Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1BB8205:                   Print 1, var_358
  loc_1BB8253:                   var_17C = (42 - Len(Trim(var_94)))
  loc_1BB8286:                   var_250 = (42 - Len(Trim(var_94)))
  loc_1BB828F:                   var_278 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_96)) = "Y"), "* NC LOT *", "* LOT *") / 2)
  loc_1BB82B0:                   var_1DC = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1BB82BA:                   var_1F0 = (var_1DC + CVar(var_94))
  loc_1BB82C1:                   var_2C8 = (CVar(var_B8.Fields.Item("NCTOKEN")) + Space(CLng(var_278)))
  loc_1BB82C8:                   var_2E8 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1BB82CE:                   Print 1, var_2E8
  loc_1BB82F2:                   Print 1
  loc_1BB82FA:                   Print 1
  loc_1BB8333:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")))
  loc_1BB8362:                   var_13C = (Chr(&HF) + "TOKEN No.   :         ")
  loc_1BB836C:                   var_1CC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)))
  loc_1BB8373:                   var_1F0 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1BB8379:                   Print 1, CVar(var_B8.Fields.Item("NCTOKEN"))
  loc_1BB843C:                   var_13C = (Chr(&HF) + "TOKEN Dt.   :         ")
  loc_1BB8446:                   var_1BC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)))
  loc_1BB844F:                   var_1CC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + " ")
  loc_1BB8459:                   var_220 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BB8460:                   var_250 = (Trim(var_94) + Chr(&H12))
  loc_1BB8466:                   Print 1, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)) = "Y"), "* NC LOT *", "* LOT *")
  loc_1BB84BF:                   var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB84FC:                   var_13C = (Chr(&HF) + "Remarks :         ")
  loc_1BB8506:                   var_1BC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H20)))
  loc_1BB850D:                   var_1DC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + Chr(&H12))
  loc_1BB8513:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BB854C:                   Set var_164 = Me.Label1
  loc_1BB8552:                   Call 0.Method_Proc_333_81_1BB8F5C0 (2, var_16C)
  loc_1BB85A3:                   var_2FC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BB85D0:                   var_1BC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB85D9:                   var_1CC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + ":         ")
  loc_1BB85E3:                   var_220 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_2FC, 5)))
  loc_1BB85EA:                   var_250 = (Trim(var_94) + Chr(&H12))
  loc_1BB85F0:                   Print 1, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCTOKEN")), var_2FC) = "Y"), "* NC LOT *", "* LOT *")
  loc_1BB8646:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB864D:                   var_17C = (CVar(var_16C) + Chr(&H12))
  loc_1BB8653:                   Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA))
  loc_1BB8664:                 End If
  loc_1BB868A:                 var_160 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_1BB86A4:                 var_1BC = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1BB86B0:                 var_1CC = Space(3)
  loc_1BB86B8:                 var_1DC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + var_1CC)
  loc_1BB86D2:                 var_220 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1BB871B:                 var_13C = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1BB8722:                 var_17C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BB8728:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BB875C:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB8763:                 var_17C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BB8769:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BB8780:                 var_96 = (var_96 + 4)
  loc_1BB8786:                 var_BC.MoveFirst
  loc_1BB878B:                 ' Referenced from:         1BB8A13
  loc_1BB879A:                 If Not(var_BC.EOF) Then
  loc_1BB87D3:                   var_188 = var_BC.Fields
  loc_1BB87EA:                   Proc_6_39_E7D3A0(var_1CC, CVar(var_188.Item("qty")))
  loc_1BB8835:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1BB8844:                   var_200 = "0.00"
  loc_1BB887F:                   var_17C = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1BB8898:                   var_240 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1CC, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1BB88AC:                   var_278 = (Chr(&H12) + Space(3))
  loc_1BB88C5:                   var_334 = (&H12 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), var_200)), 6, var_278)))
  loc_1BB892B:                   var_13C = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Rate").Value = var_200), "Void", vbNullString))))
  loc_1BB8932:                   var_17C = (Space(3) + Chr(&H12))
  loc_1BB8938:                   Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BB894F:                   var_96 = (var_96 + 1)
  loc_1BB898B:                   If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BB89CE:                     var_13C = (Chr(&HF) + "(")
  loc_1BB89D8:                     var_1BC = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BB89E1:                     var_1CC = (CVar(var_188.Item("qty")) + ")")
  loc_1BB89E7:                     Print 1, var_1CC
  loc_1BB8A08:                     var_96 = (var_96 + 1)
  loc_1BB8A0B:                   End If
  loc_1BB8A0E:                   var_BC.MoveNext
  loc_1BB8A13:                   GoTo loc_1BB878B
  loc_1BB8A16:                 End If
  loc_1BB8A39:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BB8A40:                 var_17C = (Space(3) + Chr(&H12))
  loc_1BB8A46:                 Print 1, CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description"))))
  loc_1BB8AB8:                 var_13C = (Chr(&HF) + "Waiter Name  :         ")
  loc_1BB8AC2:                 var_1BC = (Space(3) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1BB8AC9:                 var_1DC = (CVar(var_188.Item("qty")) + Chr(&H12))
  loc_1BB8ACF:                 Print 1, "0.00"
  loc_1BB8B17:                 var_1BC = Chr(&H12)
  loc_1BB8B24:                 var_13C = (Chr(&HF) + "***  ")
  loc_1BB8B2B:                 var_17C = Space(3) & Trim(var_CC) 
  loc_1BB8B37:                 var_1CC = ("  ***" + var_1BC)
  loc_1BB8B41:                 Print 1, var_17C & Chr(&H12)
  loc_1BB8BA0:                 var_160 = "Select Count(Distinct Printed) from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BB8BAE:                 unk_58F167.Execute CStr(var_160), var_17C, -1
  loc_1BB8C0F:                 If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BB8C40:                   Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("Changed TOKEN", &H14), "D", &H28)
  loc_1BB8C4A:                   Print 1, var_2FC
  loc_1BB8C60:                 Else
  loc_1BB8CB6:                   unk_58F167.Execute CStr("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BB8D14:                   If (Proc_6_38_E69628(CVar(var_188.Fields.Item(0)), var_188, var_2FC) = "Y") Then
  loc_1BB8D45:                     Call Proc_333_94_10AAF48(Proc_6_45_EADFB8("DUPLICATE TOKEN", &H14), "D", &H28)
  loc_1BB8D4F:                     Print 1, var_2FC
  loc_1BB8D65:                   Else
  loc_1BB8D67:                     Print 1
  loc_1BB8D6D:                   End If
  loc_1BB8D6D:                 End If
  loc_1BB8D72:                 Set var_E4 = Nothing
  loc_1BB8D8A:                 var_13C = (Chr(&HF) + "** ")
  loc_1BB8D94:                 var_160 = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1BB8D9D:                 var_17C = ("Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BB8DA3:                 Print 1, var_17C
  loc_1BB8DB7:                 var_B8.MoveNext
  loc_1BB8DBE:                 Print 1
  loc_1BB8DC6:                 Print 1
  loc_1BB8DCE:                 Print 1
  loc_1BB8DD6:                 Print 1
  loc_1BB8DFC:                 var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1BB8E02:                 Print 1, "Select Printed from TOKEN where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BB8E11:                 GoTo loc_1BB7E5D
  loc_1BB8E14:               End If
  loc_1BB8E16:               Close 1
  loc_1BB8E20:               If (var_D8 <> vbNullString) Then
  loc_1BB8E2A:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BB8E3A:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BB8E46:               Else
  loc_1BB8E4D:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BB8E5D:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F953B8
  loc_1BB8E66:               End If
  loc_1BB8E68:               Close 1
  loc_1BB8E72:               If (MemVar_1F953BC = "Y") Then
  loc_1BB8E8E:                 var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BB8E98:               Else
  loc_1BB8EB1:                 var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BB8EB8:               End If
  loc_1BB8EB8:             End If
  loc_1BB8EB8:           End If
  loc_1BB8EB8:         End If
  loc_1BB8EB8:       End If
  loc_1BB8EB8:     End If
  loc_1BB8EBB:   Else
  loc_1BB8F05:     MsgBox("Please Check Printer Setting of Central TOKEN For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_17C, var_1BC, Chr(&H12))
  loc_1BB8F20:   End If
  loc_1BB8F23:   var_C0.MoveNext
  loc_1BB8F28:   GoTo loc_1BB3F23
  loc_1BB8F2B: End If
  loc_1BB8F30: Set var_B8 = Nothing
  loc_1BB8F38: Set var_BC = Nothing
  loc_1BB8F40: Set var_C0 = Nothing
  loc_1BB8F48: Proc_333_81_1BB8F5C = &HFF
  loc_1BB8F4E: ' Referenced from: 1BB3A84
  loc_1BB8F4E: Proc_6_60_E63754(var_2FC, var_188)
  loc_1BB8F53: Proc_333_81_1BB8F5C = var_200
End Sub

Public Sub Proc_333_82_EFA504(arg_C) 'EFA504
  'Data Table: 58F144
  Dim var_8C As Recordset15
  loc_EFA42D: Set var_8C = arg_C 
  loc_EFA455: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EFA481: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EFA4AD: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EFA4BD: var_8C.CursorType = 3
  loc_EFA4CA: var_8C.LockType = 3
  loc_EFA4E9: var_8C.Open var_A0, var_B0, -1
  loc_EFA4F0: Set var_8C = Nothing 
  loc_EFA4F7: Set var_88 = arg_C 
  loc_EFA4FB: Proc_333_82_EFA504 = -1
End Sub

Public Sub Proc_333_83_F145C8(arg_C, arg_10, arg_14, arg_18) 'F145C8
  'Data Table: 58F144
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F144D7: Set var_88 = arg_C 
  loc_F144E6: var_88.AddNew var_98, var_A8
  loc_F1451E: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F14560: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F14572: var_98 = arg_18
  loc_F14586: var_A8 = "Mark"
  loc_F145A2: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F145BC: var_88.Update var_98, var_A8
  loc_F145C3: Set var_88 = Nothing 
  loc_F145C7: Exit Sub
End Sub

Public Sub Proc_333_84_1572510
  'Data Table: 58F144
  Dim var_D0 As String
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim unk_58F167 As Connection15
  Dim var_160 As String
  Dim var_BC As Recordset15
  Dim var_F8 As Variant
  Dim var_15C As Fields15
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  Dim var_1F8 As Variant
  Dim var_218 As Variant
  Dim var_B8 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_92 As Integer
  Dim var_94 As Integer
  Dim var_158 As Variant
  Dim var_1E8 As Variant
  Dim var_238 As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_21C As String
  loc_15714B0: On Error Goto loc_157250A
  loc_15714B6: MemVar_1F953C4 = "N"
  loc_15714BD: MemVar_1F953C8 = "N"
  loc_15714C4: MemVar_1F953CC = "K"
  loc_15714CF: var_D0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (TOKEN K Left Join Waiter W on K.Waiter=W.Code) "
  loc_1571514: var_88 = CStr(CVar(var_D0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1571533: var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1571571: var_8C = CStr(var_108 & Me.Fields.Item("SearchCode").Value & "'")
  loc_157159A: var_108 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15715BA: var_E8 = Me.Fields.Item("SearchCode")
  loc_15715D7: var_D0 = CStr(var_108 & var_E8.Value & "'")
  loc_15715E1: unk_58F167.Execute var_D0, var_158, -1
  loc_15715EC: Set var_BC = var_15C
  loc_1571610: If (var_88 = vbNullString) Then
  loc_1571613:   Exit Sub
  loc_1571614: End If
  loc_157161C: If (var_8C = vbNullString) Then
  loc_157161F:   Exit Sub
  loc_1571620: End If
  loc_157163E: Set var_D4 = Me.Txt
  loc_1571644: Call 0.Method_Proc_333_84_15725100 (CInt(4), var_E8, var_D0, "SELECT DISTINCT DOCID FROM TOKEN WHERE ROOMNO='")
  loc_157164C: var_F8 = var_E8.Text
  loc_1571655: var_160 = -1 & var_D0
  loc_1571665: unk_58F167.Execute var_160 & "' AND CONTRADOCID IS NULL", var_15C, var_15C
  loc_157169C: If (var_15C.RecordCount = 1) Then
  loc_15716A2:   var_C8 = "New Order"
  loc_15716A8: Else
  loc_15716AF:   Set var_D4 = Me.LblState
  loc_15716BD:   var_C8 = var_D4.Caption
  loc_15716C3: End If
  loc_15716D9: unk_58F167.Execute var_88, var_F8, -1
  loc_15716E4: Set var_B4 = var_D4
  loc_15716ED: ' Referenced from: 15724EE
  loc_15716FC: If Not(var_BC.EOF) Then
  loc_1571715:   unk_58F167.Execute "SELECT KOTPrinting FROM Enviro", var_F8, -1
  loc_1571738:   var_D4 = var_D4.Fields
  loc_1571773:   If (Trim(CVar(Proc_6_38_E69628(CVar(var_D4.Item("KOTPrinting")), var_D4))) = "Seperate for All Kitchen") Then
  loc_157177D:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15717F6:     var_1C0 = var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1571832:     var_8C = CStr(var_1C0 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_1571860:   Else
  loc_1571867:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (TOKEN K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_157187F:     var_D4 = Me.Fields
  loc_157188F:     var_F8 = var_D4.Item("SearchCode").Value
  loc_15718A0:     var_138 = var_108 & var_F8 & "' and K.VoidYN<>'Y'" 
  loc_15718A5:     var_8C = CStr(var_138)
  loc_15718BA:   End If
  loc_15718D0:   unk_58F167.Execute var_8C, var_F8, -1
  loc_15718DB:   Set var_B8 = var_D4
  loc_15718F8:   If (var_B8.RecordCount > 0) Then
  loc_15718FD:     Close 1
  loc_1571916:     var_160 = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition)
  loc_1571924:     Open var_160 & ".TXT" For Output As 1 Len = &HFF
  loc_1571934:     var_B4.MoveFirst
  loc_1571939:     ' Referenced from: 15722D1
  loc_1571948:     If Not(var_B4.EOF) Then
  loc_1571958:       var_90 = "* TOKEN *"
  loc_1571961:       If (0 = 0) Then
  loc_1571966:         Print 1
  loc_157199A:         var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_15719CD:         Call Proc_333_94_10AAF48(Me.LblRest.Caption, "D", &H28, var_21C)
  loc_15719D7:         Print 1, var_21C
  loc_15719FD:         Call Proc_333_94_10AAF48(var_90, "D", &H28, var_160)
  loc_1571A07:         Print 1, var_160
  loc_1571A16:         var_92 = &H12
  loc_1571A1B:         Print 1
  loc_1571A23:         Print 1
  loc_1571A5C:         Proc_6_39_E7D3A0(var_138, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_1571A7E:         var_108 = (Chr(&HF) + "TOKEN No.   : ")
  loc_1571A88:         var_180 = (var_108 + CVar(Proc_6_45_EADFB8(CStr(var_138), &HA, var_92)))
  loc_1571A8E:         Print 1, var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value
  loc_1571AC9:         var_D4 = var_B4.Fields
  loc_1571B40:         var_108 = (Chr(&HF) + "TOKEN Dt.   : ")
  loc_1571B4A:         var_158 = (var_108 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_D4.Item("VDate")), var_D4), &HC)))
  loc_1571B53:         var_180 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_D4.Item("VDate")), var_D4), &HC))), &HA, var_92)) + " ")
  loc_1571B5D:         var_1E8 = (var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1571B63:         Print 1, var_BC.Fields.Item("Code").Value
  loc_1571BB8:         var_E8 = var_B4.Fields.Item("Remarks")
  loc_1571BF5:         var_108 = (Chr(&HF) + "Remarks : ")
  loc_1571BFF:         var_158 = (var_108 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8)), &H32)))
  loc_1571C06:         var_1A0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_1571C0C:         Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1571C45:         Set var_D4 = Me.Label1
  loc_1571C4B:         Call 0.Method_Proc_333_84_15725100 (2, var_E8)
  loc_1571CE0:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_E8))), &HA)))
  loc_1571CE9:         var_180 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_E8))), &HA))), &HA, var_92)) + ": ")
  loc_1571CF0:         var_218 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1571CF3:         var_238 = (Chr(&H12) + var_218)
  loc_1571CF9:         Print 1, var_238
  loc_1571D44:         var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1571D4A:         Print 1, CVar(var_E8)
  loc_1571D57:       End If
  loc_1571D7D:       var_118 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1571D89:       var_160 = "Qty"
  loc_1571D97:       var_158 = (1 + CVar(Proc_6_52_EAE084(var_160, 6, Trim(CVar(var_E8)))))
  loc_1571D9C:       var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_160, 6, Trim(CVar(var_E8))))), &HA, var_92)))
  loc_1571DC9:       var_108 = (Chr(&HF) + CVar(var_AC))
  loc_1571DCF:       Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1571DF2:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1571DF8:       Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1571E0B:       var_92 = (var_92 + 4)
  loc_1571E11:       var_B8.MoveFirst
  loc_1571E16:       ' Referenced from: 157215B
  loc_1571E25:       If Not(var_B8.EOF) Then
  loc_1571E75:         Proc_6_39_E7D3A0(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1571F3F:         var_300 = IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", IIf((var_B8.Fields.Item("Cancel").Value = "F"), "Free", vbNullString))
  loc_1571F69:         var_138 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1571F7F:         var_1E8 = CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_160, 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_1571F82:         var_1F8 = (1 + var_1E8)
  loc_1571F98:         var_314 = CVar(Proc_6_52_EAE084(CStr(var_300), 6, Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000"))) 'String
  loc_1571F9B:         var_324 = (var_92 + var_314)
  loc_1572000:         var_108 = (Chr(&HF) + CVar(CStr(var_324)))
  loc_1572006:         Print 1, Space(3)
  loc_1572019:         var_92 = (var_92 + 1)
  loc_1572026:         If (var_92 = (&H45 - var_A6)) Then
  loc_157203F:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1572045:           Print 1, Space(3)
  loc_1572057:           Print 1, "Contd."
  loc_157206F:           Print 1, Chr(&HC)
  loc_157207E:           var_94 = (var_94 + 1)
  loc_1572094:           Call Proc_333_95_11FFA94(1, 0, &H28, var_21E)
  loc_15720B3:           Call Proc_333_94_10AAF48(var_90, "B", &H28, var_160, var_21E)
  loc_15720BD:           Print 1, var_160
  loc_15720CC:           var_92 = &H12
  loc_15720E5:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_15720EB:           Print 1, Space(3)
  loc_157210E:           var_108 = (Chr(&HF) + CVar(var_AC))
  loc_1572114:           Print 1, Space(3)
  loc_1572137:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_157213D:           Print 1, Space(3)
  loc_1572150:           var_92 = (var_92 + 4)
  loc_1572153:         End If
  loc_1572156:         var_B8.MoveNext
  loc_157215B:         GoTo loc_1571E16
  loc_157215E:       End If
  loc_1572168:       If (var_92 < (&H45 - var_A6)) Then
  loc_157216B:         ' Referenced from: 157218C
  loc_1572175:         If (var_92 = (&H45 - var_A6)) Then
  loc_157217D:           Print 1, vbNullString
  loc_1572189:           var_92 = (var_92 + 1)
  loc_157218C:           GoTo loc_157216B
  loc_157218F:         End If
  loc_157218F:       End If
  loc_15721A5:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_15721AB:       Print 1, Space(3)
  loc_157220C:       var_108 = (Chr(&HF) + "Waiter Name  : ")
  loc_1572213:       var_138 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1572216:       var_158 = (Space(3) + var_138)
  loc_157221C:       Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_1572260:       var_108 = (Chr(&HF) + "***  ")
  loc_1572267:       var_138 = Space(3) & Trim(var_C8) 
  loc_1572270:       var_158 = var_138 & "  ***" 
  loc_1572276:       Print 1, var_158
  loc_157228B:       Print 1
  loc_15722A6:       var_108 = (Chr(&HF) + "** A Analysis Software **")
  loc_15722AC:       Print 1, Space(3)
  loc_15722BC:       var_B4.MoveNext
  loc_15722C3:       Print 1
  loc_15722CB:       Print 1
  loc_15722D1:       GoTo loc_1571939
  loc_15722D4:     End If
  loc_15722D6:     Close 1
  loc_1572311:     If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), 1) <> vbNullString) Then
  loc_1572339:       Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1572397:       Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_15723B7:     Else
  loc_15723E1:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_15723F2:     End If
  loc_15723F4:     Close 1
  loc_15723FE:     If (MemVar_1F953BC = "Y") Then
  loc_1572430:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1572441:     Else
  loc_1572470:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_157247E:     End If
  loc_1572481:   Else
  loc_15724CB:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_138, var_158, Chr(&H12))
  loc_15724E6:   End If
  loc_15724E9:   var_BC.MoveNext
  loc_15724EE:   GoTo loc_15716ED
  loc_15724F1: End If
  loc_15724F6: Set var_B4 = Nothing
  loc_15724FE: Set var_B8 = Nothing
  loc_1572506: Set var_BC = Nothing
  loc_1572509: Exit Sub
  loc_157250A: ' Referenced from: 15714B0
  loc_157250A: Proc_6_60_E63754(var_92)
  loc_157250F: Exit Sub
End Sub

Public Sub Proc_333_85_16BE030
  'Data Table: 58F144
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As String
  Dim unk_58F167 As Connection15
  Dim var_130 As Recordset15
  Dim var_134 As Variant
  Dim var_138 As String
  Dim var_13C As String
  Dim var_140 As String
  Dim var_144 As String
  Dim var_148 As String
  Dim var_12C As Variant
  Dim var_D4 As Variant
  Dim var_AC As Recordset15
  Dim var_B0 As Recordset15
  Dim var_B8 As Recordset15
  Dim var_150 As Field20
  Dim var_128 As Variant
  Dim var_B2 As Integer
  Dim var_118 As Variant
  Dim var_190 As Variant
  Dim var_170 As Variant
  Dim var_250 As Variant
  Dim var_270 As Variant
  Dim var_BC As Recordset15
  loc_16BC6B4: On Error Goto loc_16BE027
  loc_16BC6C6: Me.FGrid1.Visible = False
  loc_16BC6DA: Me.LblPendingKot.Visible = False
  loc_16BC6F9: If (Me.RecordCount > 0) Then
  loc_16BC73B:   var_E4 = "Select K.*,R.name as RName From TOKEN K left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo Where K.Docid='" & Me.Fields.Item("DocID").Value 
  loc_16BC752:   unk_58F167.Execute CStr(var_E4 & "' order by K.Sno"), var_128, -1
  loc_16BC75D:   Set var_AC = var_12C
  loc_16BC77A:   Set var_130 = var_AC 
  loc_16BC7B7:   Set var_12C = Me.Txt
  loc_16BC7BD:   Call 0.Method_Proc_333_85_16BE0300 (CInt(3), var_134)
  loc_16BC7C5:   var_134.Text = CStr(var_130.Fields.Item("DocID").Value)
  loc_16BC7F5:   var_C4 = var_130.Fields.Item("vType")
  loc_16BC7FD:   var_D4 = var_C4.Value
  loc_16BC823:   var_A4 = 0
  loc_16BC855:   var_140 = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='"
  loc_16BC86F:   unk_58F167.Execute var_140 & CStr(var_D4) & "'", var_D4, -1
  loc_16BC877:   var_A8 = var_A8.Fields
  loc_16BC87F:   var_A4 = var_C4.Item(var_C4)
  loc_16BC887:   var_12C = var_12C.Value
  loc_16BC896:   global_268 = CStr(var_E4)
  loc_16BC8F4:   Set var_12C = Me.Txt
  loc_16BC8FA:   Call 0.Method_Proc_333_85_16BE0300 (CInt(0), var_134, CStr(var_130.Fields.Item("VNo").Value))
  loc_16BC902:   var_134.Text = var_E4
  loc_16BC943:   var_E4 = "DD/MMM/YYYY"
  loc_16BC96A:   Set var_12C = Me.Txt
  loc_16BC970:   Call 0.Method_Proc_333_85_16BE0300 (CInt(1), var_134, CStr(Format(CVar(var_130.Fields.Item("VDate")), var_E4)))
  loc_16BC978:   var_134.Text = 1
  loc_16BC9CA:   Me.LblVPrefix.Caption = CStr(var_130.Fields.Item("vPrefix").Value)
  loc_16BCA14:   Set var_12C = Me.Txt
  loc_16BCA1A:   Call 0.Method_Proc_333_85_16BE0300 (CInt(6), var_134)
  loc_16BCA22:   var_134.Text = Proc_6_38_E69628(CVar(var_AC.Fields.Item("Remarks")), 1)
  loc_16BCA72:   If (var_130.Fields.Item("Pending").Value = "Y") Then
  loc_16BCA82:     Me.LblState.Caption = "Running Order"
  loc_16BCA8D:   Else
  loc_16BCA9A:     Me.LblState.Caption = "Completed Order"
  loc_16BCAA2:   End If
  loc_16BCADA:   var_108 = Proc_6_38_E69628(CVar(var_130.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='", var_E4)
  loc_16BCADE:   var_138 = -1 & var_108
  loc_16BCAEE:   unk_58F167.Execute "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "'", var_12C, var_12C
  loc_16BCAF9:   Set var_B0 = var_12C
  loc_16BCB27:   If (var_B0.RecordCount > 0) Then
  loc_16BCB63:     Set var_12C = Me.Txt
  loc_16BCB69:     Call 0.Method_Proc_333_85_16BE0300 (CInt(&HB), var_134)
  loc_16BCB71:     var_134.Tag = CStr(var_B0.Fields.Item(0).Value)
  loc_16BCBC0:     Set var_12C = Me.Txt
  loc_16BCBC6:     Call 0.Method_Proc_333_85_16BE0300 (CInt(&HB), var_134)
  loc_16BCBCE:     var_134.Text = CStr(var_B0.Fields.Item(1).Value)
  loc_16BCBFE:     var_C4 = var_B0.Fields.Item(2)
  loc_16BCC1D:     Set var_12C = Me.Txt
  loc_16BCC23:     Call 0.Method_Proc_333_85_16BE0300 (CInt(&HC), var_134)
  loc_16BCC2B:     var_134.Text = CStr(var_C4.Value)
  loc_16BCC44:   Else
  loc_16BCC52:     Set var_A8 = Me.Txt
  loc_16BCC58:     Call 0.Method_Proc_333_85_16BE0300 (CInt(&HB), var_C4)
  loc_16BCC60:     var_C4.Tag = vbNullString
  loc_16BCC7A:     Set var_A8 = Me.Txt
  loc_16BCC80:     Call 0.Method_Proc_333_85_16BE0300 (CInt(&HB), var_C4)
  loc_16BCC88:     var_C4.Text = vbNullString
  loc_16BCCA2:     Set var_A8 = Me.Txt
  loc_16BCCA8:     Call 0.Method_Proc_333_85_16BE0300 (CInt(&HC), var_C4)
  loc_16BCCB0:     var_C4.Text = vbNullString
  loc_16BCCBC:   End If
  loc_16BCCE4:   var_108 = Proc_6_38_E69628(CVar(var_130.Fields.Item("Waiter")))
  loc_16BCCF2:   Set var_12C = Me.Txt
  loc_16BCCF8:   Call 0.Method_Proc_333_85_16BE0300 (CInt(5), var_134)
  loc_16BCD00:   var_134.Tag = var_108
  loc_16BCD60:   var_C4 = var_130.Fields.Item("Waiter")
  loc_16BCD82:   If CBool(var_C4.Value <> vbNullString) Then
  loc_16BCDA3:     Set var_A8 = Me.Txt
  loc_16BCDA9:     Call 0.Method_Proc_333_85_16BE0300 (CInt(5), var_C4, var_108, "Select Name From Waiter Where Code='")
  loc_16BCDB1:     var_D4 = var_C4.Tag
  loc_16BCDBA:     var_138 = -1 & var_108
  loc_16BCDC1:     var_13C = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "' and (code is not null or code <> '')"
  loc_16BCDCA:     unk_58F167.Execute var_13C, var_12C, Proc_6_38_E69628(CVar(var_130.Fields.Item("Waiter")))
  loc_16BCDD5:     Set var_B8 = var_12C
  loc_16BCE01:     If (var_B8.RecordCount > 0) Then
  loc_16BCE3D:       Set var_12C = Me.Txt
  loc_16BCE43:       Call 0.Method_Proc_333_85_16BE0300 (CInt(5), var_134)
  loc_16BCE4B:       var_134.Text = CStr(var_B8.Fields.Item("Name").Value)
  loc_16BCE61:     End If
  loc_16BCE66:     Set var_B8 = Nothing
  loc_16BCE69:   End If
  loc_16BCE80:   If ((global_160 = "TB") Or (global_160 = "RO")) Then
  loc_16BCEB9:     Set var_12C = Me.Txt
  loc_16BCEBF:     Call 0.Method_Proc_333_85_16BE0300 (CInt(4), var_134)
  loc_16BCEC7:     var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("RoomNo")))
  loc_16BCEDE:   Else
  loc_16BCF14:     Set var_12C = Me.Txt
  loc_16BCF1A:     Call 0.Method_Proc_333_85_16BE0300 (CInt(4), var_134)
  loc_16BCF22:     var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("RName")))
  loc_16BCF36:   End If
  loc_16BCF50:   var_C4 = var_130.Fields.Item("Pending")
  loc_16BCF58:   var_D4 = var_C4.Value
  loc_16BCF72:   If (var_D4 = "Y") Then
  loc_16BCFB3:     Set var_A8 = Me.Txt
  loc_16BCFB9:     Call 0.Method_Proc_333_85_16BE0300 (CInt(4), var_C4, "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='", "sELECT COUNT(DISTINCT VNO) FROM TOKEN WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_D4, -1)
  loc_16BCFD1:     var_144 = var_134 & "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y')"
  loc_16BCFDA:     unk_58F167.Execute var_144, 0, var_150
  loc_16BCFEA:      = var_134.Item()
  loc_16BCFF2:      = var_150.Value
  loc_16BD023:     If (var_C4.Text.Fields = 1) Then
  loc_16BD033:       Me.LblState.Caption = "New Order"
  loc_16BD03E:     Else
  loc_16BD04B:       Me.LblState.Caption = "Running Order"
  loc_16BD053:     End If
  loc_16BD056:   Else
  loc_16BD063:     Me.LblState.Caption = "Completed Order"
  loc_16BD06B:   End If
  loc_16BD085:   var_C4 = var_130.Fields.Item("NCTOKEN")
  loc_16BD0C6:   Me.ChkNCTOKEN.Value = CInt(IIf((var_C4.Value = "Y"), 1, 0))
  loc_16BD0FC:   If (Me.ChkNCTOKEN.Value = 1) Then
  loc_16BD10C:     Set var_A8 = Me.Txt
  loc_16BD112:     Call 0.Method_Proc_333_85_16BE0300 (CInt(7), var_C4)
  loc_16BD11A:     var_C4.Visible = True
  loc_16BD131:     Set var_A8 = Me.Label1
  loc_16BD137:     Call 0.Method_Proc_333_85_16BE0300 (4, var_C4)
  loc_16BD13F:     var_C4.Visible = True
  loc_16BD157:     Me.Frame.Visible = False
  loc_16BD16C:     Me.LblKotNm.Caption = "NC TOKEN"
  loc_16BD17C:     Set var_A8 = Me.cmdNCBill
  loc_16BD182:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_16BD18D:   Else
  loc_16BD19A:     Set var_A8 = Me.Txt
  loc_16BD1A0:     Call 0.Method_Proc_333_85_16BE0300 (CInt(7), var_C4)
  loc_16BD1A8:     var_C4.Visible = False
  loc_16BD1BF:     Set var_A8 = Me.Label1
  loc_16BD1C5:     Call 0.Method_Proc_333_85_16BE0300 (4, var_C4)
  loc_16BD1CD:     var_C4.Visible = False
  loc_16BD1E6:     Me.LblKotNm.Caption = "TOKEN"
  loc_16BD1F7:     Set var_A8 = Me.cmdNCBill
  loc_16BD1FD:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_16BD205:   End If
  loc_16BD23B:   Set var_12C = Me.Txt
  loc_16BD241:   Call 0.Method_Proc_333_85_16BE0300 (CInt(7), var_134)
  loc_16BD249:   var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("NCType")))
  loc_16BD2B2:   global_184 = CByte(IIf((var_130.Fields.Item("NCTOKEN").Value = "Y"), 1, 0))
  loc_16BD2F6:   var_128 = 1
  loc_16BD35F:   var_108 = Proc_6_38_E69628(CVar(var_130.Fields.Item("RoomNo")), CByte(IIf((var_130.Fields.Item("NCTOKEN").Value = "Y"), var_128, 0)))
  loc_16BD36D:   Set var_12C = Me.Txt
  loc_16BD373:   Call 0.Method_Proc_333_85_16BE0300 (CInt(4), var_134)
  loc_16BD37B:   var_134.Tag = var_108
  loc_16BD3BA:   var_E4 = "hh:nn"
  loc_16BD3E1:   Set var_12C = Me.Txt
  loc_16BD3E7:   Call 0.Method_Proc_333_85_16BE0300 (CInt(2), var_134, CStr(Format(CVar(var_130.Fields.Item("VTIME")), var_E4)))
  loc_16BD3EF:   var_134.Text = 1
  loc_16BD449:   var_138 = CStr(var_130.Fields.Item("VTIME").Value)
  loc_16BD451:   var_13C = Replace(var_138, ":", ".", 1, -1, 0)
  loc_16BD483:   var_148 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and " & CStr(Val("sELECT COUNT(DISTINCT VNO) FROM TOKEN WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='"))
  loc_16BD493:   unk_58F167.Execute var_148 & " BETWEEN FromTime AND ToTime", var_E4, -1
  loc_16BD49E:   Set var_B8 = var_12C
  loc_16BD4C4:   Set var_130 = Nothing 
  loc_16BD4D7:   Me.FGrid.Redraw = False
  loc_16BD4F2:   Me.FGrid.Rows = 1
  loc_16BD4FC:   var_B2 = 1
  loc_16BD50C:   var_A4 = "Select K1.*,I.name as ItemName,I.Unit,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (TOKEN K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Where K1.DocId='"
  loc_16BD555:   unk_58F167.Execute CStr(var_A4 & Me.Fields.Item("SearchCode").Value & "' order by K1.Sno"), var_128, -1
  loc_16BD560:   Set var_AC = var_12C
  loc_16BD58E:   If (var_AC.RecordCount > 0) Then
  loc_16BD591:     ' Referenced from: 16BDADA
  loc_16BD5A0:     If Not(var_AC.EOF) Then
  loc_16BD5A3:       var_94 = vbNullString
  loc_16BD5AD:       Set var_A8 = Me.FGrid
  loc_16BD5C2:       Set var_180 = Me.FGrid
  loc_16BD5C9:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_16BD5D1:       var_118 = CVar(CLng(0)) 'Long
  loc_16BD601:       var_E4 = CVar(CStr(var_AC.Fields.Item("SNo").Value)) 'String
  loc_16BD608:       LateIdCallSt
  loc_16BD622:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_16BD62A:       var_118 = CVar(CLng(&HA)) 'Long
  loc_16BD65A:       var_E4 = CVar(CStr(var_AC.Fields.Item("Item").Value)) 'String
  loc_16BD661:       LateIdCallSt
  loc_16BD6B0:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_B2)), var_180, var_E4, CVar(CLng(3)), CVar(CLng(var_B2)))) 'String
  loc_16BD6B7:       LateIdCallSt
  loc_16BD702:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_B2)), var_180, var_E4, var_180)) 'String
  loc_16BD709:       LateIdCallSt
  loc_16BD754:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16BD75B:       LateIdCallSt
  loc_16BD7A6:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16BD7AD:       LateIdCallSt
  loc_16BD7DF:       var_F4 = CVar(CLng(var_B2)) 'Long
  loc_16BD7E7:       var_190 = CVar(CLng(7)) 'Long
  loc_16BD814:       var_128 = CVar(CStr(Format(CVar(var_AC.Fields.Item("qty")), "0.00"))) 'String
  loc_16BD81B:       LateIdCallSt
  loc_16BD886:       var_128 = CVar(CStr(Format(CVar(var_AC.Fields.Item("Rate")), "0.00"))) 'String
  loc_16BD88D:       LateIdCallSt
  loc_16BD8CB:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("VoidYN")), var_180, var_128, 1, 1, CVar(CLng(8)), CVar(CLng(var_B2)))) 'String
  loc_16BD8ED:       var_134 = var_AC.Fields.Item("VoidYN")
  loc_16BD90D:       var_250 = CVar(CLng(var_B2)) 'Long
  loc_16BD915:       var_270 = CVar(CLng(9)) 'Long
  loc_16BD93D:       var_1E0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_134), var_180, var_128, 1))) = "Y") 'Variant
  loc_16BD981:       LateIdCallSt
  loc_16BD9E8:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_B2)), var_180, CVar(CStr(IIf((Trim(var_E4) = "F"), "Free", IIf(var_1E0, "Cancel", vbNullString)))))) 'String
  loc_16BD9EF:       LateIdCallSt
  loc_16BDA3A:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16BDA41:       LateIdCallSt
  loc_16BDA8C:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16BDA93:       LateIdCallSt
  loc_16BDAA9:       var_94 = CVar(CLng(var_B2)) 'Long
  loc_16BDABB:       LateIdCallSt
  loc_16BDAC5:       Set var_180 = Nothing 
  loc_16BDACF:       var_B2 = (var_B2 + 1)
  loc_16BDAD5:       var_AC.MoveNext
  loc_16BDADA:       GoTo loc_16BD591
  loc_16BDADD:     End If
  loc_16BDAF6:     var_94 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16BDB09:     Set var_C4 = Me.FGrid
  loc_16BDB0F:     LateIdCallSt
  loc_16BDB34:     Me.FGrid.FixedRows = 1
  loc_16BDB3C:   End If
  loc_16BDB4A:   Me.FGrid.Redraw = True
  loc_16BDB58:   If (var_B2 = 1) Then
  loc_16BDB5B:     var_94 = 1
  loc_16BDB6E:     Me.FGrid.Rows = var_94
  loc_16BDB7A:     Set var_12C = Me.FGrid
  loc_16BDB94:     var_D4 = CVar(CStr(Proc_6_127_F25B10(var_12C, CInt(0), var_C4, global_120, var_94, var_B2, var_180, global_120))) 'String
  loc_16BDB9C:     Set var_C4 = Me.FGrid
  loc_16BDBC0:     var_D4 = Me.FGrid.Rows
  loc_16BDBCF:     var_94 = CVar((CLng(var_D4) - 1)) 'Long
  loc_16BDBE2:     Set var_C4 = Me.FGrid
  loc_16BDBE8:     LateIdCallSt
  loc_16BDBFA:     var_94 = 1
  loc_16BDC0D:     Me.FGrid.FixedRows = var_94
  loc_16BDC15:   End If
  loc_16BDC20:   If (global_68 = "Room Service") Then
  loc_16BDC43:     If (Me.LblState.Caption = "Running Order") Then
  loc_16BDC5A:       var_108 = "SELECT RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest,GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3 FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_16BDC72:       Set var_A8 = Me.Txt
  loc_16BDC78:       Call 0.Method_Proc_333_85_16BE0300 (CInt(4), var_C4, var_138, var_108 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL and RC.RoomNo='", var_D4, -1, var_12C)
  loc_16BDC80:       var_C4 = var_C4.Tag
  loc_16BDC99:       unk_58F167.Execute global_120 & var_138 & "'  Order by RC.ROOMNO", var_94, FGrid.DispID_10000
  loc_16BDCA4:       Set var_BC = var_12C
  loc_16BDCC3:     Else
  loc_16BDCD0:       var_A4 = "SELECT distinct GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, TOKEN.RoomNo, GuestProf.Name FROM  PayCharge INNER JOIN  TOKEN ON PayCharge.DocId = TOKEN.ContraDocId INNER JOIN   GuestProf ON PayCharge.GuestProf = GuestProf.Code WHERE (TOKEN.DocId = '"
  loc_16BDCDB:       var_94 = "DocID"
  loc_16BDCFA:       var_D4 = Me.Fields.Item(var_94).Value
  loc_16BDD02:       var_E4 = var_A4 & var_D4 
  loc_16BDD15:       var_128 = var_E4 & "') AND  TOKEN.ContraDocID<>'' AND (PayCharge.RoomType = 'RO') AND (PayCharge.PayCode = '" & CVar(MemVar_1F95078) 
  loc_16BDD30:       Set var_12C = Me.Txt
  loc_16BDD36:       Call 0.Method_Proc_333_85_16BE0300 (CInt(4), var_134, var_108, var_128 & "TOUT') AND  TOKEN.RoomNo='", var_1E0)
  loc_16BDD3E:       -1 = var_134.Tag
  loc_16BDD46:       var_170 = CVar(var_108) 'String
  loc_16BDD60:       unk_58F167.Execute CStr(var_150 & var_170 & "'"), var_D4, var_94
  loc_16BDD6B:       Set var_BC = var_150
  loc_16BDD93:     End If
  loc_16BDDA7:     If (var_BC.RecordCount > 0) Then
  loc_16BDDAA:       ' Referenced from: 16BDEDD
  loc_16BDDBB:       If (var_BC.EOF = 0) Then
  loc_16BDDF7:         Set var_12C = Me.Txt
  loc_16BDDFD:         Call 0.Method_Proc_333_85_16BE0300 (CInt(8), var_134)
  loc_16BDE05:         var_134.Text = CStr(var_BC.Fields.Item("Comments1").Value)
  loc_16BDE54:         Set var_12C = Me.Txt
  loc_16BDE5A:         Call 0.Method_Proc_333_85_16BE0300 (CInt(9), var_134)
  loc_16BDE62:         var_134.Text = CStr(var_BC.Fields.Item("Comments2").Value)
  loc_16BDE92:         var_C4 = var_BC.Fields.Item("Comments3")
  loc_16BDE9A:         var_D4 = var_C4.Value
  loc_16BDEB1:         Set var_12C = Me.Txt
  loc_16BDEB7:         Call 0.Method_Proc_333_85_16BE0300 (CInt(&HA), var_134)
  loc_16BDEBF:         var_134.Text = CStr(var_D4)
  loc_16BDED8:         var_BC.MoveNext
  loc_16BDEDD:         GoTo loc_16BDDAA
  loc_16BDEE0:       End If
  loc_16BDEE0:     End If
  loc_16BDEE0:   End If
  loc_16BDEE3: Else
  loc_16BDEE3:   Call Proc_333_87_1020CDC(var_180)
  loc_16BDF03:   var_138 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_16BDF1A:   var_A4 = 0
  loc_16BDF3A:   var_140 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_16BDF4A:   unk_58F167.Execute global_120 & var_138 & "'", var_D4, -1
  loc_16BDF52:   var_A8 = var_A8.Fields
  loc_16BDF5A:   var_A4 = var_C4.Item(var_C4)
  loc_16BDF62:   var_12C = var_12C.Value
  loc_16BDF81:   unk_58F167.Execute CStr(var_E4 & var_E4 & "' Order by Description"), CVar(var_138 & MemVar_1F95078 & "') and V_Type='"), var_170
  loc_16BDF8C:   Set var_AC = var_134
  loc_16BDFCC:   If (var_AC.RecordCount > 0) Then
  loc_16BE000:     global_152 = CStr(var_AC.Fields.Item(0).Value)
  loc_16BE011:   End If
  loc_16BE011: End If
  loc_16BE011: Call Proc_333_89_EF8E58(-1)
  loc_16BE01B: Set var_AC = Nothing
  loc_16BE023: Set var_BC = Nothing
  loc_16BE026: Exit Sub
  loc_16BE027: ' Referenced from: 16BC6B4
  loc_16BE027: Proc_6_60_E63754(var_134)
  loc_16BE02C: Exit Sub
End Sub

Public Sub Proc_333_86_1080E20
  'Data Table: 58F144
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_58F167 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  loc_1080B99: Set var_8C = Me.TopCtrl1
  loc_1080B9F: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_1080BA7: var_A0 = CStr()
  loc_1080BB8: If (var_A0 = "Add") Then
  loc_1080BE8:   Set var_8C = Me.Txt
  loc_1080BEE:   Call 0.Method_Proc_333_86_1080E200 (CInt(3), var_A4, var_A0, "Select Count(*) From TOKEN Where DocID='", var_9C, -1)
  loc_1080C0F:   unk_58F167.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_1080C1F:    = var_C4.Item()
  loc_1080C27:    = var_D8.Value
  loc_1080C54:   If (var_A4.Text.Fields > 0) Then
  loc_1080C5D:     Call 0.Method_arg_50 (var_A0)
  loc_1080C7E:     MsgBox("Duplicate TOKEN No.", &H40, CVar(var_A0), var_108, var_118)
  loc_1080C94:     Call Proc_333_91_10E8008(MemVar_1F95044)
  loc_1080CA7:     Set var_8C = Me.Txt
  loc_1080CAD:     Call 0.Method_Proc_333_86_1080E200 (CInt(3), var_A4)
  loc_1080CB5:     var_A4.Text = var_A0
  loc_1080CC9:     Proc_333_86_1080E20 = 0
  loc_1080CCF:   End If
  loc_1080CCF: End If
  loc_1080CF4: For var_11C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_11C 'Integer
  loc_1080CFE:   var_BC = CVar(CLng(var_88)) 'Long
  loc_1080D06:   var_F8 = CVar(CLng(&HA)) 'Long
  loc_1080D26:   var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1080D42:   If CBool(var_108 <> vbNullString) Then
  loc_1080D49:     var_BC = CVar(CLng(var_88)) 'Long
  loc_1080D51:     var_F8 = CVar(CLng(7)) 'Long
  loc_1080D81:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_1080DA9:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_108, var_118)
  loc_1080DCF:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_1080DDB:       Set var_8C = Me.FGrid
  loc_1080DFF:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1080E0C:       Proc_333_86_1080E20 = 0
  loc_1080E12:     End If
  loc_1080E12:   End If
  loc_1080E15: Next var_11C 'Integer
  loc_1080E1A: Proc_333_86_1080E20 = 
End Sub

Public Sub Proc_333_87_1020CDC
  'Data Table: 58F144
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_1020AB9: Me.LblVPrefix.Caption = vbNullString
  loc_1020ACF: Set var_8C = Me.Txt
  loc_1020AD5: Call 0.Method_Proc_333_87_1020CDCC (var_8E, var_86)
  loc_1020AE5: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1020AFB:   Set var_8C = Me.Txt
  loc_1020B01:   Call 0.Method_Proc_333_87_1020CDC0 (CInt(var_86), var_98)
  loc_1020B09:   var_98.Text = vbNullString
  loc_1020B25:   Set var_8C = Me.Txt
  loc_1020B2B:   Call 0.Method_Proc_333_87_1020CDC0 (CInt(var_86), var_98)
  loc_1020B33:   var_98.Tag = vbNullString
  loc_1020B42: Next var_92 'Byte
  loc_1020B56: Set var_8C = Me.Txt
  loc_1020B5C: Call 0.Method_Proc_333_87_1020CDC0 (CInt(2), var_98)
  loc_1020B64: var_98.Text = "00:00"
  loc_1020B7E: Set var_8C = Me.Txt
  loc_1020B84: Call 0.Method_Proc_333_87_1020CDC0 (CInt(2), var_98)
  loc_1020B8C: var_98.Tag = vbNullString
  loc_1020BAB: Me.FGrid.Rows = 1
  loc_1020BD1: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_1020BD9: Set var_98 = Me.FGrid
  loc_1020BF3: var_A8 = 1
  loc_1020BFF: var_DC = CVar(CLng(1)) 'Long
  loc_1020C12: Set var_8C = Me.FGrid
  loc_1020C18: LateIdCallSt
  loc_1020C23: var_A8 = 1
  loc_1020C2F: var_DC = CVar(CLng(2)) 'Long
  loc_1020C42: Set var_8C = Me.FGrid
  loc_1020C48: LateIdCallSt
  loc_1020C6C: var_A8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_1020C7F: Set var_98 = Me.FGrid
  loc_1020C85: LateIdCallSt
  loc_1020CAA: Me.FGrid.FixedRows = 1
  loc_1020CBE: Me.ChkNCTOKEN.Value = 0
  loc_1020CD3: Me.LblState.Caption = vbNullString
  loc_1020CDB: Exit Sub
End Sub

Public Sub Proc_333_88_104D3D4(arg_C) '104D3D4
  'Data Table: 58F144
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_104D16E: Set var_8C = Me.Txt
  loc_104D174: Call 0.Method_Proc_333_88_104D3D4C (var_8E, var_86)
  loc_104D184: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_104D19A:   Set var_8C = Me.Txt
  loc_104D1A0:   Call 0.Method_Proc_333_88_104D3D40 (CInt(var_86), var_98)
  loc_104D1A8:   var_98.Enabled = arg_C
  loc_104D1B7: Next var_92 'Byte
  loc_104D1CA: Set var_8C = Me.cmdNCBill
  loc_104D1D0: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_104D1E8: Set var_8C = Me.Txt
  loc_104D1EE: Call 0.Method_Proc_333_88_104D3D40 (CInt(2), var_98)
  loc_104D1F6: var_98.Enabled = False
  loc_104D20F: Set var_8C = Me.Txt
  loc_104D215: Call 0.Method_Proc_333_88_104D3D40 (CInt(3), var_98)
  loc_104D21D: var_98.Enabled = False
  loc_104D236: Set var_8C = Me.Txt
  loc_104D23C: Call 0.Method_Proc_333_88_104D3D40 (CInt(1), var_98)
  loc_104D244: var_98.Enabled = False
  loc_104D25D: Set var_8C = Me.Txt
  loc_104D263: Call 0.Method_Proc_333_88_104D3D40 (CInt(0), var_98)
  loc_104D26B: var_98.Enabled = False
  loc_104D284: Set var_8C = Me.Txt
  loc_104D28A: Call 0.Method_Proc_333_88_104D3D40 (CInt(4), var_98)
  loc_104D292: var_98.Enabled = False
  loc_104D2AB: Set var_8C = Me.Txt
  loc_104D2B1: Call 0.Method_Proc_333_88_104D3D40 (CInt(&HD), var_98)
  loc_104D2B9: var_98.Enabled = False
  loc_104D2D2: Set var_8C = Me.Txt
  loc_104D2D8: Call 0.Method_Proc_333_88_104D3D40 (CInt(5), var_98)
  loc_104D2E0: var_98.Enabled = False
  loc_104D2F9: Set var_8C = Me.Txt
  loc_104D2FF: Call 0.Method_Proc_333_88_104D3D40 (CInt(8), var_98)
  loc_104D307: var_98.Enabled = False
  loc_104D320: Set var_8C = Me.Txt
  loc_104D326: Call 0.Method_Proc_333_88_104D3D40 (CInt(9), var_98)
  loc_104D32E: var_98.Enabled = False
  loc_104D347: Set var_8C = Me.Txt
  loc_104D34D: Call 0.Method_Proc_333_88_104D3D40 (CInt(&HA), var_98)
  loc_104D355: var_98.Enabled = False
  loc_104D36C: If (global_168 = "Auto") Then
  loc_104D37C:   Set var_8C = Me.Txt
  loc_104D382:   Call 0.Method_Proc_333_88_104D3D40 (CInt(&HB), var_98)
  loc_104D38A:   var_98.Enabled = False
  loc_104D3A3:   Set var_8C = Me.Txt
  loc_104D3A9:   Call 0.Method_Proc_333_88_104D3D40 (CInt(&HC), var_98)
  loc_104D3B1:   var_98.Enabled = False
  loc_104D3BD: End If
  loc_104D3CA: Me.ChkNCTOKEN.Enabled = arg_C
  loc_104D3D2: Exit Sub
End Sub

Public Sub Proc_333_89_EF8E58
  'Data Table: 58F144
  loc_EF8D98: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF8DAA:   Me.DGItem.Visible = False
  loc_EF8DB2: End If
  loc_EF8DCE: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF8DE0:   Me.DGTable.Visible = False
  loc_EF8DE8: End If
  loc_EF8E04: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF8E16:   Me.DGRest.Visible = False
  loc_EF8E1E: End If
  loc_EF8E3A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF8E4C:   Me.FGPoint.Visible = False
  loc_EF8E54: End If
  loc_EF8E54: Exit Sub
End Sub

Public Sub Proc_333_90_F0E060
  'Data Table: 58F144
  loc_F0DF84: Call Proc_333_89_EF8E58()
  loc_F0DF94: Set var_88 = Me.Txt
  loc_F0DF9A: Call 0.Method_Proc_333_90_F0E0600 (CInt(1))
  loc_F0DFC3: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0DFC6:   Exit Sub
  loc_F0DFC7: End If
  loc_F0DFD2: Set var_88 = Me.Txt
  loc_F0DFD8: Call 0.Method_Proc_333_90_F0E0600 (CInt(0), var_8C)
  loc_F0E001: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0E004:   Exit Sub
  loc_F0E005: End If
  loc_F0E03C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0E03F:   Call TopCtrl1_UnknownEvent_16()
  loc_F0E047: Else
  loc_F0E04D:   Call 0.Method_arg_1E8 (var_88)
  loc_F0E055:   Call var_88.SetFocus
  loc_F0E05E: End If
  loc_F0E05E: Exit Sub
End Sub

Public Sub Proc_333_91_10E8008
  'Data Table: 58F144
  Dim var_94 As String
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_8C As Recordset15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_130 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  loc_10E7D30: var_90 = global_152
  loc_10E7D47: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10E7D78: Set var_A8 = Me.Txt
  loc_10E7D7E: Call 0.Method_Proc_333_91_10E80080 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E7D8D: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10E7D95: var_EC = -1 & var_CC 
  loc_10E7DA9: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E7DB4: Set var_8C = var_134
  loc_10E7DF0: If (var_8C.RecordCount > 0) Then
  loc_10E7E2F:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E7E63:     global_260 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E7E8E:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E7EA3:     var_CC = (var_AC.Value + 1)
  loc_10E7EAC:     global_264 = CLng(var_CC)
  loc_10E7EBD:   End If
  loc_10E7EBD: End If
  loc_10E7EE8: var_BC = Space((5 - Len(var_90)))
  loc_10E7EF0: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10E7F04: var_EC = Space((5 - Len(global_260)))
  loc_10E7F0C: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E7F19: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_260))
  loc_10E7F32: var_14C = Space((8 - Len(CStr(global_264))))
  loc_10E7F3A: var_15C = (var_130 + var_14C)
  loc_10E7F49: var_17C = (var_15C + CVar(CStr(global_264)))
  loc_10E7F54: global_256 = CStr(var_17C)
  loc_10E7F8A: Me.LblVPrefix.Caption = global_260
  loc_10E7FA3: Set var_A8 = Me.Txt
  loc_10E7FA9: Call 0.Method_Proc_333_91_10E80080 (CInt(3), var_AC)
  loc_10E7FB1: var_AC.Text = global_256
  loc_10E7FD3: Set var_A8 = Me.Txt
  loc_10E7FD9: Call 0.Method_Proc_333_91_10E80080 (CInt(0), var_AC)
  loc_10E7FE1: var_AC.Text = CStr(global_264)
  loc_10E7FF6: var_88 = global_256
  loc_10E7FFE: Set var_8C = Nothing
  loc_10E8001: Proc_333_91_10E8008 = global_264
End Sub

Public Sub Proc_333_92_FBD5C8
  'Data Table: 58F144
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FBD44B: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FBD450:   var_92 = 4 'Byte
  loc_FBD454: End If
  loc_FBD45D: Set var_98 = Me.TxtGrid
  loc_FBD463: Call 0.Method_Proc_333_92_FBD5C80 (0, var_B0)
  loc_FBD486: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FBD4BA: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FBD4DE:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FBD4E1:     GoTo loc_FBD5B3
  loc_FBD4E4:   End If
  loc_FBD4E8:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FBD512:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FBD51C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FBD551:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FBD575:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FBD58E:     Set var_98 = Me.TxtGrid
  loc_FBD594:     Call 0.Method_Proc_333_92_FBD5C80 (0, var_B0, CVar(CLng(var_92)))
  loc_FBD59C:     var_B0.SetFocus
  loc_FBD5AD:     Proc_333_92_FBD5C8 = 0
  loc_FBD5B3:     ' Referenced from: FBD4E1
  loc_FBD5B3:   End If
  loc_FBD5B6: Next var_D4 'Integer
  loc_FBD5C0: Proc_333_92_FBD5C8 = &HFF
  loc_FBD5C6: Loop Until  'do at: FBA028
End Sub

Public Sub Proc_333_93_11FDCD8
  'Data Table: 58F144
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_D0 As String
  loc_11FD832: Set global_100 = New 
  loc_11FD844: Me.Recordset15.CursorLocation = 3
  loc_11FD84F: var_8C = global_68
  loc_11FD85A: If (var_8C = "Hall") Then
  loc_11FD882:   var_A0 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')and  T.Type in('HL') Order by T.Code") 'String
  loc_11FD88C:   Me.Open var_A0, CVar(MemVar_1F95044), 3
  loc_11FD8A3:   Set var_88 = Me.Label1
  loc_11FD8A9:   Call 0.Method_Proc_333_93_11FDCD80 (2, var_B4, "Hall")
  loc_11FD8B1:   var_B4.Caption = 1
  loc_11FD8CD:   Set var_88 = Me.DGTable
  loc_11FD8EC:   DGTable.DispID_69.Item(1).Caption = "Hall"
  loc_11FD903:   global_156 = "HALL"
  loc_11FD90D:   global_160 = "HL"
  loc_11FD922:   Set var_88 = Me.DGTable
  loc_11FD941:   DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FD963:   Set var_88 = Me.DGTable
  loc_11FD974:   Set var_B4 = DGTable.DispID_69
  loc_11FD982:   var_B4.Item(3).Width = CDbl(0)
  loc_11FD9A1:   Set var_88 = Me.Txt
  loc_11FD9A7:   Call 0.Method_Proc_333_93_11FDCD80 (CInt(4), var_B4)
  loc_11FD9AF:   var_BC = var_B4.Width
  loc_11FD9C6:   Me.DGTable.Width = CVar(var_BC)
  loc_11FD9D7: Else
  loc_11FD9DF:   If (var_8C = "Outlet") Then
  loc_11FD9EE:     Set var_88 = Me.Label1
  loc_11FD9F4:     Call 0.Method_Proc_333_93_11FDCD80 (2, var_B4)
  loc_11FD9FC:     var_B4.Caption = "Table #"
  loc_11FDA18:     Set var_88 = Me.DGTable
  loc_11FDA37:     DGTable.DispID_69.Item(1).Caption = "Table No"
  loc_11FDA6D:     var_D0 = "Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and T.Type in ('TB') And RestCode='"
  loc_11FDA88:     Me.Open CVar(var_D0 & LocalRestCode & "' Order By T.Code"), CVar(MemVar_1F95044), 3
  loc_11FDA9F:     global_156 = "REST"
  loc_11FDAA9:     global_160 = "TB"
  loc_11FDABE:     Set var_88 = Me.DGTable
  loc_11FDADD:     DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FDAFF:     Set var_88 = Me.DGTable
  loc_11FDB10:     Set var_B4 = DGTable.DispID_69
  loc_11FDB1E:     var_B4.Item(3).Width = CDbl(0)
  loc_11FDB3D:     Set var_88 = Me.Txt
  loc_11FDB43:     Call 0.Method_Proc_333_93_11FDCD80 (CInt(4), var_B4, var_BC)
  loc_11FDB4B:     1 = var_B4.Width
  loc_11FDB62:     Me.DGTable.Width = CVar(var_BC)
  loc_11FDB73:   Else
  loc_11FDB7B:     If (var_8C = "Room Service") Then
  loc_11FDB8A:       Set var_88 = Me.Label1
  loc_11FDB90:       Call 0.Method_Proc_333_93_11FDCD80 (2, var_B4, "Room #")
  loc_11FDB98:       var_B4.Caption = -1
  loc_11FDBB4:       Set var_88 = Me.DGTable
  loc_11FDBD3:       DGTable.DispID_69.Item(1).Caption = "Room No"
  loc_11FDC02:       var_90 = "SELECT RC.RoomNo AS Code, RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3  FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_11FDC09:       var_A0 = CVar(var_90 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO") 'String
  loc_11FDC13:       Me.Open var_A0, CVar(MemVar_1F95044), 3
  loc_11FDC24:       global_160 = "RO"
  loc_11FDC3A:       Set var_88 = Me.DGTable
  loc_11FDC59:       DGTable.DispID_69.Item(1).Width = CDbl(1515)
  loc_11FDC7C:       Set var_88 = Me.DGTable
  loc_11FDC9B:       DGTable.DispID_69.Item(2).Width = CDbl(3539)
  loc_11FDCAC:       GoTo loc_11FDCAF
  loc_11FDCAF:       ' Referenced from:     11FDCAC
  loc_11FDCAF:     End If
  loc_11FDCAF:   End If
  loc_11FDCAF: End If
  loc_11FDCB8: CVarUnk
  loc_11FDCBD: VerifyVarObj
  loc_11FDCC3: Set var_88 = Me.DGTable
  loc_11FDCC9: LateIdStAd
  loc_11FDCD7: Exit Sub
End Sub

Public Sub Proc_333_94_10AAF48(arg_C, arg_10, arg_14) '10AAF48
  'Data Table: 58F144
  Dim var_AC As Variant
  Dim var_8A As Integer
  Dim arg_14 As Integer
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_190 As Variant
  loc_10AAC9D: var_88 = vbNullString
  loc_10AACB4: arg_C = CStr(Trim(arg_C))
  loc_10AACC0: var_8A = CInt(Len(arg_C))
  loc_10AACC6: var_C0 = arg_10
  loc_10AACD1: If (var_C0 = "A") Then
  loc_10AACF0:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10AACF4:   var_9C = arg_C 'Variant
  loc_10AAD4A:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10AAD5E:   var_110 = (0 + Chr(&H1B))
  loc_10AAD67:   var_120 = (var_110 + "G")
  loc_10AAD7B:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10AAD85:   var_150 = (var_140 + CVar(arg_C))
  loc_10AAD99:   var_170 = (var_150 + Chr(&H1B))
  loc_10AADA2:   var_190 = (var_170 + "H")
  loc_10AADA7:   var_88 = CStr(var_190)
  loc_10AADC8: Else
  loc_10AADD0:   If (var_C0 = "D") Then
  loc_10AADDE:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10AADEF:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AADF3:     var_9C = "G" 'Variant
  loc_10AAE49:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10AAE5D:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AAE67:     var_120 = (var_110 + CVar(arg_C))
  loc_10AAE6C:     var_88 = CStr(var_120)
  loc_10AAE81:   Else
  loc_10AAE89:     If (var_C0 = "E") Then
  loc_10AAE9A:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10AAE9E:       var_9C = CVar(arg_C) 'Variant
  loc_10AAEF4:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10AAF08:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10AAF12:       var_120 = (var_110 + CVar(arg_C))
  loc_10AAF26:       var_140 = (var_120 + Chr(&H12))
  loc_10AAF2B:       var_88 = CStr(var_140)
  loc_10AAF41:     End If
  loc_10AAF41:   End If
  loc_10AAF41: End If
  loc_10AAF41: Proc_333_94_10AAF48 = arg_14
End Sub

Public Sub Proc_333_95_11FFA94(arg_C, arg_10, arg_14) '11FFA94
  'Data Table: 58F144
  Dim var_E0 As String
  Dim var_134 As Variant
  Dim var_164 As Variant
  Dim var_1B4 As Variant
  Dim var_1D4 As Variant
  Dim var_204 As Variant
  Dim var_224 As Variant
  Dim var_264 As Variant
  Dim var_DC As Variant
  Dim var_194 As Variant
  Dim var_244 As Variant
  Dim var_184 As Variant
  Dim arg_10 As Integer
  loc_11FF631: var_90 = vbNullString
  loc_11FF637: var_94 = vbNullString
  loc_11FF63D: var_98 = vbNullString
  loc_11FF643: var_9C = vbNullString
  loc_11FF64E: If (MemVar_1F953C4 = "Y") Then
  loc_11FF658:   var_E0 = vbNullString & "DATE "
  loc_11FF689:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_11FF69C: End If
  loc_11FF6A4: If (MemVar_1F953C8 = "Y") Then
  loc_11FF708:   var_164 = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, "dd/MM/yy")))), 0))
  loc_11FF72F:   var_1B4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_11FF737:   var_1D4 = (var_164 - Len(var_1B4))
  loc_11FF748:   var_204 = (CVar(var_8C) + Space(CLng(var_1D4)))
  loc_11FF751:   var_224 = (var_204 + " PAGE NO ")
  loc_11FF773:   var_264 = (var_224 + Trim(Str(arg_C)))
  loc_11FF778:   var_8C = CStr(var_264)
  loc_11FF7A5: End If
  loc_11FF7B3: If (MemVar_1F953CC = "K") Then
  loc_11FF7C0:   If (Len(MemVar_1F95130) <= &H28) Then
  loc_11FF7D9:     var_DC = (CVar(var_90) + Chr(&HF))
  loc_11FF7ED:     var_134 = (Format(MemVar_1F950EC, "dd/MM/yy") + Chr(&HE))
  loc_11FF801:     var_164 = (0 + Chr(&H1B))
  loc_11FF815:     var_194 = (var_164 + Chr(&H45))
  loc_11FF81F:     var_1B4 = (Trim(Str(arg_C)) + CVar(MemVar_1F95130))
  loc_11FF833:     var_1D4 = (var_1B4 + Chr(&H1B))
  loc_11FF847:     var_204 = (var_1D4 + Chr(&H46))
  loc_11FF85B:     var_244 = (var_204 + Chr(&HE))
  loc_11FF860:     var_90 = CStr(Str(arg_C))
  loc_11FF887:   Else
  loc_11FF89D:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_11FF8B1:     var_134 = (Format(MemVar_1F950EC, "dd/MM/yy") + Chr(&HE))
  loc_11FF8C5:     var_164 = (0 + Chr(&HF))
  loc_11FF8CF:     var_184 = (var_164 + CVar(MemVar_1F95130))
  loc_11FF8E3:     var_1B4 = (Chr(&H45) + Chr(&H12))
  loc_11FF8E8:     var_90 = CStr(var_1B4)
  loc_11FF900:   End If
  loc_11FF90A:   If (Len(MemVar_1F95134) > 0) Then
  loc_11FF936:     Call Proc_333_94_10AAF48(MemVar_1F95134, "D", CInt(Val(CStr(arg_14))))
  loc_11FF93F:     var_94 = var_270 & var_270
  loc_11FF94B:   End If
  loc_11FF955:   If (Len(MemVar_1F95138) > 0) Then
  loc_11FF981:     Call Proc_333_94_10AAF48(MemVar_1F95138, "D", CInt(Val(CStr(arg_14))))
  loc_11FF98A:     var_98 = var_270 & var_270
  loc_11FF996:   End If
  loc_11FF9A0:   If (Len(MemVar_1F9513C) > 0) Then
  loc_11FF9CC:     Call Proc_333_94_10AAF48(MemVar_1F9513C, "D", CInt(Val(CStr(arg_14))))
  loc_11FF9D5:     var_9C = var_270 & var_270
  loc_11FF9E1:   End If
  loc_11FF9E1: End If
  loc_11FF9EB: If (Len(var_8C) > 0) Then
  loc_11FF9F3:   Print 1, var_8C
  loc_11FF9FF:   arg_10 = (arg_10 + 1)
  loc_11FFA02: End If
  loc_11FFA0C: If (Len(var_90) > 0) Then
  loc_11FFA14:   Print 1, var_90
  loc_11FFA20:   arg_10 = (arg_10 + 1)
  loc_11FFA23: End If
  loc_11FFA2D: If (Len(var_94) > 0) Then
  loc_11FFA35:   Print 1, var_94
  loc_11FFA41:   arg_10 = (arg_10 + 1)
  loc_11FFA44: End If
  loc_11FFA4E: If (Len(var_98) > 0) Then
  loc_11FFA56:   Print 1, var_98
  loc_11FFA62:   arg_10 = (arg_10 + 1)
  loc_11FFA65: End If
  loc_11FFA6F: If (Len(var_9C) > 0) Then
  loc_11FFA77:   Print 1, var_9C
  loc_11FFA83:   arg_10 = (arg_10 + 1)
  loc_11FFA86: End If
  loc_11FFA8C: Proc_333_95_11FFA94 = arg_10
End Sub

Public Sub Proc_333_96_F20834(arg_C, arg_10, arg_14) 'F20834
  'Data Table: 58F144
  Dim unk_58F167 As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  Dim var_3400 As Boolean
  loc_F20779: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F207AB: unk_58F167.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F207B6: Set var_90 = var_15C
  loc_F207E8: If (var_90.RecordCount > 0) Then
  loc_F20816:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F20826: Else
  loc_F20829:   var_8C = CDbl(0)
  loc_F2082C: End If
  loc_F2082C: Proc_333_96_F20834 = var_8C
  loc_F20832: var_3400 = True
End Sub

Public Sub Proc_333_97_FF7A30
  'Data Table: 58F144
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As String
  Dim unk_58F167 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_86 As Integer
  loc_FF7860: Set global_240 = New RsTouchScreenKeyBoard
  loc_FF7879: Me.ParentForm = CVar(Me)
  loc_FF788E: Me.TxtKeyBoard.MaxLength = 20
  loc_FF789B: var_C4 = Me.TxtKeyBoard
  loc_FF78AD: var_E4 = Me.TxtKeyBoard
  loc_FF78B2: var_E4.BackColor = var_C4.ForeColor
  loc_FF78C8: var_E4.Caption = "User Password"
  loc_FF78E0: Form.Show 1, var_B4
  loc_FF7911: Proc_6_17_EAAE40(var_C4, MemVar_1F950C8, "SELECT IsNull(Max(PASSWD),'') FROM USERMAST WHERE USER_NAME=", var_E4, -1)
  loc_FF7927: unk_58F167.Execute CStr(var_90 & var_C4), var_94, 0
  loc_FF7937:  = var_94.Item(var_11C)
  loc_FF793F:  = var_90.Fields.Value
  loc_FF798A: If CBool(Trim(CVar(TxtKeyBoard)) <> vbNullString) Then
  loc_FF79AC:   Call Proc_333_98_EE91B4(CStr(var_11C), var_120)
  loc_FF79B4:   var_E4 = CVar(var_120) 'String
  loc_FF79BA:   var_11C = Ucase(var_E4)
  loc_FF79CF:   If (Ucase(CVar(TxtKeyBoard)) = var_11C) Then
  loc_FF79D4:     var_86 = &HFF
  loc_FF79DA:   Else
  loc_FF79FB:     MsgBox("Invalid Password.", &H10, "User Authentication", var_E4, var_11C)
  loc_FF7A0D:     var_86 = 0
  loc_FF7A10:   End If
  loc_FF7A13: Else
  loc_FF7A15:   var_86 = 0
  loc_FF7A18: End If
  loc_FF7A23: Set global_240 = Nothing
  loc_FF7A2A: Proc_333_97_FF7A30 = var_86
End Sub

Public Sub Proc_333_98_EE91B4(arg_C) 'EE91B4
  'Data Table: 58F144
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE9122: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE9141: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE9164:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE9180:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE9188:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE918D:   var_8C = CStr(var_108)
  loc_EE91A1: Next var_B8 'Integer
  loc_EE91A9: var_88 = var_8C
  loc_EE91AC: Proc_333_98_EE91B4 = 
End Sub
