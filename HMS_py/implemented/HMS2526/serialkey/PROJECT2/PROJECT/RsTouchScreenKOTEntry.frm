VERSION 5.00
Begin VB.Form RsTouchScreenKOTEntry
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
    Begin TextBox TxtNCKOT
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
    Begin TextBox TxtNCKOT
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
  Begin CheckBox ChkNCKOT
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

Attribute VB_Name = "RsTouchScreenKOTEntry"

Private global_110 As Integer
Private global_96 As Long
Private global_100 As Long
Private MasterFormExit As Integer
Private global_268 As Long
Private global_188 As Long
Private global_104 As Long
Private global_264 As Integer
Private global_256 As Long

Public Sub CmdQty_UnknownEvent_9(Index As Integer) '1267AA4
  'Data Table: 5921DC
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
  loc_1267537: var_86 = Index
  loc_1267540: If Not (var_86 = 0) Then
  loc_1267549:   If Not (var_86 = 1) Then
  loc_1267552:     If Not (var_86 = 2) Then
  loc_126755B:       If Not (var_86 = 3) Then
  loc_1267564:         If Not (var_86 = 4) Then
  loc_126756D:           If Not (var_86 = 5) Then
  loc_1267576:             If Not (var_86 = 6) Then
  loc_126757F:               If Not (var_86 = 7) Then
  loc_1267588:                 If Not (var_86 = 8) Then
  loc_1267591:                   If (var_86 = 9) Then
  loc_1267594:                   End If
  loc_1267594:                 End If
  loc_1267594:               End If
  loc_1267594:             End If
  loc_1267594:           End If
  loc_1267594:         End If
  loc_1267594:       End If
  loc_1267594:     End If
  loc_1267594:   End If
  loc_12675B8:   If CBool(InStr(1, CVar(Me.TxtQty), ".", 0)) Then
  loc_12675DA:     Set var_BC = Me.CmdQty
  loc_12675E0:     Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_12675E8:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1267601:     Me.TxtQty.Text = CStr(var_86)
  loc_1267620:   Else
  loc_126762F:     Me.TxtQty.MaxLength = 5
  loc_1267656:     Set var_BC = Me.CmdQty
  loc_126765C:     Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_1267664:     Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_126767D:     Me.TxtQty.Text = CStr()
  loc_1267699:   End If
  loc_126769C: Else
  loc_12676A2:   If (var_86 = &HA) Then
  loc_12676CF:     If (InStr(1, CVar(Me.TxtQty), ".", 0) = 0) Then
  loc_12676F1:       Set var_C0 = Me.TxtQty
  loc_12676F7:       var_C0.MaxLength = (Me.TxtQty.MaxLength + 1)
  loc_1267722:       Set var_BC = Me.CmdQty
  loc_1267728:       Call 0.Method_CmdQty_UnknownEvent_90 (Index, var_C0)
  loc_1267730:       Call {AF12D1E8-0BC8-4900-8B786D5927FF195A}.DispID_FFFFFDFA(Me.TxtQty.Text)
  loc_1267749:       Me.TxtQty.Text = CStr()
  loc_12677A4:       var_128 = (Len(Left(CVar(Me.TxtQty), CLng(InStr(1, CVar(Me.TxtQty), ".", 0)))) + 3)
  loc_12677B4:       Me.TxtQty.MaxLength = CLng(var_128)
  loc_12677CD:     End If
  loc_12677D0:   Else
  loc_12677D8:     If (var_86 = CInt(&HB)) Then
  loc_12677E8:       Me.TxtQty.Text = vbNullString
  loc_12677F3:     Else
  loc_12677FB:       If (var_86 = CInt(&HD)) Then
  loc_126781F:         Set var_C0 = Me.LblIndex
  loc_1267846:         If ((Me.LblVtype.Caption = "No.of Person") And (CDbl(Val(var_C0.Caption)) = CDbl(0))) Then
  loc_1267855:           Me.FrameGrpItem.Enabled = True
  loc_126786B:           Me.FGrid.Enabled = True
  loc_12678B0:           Set var_BC = Me.Txt
  loc_12678B6:           Call 0.Method_CmdQty_UnknownEvent_90 (CInt(&HD), var_C0, CStr(Format(CVar(Me.TxtQty), "0")))
  loc_12678BE:           var_C0.Text = 1
  loc_12678DB:         Else
  loc_1267923:           If ((Me.LblVtype.Caption = "Qty") And (CDbl(Val(Me.LblIndex.Caption)) = CDbl(0))) Then
  loc_126792A:             Set var_12C = Me.FGrid
  loc_1267939:             var_98 = CVar(CLng(var_12C.RowSel)) 'Long
  loc_1267941:             var_13C = CVar(CLng(0)) 'Long
  loc_1267966:             If (CStr(var_12C.TextMatrix)) = vbNullString) Then
  loc_1267969:               Exit Sub
  loc_126796A:             End If
  loc_126798F:             If (CDbl(Val(Me.TxtQty.Tag)) = CDbl(2)) Then
  loc_12679B2:               If (Me.TxtQty.Text = vbNullString) Then
  loc_12679C2:                 Me.TxtQty.Text = "1"
  loc_12679CA:               End If
  loc_12679DD:               var_E4 = CVar(CLng(TxtQty.DispID_C)) 'Long
  loc_12679E5:               var_14C = CVar(CLng(7)) 'Long
  loc_1267A12:               var_118 = CVar(CStr(Format(CVar(Me.TxtQty), "0.000"))) 'String
  loc_1267A19:               LateIdCallSt
  loc_1267A31:             End If
  loc_1267A33:             Set var_12C = Nothing 
  loc_1267A37:           End If
  loc_1267A37:         End If
  loc_1267A44:         Me.TxtQty.Text = vbNullString
  loc_1267A58:         Me.FrameQty.Visible = False
  loc_1267A63:       Else
  loc_1267A69:         If (var_86 = &HC) Then
  loc_1267A78:           Me.FrameQty.Visible = False
  loc_1267A83:         Else
  loc_1267A8B:           If (var_86 = CInt(&HC)) Then
  loc_1267A9A:             Me.FrameGrpItem.Enabled = True
  loc_1267AA2:           End If
  loc_1267AA2:         End If
  loc_1267AA2:       End If
  loc_1267AA2:     End If
  loc_1267AA2:   End If
  loc_1267AA2: End If
  loc_1267AA2: Exit Sub
End Sub

Public Sub CmNC_UnknownEvent_9(Index As Integer) '118A39C
  'Data Table: 5921DC
  Dim var_8E As Integer
  Dim var_AC As String
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_D4 As TextBox
  Dim var_C8 As Variant
  Dim var_94 As Variant
  loc_1189FC3: var_8E = Index
  loc_1189FCC: If Not (var_8E = 0) Then
  loc_1189FD5:   If Not (var_8E = 1) Then
  loc_1189FDE:     If Not (var_8E = 2) Then
  loc_1189FE7:       If Not (var_8E = 3) Then
  loc_1189FF0:         If Not (var_8E = 4) Then
  loc_1189FF9:           If Not (var_8E = 5) Then
  loc_118A002:             If Not (var_8E = 6) Then
  loc_118A00B:               If Not (var_8E = 7) Then
  loc_118A014:                 If Not (var_8E = 8) Then
  loc_118A01D:                   If Not (var_8E = 9) Then
  loc_118A026:                     If Not (var_8E = &HA) Then
  loc_118A02F:                       If Not (var_8E = &HB) Then
  loc_118A038:                         If Not (var_8E = &HC) Then
  loc_118A041:                           If Not (var_8E = &HD) Then
  loc_118A04A:                             If Not (var_8E = &HE) Then
  loc_118A053:                               If Not (var_8E = &HF) Then
  loc_118A05C:                                 If Not (var_8E = &H10) Then
  loc_118A065:                                   If Not (var_8E = &H11) Then
  loc_118A06E:                                     If Not (var_8E = &H12) Then
  loc_118A077:                                       If Not (var_8E = &H13) Then
  loc_118A080:                                         If Not (var_8E = &H14) Then
  loc_118A089:                                           If Not (var_8E = &H15) Then
  loc_118A092:                                             If Not (var_8E = &H16) Then
  loc_118A09B:                                               If Not (var_8E = &H17) Then
  loc_118A0A4:                                                 If Not (var_8E = &H18) Then
  loc_118A0AD:                                                   If (var_8E = &H19) Then
  loc_118A0B0:                                                   End If
  loc_118A0B0:                                                 End If
  loc_118A0B0:                                               End If
  loc_118A0B0:                                             End If
  loc_118A0B0:                                           End If
  loc_118A0B0:                                         End If
  loc_118A0B0:                                       End If
  loc_118A0B0:                                     End If
  loc_118A0B0:                                   End If
  loc_118A0B0:                                 End If
  loc_118A0B0:                               End If
  loc_118A0B0:                             End If
  loc_118A0B0:                           End If
  loc_118A0B0:                         End If
  loc_118A0B0:                       End If
  loc_118A0B0:                     End If
  loc_118A0B0:                   End If
  loc_118A0B0:                 End If
  loc_118A0B0:               End If
  loc_118A0B0:             End If
  loc_118A0B0:           End If
  loc_118A0B0:         End If
  loc_118A0B0:       End If
  loc_118A0B0:     End If
  loc_118A0B0:   End If
  loc_118A0BA:   Set var_94 = Me.CmNC
  loc_118A0C0:   Call 0.Method_CmNC_UnknownEvent_90 (Index, var_98)
  loc_118A0C8:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_8E)
  loc_118A0D0:   var_AC = CStr()
  loc_118A0D8:   var_86 = Asc(var_AC)
  loc_118A0F8:   var_8C = CStr(Chr(CLng(var_86)))
  loc_118A104:   Me.MoveFirst
  loc_118A128:   Set var_94 = Me.TxtNCKOT
  loc_118A12E:   Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98, var_AC, "NcType Like '")
  loc_118A136:   0 = var_98.Text
  loc_118A156:   Me.Find 1 & var_AC & var_8C & "", var_C8, var_86
  loc_118A196:   If ((Me.BOF = 0) And (Me.EOF = 0)) Then
  loc_118A1A7:     Set var_94 = Me.TxtNCKOT
  loc_118A1AD:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98)
  loc_118A1CF:     Set var_D0 = Me.TxtNCKOT
  loc_118A1D5:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_D4)
  loc_118A1DD:     var_D4.Text = var_98.Text & var_8C
  loc_118A216:     Me.FGNCType.Row = CVar(CLng(Me.Bookmark))
  loc_118A234:     Me.FGNCType.Col = 1
  loc_118A23C:   End If
  loc_118A23F: Else
  loc_118A247:   If (var_8E = CInt(&H1A)) Then
  loc_118A258:     Set var_94 = Me.TxtNCKOT
  loc_118A25E:     Call 0.Method_CmNC_UnknownEvent_90 (CInt(1), var_98)
  loc_118A266:     var_98.Text = vbNullString
  loc_118A275:   Else
  loc_118A27D:     If (var_8E = CInt(&H1B)) Then
  loc_118A293:       var_C8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_118A2C4:       Set var_D0 = Me.Txt
  loc_118A2CA:       Call 0.Method_CmNC_UnknownEvent_90 (CInt(7), var_D4, CStr(Me.FGNCType.TextMatrix)))
  loc_118A2D2:       var_D4.Text = 1
  loc_118A2FF:       var_C8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_118A330:       Set var_D0 = Me.Txt
  loc_118A336:       Call 0.Method_CmNC_UnknownEvent_90 (CInt(7), var_D4, CStr(Me.FGNCType.TextMatrix)))
  loc_118A33E:       var_D4.Tag = 0
  loc_118A364:       Me.Frame.Visible = False
  loc_118A370:       Set var_94 = Me.CmChngSteward
  loc_118A376:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_C8)
  loc_118A389:       Me.FrameGrpItem.Enabled = CBool(var_C8)
  loc_118A398:     End If
  loc_118A398:   End If
  loc_118A398: End If
  loc_118A398: Exit Sub
End Sub

Private Sub FGNCType_UnknownEvent_9 'E9991C
  'Data Table: 5921DC
  Dim var_A8 As Variant
  Dim var_F4 As TextBox
  loc_E998BF: var_A8 = CVar(CLng(Me.FGNCType.Row)) 'Long
  loc_E998F0: Set var_F0 = Me.TxtNCKOT
  loc_E998F6: Call 0.Method_FGNCType_UnknownEvent_90 (CInt(1), var_F4, CStr(Me.FGNCType.TextMatrix)))
  loc_E998FE: var_F4.Text = 1
  loc_E99918: Exit Sub
End Sub

Private Sub SSPPrevious_UnknownEvent_9 '10ED210
  'Data Table: 5921DC
  Dim Me As Variant
  loc_10ECEF3: If (global_220 = "Item") Then
  loc_10ECEFC:   global_220 = "Item"
  loc_10ECF17:   If (Me.AbsolutePosition = -3) Then
  loc_10ECF25:     If (global_228 > CInt(&H10)) Then
  loc_10ECF49:       Me.AbsolutePosition = CLng((((global_228 - (global_228 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10ECF62:       Set var_94 = Me.SSPItem
  loc_10ECF85:       Call Proc_251_78_1284D58(Me.SSPItem, CInt(4), global_236)
  loc_10ECF91:       global_216 = CInt(var_A4)
  loc_10ECFA2:     End If
  loc_10ECFA5:   Else
  loc_10ECFD4:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10ECFEC:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10ECFFA:         Me.AbsolutePosition = 1
  loc_10ED002:       Else
  loc_10ED028:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10ED02D:       End If
  loc_10ED064:       Call Proc_251_78_1284D58(Me.SSPItem, CInt(4), global_236, CInt(4), Me.SSPItem)
  loc_10ED070:       global_216 = CInt(var_A4)
  loc_10ED081:     End If
  loc_10ED081:   End If
  loc_10ED084: Else
  loc_10ED08A:   global_220 = "Group"
  loc_10ED0A5:   If (Me.AbsolutePosition = -3) Then
  loc_10ED0B3:     If (global_224 > CInt(&H10)) Then
  loc_10ED0D7:       Me.AbsolutePosition = CLng((((global_224 - (global_224 Mod CInt(&H10))) - CInt(&H10)) + 1))
  loc_10ED113:       Call Proc_251_78_1284D58(Me.SSPGroup, CInt(4), global_240, CInt(4), Me.SSPGroup, var_A4)
  loc_10ED11F:       global_216 = CInt(var_A4)
  loc_10ED130:     End If
  loc_10ED133:   Else
  loc_10ED162:     If ((Me.AbsolutePosition <> -2) And (Me.AbsolutePosition <> -3)) Then
  loc_10ED17A:       If (Me.AbsolutePosition = CLng(&H10)) Then
  loc_10ED188:         Me.AbsolutePosition = 1
  loc_10ED190:       Else
  loc_10ED1B6:         Me.AbsolutePosition = ((Me.AbsolutePosition - CLng((2 * CInt(&H10)))) + 1)
  loc_10ED1BB:       End If
  loc_10ED1F2:       Call Proc_251_78_1284D58(Me.SSPGroup, CInt(4), global_240, CInt(4), Me.SSPGroup, var_A4, global_216)
  loc_10ED1FE:       global_216 = CInt(var_A4)
  loc_10ED20F:     End If
  loc_10ED20F:   End If
  loc_10ED20F: End If
  loc_10ED20F: Exit Sub
End Sub

Private Sub SSPNext_UnknownEvent_9 'F350AC
  'Data Table: 5921DC
  Dim Me As Variant
  loc_F34F9F: If (global_220 = "Item") Then
  loc_F34FA8:   global_220 = "Item"
  loc_F34FC3:   If (Me.AbsolutePosition > 0) Then
  loc_F34FCC:     Me.MoveNext
  loc_F34FE5:     Set var_94 = Me.SSPItem
  loc_F35008:     Call Proc_251_78_1284D58(Me.SSPItem, CInt(4), global_236)
  loc_F35014:     global_216 = CInt(var_A4)
  loc_F35025:   End If
  loc_F35028: Else
  loc_F3502E:   global_220 = "Group"
  loc_F35049:   If (Me.AbsolutePosition > 0) Then
  loc_F35052:     Me.MoveNext
  loc_F3508E:     Call Proc_251_78_1284D58(Me.SSPGroup, CInt(4), global_240, CInt(4), Me.SSPGroup)
  loc_F3509A:     global_216 = CInt(var_A4)
  loc_F350AB:   End If
  loc_F350AB: End If
  loc_F350AB: Exit Sub
End Sub

Private Sub CmChngMember_UnknownEvent_9 'F912DC
  'Data Table: 5921DC
  Dim var_B4 As String
  Dim var_88 As Recordset15
  Dim var_CC As Fields15
  Dim var_C8 As Variant
  Dim var_D8 As TextBox
  Dim var_D0 As TextBox
  loc_F91195: RsTouchScreenSteward.pOpenAs = "Member"
  loc_F911AD: Call 0.Method_arg_2B0 (1)
  loc_F911D4: var_B4 = "Select Name,CardNo From SubGroup where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') And SubCode='" & MemVar_1F95234
  loc_F911E4: RsTouchScreenSteward.Connection15.Execute var_B4 & "'", var_C8, -1
  loc_F911EF: Set var_88 = var_CC
  loc_F91212: var_CC = var_88.Fields
  loc_F9121A: var_D0 = var_CC.Item("Name")
  loc_F91239: Set var_D4 = Me.Txt
  loc_F9123F: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HB), var_D8)
  loc_F91247: var_D8.Text = Proc_6_38_E69628(CVar(var_D0), var_CC)
  loc_F91269: Set var_CC = Me.Txt
  loc_F9126F: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HB), var_D0)
  loc_F91277: var_D0.Tag = MemVar_1F95234
  loc_F912B9: Set var_D4 = Me.Txt
  loc_F912BF: Call 0.Method_CmChngMember_UnknownEvent_90 (CInt(&HC), var_D8)
  loc_F912C7: var_D8.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))
  loc_F912DB: Exit Sub
End Sub

Private Sub HeadExit_UnknownEvent_9 'E17F28
  'Data Table: 5921DC
  loc_E17F1D: Me.Global.Unload Me
  loc_E17F25: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'E12808
  'Data Table: 5921DC
  loc_E127F9: Call FGrid_UnknownEvent_C()
  loc_E12803: global_110 = 0
  loc_E12806: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_C(Index As Integer) 'F7C3B4
  'Data Table: 5921DC
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As MSHFlexGrid
  loc_F7C26C: Set var_88 = Me.TopCtrl1
  loc_F7C272: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F7C28B: If (CStr() = "Browse") Then
  loc_F7C28E:   Exit Sub
  loc_F7C28F: End If
  loc_F7C2A2: var_A0 = CLng(Me.FGrid.Col)
  loc_F7C2B2: If (var_A0 = CLng(4)) Then
  loc_F7C2B5:   GoTo loc_F7C39B
  loc_F7C2B8: End If
  loc_F7C2BF: If (var_A0 = CLng(2)) Then
  loc_F7C2C2:   GoTo loc_F7C39B
  loc_F7C2C5: End If
  loc_F7C2CC: If (var_A0 = CLng(6)) Then
  loc_F7C2E2:   var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F7C2EA:   var_D0 = CVar(CLng(&HA)) 'Long
  loc_F7C31D:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_F7C320:     Exit Sub
  loc_F7C321:   End If
  loc_F7C32D:   RsTouchScreenSteward.pRestCode = LocalRestCode
  loc_F7C33B:   RsTouchScreenSteward.pOpenAs = "Description"
  loc_F7C344:   var_B0 = 1
  loc_F7C353:   Call 0.Method_arg_2B0 (var_B0, var_C0, var_D0)
  loc_F7C35C:   Set var_88 = var_A0(var_B0)
  loc_F7C36B:   var_B0 = CVar(CLng(RsTouchScreenSteward.FGrid.Row)) 'Long
  loc_F7C373:   var_D0 = CVar(CLng(6)) 'Long
  loc_F7C383:   Set var_E4 = Me.FGrid
  loc_F7C389:   LateIdCallSt
  loc_F7C39B:   ' Referenced from: F7C2C2
  loc_F7C39B:   ' Referenced from: F7C2B5
  loc_F7C39B: End If
  loc_F7C3A5: If (CLng(Index) <> &HD) Then
  loc_F7C3AD:   global_110 = &HFF
  loc_F7C3B0: End If
  loc_F7C3B0: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_E(Index As Integer) 'E52644
  'Data Table: 5921DC
  loc_E52616: If (Index = 1) Then
  loc_E5262F:   global_96 = CLng(Me.FGrid.TopRow)
  loc_E5263F:   global_100 = CLng(arg_18)
  loc_E52642: End If
  loc_E52642: Exit Sub
End Sub

Public Sub FGrid_UnknownEvent_F(Index As Integer) 'F2EEAC
  'Data Table: 5921DC
  Dim var_A8 As Variant
  loc_F2EDA2: If (Index = 1) Then
  loc_F2EDBE:   If (CDbl(Abs(((arg_18 - CDbl(global_100)) / CDbl(global_104)))) >= CDbl(1)) Then
  loc_F2EDCD:     If (CDbl(arg_18) > CDbl(global_100)) Then
  loc_F2EDEF:       If (CLng(Me.FGrid.TopRow) > 1) Then
  loc_F2EE0B:         var_A8 = CVar((CLng(Me.FGrid.TopRow) - 1)) 'Long
  loc_F2EE1A:         Me.FGrid.TopRow = var_A8
  loc_F2EE29:       End If
  loc_F2EE2C:     Else
  loc_F2EE67:       If ((CLng(Me.FGrid.TopRow) + 1) < CLng(Me.FGrid.Rows)) Then
  loc_F2EE83:         var_A8 = CVar((CLng(Me.FGrid.TopRow) + 1)) 'Long
  loc_F2EE92:         Me.FGrid.TopRow = var_A8
  loc_F2EEA1:       End If
  loc_F2EEA1:     End If
  loc_F2EEA8:     global_100 = CLng(arg_18)
  loc_F2EEAB:   End If
  loc_F2EEAB: End If
  loc_F2EEAB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'FA8BC8
  'Data Table: 5921DC
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim var_CC As Variant
  loc_FA8A49: Me.TxtQty.Text = vbNullString
  loc_FA8A5E: Me.TxtQty.Tag = vbNullString
  loc_FA8A73: Me.LblVtype.Caption = vbNullString
  loc_FA8A7F: Set var_88 = Me.TopCtrl1
  loc_FA8A85: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FA8A9E: If (CStr() = "Browse") Then
  loc_FA8AA1:   Exit Sub
  loc_FA8AA2: End If
  loc_FA8AB5: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA8ABD: var_CC = CVar(CLng(&HA)) 'Long
  loc_FA8AF0: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FA8AF3:   Exit Sub
  loc_FA8AF4: End If
  loc_FA8B07: var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FA8B0F: var_CC = CVar(CLng(0)) 'Long
  loc_FA8B42: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_FA8B45:   Exit Sub
  loc_FA8B46: End If
  loc_FA8B69: If (CLng(Me.FGrid.Col) = CLng(7)) Then
  loc_FA8B78:   Me.FrameQty.Visible = True
  loc_FA8B8D:   Me.TxtQty.Text = vbNullString
  loc_FA8BA6:   Me.TxtQty.Tag = CStr(2)
  loc_FA8BBE:   Me.LblVtype.Caption = "Qty"
  loc_FA8BC6: End If
  loc_FA8BC6: Exit Sub
End Sub

Private Sub Form_Load() '15A24A8
  'Data Table: 5921DC
  Dim var_A4 As String
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_B8 As String
  Dim var_BC As String
  Dim unk_5921F8 As Connection15
  Dim var_A8 As Recordset15
  Dim var_D8 As Variant
  Dim var_EC As Variant
  Dim var_F0 As Variant
  Dim MemVar_1F95E84 As String
  Dim var_B4 As String
  Dim var_88 As Recordset15
  Dim var_100 As Variant
  Dim var_114 As Variant
  Dim var_118 As Variant
  Dim Me As Variant
  Dim var_E8 As Variant
  Dim var_130 As Variant
  Dim var_1E8 As Integer
  Dim var_1D8 As Fields15
  Dim var_1EC As Field20
  Dim var_110 As Variant
  Dim var_154 As Variant
  Dim var_140 As String
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As String
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim var_8C As Recordset15
  Dim var_94 As Recordset15
  Dim var_90 As Recordset15
  loc_15A12F0: On Error Goto loc_15A24A1
  loc_15A12F3: Call Proc_251_89_101DC1C()
  loc_15A12FF: Call 0.Method_arg_7C (CDbl(0))
  loc_15A130B: Call 0.Method_arg_74 (CDbl(0))
  loc_15A1321: If (OpenMode = 1) Then
  loc_15A1332:   LocalRestCode = pRestCode
  loc_15A1339: End If
  loc_15A133C: MemVar_1F95E84 = "***P"
  loc_15A1369: var_B8 = "SELECT Param_Str AS UPrivilege FROM menuHelp WHERE UserName='" & MemVar_1F950C8 & "' AND CompCode='" & MemVar_1F95128 & "' AND [Option]='"
  loc_15A1372: Call 0.Method_arg_50 (var_B4, var_B8, var_E8)
  loc_15A137B: var_BC = -1 & var_B4
  loc_15A139C: unk_5921F8.Execute var_BC & "' And OutletCode='" & LocalRestCode & "'", var_EC, 
  loc_15A13A7: Set var_A8 = var_EC
  loc_15A13D9: If (var_A8.RecordCount > 0) Then
  loc_15A13EE:   var_EC = var_A8.Fields
  loc_15A13FE:   var_E8 = var_EC.Item("UPrivilege").Value
  loc_15A1407:   MemVar_1F95E84 = CStr(var_E8)
  loc_15A1415: End If
  loc_15A141A: Set var_A8 = Nothing
  loc_15A1442: var_B0 = "Select ShortName,Code,RestType from Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Code='" & LocalRestCode
  loc_15A1452: unk_5921F8.Execute var_B0 & "'", var_E8, -1
  loc_15A145D: Set var_88 = var_EC
  loc_15A1485: If (var_88.RecordCount > 0) Then
  loc_15A14B9:   global_152 = CStr(var_88.Fields.Item("ShortName").Value)
  loc_15A14FB:   global_156 = CStr(var_88.Fields.Item("Code").Value)
  loc_15A1526:   var_F0 = var_88.Fields.Item("RestType")
  loc_15A153D:   LocalRestType = CStr(var_F0.Value)
  loc_15A154E: End If
  loc_15A155C: var_E8 = Trim(LocalRestType)
  loc_15A156F: If CBool(var_E8 <> "Room Service") Then
  loc_15A1585:   Call 0.Method_Form_Load0 (CInt(7), var_F0, 0)
  loc_15A158D:   var_F0.Visible = Me.Label1
  loc_15A15A6:   Set var_EC = Me.Label1
  loc_15A15AC:   Call 0.Method_Form_Load0 (CInt(8), var_F0)
  loc_15A15B4:   var_F0.Visible = False
  loc_15A15CD:   Set var_EC = Me.Label1
  loc_15A15D3:   Call 0.Method_Form_Load0 (CInt(9), var_F0)
  loc_15A15DB:   var_F0.Visible = False
  loc_15A15F4:   Set var_EC = Me.Txt
  loc_15A15FA:   Call 0.Method_Form_Load0 (CInt(8), var_F0)
  loc_15A1602:   var_F0.Visible = False
  loc_15A161B:   Set var_EC = Me.Txt
  loc_15A1621:   Call 0.Method_Form_Load0 (CInt(9), var_F0)
  loc_15A1629:   var_F0.Visible = False
  loc_15A1642:   Set var_EC = Me.Txt
  loc_15A1648:   Call 0.Method_Form_Load0 (CInt(&HA), var_F0)
  loc_15A1650:   var_F0.Visible = False
  loc_15A165C: End If
  loc_15A1662: var_100 = 0
  loc_15A1697: var_B4 = "Select Name From Depart Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Code ='" & LocalRestCode & "'"
  loc_15A16A0: unk_5921F8.Execute var_B4, var_E8, -1
  loc_15A16A8: var_EC = var_EC.Fields
  loc_15A16B0: var_100 = var_F0.Item(var_F0)
  loc_15A16B8: var_114 = var_114.Value
  loc_15A16CE: Me.LblRest.Caption = CStr(var_110)
  loc_15A1709: var_A4 = "Select Distinct IG.Code,IG.Name as Name,IC.CatType,IG.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & LocalRestCode
  loc_15A171E: var_B4 = var_A4 & "' And (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_15A1727: unk_5921F8.Execute var_B4, var_E8, -1
  loc_15A1768: var_A4 = "Select I.Code,I.Name as Name,I.ItemGroup,IC.CatType,i.PicPath From ItemMast I Left Join ItemGrp IG On I.ItemGroup=IG.Code Left Join ItemCatMast IC On I.ItemCatCode=IC.Code where I.Restcode='" & LocalRestCode
  loc_15A177D: var_B4 = var_A4 & "' And (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999 Order by Name"
  loc_15A1786: unk_5921F8.Execute var_B4, var_E8, -1
  loc_15A1797: Set global_236 = var_EC
  loc_15A17C1: var_E8 = CVar(Me.RecordCount) 'Long
  loc_15A17C8: Proc_6_39_E7D3A0(var_110, var_E8, var_EC)
  loc_15A17D4: global_224 = CInt(var_110)
  loc_15A17F2: Set var_F0 = Me.SSPItem
  loc_15A1815: Call Proc_251_78_1284D58(Me.SSPGroup, CInt(4), Me.SSPGroup, CInt(4), var_F0)
  loc_15A1821: global_216 = CInt(var_E8)
  loc_15A183C: Set global_180 = New 
  loc_15A184E: Me.SSPItem.CursorLocation = 3
  loc_15A1876: Me.Open "SELECT NcPer,NCType FROM NCTypeMast ORDER BY NCType", CVar(MemVar_1F95044), 3
  loc_15A1884: CVarUnk
  loc_15A1889: VerifyVarObj
  loc_15A188F: Set var_EC = Me.FGNCType
  loc_15A1895: LateIdStAd
  loc_15A18A7: Set var_120 = Me.FGNCType
  loc_15A18AA: var_D8 = 0
  loc_15A18B3: var_130 = 0
  loc_15A18BF: LateIdCallSt
  loc_15A18C7: var_D8 = 1
  loc_15A18D0: var_130 = &HE74
  loc_15A18DC: LateIdCallSt
  loc_15A18E4: var_D8 = 1
  loc_15A18F3: var_130 = CVar(CInt(1)) 'Integer
  loc_15A18FA: LateIdCallSt
  loc_15A1902: var_D8 = 1
  loc_15A1911: var_130 = CVar(CInt(1)) 'Integer
  loc_15A1918: LateIdCallSt
  loc_15A192F: var_E8 = Me.FGNCType.Rows
  loc_15A1945: For var_144 = 1 To CInt((CLng(var_E8) - 1)): var_96 = var_144 'Integer
  loc_15A194F:   var_D8 = CVar(CLng(var_96)) 'Long
  loc_15A1954:   var_130 = &H320
  loc_15A1960:   LateIdCallSt
  loc_15A196B: Next var_144 'Integer
  loc_15A1972: Set var_120 = Nothing 
  loc_15A1976: Call Proc_251_95_11FD7D8()
  loc_15A1985: Set global_76 = New 
  loc_15A1997: Me.var_E8.CursorLocation = 3
  loc_15A199F: var_D8 = MemVar_1F950EC
  loc_15A19A7: Proc_6_7_F26918(var_E8)
  loc_15A19B2: var_130 = 0
  loc_15A19E2: unk_5921F8.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_164, -1
  loc_15A19EA: var_EC = var_EC.Fields
  loc_15A19F2: var_130 = var_F0.Item(var_F0)
  loc_15A19FA: var_114 = var_114.Value
  loc_15A1A05: var_1E8 = 0
  loc_15A1A25: var_B4 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_15A1A35: unk_5921F8.Execute var_B4 & "'", var_1D4, -1
  loc_15A1A3D: var_118 = var_118.Fields
  loc_15A1A45: var_1E8 = var_1D8.Item(var_1D8)
  loc_15A1A4D: var_1EC = var_1EC.Value
  loc_15A1A70: var_A4 = "Select Distinct K.DocId as SearchCode,K.DocID,K.RESTCODE,K.SITE_CODE,K.LOGSITE_CODE,K.ROOMNO,K.VDATE,K.Pending  From KOT K WHERE   LOGSITE_CODE='" & MemVar_1F95078
  loc_15A1A81: var_140 = " And DelFlag NOT IN ('Y') OR DelFlag IS NULL) AND (K.VType='K"
  loc_15A1A89: var_184 = (var_140 + var_174)
  loc_15A1A8D: var_194 = CVar(var_A4 & "' AND (K.Pending='Y'  AND NCKOT='N'  And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") & var_E8 & var_184 
  loc_15A1AB1: Me.Open var_194 & "' OR K.VType='" & var_1FC & "') Order by Docid", CVar(MemVar_1F95044), 3
  loc_15A1B00: If (OpenType = "Pending KOT") Then
  loc_15A1B38:   Proc_6_7_F26918(var_E8, MemVar_1F950EC, CVar("RESTCODE='" & LocalRestCode & "' And RoomNo='" & PTableNo & "'And Pending='Y' AND Vdate="), 1)
  loc_15A1B40:   var_154 = -1 & var_E8 
  loc_15A1B4B:   Me.Filter = CVar("RESTCODE='" & LocalRestCode & "' AND (K.Pending='Y'  AND NCKOT='N'  And DelFlag NOT IN ('Y') OR DelFlag IS NULL) OR (K.VDate=") & var_E8
  loc_15A1B7B:   If (Me.RecordCount > 0) Then
  loc_15A1B92:     If (Me.EOF = &HFF) Then
  loc_15A1B9B:       Me.MoveFirst
  loc_15A1BA0:     End If
  loc_15A1BC8:     var_EC = Me.Fields
  loc_15A1BD0:     var_F0 = var_EC.Item("SearchCode")
  loc_15A1BE0:     var_110 = "SearchCode='" & var_F0.Value 
  loc_15A1BF7:     Me.Find CStr(var_110 & "'"), 0, 1
  loc_15A1C0F:   End If
  loc_15A1C12: Else
  loc_15A1C1C:   var_A4 = "RESTCODE='" & LocalRestCode
  loc_15A1C23:   var_E8 = CVar(var_A4 & "'") 'String
  loc_15A1C2D:   Me.Filter = var_E8
  loc_15A1C5D:   Call 0.Method_arg_50 (var_A4, "SELECT COUNT(*) FROM LASTVOU WHERE  ENAME='", var_E8, -1, var_EC, var_F0, 0)
  loc_15A1C84:   unk_5921F8.Execute var_114 & var_A4 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_110, var_140
  loc_15A1C8C:   var_1FC = var_EC.Fields
  loc_15A1C94:   var_D8 = var_F0.Item(var_174)
  loc_15A1C9C:    = var_114.Value
  loc_15A1CC9:   If (var_110 > 0) Then
  loc_15A1D04:     Call 0.Method_arg_50 (var_A4, "SELECT DOCID FROM LASTVOU WHERE ENAME='", var_E8, -1, var_EC, var_F0, 0)
  loc_15A1D2B:     unk_5921F8.Execute var_114 & var_A4 & "' AND UNAME='" & MemVar_1F950C8 & "'", var_110, "SearchCode='"
  loc_15A1D33:     0 = var_EC.Fields
  loc_15A1D3B:     var_1A4 = var_F0.Item(1)
  loc_15A1D43:      = var_114.Value
  loc_15A1D62:     Me.Find CStr(var_110 & "'"), , 
  loc_15A1D8A:   End If
  loc_15A1DA1:   If (Me.RecordCount > 0) Then
  loc_15A1DAD:     var_11A = Me.EOF
  loc_15A1DB8:     If (var_11A = &HFF) Then
  loc_15A1DC1:       Me.MoveLast
  loc_15A1DC6:     End If
  loc_15A1DC6:   End If
  loc_15A1DC6: End If
  loc_15A1DCF: Call 0.Method_arg_160 (var_EC)
  loc_15A1DDD: Call 0.Method_arg_164 (var_EC)
  loc_15A1E08: Call Proc_251_90_104CE7C(Proc_5_1_100EC1C("INI", Me))
  loc_15A1E1F: Set var_EC = Me.CmdCatType
  loc_15A1E25: Call 0.Method_Form_Load8 (var_11A, var_96)
  loc_15A1E30: For var_240 = global_76 To var_11A: 0 = var_240 'Integer
  loc_15A1E47:   Set var_EC = Me.CmdCatType
  loc_15A1E4D:   Call 0.Method_Form_Load0 (var_96, var_F0)
  loc_15A1E55:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15A1E64: Next var_240 'Integer
  loc_15A1E74: Set var_EC = Me.SSPPrevious
  loc_15A1E7A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15A1E85: var_D8 = CVar(MemVar_1F951B4) 'String
  loc_15A1E8D: Set var_EC = Me.SSPNext
  loc_15A1E93: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(var_D8)
  loc_15A1EA6: Set var_EC = Me.CmChngSteward
  loc_15A1EAC: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15A1EBF: Set var_EC = Me.CmNoOfPersons
  loc_15A1EC5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15A1ED8: Set var_EC = Me.CmChngToNC
  loc_15A1EDE: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15A1EF1: Set var_EC = Me.CmTransKOT
  loc_15A1EF7: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15A1F0A: Set var_EC = Me.CmChngMember
  loc_15A1F10: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15A1F2B: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_15A1F3A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_15A1F4D: Me.FrameQty.BackColor = CLng(MemVar_1F951B4)
  loc_15A1F68: Me.FGrid1.BackColorBkg = CVar(CLng(MemVar_1F951B4))
  loc_15A1F7E: Me.LblPendingKot.BackColor = CLng(MemVar_1F951B4)
  loc_15A1F92: Set var_EC = Me.CmFgrid
  loc_15A1F98: Call 0.Method_Form_Load8 (var_11A, var_96)
  loc_15A1FA3: For var_244 =  To var_11A: 0 = var_244 'Integer
  loc_15A1FBA:   Set var_EC = Me.CmFgrid
  loc_15A1FC0:   Call 0.Method_Form_Load0 (var_96, var_F0)
  loc_15A1FC8:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_1D(CVar(MemVar_1F951B4))
  loc_15A1FD7: Next var_244 'Integer
  loc_15A1FEA: Me.ChkNCKOT.BackColor = CLng(MemVar_1F951B4)
  loc_15A2000: Me.FrameGrpItem.BackColor = CLng(MemVar_1F951B4)
  loc_15A2008: Call Proc_251_74_127440C()
  loc_15A2016: Set var_EC = Me.SSPGroup
  loc_15A201C: Call 0.Method_Form_Load0 (0)
  loc_15A2024: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010005(var_F0)
  loc_15A2045: Me.FrameGrpItem.Width = ((CDbl(4) * CDbl(var_E8)) + CDbl(&H32))
  loc_15A2073: If (Me.FrameGrpItem.Width < CDbl(6600)) Then
  loc_15A2085:   Me.FrameGrpItem.Width = CDbl(6600)
  loc_15A208D: End If
  loc_15A2096: Set var_EC = Me.SSPGroup
  loc_15A209C: Call 0.Method_Form_Load0 (0)
  loc_15A20A4: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006(var_F0)
  loc_15A20C9: Set var_114 = Me.FrameGrpItem
  loc_15A20CF: var_114.Height = (((CDbl((CInt(4) + 1)) * CDbl(var_E8)) + CDbl(&H32)) + CDbl(300))
  loc_15A20E3: var_100 = 0
  loc_15A2110: unk_5921F8.Execute "Select FreeiteminKOT from enviro where LogSite_code='" & MemVar_1F95078 & "'", var_E8, -1
  loc_15A2118: var_EC = var_EC.Fields
  loc_15A2120: var_100 = var_F0.Item(var_F0)
  loc_15A2128: var_110 = CVar(var_114) 'Address
  loc_15A2150: If (Proc_6_38_E69628(var_110) <> "Yes") Then
  loc_15A2163:   Set var_EC = Me.CmFgrid
  loc_15A2169:   Call 0.Method_Form_Load0 (CInt(5), var_F0)
  loc_15A2171:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_15A217D: End If
  loc_15A2198: var_AC = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_15A21A6: var_154 = CVar(var_AC & MemVar_1F95078 & "') and V_Type='") 'String
  loc_15A21AF: var_100 = 0
  loc_15A21CF: var_B4 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_15A21D6: var_B8 = var_114 & "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND UNAME='" & MemVar_1F950C8 & "'"
  loc_15A21DF: unk_5921F8.Execute var_B8, var_E8, -1
  loc_15A21E7: var_EC = var_EC.Fields
  loc_15A21EF: var_100 = var_F0.Item(var_F0)
  loc_15A21F7: var_114 = var_114.Value
  loc_15A2216: unk_5921F8.Execute CStr(var_110 & var_110 & "' Order by Description"), var_154, var_184
  loc_15A2221: Set var_8C = var_118
  loc_15A2261: If (var_8C.RecordCount > 0) Then
  loc_15A2295:   global_136 = CStr(var_8C.Fields.Item(0).Value)
  loc_15A22A6: End If
  loc_15A22AB: Set var_88 = Nothing
  loc_15A22B3: Set var_8C = Nothing
  loc_15A22BA: Set var_94 = New 
  loc_15A22C5: Me.Recordset15.CursorLocation = 3
  loc_15A22F9: var_B0 = "select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 & "'or LOGSITE_CODE='HO') and Code='" & LocalRestCode
  loc_15A2307: var_94.Open CVar(var_B0 & "'"), CVar(MemVar_1F95044), 3
  loc_15A232C: If (var_94.RecordCount > 0) Then
  loc_15A2346:   var_F0 = var_94.Fields.Item("MemberInfo")
  loc_15A234E:   var_E8 = CVar(var_F0) 'Address
  loc_15A2357:   var_A4 = Proc_6_38_E69628(var_E8, 1, -1)
  loc_15A2368:   If ("select MemberInfo from Depart where (Logsite_code='" & MemVar_1F95078 = "Y") Then
  loc_15A2378:     Set var_EC = Me.Txt
  loc_15A237E:     Call 0.Method_Form_Load0 (CInt(&HB), var_F0, &HFF)
  loc_15A2386:     var_F0.Visible = True
  loc_15A239D:     Set var_EC = Me.Label1
  loc_15A23A3:     Call 0.Method_Form_Load0 (&HB, var_F0, &HFF)
  loc_15A23AB:     var_F0.Visible = var_118
  loc_15A23C4:     Set var_EC = Me.Txt
  loc_15A23CA:     Call 0.Method_Form_Load0 (CInt(&HC), var_F0)
  loc_15A23D2:     var_F0.Visible = True
  loc_15A23E6:     Set var_EC = Me.CmChngMember
  loc_15A23EC:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_15A2411:     Proc_6_17_EAAE40(var_E8, MemVar_1F95078, "SELECT * FROM MEMENVIRO WHERE LOGSITE_CODE=", var_154)
  loc_15A2419:     var_110 = -1 & var_E8 
  loc_15A2427:     unk_5921F8.Execute CStr(var_110), var_EC, var_114
  loc_15A2432:     Set var_90 = var_EC
  loc_15A2458:     If (var_90.RecordCount > 0) Then
  loc_15A2489:       global_160 = Proc_6_38_E69628(CVar(var_90.Fields.Item("MemberVarificationInKOT")))
  loc_15A2496:     End If
  loc_15A2496:   End If
  loc_15A2496: End If
  loc_15A2496: Call Proc_251_87_16D3768()
  loc_15A249B: Call Proc_251_71_127DA08()
  loc_15A24A0: Exit Sub
  loc_15A24A1: ' Referenced from: 15A12F0
  loc_15A24A1: Proc_6_60_E63754()
  loc_15A24A6: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E8AFA8
  'Data Table: 5921DC
  loc_E8AF3B: Set global_84 = Nothing
  loc_E8AF4D: Set global_72 = Nothing
  loc_E8AF5F: Set global_88 = Nothing
  loc_E8AF71: Set global_80 = Nothing
  loc_E8AF83: Set global_76 = Nothing
  loc_E8AF95: Set global_180 = Nothing
  loc_E8AFA1: MasterFormExit = 0
  loc_E8AFA4: Exit Sub
End Sub

Private Sub Form_Activate() 'F8ECA8
  'Data Table: 5921DC
  Dim var_90 As String
  Dim var_F8 As Variant
  Dim var_D4 As Integer
  Dim var_98 As String
  Dim unk_5921F8 As Connection15
  Dim var_C0 As Variant
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_108 As Variant
  Dim var_88 As Recordset15
  loc_F8EB8F: var_90 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_F8EB9D: var_F8 = CVar(var_90 & MemVar_1F95078 & "') AND V_Type='") 'String
  loc_F8EBA6: var_D4 = 0
  loc_F8EBC6: var_98 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_F8EBD6: unk_5921F8.Execute var_98 & "'", var_BC, -1
  loc_F8EBDE: var_C0 = var_C0.Fields
  loc_F8EBE6: var_D4 = var_C4.Item(var_C4)
  loc_F8EBEE: var_D8 = var_D8.Value
  loc_F8EBF6: var_108 = var_E8 & var_E8 
  loc_F8EC0D: unk_5921F8.Execute CStr(var_108 & "' Order by Description"), var_F8, var_14C
  loc_F8EC58: If (var_150.RecordCount > 0) Then
  loc_F8EC5B:   GoTo loc_F8EC9D
  loc_F8EC5E: End If
  loc_F8EC77: MsgBox("KOT Not Configured for selected Restaurant", 0, var_E8, var_F8, var_108)
  loc_F8EC94: Me.Global.Unload Me
  loc_F8EC9C: Exit Sub
  loc_F8EC9D: ' Referenced from: F8EC5B
  loc_F8ECA2: Set var_88 = Nothing
  loc_F8ECA5: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E269C4
  'Data Table: 5921DC
  loc_E269A9: If (MasterFormExit = &HFF) Then
  loc_E269B9:   Me.Global.Unload Me
  loc_E269C1: End If
  loc_E269C1: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E997B4
  'Data Table: 5921DC
  Dim var_88 As Frame
  loc_E99734: On Error Goto loc_E997AC
  loc_E9973B: Set var_88 = Me.TopCtrl1
  loc_E99741: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E9975A: If (CStr() = "Edit") Then
  loc_E9976E:   If ((CLng(KeyCode) = &H4D) And (Shift = 2)) Then
  loc_E9977E:     Me.Frame.Caption = "Go"
  loc_E99786:   End If
  loc_E99786: End If
  loc_E99786: Call Proc_251_76_119CB50()
  loc_E997A3: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E997AB: Exit Sub
  loc_E997AC: ' Referenced from: E99734
  loc_E997AC: Proc_6_60_E63754(Shift)
  loc_E997B1: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_9 '10A27B0
  'Data Table: 5921DC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_10A24FF: Me.DGItem.Visible = False
  loc_10A251E: If (Me.RecordCount > 0) Then
  loc_10A255B:   Set var_B4 = Me.TxtGrid
  loc_10A2561:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B8)
  loc_10A2569:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_10A2592:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A259A:   var_EC = CVar(CLng(4)) 'Long
  loc_10A25CD:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_10A25D5:   Set var_B8 = Me.FGrid
  loc_10A25DB:   LateIdCallSt
  loc_10A260A:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A2612:   var_EC = CVar(CLng(&HA)) 'Long
  loc_10A2645:   var_11C = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_10A2653:   LateIdCallSt
  loc_10A26BA:   var_11C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(Me.FGrid.Row)), Me.FGrid, var_11C, CVar(CLng(5)))) 'String
  loc_10A26C2:   Set var_B8 = Me.FGrid
  loc_10A26C8:   LateIdCallSt
  loc_10A26F5:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_10A26FD:   var_EC = CVar(CLng(3)) 'Long
  loc_10A271F:   var_B0 = Me.Fields.Item("DispCode")
  loc_10A2730:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_10A2738:   Set var_B8 = Me.FGrid
  loc_10A273E:   LateIdCallSt
  loc_10A275A: End If
  loc_10A2766: Set var_A8 = Me.TxtGrid
  loc_10A276C: Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC, var_A4)
  loc_10A2774: var_B8 = var_B0.Visible
  loc_10A2786: If (var_12E = &HFF) Then
  loc_10A2792:   Set var_A8 = Me.TxtGrid
  loc_10A2798:   Call 0.Method_DGItem_UnknownEvent_90 (0, var_B0, var_11C, var_A4)
  loc_10A27A0:   var_B0.SetFocus
  loc_10A27AC: End If
  loc_10A27AC: Exit Sub
End Sub

Private Sub DGItem_UnknownEvent_1F 'E9F6A0
  'Data Table: 5921DC
  Dim var_A8 As Variant
  loc_E9F624: Set var_88 = Me.DGItem
  loc_E9F64E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9F656: Set var_BC = Me.DGItem
  loc_E9F690: Proc_6_138_106E830(Me.DGItem, global_72, 0, Me.FGPoint)
  loc_E9F69E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '1218D50
  'Data Table: 5921DC
  Dim var_9C As Variant
  Dim var_114 As Double
  Dim var_100 As String
  Dim var_104 As String
  Dim var_10C As String
  Dim unk_5921F8 As Connection15
  Dim var_94 As Variant
  Dim var_AC As Variant
  Dim var_11C As Variant
  Dim var_12C As Integer
  Dim var_134 As TextBox
  Dim MemVar_1F9501C As String
  loc_1218894: On Error Goto loc_1218D49
  loc_12188BA: Call Proc_251_90_104CE7C(Proc_5_1_100EC1C("ADD", Me))
  loc_12188C5: Call Proc_251_71_127DA08(global_76)
  loc_12188CA: Call Proc_251_89_101DC1C()
  loc_12188E2: Set var_94 = Me.Txt
  loc_12188E8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_9C)
  loc_12188F0: var_9C.Text = CStr(MemVar_1F950EC)
  loc_12188FF: Call ChkNCKOT_Click()
  loc_1218944: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(2), var_9C, CStr(Format(Time, "hh:nn")))
  loc_121894C: var_9C.Text = 1
  loc_1218967: var_AC = Time
  loc_121897B: var_CC = "HH:MM"
  loc_12189C2: var_8C = Replace(CStr(Left(CVar(CStr(Format(var_AC, var_CC))), 5)), ":", ".", 1, -1, 0)
  loc_12189DF: var_114 = Val(var_8C)
  loc_1218A10: var_10C = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND " & CStr(var_114) & " BETWEEN FromTime AND ToTime"
  loc_1218A19: unk_5921F8.Execute var_10C, var_AC, -1
  loc_1218A24: Set var_88 = Me.Txt
  loc_1218A51: If (Me.Recordset15.RecordCount > 0) Then
  loc_1218A66:   var_94 = Me.Recordset15.Fields
  loc_1218A6E:   var_9C = var_94.Item("Name")
  loc_1218A76:   var_AC = CVar(var_9C) 'Address
  loc_1218A8C:   Me.lblSession.Caption = Proc_6_38_E69628(var_AC, var_94, var_114)
  loc_1218A9E: End If
  loc_1218AB2: If (RsTouchScreenKOTEntry.OpenMode = 1) Then
  loc_1218ABB:   var_12C = 0
  loc_1218AE2:   var_100 = "SELECT ISNULL(MAX(GUARATT),0) FROM (SELECT TOP 1 GUARATT FROM KOT WHERE RestCode='" & LocalRestCode & "' And Pending='Y' AND VOIDYN<>'Y' AND (DELFLAG='N' or DELFLAG='') AND NCKOT<>'Y' AND ROOMNO='"
  loc_1218AFC:   unk_5921F8.Execute var_100 & global_196 & "' Order By Vno Desc)Q", var_AC, -1
  loc_1218B04:   var_94 = var_94.Fields
  loc_1218B0C:   var_12C = var_9C.Item(var_9C)
  loc_1218B14:   var_11C = var_11C.Value
  loc_1218B2B:   Set var_130 = Me.Txt
  loc_1218B31:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&HD), var_134, CStr(var_CC), var_CC)
  loc_1218B39:   var_134.Text = 1
  loc_1218B70:   Set var_94 = Me.Txt
  loc_1218B76:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C, global_196)
  loc_1218B7E:   var_9C.Text = 1
  loc_1218B9B:   Set var_94 = Me.Txt
  loc_1218BA1:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(4), var_9C)
  loc_1218BA9:   var_9C.Tag = global_196
  loc_1218BB5: End If
  loc_1218BC0: If (global_204 = vbNullString) Then
  loc_1218BC3:   Call CmChngSteward_UnknownEvent_9()
  loc_1218BCB: Else
  loc_1218BD1:   var_12C = 0
  loc_1218BFF:   var_104 = "Select W.Code From Waiter W Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and W.name like ' & global_204
  loc_1218C0F:   unk_5921F8.Execute var_104 & "", var_AC, -1
  loc_1218C17:   var_94 = var_94.Fields
  loc_1218C1F:   var_12C = var_9C.Item(var_9C)
  loc_1218C27:   var_11C = var_11C.Value
  loc_1218C34:   MemVar_1F9501C = Proc_6_38_E69628(var_CC, var_CC)
  loc_1218C53: End If
  loc_1218C59: var_12C = 0
  loc_1218C84: var_104 = "Select Max(W.Name) As Name From Waiter W wHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9501C
  loc_1218C94: unk_5921F8.Execute var_104 & "'", var_AC, -1
  loc_1218C9C: var_94 = var_94.Fields
  loc_1218CA4: var_12C = var_9C.Item(var_9C)
  loc_1218CAC: var_11C = var_11C.Value
  loc_1218CC7: Set var_130 = Me.Txt
  loc_1218CCD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_134, Proc_6_38_E69628(var_CC, var_CC))
  loc_1218CD5: var_134.Text = MemVar_1F9501C
  loc_1218D09: Set var_94 = Me.Txt
  loc_1218D0F: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(5), var_9C)
  loc_1218D17: var_9C.Tag = MemVar_1F9501C
  loc_1218D2E: Set var_94 = Me.Txt
  loc_1218D34: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_9C)
  loc_1218D3C: var_9C.SetFocus
  loc_1218D48: Exit Sub
  loc_1218D49: ' Referenced from: 1218894
  loc_1218D49: Proc_6_60_E63754(1)
  loc_1218D4E: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA3C60
  'Data Table: 5921DC
  loc_EA3BE4: On Error Goto loc_EA3C5A
  loc_EA3C1E: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA3C44:   Call Proc_251_90_104CE7C(Proc_5_1_100EC1C("INI", Me))
  loc_EA3C4F:   Call Proc_251_87_16D3768(global_76)
  loc_EA3C54:   Call Proc_251_71_127DA08()
  loc_EA3C59: End If
  loc_EA3C59: Exit Sub
  loc_EA3C5A: ' Referenced from: EA3BE4
  loc_EA3C5A: Proc_6_60_E63754()
  loc_EA3C5F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '14AF288
  'Data Table: 5921DC
  Dim Me As Recordset15
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_114 As Fields15
  Dim var_158 As Variant
  Dim var_138 As Variant
  Dim var_1D4 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_110 As Variant
  Dim var_178 As Variant
  Dim var_19C As String
  Dim unk_5921F8 As Connection15
  Dim var_1C0 As Recordset15
  Dim var_1C4 As Fields15
  Dim var_1D8 As Variant
  Dim var_98 As Recordset15
  Dim var_20C As String
  Dim var_210 As String
  Dim var_224 As String
  Dim var_168 As Variant
  Dim var_128 As TextBox
  Dim var_AA4 As Double
  Dim var_2D4 As TextBox
  Dim var_324 As Variant
  Dim var_344 As Variant
  Dim var_42C As Variant
  Dim var_44C As Variant
  Dim var_AB4 As Double
  Dim var_748 As TextBox
  Dim var_86C As Variant
  Dim var_88C As Variant
  Dim var_1BC As Variant
  Dim var_1E8 As Variant
  Dim var_2AC As Variant
  Dim var_41C As Variant
  Dim var_78C As Variant
  Dim var_8D4 As Variant
  Dim var_A04 As Variant
  loc_14AE748: On Error Goto loc_14AF239
  loc_14AE74E: Call Proc_251_99_FF6A8C(var_A6)
  loc_14AE759: If (var_A6 = 0) Then
  loc_14AE75C:   Exit Sub
  loc_14AE75D: End If
  loc_14AE76B: If (Proc_183_56_FE8B08(global_76) = &HFF) Then
  loc_14AE76E:   Exit Sub
  loc_14AE76F: End If
  loc_14AE7AB: var_114 = Me.Fields
  loc_14AE7B3: var_128 = var_114.Item("SearchCode")
  loc_14AE7B8: var_158 = 1
  loc_14AE7C5: var_138 = CVar(var_128) 'Address
  loc_14AE7CC: var_168 = Mid(var_138, 4, var_158)
  loc_14AE7D7: var_1D4 = 0
  loc_14AE805: var_178 = "Select count(*) from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & var_168 
  loc_14AE81C: unk_5921F8.Execute CStr(var_178 & "'<>'N'"), var_1BC, -1
  loc_14AE824: var_1C0 = var_1C0.Fields
  loc_14AE82C: var_1D4 = var_1C4.Item(var_1C4)
  loc_14AE834: var_1D8 = var_1D8.Value
  loc_14AE86D: If (var_1E8 > 0) Then
  loc_14AE8C6:   unk_5921F8.Execute CStr("Select VNo from Stock Where KOTDocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_14AE91D:   var_110 = "**** Deletion Not Allowed ****"
  loc_14AE93D:   var_210 = "Bill Allready Prepared For this KOT" & vbCrLf & vbCrLf & "Ref. No. "
  loc_14AE95E:   var_224 = var_210 & CStr(var_114.Fields.Item(0).Value) & vbCrLf & vbCrLf & vbCrLf
  loc_14AE968:   MsgBox(CVar(var_224 & vbCrLf), &H10, var_110, var_138, var_158)
  loc_14AE996:   Exit Sub
  loc_14AE997: End If
  loc_14AE9CE: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_110, var_138) = 6) Then
  loc_14AE9FB:   var_9C = InputBox("Please Specify, Reason For Delete ?", "Reason", var_110, var_138, var_158, var_168, var_178)
  loc_14AEA18:   unk_5921F8.BeginTrans var_228
  loc_14AEA2E:   var_94 = Me.Bookmark 'Variant
  loc_14AEA3F:   var_A6 = Me.ChkNCKOT.Value
  loc_14AEA70:   var_A4 = CStr(IIf((var_A6 = 1), "Y", "N"))
  loc_14AEAA6:   For var_22C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_22C 'Integer
  loc_14AEAB8:     var_100 = CVar(CLng(&HA)) 'Long
  loc_14AEAD2:     var_F0 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_14AEAFF:     Set var_C0 = Me.FGrid
  loc_14AEB10:     var_19C = CStr(var_C0.TextMatrix))
  loc_14AEB3E:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_19C)) <> CDbl(0))) Then
  loc_14AEB4F:       Set var_AC = Me.Txt
  loc_14AEB55:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(3), var_C0, var_19C, CVar(CLng(var_9E)), (Trim(var_F0) <> vbNullString))
  loc_14AEB5D:       var_100 = var_C0.Text
  loc_14AEB70:       Set var_114 = Me.Txt
  loc_14AEB76:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_128, var_210, CVar(CLng(var_9E)))
  loc_14AEB7E:       1 = var_128.Text
  loc_14AEB8B:       var_AA4 = Val(var_210)
  loc_14AEB99:       Set var_1C0 = Me.Txt
  loc_14AEB9F:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(1), var_1C4, var_AA4)
  loc_14AEBAE:       Proc_6_7_F26918(var_F0, CVar(var_1C4))
  loc_14AEBD3:       Set var_2D0 = Me.Txt
  loc_14AEBD9:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(4), var_2D4, var_224)
  loc_14AEBE1:       var_114 = var_2D4.Tag
  loc_14AEBEA:       var_324 = CVar(CLng(var_9E)) 'Long
  loc_14AEBF2:       var_344 = CVar(CLng(0)) 'Long
  loc_14AEC43:       var_42C = CVar(CLng(var_9E)) 'Long
  loc_14AEC4B:       var_44C = CVar(CLng(&HA)) 'Long
  loc_14AEC94:       var_AB4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AED50:       var_710 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_14AED63:       Set var_744 = Me.Txt
  loc_14AED69:       Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(5), var_748, var_74C, CVar(CLng(9)), CVar(CLng(var_9E)), CVar(CLng(9)), CVar(CLng(var_9E)))
  loc_14AED84:       Proc_6_7_F26918(var_7EC, Now, CVar(CLng(7)), CVar(CLng(var_9E)))
  loc_14AED8D:       var_86C = CVar(CLng(var_9E)) 'Long
  loc_14AED95:       var_88C = CVar(CLng(8)) 'Long
  loc_14AEDE8:       var_AC4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AEE19:       var_ACC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14AEE40:       var_20C = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,DELFLAG,LogSite_Code) Values ('" & var_19C
  loc_14AEE89:       var_1BC = CVar(var_20C & "'," & CStr(var_AA4) & ",") & var_F0 & ",'" & CVar(global_136) & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_14AEEDE:       var_2AC = var_1BC & "','" & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_140) & "','" & CVar(global_144) 
  loc_14AEF1E:       var_41C = var_2AC & "','" & CVar(var_224) & "','Y'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & Format(Time, "hh:nn") & "','" 
  loc_14AEF69:       var_78C = var_41C & CVar(CStr(Me.FGrid.TextMatrix))) & "'," & CVar(var_748.Tag) & ",'" & var_710 & "','" & CVar(var_74C) & "','" 
  loc_14AEFAA:       var_8D4 = var_78C & CVar(MemVar_1F950C8) & "'," & var_7EC & ",'A','" & CVar(var_A4) & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) 
  loc_14AEFD2:       var_A04 = CVar(Proc_6_38_E69628(var_9C, var_ACC, CVar(CLng(8)), CVar(CLng(var_9E)), var_AC4, CVar(CLng(7)), CVar(CLng(var_9E)))) 'String
  loc_14AEFFF:       unk_5921F8.Execute CStr(var_8D4 & "," & CVar((var_AC4 * var_ACC)) & ",'" & var_A04 & "','D','" & CVar(MemVar_1F95078) & "')"), var_A98, -1
  loc_14AF0E3:     End If
  loc_14AF0E6:   Next var_22C 'Integer
  loc_14AF0FF:   var_19C = "Update Kot Set DelFlag='Y',U_Name1='" & MemVar_1F950C8
  loc_14AF106:   var_110 = CVar(var_19C & "',U_EntDt1=") 'String
  loc_14AF117:   Proc_6_7_F26918(var_F0, Date, var_110)
  loc_14AF11F:   var_138 = var_1BC & var_F0 
  loc_14AF170:   unk_5921F8.Execute CStr(var_138 & ",U_AE1='E' Where Docid='" & Me.Fields.Item("SearchCode").Value & "'"), -1, var_114
  loc_14AF1A0:   unk_5921F8.CommitTrans
  loc_14AF1B0:   Me.Requery -1
  loc_14AF1D0:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_14AF1DD:     Me.Bookmark = var_94
  loc_14AF1E5:   Else
  loc_14AF1F9:     If (Me.EOF = 0) Then
  loc_14AF202:       Me.MoveLast
  loc_14AF207:     End If
  loc_14AF207:   End If
  loc_14AF207:   Call Proc_251_87_16D3768()
  loc_14AF228:   Proc_5_0_1107AD0(&HFF, Me)
  loc_14AF230: End If
  loc_14AF235: Set var_98 = Nothing
  loc_14AF238: Exit Sub
  loc_14AF239: ' Referenced from: 14AE748
  loc_14AF23F: unk_5921F8.RollbackTrans
  loc_14AF24C: Set var_AC = Err()
  loc_14AF252: Call 0.Method_arg_2C (var_19C, global_76)
  loc_14AF273: MsgBox(CVar(var_19C), &H10, " Deletion Message", var_110, var_138)
  loc_14AF286: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1275BA4
  'Data Table: 5921DC
  Dim var_130 As Variant
  Dim var_A0 As String
  Dim Me As Variant
  Dim var_90 As Variant
  Dim var_A4 As Variant
  Dim var_F4 As Variant
  Dim unk_5921F8 As Connection15
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
  loc_1275638: On Error Goto loc_1275B9C
  loc_127563E: Call Proc_251_99_FF6A8C(var_8A)
  loc_1275649: If (var_8A = 0) Then
  loc_127564C:   Exit Sub
  loc_127564D: End If
  loc_127565B: If (Proc_183_55_FE8490(global_76) = &HFF) Then
  loc_127565E:   Exit Sub
  loc_127565F: End If
  loc_1275665: var_130 = 0
  loc_12756C4: unk_5921F8.Execute CStr("Select count(*) from KOT Where DocId='" & Me.Fields.Item("SearchCode").Value & "' And ContraDocId is not null"), var_118, -1
  loc_12756CC: var_11C = var_11C.Fields
  loc_12756D4: var_130 = var_120.Item(var_120)
  loc_12756DC: var_134 = var_134.Value
  loc_1275709: If (var_144 > 0) Then
  loc_1275793:   var_174 = "Select VType,VNo from Stock Where Delflag<>'D' and KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" & Mid(CVar(Me.Fields.Item("SearchCode")), 4, 1) 
  loc_12757AA:   unk_5921F8.Execute CStr(var_174 & "'<>'N'"), var_1A4, -1
  loc_12757B5:   Set var_88 = var_134
  loc_12757EF:   If (var_88.RecordCount > 0) Then
  loc_127580C:     var_A4 = var_88.Fields.Item("vType")
  loc_127582B:     var_11C = var_88.Fields
  loc_1275871:     var_F4 = (CVar("Bill Allready Prepared For this KOT" & vbCrLf & vbCrLf & "Ref. No. ") + var_A4.Value)
  loc_127587A:     var_118 = ("Select VType,VNo from Stock Where Delflag<>'D' and KOTDocId='" & Me.Fields.Item("SearchCode").Value & "' and '" + "/")
  loc_1275886:     var_174 = (CVar(Me.Fields.Item("SearchCode")) + CVar(CStr(var_11C.Item("VNo").Value)))
  loc_127588F:     var_184 = (var_174 + vbCrLf)
  loc_1275898:     var_1A4 = (var_174 & "'<>'N'" + vbCrLf)
  loc_12758A1:     var_1BC = (var_1A4 + vbCrLf)
  loc_12758AA:     var_1CC = (var_1BC + vbCrLf)
  loc_12758AE:     MsgBox(var_1CC, &H10, "**** Modification Not Allowed ****", var_20C, var_22C)
  loc_12758E4:     Exit Sub
  loc_12758E8:   Else
  loc_12758E8:     var_A0 = vbNullString
  loc_12758F2:     Set var_90 = Me.FGrid
  loc_1275903:   End If
  loc_1275903: End If
  loc_1275926: Call Proc_251_90_104CE7C(Proc_5_1_100EC1C("EDIT", Me, global_76, FGrid.DispID_10000), var_A0)
  loc_1275931: Call Proc_251_71_127DA08(var_134)
  loc_1275943: Set var_90 = Me.Txt
  loc_1275949: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_A4)
  loc_1275969: Me.ChkNCKOT.Enabled = False
  loc_127597F: Set var_90 = Me.Txt
  loc_1275985: Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A4)
  loc_127599F: If (False = &HFF) Then
  loc_12759AD:   Set var_90 = Me.Txt
  loc_12759B3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(4), var_A4)
  loc_12759BB:   var_A4.SetFocus
  loc_12759CA: Else
  loc_12759D5:   Set var_90 = Me.Txt
  loc_12759DB:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(6), var_A4)
  loc_12759E3:   var_A4.SetFocus
  loc_12759EF: End If
  loc_1275A06: If (Me.RecordCount > 0) Then
  loc_1275A5F:   unk_5921F8.Execute CStr("Select K.U_Name,K.U_AE,K.U_EntDt,K.Pending From KOT K Where K.Docid='" & Me.Fields.Item("DocID").Value & "'"), CVar(Me.Fields.Item("SearchCode")), -1
  loc_1275A6A:   Set var_88 = var_11C
  loc_1275A87:   Set var_230 = var_88 
  loc_1275ABC:   global_116 = CStr(var_88.Fields.Item("U_Name").Value)
  loc_1275AFE:   global_128 = CStr(var_88.Fields.Item("U_AE").Value)
  loc_1275B3E:   global_120 = CDate(var_88.Fields.Item("U_EntDt").Value)
  loc_1275B7C:   global_132 = CStr(var_88.Fields.Item("Pending").Value)
  loc_1275B8F:   Set var_230 = Nothing 
  loc_1275B93: End If
  loc_1275B98: Set var_88 = Nothing
  loc_1275B9B: Exit Sub
  loc_1275B9C: ' Referenced from: 1275638
  loc_1275B9C: Proc_6_60_E63754(global_120, var_11C)
  loc_1275BA1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E17FC0
  'Data Table: 5921DC
  loc_E17FB5: Me.Global.Unload Me
  loc_E17FBD: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F '1133670
  'Data Table: 5921DC
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim var_E8 As Variant
  Dim var_D8 As Integer
  Dim unk_5921F8 As Connection15
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
  loc_1133344: On Error Goto loc_1133667
  loc_113335E: If (Me.RecordCount <= 0) Then
  loc_1133367:   var_B8 = "Information"
  loc_113337C:   var_A8 = "No Records To Search."
  loc_1133382:   MsgBox(var_A8, &H40, var_B8, var_E8, var_108)
  loc_1133392:   Exit Sub
  loc_1133393: End If
  loc_11333A6: If (OpenType = "Pending KOT") Then
  loc_11333B0:   var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],K.VDate as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((KOT K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F95078
  loc_11333C5:   Proc_6_7_F26918(var_A8, MemVar_1F950EC)
  loc_11333CD:   var_E8 = CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate=") & var_A8 
  loc_11333DC:   var_D8 = 0
  loc_113340C:   unk_5921F8.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_1133414:   var_118 = var_118.Fields
  loc_113341C:   var_D8 = var_11C.Item(var_11C)
  loc_1133424:   var_120 = var_120.Value
  loc_113342C:   var_140 = (var_130 + var_130)
  loc_1133439:   var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_1133443:   var_1B0 = 0
  loc_1133463:   var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_1133473:   unk_5921F8.Execute var_174 & "'", var_198, -1
  loc_113347B:   var_19C = var_19C.Fields
  loc_1133483:   var_1B0 = var_1A0.Item(var_1A0)
  loc_113348B:   var_1B4 = var_1B4.Value
  loc_11334BC:   MemVar_1F950E4 = CStr(var_1C4 & var_1C4 & "') And Pending='Y' AND K.ROOMNO='" & CVar(PTableNo) & "' Order by Docid")
  loc_1133500: Else
  loc_1133507:   var_10C = "Select Distinct K.DocId as SearchCode,K.VNo as [No],K.VDate as [Date],K.VTime as [Time],K.ROOMNO AS TableNo,H.Name as Restaurant,W.Name as Waiter  From (((KOT K Inner Join Voucher_Type V On (K.VType= V.V_Type And K.Logsite_Code=V.LogSite_Code)) Inner Join Depart H On K.RESTCODE= H.Code) Inner Join Waiter W On W.COde=K.Waiter) WHERE (K.LOGSITE_CODE='" & MemVar_1F95078
  loc_113351C:   Proc_6_7_F26918(var_A8, MemVar_1F950EC, CVar(var_10C & "' or K.LOGSITE_CODE='HO') and (DelFlag NOT IN ('Y') OR DelFlag IS NULL) And (K.VDate="))
  loc_1133524:   var_E8 = MemVar_1F950E4 & var_A8 
  loc_1133533:   var_D8 = 0
  loc_1133563:   unk_5921F8.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_108, -1
  loc_113356B:   var_118 = var_118.Fields
  loc_1133573:   var_D8 = var_11C.Item(var_11C)
  loc_113357B:   var_120 = var_120.Value
  loc_1133583:   var_140 = (var_130 + var_130)
  loc_1133590:   var_170 = ") AND (K.VType='K" & var_140 & "' OR K.VType='" 
  loc_113359A:   var_1B0 = 0
  loc_11335BA:   var_174 = "Select 'N'+ShortName From Depart Where Code='" & LocalRestCode
  loc_11335CA:   unk_5921F8.Execute var_174 & "'", var_198, -1
  loc_11335D2:   var_19C = var_19C.Fields
  loc_11335DA:   var_1B0 = var_1A0.Item(var_1A0)
  loc_11335E2:   var_1B4 = var_1B4.Value
  loc_11335F8:   MemVar_1F950E4 = CStr(var_1C4 & var_1C4 & "') Order by Docid")
  loc_1133633: End If
  loc_113363C: Proc_6_126_F1C850("800,1500,800,1000,1800,1800", MemVar_1F950E4, var_170)
  loc_113364A: MemVar_1F95120 = Me
  loc_1133661: Call 0.Method_arg_2B0 (1, var_B8, var_E8)
  loc_1133666: Exit Sub
  loc_1133667: ' Referenced from: 1133344
  loc_1133667: Proc_6_60_E63754(var_170)
  loc_113366C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E31928
  'Data Table: 5921DC
  loc_E31918: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31920: Call Proc_251_87_16D3768(global_76)
  loc_E31925: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E39B48
  'Data Table: 5921DC
  loc_E39B38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39B40: Call Proc_251_87_16D3768(global_76)
  loc_E39B45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E39E48
  'Data Table: 5921DC
  loc_E39E38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39E40: Call Proc_251_87_16D3768(global_76)
  loc_E39E45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E32EE8
  'Data Table: 5921DC
  loc_E32ED8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32EE0: Call Proc_251_87_16D3768(global_76)
  loc_E32EE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '1C886FC
  'Data Table: 5921DC
  Dim var_138 As Variant
  Dim var_118 As Variant
  Dim var_148 As Variant
  Dim var_14C As String
  Dim unk_5921F8 As Connection15
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
  loc_1C81FFC: On Error Goto loc_1C886F4
  loc_1C8201C: Proc_6_17_EAAE40(var_128, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1C82032: unk_5921F8.Execute CStr(var_16C & var_128), -1, var_170
  loc_1C8203D: Set var_100 = var_170
  loc_1C82063: If (var_100.RecordCount > 0) Then
  loc_1C8209D:   var_F0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader1"))))))
  loc_1C820E3:   var_F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader2"))))))
  loc_1C82129:   var_F8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_100.Fields.Item("KOTHeader3"))))))
  loc_1C82147:   var_170 = var_100.Fields
  loc_1C82157:   var_128 = CVar(var_170.Item("KOTHeader4")) 'Address
  loc_1C8216F:   var_FC = CStr(Trim(CVar(Proc_6_38_E69628(var_128))))
  loc_1C8217E: End If
  loc_1C82183: Set var_100 = Nothing
  loc_1C821AD: unk_5921F8.Execute "Select CKOTPrintYN,NoOfKot From Depart Where Code='" & LocalRestCode & "'", var_128, -1
  loc_1C821B8: Set var_BC = var_170
  loc_1C821DC: If (var_BC.RecordCount > 0) Then
  loc_1C82207:   var_148 = CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("CKOTPrintYN")))) 'String
  loc_1C82221:   var_E4 = CStr(Ucase(Trim(var_148)))
  loc_1C82258:   Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C82261:   var_E6 = CInt(var_148)
  loc_1C82294:   Proc_6_39_E7D3A0(var_148, CVar(var_BC.Fields.Item("NoOfKot")))
  loc_1C822A8:   var_190 = var_BC.Fields
  loc_1C822BF:   Proc_6_39_E7D3A0(var_1A4, CVar(var_190.Item("NoOfKot")))
  loc_1C822EC:   var_E8 = CInt(IIf((var_148 <= 0), 1, var_1A4))
  loc_1C82307: End If
  loc_1C8230F: If (var_E4 = "Y") Then
  loc_1C82315:   Call Proc_251_83_1BBE5E0(var_1E6, var_E8)
  loc_1C82320:   If (var_1E6 = 0) Then
  loc_1C82323:     Exit Sub
  loc_1C82324:   End If
  loc_1C82324: End If
  loc_1C82327: MemVar_1F953C4 = "N"
  loc_1C8232E: MemVar_1F953C8 = "N"
  loc_1C82335: MemVar_1F953CC = "K"
  loc_1C82340: var_14C = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT, K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt,K.U_AE " & "From ((KOT K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode)"
  loc_1C82385: var_88 = CStr(CVar(var_14C & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C823A4: var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C823C4: var_178 = Me.Fields.Item("SearchCode")
  loc_1C823CC: var_128 = var_178.Value
  loc_1C823D4: var_16C = var_148 & var_128 
  loc_1C823DD: var_18C = var_16C & "'" 
  loc_1C823E2: var_8C = CStr(var_18C)
  loc_1C823FF: If (var_88 = vbNullString) Then
  loc_1C82402:   Exit Sub
  loc_1C82403: End If
  loc_1C8240B: If (var_8C = vbNullString) Then
  loc_1C8240E:   Exit Sub
  loc_1C8240F: End If
  loc_1C82433: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(4), var_178, var_14C, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='", var_128)
  loc_1C8243B: -1 = var_178.Text
  loc_1C82454: unk_5921F8.Execute var_190 & var_14C & "' AND CONTRADOCID IS NULL", var_E6, Me.Txt
  loc_1C8248B: If (var_190.RecordCount = 1) Then
  loc_1C82491:   var_C8 = "New Order"
  loc_1C82497: Else
  loc_1C8249E:   Set var_170 = Me.LblState
  loc_1C824AC:   var_C8 = var_170.Caption
  loc_1C824B2: End If
  loc_1C824C8: unk_5921F8.Execute var_88, var_128, -1
  loc_1C824D3: Set var_B4 = var_170
  loc_1C824F2: unk_5921F8.Execute "SELECT KOTPrinting,KOTPrintEdited FROM Enviro", var_128, -1
  loc_1C824FD: Set var_D0 = var_170
  loc_1C82515: var_170 = var_B4.Fields
  loc_1C8253F: If (Proc_6_38_E69628(CVar(var_170.Item("ContraDocId")), var_170) <> vbNullString) Then
  loc_1C8255B:   MsgBox("Sale Bill Already Generated !!", &H40, var_148, var_16C, var_18C)
  loc_1C8256B:   Exit Sub
  loc_1C8256C: End If
  loc_1C825A5: If (Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_AE"))) = "E") Then
  loc_1C825AA:   var_102 = &HFF
  loc_1C825AD: End If
  loc_1C825ED: If (var_102 And (Proc_6_38_E69628(CVar(var_D0.Fields.Item("KOTPrintEdited")), (var_102 = &HFF)) = "No Print")) Then
  loc_1C825F0:   Exit Sub
  loc_1C825F1: End If
  loc_1C8260A: var_170 = var_D0.Fields
  loc_1C8263B: var_1A4 = var_170 And (Trim(CVar(Proc_6_38_E69628(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "Void Items")
  loc_1C8264F: If CBool(var_1A4) Then
  loc_1C82661:   var_170 = var_D0.Fields
  loc_1C82671:   var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C8269C:   If (Trim(CVar(Proc_6_38_E69628(var_128))) = vbNullString) Then
  loc_1C826B3:     var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1C826C3:     unk_5921F8.Execute var_14C & "MK'", var_128, -1
  loc_1C826CE:     Set var_BC = var_170
  loc_1C826E1:   Else
  loc_1C826F5:     var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C8273C:     unk_5921F8.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'"), var_1A4, -1
  loc_1C82747:     Set var_BC = var_190
  loc_1C82763:   End If
  loc_1C82766: Else
  loc_1C827B0:   var_1A4 = var_190 And (Trim(CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "All Items")
  loc_1C827C4:   If CBool(var_1A4) Then
  loc_1C827D6:     var_170 = var_D0.Fields
  loc_1C827E6:     var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C82811:     If (Trim(CVar(Proc_6_38_E69628(var_128))) = vbNullString) Then
  loc_1C82828:       var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1C82838:       unk_5921F8.Execute var_14C & "MK'", var_128, -1
  loc_1C82843:       Set var_BC = var_170
  loc_1C82856:     Else
  loc_1C8286A:       var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C828B1:       unk_5921F8.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "'"), var_1A4, -1
  loc_1C828BC:       Set var_BC = var_190
  loc_1C828D8:     End If
  loc_1C828DB:   Else
  loc_1C828EA:     var_170 = var_D0.Fields
  loc_1C828FA:     var_128 = CVar(var_170.Item("KOTPrinting")) 'Address
  loc_1C82925:     If (Trim(CVar(Proc_6_38_E69628(var_128, var_190))) = vbNullString) Then
  loc_1C8293C:       var_14C = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_1C8294C:       unk_5921F8.Execute var_14C & "MK'", var_128, -1
  loc_1C82957:       Set var_BC = var_170
  loc_1C8296A:     Else
  loc_1C8297E:       var_148 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C829C5:       unk_5921F8.Execute CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN<>'Y'"), var_1A4, -1
  loc_1C829D0:       Set var_BC = var_190
  loc_1C829EC:       ' Referenced from:       1C886D8
  loc_1C829EC:     End If
  loc_1C829EC:   End If
  loc_1C829EC: End If
  loc_1C829FB: If Not(var_BC.EOF) Then
  loc_1C82A17:   var_170 = var_D0.Fields
  loc_1C82A5C:   If CBool(var_170 And (Trim(CVar(Proc_6_38_E69628(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF), var_190))) = "Void Items")) Then
  loc_1C82A6E:     var_170 = var_D0.Fields
  loc_1C82AA9:     If (Trim(CVar(Proc_6_38_E69628(CVar(var_170.Item("KOTPrinting")), var_170))) = "Seperate for All Kitchen") Then
  loc_1C82AB3:       var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C82B2C:       var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C82B68:       var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN='Y'")
  loc_1C82B96:     Else
  loc_1C82B9D:       var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C82BDB:       var_8C = CStr(var_148 & Me.Fields.Item("SearchCode").Value & "' And K.VoidYN='Y'")
  loc_1C82BF0:     End If
  loc_1C82BF3:   Else
  loc_1C82C0C:     var_170 = var_D0.Fields
  loc_1C82C51:     If CBool(var_170 And (Trim(CVar(Proc_6_38_E69628(CVar(var_170.Item("KOTPrintEdited")), (var_102 = &HFF)))) = "All Items")) Then
  loc_1C82C9E:       If (Trim(CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("KOTPrinting"))))) = "Seperate for All Kitchen") Then
  loc_1C82CA8:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C82D21:         var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C82D5D:         var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "'")
  loc_1C82D8B:       Else
  loc_1C82D92:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C82DD0:         var_8C = CStr(var_148 & Me.Fields.Item("SearchCode").Value & "'")
  loc_1C82DE5:       End If
  loc_1C82DE8:     Else
  loc_1C82E32:       If (Trim(CVar(Proc_6_38_E69628(CVar(var_D0.Fields.Item("KOTPrinting"))))) = "Seperate for All Kitchen") Then
  loc_1C82E3C:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C82EB5:         var_1E4 = var_148 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1C82EF1:         var_8C = CStr(var_1E4 & var_BC.Fields.Item("Code").Value & "' And K.VoidYN<>'Y'")
  loc_1C82F1F:       Else
  loc_1C82F26:         var_148 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1C82F3E:         var_170 = Me.Fields
  loc_1C82F4E:         var_128 = var_170.Item("SearchCode").Value
  loc_1C82F64:         var_8C = CStr(var_148 & var_128 & "' And K.VoidYN<>'Y'")
  loc_1C82F79:       End If
  loc_1C82F79:     End If
  loc_1C82F79:   End If
  loc_1C82F8F:   unk_5921F8.Execute var_8C, var_128, -1
  loc_1C82F9A:   Set var_B8 = var_170
  loc_1C82FA9:   var_174 = var_B8.RecordCount
  loc_1C82FB7:   If (var_174 > 0) Then
  loc_1C82FC9:     var_170 = var_BC.Fields
  loc_1C82FE8:     var_264 = Trim(CVar(var_170.Item("PrintType"))) 'Variant
  loc_1C82FFD:     If (var_264 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1C8300D:       Call Proc_251_84_EFACAC(New, var_170)
  loc_1C83015:       Set var_D4 = var_170
  loc_1C8301B:       Me.Recordset15.MoveFirst
  loc_1C83020:       ' Referenced from: 1C83DAE
  loc_1C8302F:       If Not(var_B4.EOF) Then
  loc_1C83034:         var_92 = 0
  loc_1C8315C:         var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), var_92) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C83165:         var_90 = CStr(var_304)
  loc_1C831A9:         If (var_92 = 0) Then
  loc_1C831AF:           var_1EC = vbNullString
  loc_1C831CA:           Call Proc_251_85_F14964(var_D4, vbNullString, vbNullString)
  loc_1C83206:           var_C0 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1C8323D:           var_148 = CVar(Me.LblRest.Caption) 'String
  loc_1C83240:           var_16C = (Space(1) + var_148)
  loc_1C83255:           Call Proc_251_85_F14964(var_D4, vbNullString, CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))))
  loc_1C83287:           Call Proc_251_85_F14964(var_D4, vbNullString, var_90, vbNullString)
  loc_1C832B6:           Call Proc_251_85_F14964(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C832EA:           Proc_6_39_E7D3A0(var_148, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C8331E:           var_1EC = vbNullString
  loc_1C83327:           Call Proc_251_85_F14964(var_D4, var_1EC, " KOT No.   : " & Proc_6_45_EADFB8(CStr(var_148), &HA, vbNullString))
  loc_1C833E3:           var_310 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1C833F7:           Call Proc_251_85_F14964(var_D4, vbNullString, " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), vbNullString), &HC) & " " & var_310)
  loc_1C8343E:           var_178 = var_B4.Fields.Item("Remarks")
  loc_1C83489:           Call Proc_251_85_F14964(var_D4, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178), vbNullString), &H1E))
  loc_1C834BB:           Set var_170 = Me.Label1
  loc_1C834C1:           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C8352C:           var_30C = vbNullString
  loc_1C8353B:           var_1A4 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C83544:           var_1B4 = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) + ": ")
  loc_1C8354B:           var_1E4 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1C8354E:           var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) + var_1E4)
  loc_1C83563:           Call Proc_251_85_F14964(var_D4, vbNullString, CStr("* NC LOT *"))
  loc_1C8359A:           var_17C = vbNullString
  loc_1C835AF:           Call Proc_251_85_F14964(var_D4, vbNullString, var_C0)
  loc_1C835BB:         End If
  loc_1C835E1:         var_16C = (var_17C + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))))
  loc_1C835F5:         var_1A4 = (Trim(CVar(var_178)) + Space(1))
  loc_1C8360C:         var_1B4 = CVar(Proc_6_52_EAE084("Qty", 6, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3))) 'String
  loc_1C8360F:         var_1D4 = (var_30C + var_1B4)
  loc_1C83614:         var_AC = CStr(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C83632:         var_17C = vbNullString
  loc_1C83647:         Call Proc_251_85_F14964(var_D4, vbNullString, var_AC)
  loc_1C83656:         var_17C = vbNullString
  loc_1C8366B:         Call Proc_251_85_F14964(var_D4, vbNullString, var_C0)
  loc_1C8367D:         var_92 = (var_92 + 4)
  loc_1C83683:         var_B8.MoveFirst
  loc_1C83688:         ' Referenced from: 1C83A09
  loc_1C83697:         If Not(var_B8.EOF) Then
  loc_1C836D0:           var_190 = var_B8.Fields
  loc_1C836E7:           Proc_6_39_E7D3A0(var_1E4, CVar(var_190.Item("qty")), &H12)
  loc_1C83712:           var_1C4 = "Cancel"
  loc_1C8374C:           var_1FC = "Y"
  loc_1C8378A:           var_18C = (1 + CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1C8379E:           var_1B4 = (Space(1) + Space(1))
  loc_1C837B7:           var_284 = (var_17C + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0")), 3, var_1B4)))
  loc_1C837CD:           var_354 = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item(var_1C4).Value = var_1FC), "Void", vbNullString)), 5, CVar(var_B4.Fields.Item("NCKOT")))) 'String
  loc_1C837D0:           var_364 = (var_17C + var_354)
  loc_1C8382F:           Call Proc_251_85_F14964(var_D4, vbNullString, CStr(var_364))
  loc_1C83841:           var_92 = (var_92 + 1)
  loc_1C8387D:           If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C838AE:             var_30C = vbNullString
  loc_1C838D5:             Call Proc_251_85_F14964(var_D4, vbNullString, "(" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), vbNullString) & ")")
  loc_1C838F5:             var_92 = (var_92 + 1)
  loc_1C838F8:           End If
  loc_1C83902:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C8391D:             Call Proc_251_85_F14964(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C83947:             Call Proc_251_85_F14964(var_D4, vbNullString, " Contd.", vbNullString)
  loc_1C8395B:             var_94 = (var_94 + 1)
  loc_1C8397B:             Call Proc_251_85_F14964(var_D4, vbNullString, var_90, vbNullString, 0)
  loc_1C839A4:             Call Proc_251_85_F14964(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C839C8:             Call Proc_251_85_F14964(var_D4, vbNullString, var_AC, vbNullString)
  loc_1C839EC:             Call Proc_251_85_F14964(var_D4, vbNullString, var_C0, vbNullString)
  loc_1C839FE:             var_92 = (var_92 + 4)
  loc_1C83A01:           End If
  loc_1C83A04:           var_B8.MoveNext
  loc_1C83A09:           GoTo loc_1C83688
  loc_1C83A0C:         End If
  loc_1C83A16:         If (&H12 < (&H45 - var_A6)) Then
  loc_1C83A19:           ' Referenced from: 1C83A5B
  loc_1C83A23:           If (&H12 = (&H45 - var_A6)) Then
  loc_1C83A44:             Call Proc_251_85_F14964(var_D4, vbNullString, vbNullString, vbNullString, &H12)
  loc_1C83A58:             var_92 = (var_92 + 1)
  loc_1C83A5B:             GoTo loc_1C83A19
  loc_1C83A5E:           End If
  loc_1C83A5E:         End If
  loc_1C83A76:         Call Proc_251_85_F14964(var_D4, vbNullString, var_C0, vbNullString, &H12)
  loc_1C83AC4:         var_30C = vbNullString
  loc_1C83AE4:         Call Proc_251_85_F14964(var_D4, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1C83B3F:         Call Proc_251_85_F14964(var_D4, vbNullString, CStr(" ***  " & Trim(var_C8) & "  ***"), vbNullString)
  loc_1C83B9E:         var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C83BAC:         unk_5921F8.Execute CStr(var_16C), Space(1), -1
  loc_1C83C0D:         If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C83C37:           Call Proc_251_85_F14964(var_D4, vbNullString, " ***  " & "Changed KOT" & "  ***", vbNullString)
  loc_1C83C4A:         Else
  loc_1C83C57:           var_138 = "Select Printed from kot where docid='"
  loc_1C83C8D:           var_15C = "'"
  loc_1C83CA0:           unk_5921F8.Execute CStr(var_138 & Me.Fields.Item("SearchCode").Value & var_15C), Space(1), -1
  loc_1C83CC8:           var_118 = 0
  loc_1C83CFE:           If (Proc_6_38_E69628(CVar(var_190.Fields.Item(var_118)), var_190, var_190) = "Y") Then
  loc_1C83D28:             Call Proc_251_85_F14964(var_D4, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***", vbNullString)
  loc_1C83D3B:           Else
  loc_1C83D59:             Call Proc_251_85_F14964(var_D4, vbNullString, vbNullString, vbNullString)
  loc_1C83D67:           End If
  loc_1C83D67:         End If
  loc_1C83D6C:         Set var_DC = Nothing
  loc_1C83D96:         Call Proc_251_85_F14964(var_D4, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1C83DA9:         var_B4.MoveNext
  loc_1C83DAE:         GoTo loc_1C83020
  loc_1C83DB1:       End If
  loc_1C83DB4:       var_D8 = "WinKOTPrint"
  loc_1C83DDB:       Set var_170 = var_D4 
  loc_1C83DE2:       CreateFieldDefFile(var_170, MemVar_1F950B4 & "\" & var_D8 & ".ttx", &HFF)
  loc_1C83E24:       Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_118, var_170)
  loc_1C83E2F:       MemVar_1F951E8 = var_170
  loc_1C83E58:       Call 0.Method_arg_64 (var_170, CVar(var_170), var_138, var_15C)
  loc_1C83E60:       Call 0.Method_arg_2C (var_30C, var_30C)
  loc_1C83EA1:       If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))) <> vbNullString) Then
  loc_1C83EEE:         If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C83F1D:           Call Proc_251_82_F0F208(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C83F2B:         End If
  loc_1C83F2B:       End If
  loc_1C83F3A:       var_138 = CVar(var_E8) 'Integer
  loc_1C83F49:       Call 0.Method_Me8 (False, var_138, var_15C)
  loc_1C83F53:       Set var_D4 = Nothing
  loc_1C83F59:     Else
  loc_1C83F64:       If (var_264 = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1C83F6A:         var_B4.MoveFirst
  loc_1C83F6F:         ' Referenced from:   1C84D43
  loc_1C83F7E:         If Not(var_B4.EOF) Then
  loc_1C83F84:           var_118 = "ShortName"
  loc_1C83FB4:           var_18C = 3
  loc_1C83FD7:           var_1C4 = "NCKOT"
  loc_1C83FE3:           var_190 = var_B4.Fields
  loc_1C83FEB:           var_194 = var_190.Item(var_1C4)
  loc_1C84020:           var_1FC = (Proc_6_38_E69628(CVar(var_194), var_1FC) = "Y")
  loc_1C8408D:           var_15C = "LAU"
  loc_1C84097:           var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item(var_118)), var_1C4))), 1, var_18C)) = var_15C) 'Variant
  loc_1C840A1:           var_304 = IIf(var_2F4, IIf(var_1FC, "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C840AA:           var_90 = CStr(var_304)
  loc_1C840EB:           var_D8 = "KOTPrint"
  loc_1C84112:           Set var_170 = var_B8 
  loc_1C84119:           CreateFieldDefFile(var_170, MemVar_1F950B4 & "\" & var_D8 & ".ttx")
  loc_1C84125:           Set var_B8 = var_170
  loc_1C8415B:           Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_D8 & ".RPT", var_118, var_170)
  loc_1C84166:           MemVar_1F951E8 = var_170
  loc_1C8418F:           Call 0.Method_arg_64 (var_170, CVar(var_B8), var_138)
  loc_1C84197:           Call 0.Method_arg_2C (var_15C, &HFF)
  loc_1C841A5:           Call 0.Method_arg_150 (var_170)
  loc_1C841F2:           var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C84200:           unk_5921F8.Execute CStr(var_16C), var_18C, -1
  loc_1C84261:           If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C84267:             var_CC = "Changed KOT"
  loc_1C8426D:           Else
  loc_1C842C3:             unk_5921F8.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C842F7:             var_170 = var_190.Fields
  loc_1C842FF:             var_178 = var_170.Item(0)
  loc_1C84310:             var_14C = Proc_6_38_E69628(CVar(var_178), var_190)
  loc_1C84321:             If (var_14C = "Y") Then
  loc_1C84327:               var_CC = "DUPLICATE KOT"
  loc_1C8432D:             Else
  loc_1C84330:               var_CC = vbNullString
  loc_1C84333:             End If
  loc_1C84333:           End If
  loc_1C84338:           Set var_DC = Nothing
  loc_1C8434C:           Call 0.Method_arg_90 (var_170, var_174, var_AE)
  loc_1C84354:           Call 0.Method_arg_24 (1)
  loc_1C84360:           For var_368 =  To CInt(var_174):   var_190 = var_368 'Integer
  loc_1C84379:             Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C84381:             Call 0.Method_arg_20 (var_178)
  loc_1C84389:             Call 0.Method_arg_30 (var_14C)
  loc_1C8439F:             var_378 = Ucase(CVar(var_14C)) 'Variant
  loc_1C843CF:             If (var_378 = Ucase("comp_name")) Then
  loc_1C843F3:               Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C843FB:               Call 0.Method_arg_20 (var_178)
  loc_1C84403:               Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1C84419:             Else
  loc_1C8443B:               If (var_378 = Ucase("comp_add1")) Then
  loc_1C8445F:                 Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C84467:                 Call 0.Method_arg_20 (var_178)
  loc_1C8446F:                 Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1C84485:               Else
  loc_1C844A7:                 If (var_378 = Ucase("comp_pin")) Then
  loc_1C844CB:                   Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C844D3:                   Call 0.Method_arg_20 (var_178)
  loc_1C844DB:                   Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1C844F1:                 Else
  loc_1C84513:                   If (var_378 = Ucase("comp_GSTIN")) Then
  loc_1C84537:                     Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C8453F:                     Call 0.Method_arg_20 (var_178)
  loc_1C84547:                     Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1C8455D:                   Else
  loc_1C8457F:                     If (var_378 = Ucase("RestName")) Then
  loc_1C8458C:                       Set var_170 = Me.LblRest
  loc_1C845B5:                       Call 0.Method_arg_90 (var_178, CLng(var_AE))
  loc_1C845BD:                       Call 0.Method_arg_20 (var_190)
  loc_1C845C5:                       Call 0.Method_arg_38 ("'" & var_170.Caption & "'")
  loc_1C845DF:                     Else
  loc_1C84601:                       If (var_378 = Ucase("mTitle")) Then
  loc_1C84625:                         Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C8462D:                         Call 0.Method_arg_20 (var_178)
  loc_1C84635:                         Call 0.Method_arg_38 ("'" & var_90 & "'")
  loc_1C8464B:                       Else
  loc_1C84653:                         var_128 = "Header1"
  loc_1C8466D:                         If (var_378 = Ucase(var_128)) Then
  loc_1C8467B:                           Proc_6_17_EAAE40(var_128)
  loc_1C84697:                           Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C8469F:                           Call 0.Method_arg_20 (CStr(var_128))
  loc_1C846A7:                           Call 0.Method_arg_38 (var_F0)
  loc_1C846BC:                         Else
  loc_1C846C4:                           var_128 = "Header2"
  loc_1C846DE:                           If (var_378 = Ucase(var_128)) Then
  loc_1C846EC:                             Proc_6_17_EAAE40(var_128)
  loc_1C84708:                             Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C84710:                             Call 0.Method_arg_20 (CStr(var_128))
  loc_1C84718:                             Call 0.Method_arg_38 (var_F4)
  loc_1C8472D:                           Else
  loc_1C84735:                             var_128 = "Header3"
  loc_1C8474F:                             If (var_378 = Ucase(var_128)) Then
  loc_1C8475D:                               Proc_6_17_EAAE40(var_128)
  loc_1C84779:                               Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C84781:                               Call 0.Method_arg_20 (CStr(var_128))
  loc_1C84789:                               Call 0.Method_arg_38 (var_F8)
  loc_1C8479E:                             Else
  loc_1C847A6:                               var_128 = "Header4"
  loc_1C847C0:                               If (var_378 = Ucase(var_128)) Then
  loc_1C847CE:                                 Proc_6_17_EAAE40(var_128)
  loc_1C847EA:                                 Call 0.Method_arg_90 (var_170, CLng(var_AE), var_178)
  loc_1C847F2:                                 Call 0.Method_arg_20 (CStr(var_128))
  loc_1C847FA:                                 Call 0.Method_arg_38 (var_FC)
  loc_1C8480F:                               Else
  loc_1C84820:                                 var_148 = Ucase("KotNo")
  loc_1C84831:                                 If (var_378 = var_148) Then
  loc_1C8485F:                                   Proc_6_39_E7D3A0(var_148, CVar(var_B4.Fields.Item("VNo")))
  loc_1C8486B:                                   var_15C = "'"
  loc_1C84888:                                   Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C84890:                                   Call 0.Method_arg_20 (var_194)
  loc_1C84898:                                   Call 0.Method_arg_38 (CStr("'" & var_148 & var_15C))
  loc_1C848B7:                                 Else
  loc_1C848D9:                                   If (var_378 = Ucase("KotDate")) Then
  loc_1C84925:                                     Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C8492D:                                     Call 0.Method_arg_20 (var_194)
  loc_1C84935:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate"))) & "'")
  loc_1C84952:                                   Else
  loc_1C84974:                                     If (var_378 = Ucase("KotTime")) Then
  loc_1C849C0:                                       Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C849C8:                                       Call 0.Method_arg_20 (var_194)
  loc_1C849D0:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))) & "'")
  loc_1C849ED:                                     Else
  loc_1C84A0F:                                       If (var_378 = Ucase("Remarks")) Then
  loc_1C84A2C:                                         var_178 = var_B4.Fields.Item("Remarks")
  loc_1C84A5B:                                         Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C84A63:                                         Call 0.Method_arg_20 (var_194)
  loc_1C84A6B:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_178)) & "'")
  loc_1C84A88:                                       Else
  loc_1C84AAA:                                         If (var_378 = Ucase("TableTitle")) Then
  loc_1C84ABB:                                           Set var_170 = Me.Label1
  loc_1C84AC1:                                           Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C84AF9:                                           Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C84B01:                                           Call 0.Method_arg_20 (var_194)
  loc_1C84B09:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_178)) & "'"))
  loc_1C84B28:                                         Else
  loc_1C84B4A:                                           If (var_378 = Ucase("TableNo")) Then
  loc_1C84B96:                                             Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C84B9E:                                             Call 0.Method_arg_20 (var_194)
  loc_1C84BA6:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))) & "'")
  loc_1C84BC3:                                           Else
  loc_1C84BE5:                                             If (var_378 = Ucase("Steward")) Then
  loc_1C84BFA:                                               var_170 = var_B4.Fields
  loc_1C84C02:                                               var_178 = var_170.Item("WaiterName")
  loc_1C84C31:                                               Call 0.Method_arg_90 (var_190, CLng(var_AE))
  loc_1C84C39:                                               Call 0.Method_arg_20 (var_194)
  loc_1C84C41:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_178)) & "'")
  loc_1C84C5E:                                             Else
  loc_1C84C80:                                               If (var_378 = Ucase("KotStatus")) Then
  loc_1C84CA4:                                                 Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C84CAC:                                                 Call 0.Method_arg_20 (var_178)
  loc_1C84CB4:                                                 Call 0.Method_arg_38 ("'" & var_C8 & "'")
  loc_1C84CCA:                                               Else
  loc_1C84CEC:                                                 If (var_378 = Ucase("KotRemark")) Then
  loc_1C84D10:                                                   Call 0.Method_arg_90 (var_170, CLng(var_AE))
  loc_1C84D18:                                                   Call 0.Method_arg_20 (var_178)
  loc_1C84D20:                                                   Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1C84D33:                                                 End If
  loc_1C84D33:                                               End If
  loc_1C84D33:                                             End If
  loc_1C84D33:                                           End If
  loc_1C84D33:                                         End If
  loc_1C84D33:                                       End If
  loc_1C84D33:                                     End If
  loc_1C84D33:                                   End If
  loc_1C84D33:                                 End If
  loc_1C84D33:                               End If
  loc_1C84D33:                             End If
  loc_1C84D33:                           End If
  loc_1C84D33:                         End If
  loc_1C84D33:                       End If
  loc_1C84D33:                     End If
  loc_1C84D33:                   End If
  loc_1C84D33:                 End If
  loc_1C84D33:               End If
  loc_1C84D33:             End If
  loc_1C84D36:           Next var_368 'Integer
  loc_1C84D3E:           var_B4.MoveNext
  loc_1C84D43:           GoTo loc_1C83F6F
  loc_1C84D46:         End If
  loc_1C84D6E:         var_14C = Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")))
  loc_1C84D7F:         If (var_14C <> vbNullString) Then
  loc_1C84DCC:           If CBool(Ucase(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))) <> "PRN") Then
  loc_1C84DFB:             Call Proc_251_82_F0F208(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer"))))
  loc_1C84E09:           End If
  loc_1C84E09:         End If
  loc_1C84E0F:         If (var_E6 <= 0) Then
  loc_1C84E18:           Call 0.Method_arg_50 (var_14C)
  loc_1C84E22:           Set var_178 = Nothing
  loc_1C84E3C:           Set var_170 = MemVar_1F951E8 
  loc_1C84E48:           Proc_6_99_1484404(var_170, 0, var_14C)
  loc_1C84E53:           MemVar_1F951E8 = var_170
  loc_1C84E64:         Else
  loc_1C84E82:           Call 0.Method_Me8 (False, CVar(var_E6), var_15C, var_1C4)
  loc_1C84E87:         End If
  loc_1C84E8A:       Else
  loc_1C84E95:         If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1C84E9A:           Close 1
  loc_1C84EC1:           Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C84ED1:           var_B4.MoveFirst
  loc_1C84ED6:           ' Referenced from:     1C85F6E
  loc_1C84EE5:           If Not(var_B4.EOF) Then
  loc_1C84EEA:             var_92 = 0
  loc_1C84F25:             var_18C = 3
  loc_1C84FC5:             var_308 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), &HFF)
  loc_1C84FE1:             var_17C = var_308
  loc_1C85008:             var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92))), 1, var_18C)) = "LAU") 'Variant
  loc_1C85012:             var_304 = IIf(var_2F4, IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), (Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")), var_1FC) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_17C = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C8501B:             var_90 = CStr(var_304)
  loc_1C8505F:             If (var_92 = 0) Then
  loc_1C85064:               Print 1
  loc_1C85098:               var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C850A9:               If (var_F0 <> vbNullString) Then
  loc_1C850D2:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1C850D8:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C850EA:               End If
  loc_1C850F2:               If (var_F4 <> vbNullString) Then
  loc_1C8511B:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1C85121:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C85133:               End If
  loc_1C8513B:               If (var_F8 <> vbNullString) Then
  loc_1C85164:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1C8516A:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C8517C:               End If
  loc_1C85184:               If (var_FC <> vbNullString) Then
  loc_1C851AD:                 var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1C851B3:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, var_92)))
  loc_1C851C5:               End If
  loc_1C851C7:               Print 1
  loc_1C851F7:               Call Proc_251_96_10ABBB8(Me.LblRest.Caption, "D", &H28)
  loc_1C85201:               Print 1, var_308
  loc_1C85227:               Call Proc_251_96_10ABBB8(var_90, "D", &H28)
  loc_1C85231:               Print 1, var_17C
  loc_1C85245:               Print 1
  loc_1C8524D:               Print 1
  loc_1C85286:               Proc_6_39_E7D3A0(var_18C, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C852A8:               var_148 = (Chr(&HF) + "KOT No.   :     ")
  loc_1C852B2:               var_1B4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_18C), &HA, Proc_6_45_EADFB8(CStr(var_18C), &HA, var_17C))))
  loc_1C852B8:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, var_18C))
  loc_1C8536A:               var_148 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_1C85374:               var_1A4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_308), &HC)))
  loc_1C8537D:               var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_308), &HC))), &HA, Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_308), &HC))), &HA, var_17C))) + " ")
  loc_1C85387:               var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_308), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C8538D:               Print 1, "* NC LOT *"
  loc_1C853E2:               var_178 = var_B4.Fields.Item("Remarks")
  loc_1C8541F:               var_148 = (Chr(&HF) + "Remarks :     ")
  loc_1C85429:               var_1A4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32)))
  loc_1C85430:               var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32))), &HA, Proc_6_38_E69628(CVar(var_178)))) + Chr(&H12))
  loc_1C85436:               Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C8546F:               Set var_170 = Me.Label1
  loc_1C85475:               Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C854E6:               var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C854EF:               var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))), &HA, Proc_6_38_E69628(CVar(var_178)))) + ":     ")
  loc_1C854F9:               var_224 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1C854FF:               Print 1, "* NC LOT *"
  loc_1C85544:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C8554A:               Print 1, CVar(var_178)
  loc_1C85557:             End If
  loc_1C8557D:             var_16C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B)) + Space(1))
  loc_1C85597:             var_1A4 = (Trim(CVar(var_178)) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1C8559C:             var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6))), &HA, "Qty")))
  loc_1C855C9:             var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C855CF:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B))
  loc_1C855F2:             var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C855F8:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B))
  loc_1C8560B:             var_92 = (var_92 + 4)
  loc_1C85611:             var_B8.MoveFirst
  loc_1C85616:             ' Referenced from:     1C85B87
  loc_1C85625:             If Not(var_B8.EOF) Then
  loc_1C85656:               var_16C = Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ItemName")), &H12)))
  loc_1C8565F:               var_108 = CStr(var_16C)
  loc_1C85694:               Proc_6_39_E7D3A0(var_16C, CVar(var_B8.Fields.Item("qty")))
  loc_1C856CB:               var_190 = var_B8.Fields
  loc_1C85737:               var_1D4 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_16C, "0.00")), 6, Space(1))))
  loc_1C8574D:               var_2D4 = CVar(Proc_6_52_EAE084(CStr(IIf((var_190.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, CVar(var_B4.Fields.Item("TableNo")))) 'String
  loc_1C85750:               var_2E4 = (1 + var_2D4)
  loc_1C85755:               var_C4 = CStr(IIf(("Qty" = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C85787:               ' Referenced from:     1C8598C
  loc_1C85791:               If (Len(var_108) <> 0) Then
  loc_1C857C2:                 var_174 = InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0)
  loc_1C857F9:                 var_18C = CVar((InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0) - 1)) 'Long
  loc_1C8584C:                 var_308 = Proc_6_45_EADFB8(CStr(Mid(var_108, 1, IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 27, "0.00"))), &H1B)
  loc_1C85888:                 var_148 = (Chr(&HF) + CVar(var_308 & var_308 & var_C4))
  loc_1C8588E:                 Print 1, Left(var_108, &H1B)
  loc_1C858A1:                 var_92 = (var_92 + 1)
  loc_1C858A7:                 var_C4 = vbNullString
  loc_1C858B4:                 If (Len(var_108) > &H1B) Then
  loc_1C858E5:                   var_174 = InStrRev(CStr(Left(var_108, &H1B)), " ", -1, 0)
  loc_1C8590D:                   var_17C = CStr(Left(var_108, &H1B))
  loc_1C8591C:                   var_18C = CVar((InStrRev(var_17C, " ", -1, 0) + 1)) 'Long
  loc_1C8595D:                   var_1D4 = Mid(var_108, CLng(IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00")), CVar(Len(var_108)))
  loc_1C85966:                   var_108 = CStr(var_1D4)
  loc_1C85986:                 Else
  loc_1C85989:                   var_108 = vbNullString
  loc_1C8598C:                 End If
  loc_1C8598C:                 GoTo loc_1C85787
  loc_1C8598F:               End If
  loc_1C859C8:               If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), var_BC.AbsolutePosition, &H12) <> vbNullString) Then
  loc_1C85A0B:                 var_148 = (Chr(&HF) + "(")
  loc_1C85A15:                 var_1A4 = (Left(var_108, &H1B) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), var_BC.AbsolutePosition)))
  loc_1C85A1E:                 var_1B4 = (IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00") + ")")
  loc_1C85A24:                 Print 1, CVar(Len(var_108))
  loc_1C85A45:                 var_92 = (var_92 + 1)
  loc_1C85A48:               End If
  loc_1C85A52:               If (&H12 = (&H45 - var_A6)) Then
  loc_1C85A6B:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C85A71:                 Print 1, Left(var_108, &H1B)
  loc_1C85A83:                 Print 1, "Contd."
  loc_1C85A9B:                 Print 1, Chr(&HC)
  loc_1C85AAA:                 var_94 = (var_94 + 1)
  loc_1C85AC0:                 Call Proc_251_97_1200EA4(1, 0, &H28, var_312)
  loc_1C85ADF:                 Call Proc_251_96_10ABBB8(var_90, "B", &H28, var_17C, var_312)
  loc_1C85AE9:                 Print 1, var_17C
  loc_1C85AF8:                 var_92 = &H12
  loc_1C85B11:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C85B17:                 Print 1, Left(var_108, &H1B)
  loc_1C85B3A:                 var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C85B40:                 Print 1, Left(var_108, &H1B)
  loc_1C85B63:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C85B69:                 Print 1, Left(var_108, &H1B)
  loc_1C85B7C:                 var_92 = (var_92 + 4)
  loc_1C85B7F:               End If
  loc_1C85B82:               var_B8.MoveNext
  loc_1C85B87:               GoTo loc_1C85616
  loc_1C85B8A:             End If
  loc_1C85B94:             If (var_92 < (&H45 - var_A6)) Then
  loc_1C85B97:               ' Referenced from:     1C85BB8
  loc_1C85BA1:               If (var_92 = (&H45 - var_A6)) Then
  loc_1C85BA9:                 Print 1, vbNullString
  loc_1C85BB5:                 var_92 = (var_92 + 1)
  loc_1C85BB8:                 GoTo loc_1C85B97
  loc_1C85BBB:               End If
  loc_1C85BBB:             End If
  loc_1C85BD1:             var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C85BD7:             Print 1, Left(var_108, &H1B)
  loc_1C85C38:             var_148 = (Chr(&HF) + "Waiter Name  :     ")
  loc_1C85C3F:             var_18C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_1C85C42:             var_1A4 = (Left(var_108, &H1B) + var_18C)
  loc_1C85C48:             Print 1, IIf(((var_BC.AbsolutePosition = 0) Or (Len(var_108) <= &H1B)), 28, "0.00")
  loc_1C85C8C:             var_148 = (Chr(&HF) + "***  ")
  loc_1C85C93:             var_18C = Left(var_108, &H1B) & Trim(var_C8) 
  loc_1C85CA2:             Print 1, var_18C & "  ***"
  loc_1C85CFD:             var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C85D0B:             unk_5921F8.Execute CStr(var_16C), var_18C, -1
  loc_1C85D6C:             If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C85D9D:               Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("Changed KOT", &H14, var_190), "D", &H28, var_308)
  loc_1C85DA7:               Print 1, var_308
  loc_1C85DBD:             Else
  loc_1C85E13:               unk_5921F8.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C85E71:               If (Proc_6_38_E69628(CVar(var_190.Fields.Item(0)), var_190, 1) = "Y") Then
  loc_1C85E87:                 var_30C = Proc_6_45_EADFB8("DUPLICATE KOT", &H14)
  loc_1C85EA2:                 Call Proc_251_96_10ABBB8(var_30C, "D", &H28)
  loc_1C85EAC:                 Print 1, var_308
  loc_1C85EC2:               Else
  loc_1C85EC4:                 Print 1
  loc_1C85ECA:               End If
  loc_1C85ECA:             End If
  loc_1C85ECF:             Set var_DC = Nothing
  loc_1C85EE7:             var_148 = (Chr(&HF) + "** ")
  loc_1C85EF1:             var_16C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1C85EFA:             var_18C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C85F00:             Print 1, var_18C
  loc_1C85F14:             var_B4.MoveNext
  loc_1C85F1B:             Print 1
  loc_1C85F23:             Print 1
  loc_1C85F2B:             Print 1
  loc_1C85F33:             Print 1
  loc_1C85F59:             var_16C = (Chr(&H1B) + Chr(&H6D))
  loc_1C85F5F:             Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C85F6E:             GoTo loc_1C84ED6
  loc_1C85F71:           End If
  loc_1C85F73:           Close 1
  loc_1C85FAE:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C85FD6:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C8602E:             var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C86034:             Print 1, var_16C
  loc_1C86054:           Else
  loc_1C86079:             Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C860B0:             Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C860C1:           End If
  loc_1C860C3:           Close 1
  loc_1C860CD:           If (MemVar_1F953BC = "Y") Then
  loc_1C860FF:             var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C86110:           Else
  loc_1C86118:             For var_37C = 1 To var_E8:       var_EA = var_37C 'Integer
  loc_1C8614D:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C8615E:             Next var_37C 'Integer
  loc_1C86163:           End If
  loc_1C86166:         Else
  loc_1C86171:           If (var_264 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1C86176:             Close 1
  loc_1C8619D:             Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C861AD:             var_B4.MoveFirst
  loc_1C861B2:             ' Referenced from:       1C870A5
  loc_1C861C1:             If Not(var_B4.EOF) Then
  loc_1C86201:               var_18C = 3
  loc_1C86249:               var_1EC = Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT")))
  loc_1C862E4:               var_2F4 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C)) = "LAU") 'Variant
  loc_1C862EE:               var_304 = IIf(var_2F4, IIf((var_1EC = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C862F7:               var_90 = CStr(var_304)
  loc_1C8633B:               If (0 = 0) Then
  loc_1C86340:                 Print 1
  loc_1C86374:                 var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1C86385:                 If (var_F0 <> vbNullString) Then
  loc_1C863AE:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1C863B4:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C863C6:                 End If
  loc_1C863CE:                 If (var_F4 <> vbNullString) Then
  loc_1C863F7:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1C863FD:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C8640F:                 End If
  loc_1C86417:                 If (var_F8 <> vbNullString) Then
  loc_1C86440:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1C86446:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C86458:                 End If
  loc_1C86460:                 If (var_FC <> vbNullString) Then
  loc_1C86489:                   var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H28)))
  loc_1C8648F:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1)))
  loc_1C864A1:                 End If
  loc_1C864A3:                 Print 1
  loc_1C864E7:                 Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1C864F1:                 Print 1, var_30C
  loc_1C8652F:                 Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8(var_90, &H14), "D", &H28)
  loc_1C86539:                 Print 1, var_1EC
  loc_1C86551:                 Print 1
  loc_1C86559:                 Print 1
  loc_1C86592:                 Proc_6_39_E7D3A0(var_18C, CVar(var_B4.Fields.Item("VNo")), &H12)
  loc_1C865B4:                 var_148 = (Chr(&HF) + "KOT No.   :       ")
  loc_1C865BE:                 var_1B4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_18C), &HA, var_1EC)))
  loc_1C865C4:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C))
  loc_1C86676:                 var_148 = (Chr(&HF) + "KOT Dt.   :       ")
  loc_1C8667D:                 var_18C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")))), &HC)) 'String
  loc_1C86680:                 var_1A4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + var_18C)
  loc_1C86689:                 var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(var_18C), &HA, Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME")))))) + " ")
  loc_1C86693:                 var_224 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, var_18C)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C86699:                 Print 1, "* NC LOT *"
  loc_1C866EE:                 var_178 = var_B4.Fields.Item("Remarks")
  loc_1C8672B:                 var_148 = (Chr(&HF) + "Remarks :       ")
  loc_1C86735:                 var_1A4 = (CVar(Proc_6_45_EADFB8(var_FC, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32)))
  loc_1C8673C:                 var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32))) + Chr(&H12))
  loc_1C86742:                 Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C8677B:                 Set var_170 = Me.Label1
  loc_1C86781:                 Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C867D2:                 var_308 = Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))
  loc_1C867F2:                 var_1A4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_1C867FB:                 var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))) + ":       ")
  loc_1C86805:                 var_224 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_308, 5)))
  loc_1C8680B:                 Print 1, "* NC LOT *"
  loc_1C86850:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C86856:                 Print 1, CVar(var_178)
  loc_1C86863:               End If
  loc_1C86889:               var_16C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1C86895:               var_17C = "Qty"
  loc_1C868A3:               var_1A4 = (Trim(CVar(var_178)) + CVar(Proc_6_52_EAE084(var_17C, 6)))
  loc_1C868A8:               var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_17C, 6))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))))
  loc_1C868D5:               var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C868DB:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C868FE:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C86904:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1C86917:               var_92 = (var_92 + 4)
  loc_1C8691D:               var_B8.MoveFirst
  loc_1C86922:               ' Referenced from:       1C86CC3
  loc_1C86931:               If Not(var_B8.EOF) Then
  loc_1C8696A:                 var_190 = var_B8.Fields
  loc_1C86981:                 Proc_6_39_E7D3A0(Chr(&H12), CVar(var_190.Item("qty")))
  loc_1C86A24:                 var_18C = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1C86A3D:                 var_234 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_17C, 6)))))
  loc_1C86A53:                 var_304 = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1C86A56:                 var_340 = (&H12 + var_304)
  loc_1C86AAF:                 var_148 = (Chr(&HF) + CVar(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1C86AB5:                 Print 1, Space(3)
  loc_1C86AC8:                 var_92 = (var_92 + 1)
  loc_1C86B04:                 If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C86B47:                   var_148 = (Chr(&HF) + "(")
  loc_1C86B51:                   var_1A4 = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1C86B5A:                   var_1B4 = (CVar(var_190.Item("qty")) + ")")
  loc_1C86B60:                   Print 1, Chr(&H12)
  loc_1C86B81:                   var_92 = (var_92 + 1)
  loc_1C86B84:                 End If
  loc_1C86B8E:                 If (&H12 = (&H45 - var_A6)) Then
  loc_1C86BA7:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C86BAD:                   Print 1, Space(3)
  loc_1C86BBF:                   Print 1, "Contd."
  loc_1C86BD7:                   Print 1, Chr(&HC)
  loc_1C86BE6:                   var_94 = (var_94 + 1)
  loc_1C86BFC:                   Call Proc_251_97_1200EA4(1, 0, &H28, var_312)
  loc_1C86C1B:                   Call Proc_251_96_10ABBB8(var_90, "B", &H28, var_17C, var_312)
  loc_1C86C25:                   Print 1, var_17C
  loc_1C86C34:                   var_92 = &H12
  loc_1C86C4D:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C86C53:                   Print 1, Space(3)
  loc_1C86C76:                   var_148 = (Chr(&HF) + CVar(var_AC))
  loc_1C86C7C:                   Print 1, Space(3)
  loc_1C86C9F:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C86CA5:                   Print 1, Space(3)
  loc_1C86CB8:                   var_92 = (var_92 + 4)
  loc_1C86CBB:                 End If
  loc_1C86CBE:                 var_B8.MoveNext
  loc_1C86CC3:                 GoTo loc_1C86922
  loc_1C86CC6:               End If
  loc_1C86CD0:               If (var_92 < (&H45 - var_A6)) Then
  loc_1C86CD3:                 ' Referenced from:       1C86CF4
  loc_1C86CDD:                 If (var_92 = (&H45 - var_A6)) Then
  loc_1C86CE5:                   Print 1, vbNullString
  loc_1C86CF1:                   var_92 = (var_92 + 1)
  loc_1C86CF4:                   GoTo loc_1C86CD3
  loc_1C86CF7:                 End If
  loc_1C86CF7:               End If
  loc_1C86D0D:               var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C86D13:               Print 1, Space(3)
  loc_1C86D69:               var_1EC = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)
  loc_1C86D74:               var_148 = (Chr(&HF) + "Waiter Name  :       ")
  loc_1C86D7E:               var_1A4 = (Space(3) + CVar(var_1EC))
  loc_1C86D84:               Print 1, CVar(var_190.Item("qty"))
  loc_1C86DC8:               var_148 = (Chr(&HF) + "***  ")
  loc_1C86DCF:               var_18C = Space(3) & Trim(var_C8) 
  loc_1C86DDE:               Print 1, var_18C & "  ***"
  loc_1C86E39:               var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C86E47:               unk_5921F8.Execute CStr(var_16C), var_18C, -1
  loc_1C86EA8:               If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C86ED9:                 Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("Changed KOT", &H14, var_190), "D", &H28, var_308)
  loc_1C86EE3:                 Print 1, var_308
  loc_1C86EF9:               Else
  loc_1C86F4F:                 unk_5921F8.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C86FAD:                 If (Proc_6_38_E69628(CVar(var_190.Fields.Item(0)), var_190, 1) = "Y") Then
  loc_1C86FDE:                   Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1C86FE8:                   Print 1, var_308
  loc_1C86FFE:                 Else
  loc_1C87000:                   Print 1
  loc_1C87006:                 End If
  loc_1C87006:               End If
  loc_1C8700B:               Set var_DC = Nothing
  loc_1C87023:               var_148 = (Chr(&HF) + "** ")
  loc_1C8702D:               var_16C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1C87036:               var_18C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C8703C:               Print 1, var_18C
  loc_1C87050:               var_B4.MoveNext
  loc_1C87057:               Print 1
  loc_1C8705F:               Print 1
  loc_1C87067:               Print 1
  loc_1C8706F:               Print 1
  loc_1C87077:               Print 1
  loc_1C8707F:               Print 1
  loc_1C87087:               Print 1
  loc_1C8708F:               Print 1
  loc_1C87097:               Print 1
  loc_1C8709F:               Print 1
  loc_1C870A5:               GoTo loc_1C861B2
  loc_1C870A8:             End If
  loc_1C870AA:             Close 1
  loc_1C870E5:             If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C8710D:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C87165:               var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C8716B:               Print 1, var_16C
  loc_1C8718B:             Else
  loc_1C871B0:               Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C871E7:               Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C871F8:             End If
  loc_1C871FA:             Close 1
  loc_1C87204:             If (MemVar_1F953BC = "Y") Then
  loc_1C87236:               var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C87247:             Else
  loc_1C8724F:               For var_380 = 1 To var_E8:         var_EA = var_380 'Integer
  loc_1C87284:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C87295:               Next var_380 'Integer
  loc_1C8729A:             End If
  loc_1C8729D:           Else
  loc_1C872A8:             If (var_264 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1C872AD:               Close 1
  loc_1C872D4:               Open "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_1C872E4:               var_B4.MoveFirst
  loc_1C872E9:               ' Referenced from:         1C88401
  loc_1C872F8:               If Not(var_B4.EOF) Then
  loc_1C87425:                 var_304 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1C8742E:                 var_90 = CStr(var_304)
  loc_1C8749A:                 var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1C874A9:                 If (0 = 0) Then
  loc_1C874AE:                   Print 1
  loc_1C874BC:                   If (var_F0 <> vbNullString) Then
  loc_1C874F2:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H2A)))
  loc_1C874F9:                     var_1A4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C874FF:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C87515:                   End If
  loc_1C8751D:                   If (var_F4 <> vbNullString) Then
  loc_1C87553:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H2A)))
  loc_1C8755A:                     var_1A4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C87560:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C87576:                   End If
  loc_1C8757E:                   If (var_F8 <> vbNullString) Then
  loc_1C875B4:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H2A)))
  loc_1C875BB:                     var_1A4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C875C1:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C875D7:                   End If
  loc_1C875DF:                   If (var_FC <> vbNullString) Then
  loc_1C87615:                     var_16C = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_FC, &H2A)))
  loc_1C8761C:                     var_1A4 = (Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))) + Chr(&H12))
  loc_1C87622:                     Print 1, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3)
  loc_1C87638:                   End If
  loc_1C8763A:                   Print 1
  loc_1C87669:                   var_1A4 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C876AC:                   var_2E4 = (40 - Len(Trim(CVar(Me.LblRest))))
  loc_1C876BE:                   var_304 = Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2)))
  loc_1C876D6:                   var_1E4 = (Chr(&HF) + Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))))
  loc_1C876DD:                   var_254 = (CVar(var_B4.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1C876E4:                   var_340 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") + var_304)
  loc_1C876EB:                   var_364 = (IIf((var_B8.Fields.Item(2).Value = (Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1C876F1:                   Print 1, var_364
  loc_1C8773F:                   var_18C = (40 - Len(Trim(var_90)))
  loc_1C87772:                   var_254 = (40 - Len(Trim(var_90)))
  loc_1C87784:                   var_2B4 = Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2)))
  loc_1C8779C:                   var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1C877A6:                   var_1E4 = (Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ShortName")), 1))), 1, 3) / 2))) + CVar(var_90))
  loc_1C877AD:                   var_2D4 = (CVar(var_B4.Fields.Item("NCKOT")) + var_2B4)
  loc_1C877B4:                   var_2F4 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1C877BA:                   Print 1, (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1C877DE:                   Print 1
  loc_1C877E6:                   Print 1
  loc_1C8781F:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")))
  loc_1C8784E:                   var_148 = (Chr(&HF) + "KOT No.   :         ")
  loc_1C87858:                   var_1B4 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)))
  loc_1C8785F:                   var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1C87865:                   Print 1, CVar(var_B4.Fields.Item("NCKOT"))
  loc_1C87928:                   var_148 = (Chr(&HF) + "KOT Dt.   :         ")
  loc_1C87932:                   var_1A4 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), &H12), &HC)))
  loc_1C8793B:                   var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + " ")
  loc_1C87945:                   var_224 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1C8794C:                   var_254 = (Trim(var_90) + Chr(&H12))
  loc_1C87952:                   Print 1, IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *")
  loc_1C879AB:                   var_178 = var_B4.Fields.Item("Remarks")
  loc_1C879E8:                   var_148 = (Chr(&HF) + "Remarks :         ")
  loc_1C879F2:                   var_1A4 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H20)))
  loc_1C879F9:                   var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + Chr(&H12))
  loc_1C879FF:                   Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1C87A38:                   Set var_170 = Me.Label1
  loc_1C87A3E:                   Call 0.Method_TopCtrl1_UnknownEvent_140 (2, var_178)
  loc_1C87A64:                   var_308 = Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)
  loc_1C87AD9:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("GuarAtt")))
  loc_1C87B0A:                   var_1A4 = (Chr(&HF) + CVar(var_308))
  loc_1C87B13:                   var_1B4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + ":         ")
  loc_1C87B1D:                   var_224 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo"))), 5)))
  loc_1C87B24:                   var_254 = (Trim(var_90) + Space(&HA))
  loc_1C87B2D:                   var_284 = (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") + "Covers:         ")
  loc_1C87B37:                   var_2F4 = ((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), 7)))
  loc_1C87B3E:                   var_340 = ((IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *") / 2) + Chr(&H12))
  loc_1C87B44:                   Print 1, IIf((var_B8.Fields.Item("GuarAtt").Value = var_90), "Void", vbNullString)
  loc_1C87BB0:                   var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C87BB7:                   var_18C = (CVar(var_178) + Chr(&H12))
  loc_1C87BBD:                   Print 1, CVar(var_308)
  loc_1C87BCE:                 End If
  loc_1C87BF4:                 var_16C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Space(1))
  loc_1C87C0E:                 var_1A4 = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 7)))
  loc_1C87C1A:                 var_1B4 = Space(1)
  loc_1C87C22:                 var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HC)) + var_1B4)
  loc_1C87C3C:                 var_224 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 7)))
  loc_1C87C85:                 var_148 = (Chr(&HF) + CVar(CStr(Trim(var_90))))
  loc_1C87C8C:                 var_18C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C87C92:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1C87CC6:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C87CCD:                 var_18C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H15)) + Chr(&H12))
  loc_1C87CD3:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1C87CEA:                 var_92 = (var_92 + 4)
  loc_1C87CF0:                 var_B8.MoveFirst
  loc_1C87CF5:                 ' Referenced from:         1C88003
  loc_1C87D04:                 If Not(var_B8.EOF) Then
  loc_1C87D3D:                   var_190 = var_B8.Fields
  loc_1C87D54:                   Proc_6_39_E7D3A0(var_1B4, CVar(var_190.Item("qty")))
  loc_1C87D9F:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_1C87E42:                   var_18C = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H15, 1, 1)) + Space(1))
  loc_1C87E5B:                   var_234 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1B4, "0.000")), 7, CVar(Proc_6_52_EAE084("Qty", 7)))))
  loc_1C87E6F:                   var_284 = (Space(&HA) + Space(1))
  loc_1C87E85:                   var_304 = CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 7, (IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("NCKOT"))) = "Y"), "* NC LOT *", "* LOT *") / 2))) 'String
  loc_1C87E88:                   var_340 = (&H12 + var_304)
  loc_1C87E9E:                   var_3DC = CVar(Proc_6_52_EAE084(CStr(IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 5)) 'String
  loc_1C87EA1:                   var_3EC = (IIf((var_B8.Fields.Item("Rate").Value = "0.00"), "Void", vbNullString) + var_3DC)
  loc_1C87F1B:                   var_148 = (Chr(&HF) + CVar(CStr(var_3EC)))
  loc_1C87F22:                   var_18C = (Space(1) + Chr(&H12))
  loc_1C87F28:                   Print 1, CVar(Proc_6_52_EAE084("Qty", 7))
  loc_1C87F3F:                   var_92 = (var_92 + 1)
  loc_1C87F7B:                   If (Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1C87FBE:                     var_148 = (Chr(&HF) + "(")
  loc_1C87FC8:                     var_1A4 = (Space(1) + CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description")))))
  loc_1C87FD1:                     var_1B4 = (CVar(var_190.Item("qty")) + ")")
  loc_1C87FD7:                     Print 1, var_1B4
  loc_1C87FF8:                     var_92 = (var_92 + 1)
  loc_1C87FFB:                   End If
  loc_1C87FFE:                   var_B8.MoveNext
  loc_1C88003:                   GoTo loc_1C87CF5
  loc_1C88006:                 End If
  loc_1C88029:                 var_148 = (Chr(&HF) + CVar(var_C0))
  loc_1C88030:                 var_18C = (Space(1) + Chr(&H12))
  loc_1C88036:                 Print 1, CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("Description"))))
  loc_1C880A8:                 var_148 = (Chr(&HF) + "Waiter Name  :         ")
  loc_1C880B2:                 var_1A4 = (Space(1) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1C880B9:                 var_1D4 = (CVar(var_190.Item("qty")) + Chr(&H12))
  loc_1C880BF:                 Print 1, "0.000"
  loc_1C88107:                 var_1A4 = Chr(&H12)
  loc_1C88114:                 var_148 = (Chr(&HF) + "***  ")
  loc_1C8811B:                 var_18C = Space(1) & Trim(var_C8) 
  loc_1C88127:                 var_1B4 = ("  ***" + var_1A4)
  loc_1C88131:                 Print 1, var_18C & Chr(&H12)
  loc_1C88190:                 var_16C = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1C8819E:                 unk_5921F8.Execute CStr(var_16C), var_18C, -1
  loc_1C881FF:                 If (var_190.Fields.Item(0).Value > 1) Then
  loc_1C88230:                   Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("Changed KOT", &H14), "D", &H28)
  loc_1C8823A:                   Print 1, var_308
  loc_1C88250:                 Else
  loc_1C882A6:                   unk_5921F8.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C88304:                   If (Proc_6_38_E69628(CVar(var_190.Fields.Item(0)), var_190, var_308) = "Y") Then
  loc_1C88335:                     Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1C8833F:                     Print 1, var_308
  loc_1C88355:                   Else
  loc_1C88357:                     Print 1
  loc_1C8835D:                   End If
  loc_1C8835D:                 End If
  loc_1C88362:                 Set var_DC = Nothing
  loc_1C8837A:                 var_148 = (Chr(&HF) + "** ")
  loc_1C88384:                 var_16C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1C8838D:                 var_18C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1C88393:                 Print 1, var_18C
  loc_1C883A7:                 var_B4.MoveNext
  loc_1C883AE:                 Print 1
  loc_1C883B6:                 Print 1
  loc_1C883BE:                 Print 1
  loc_1C883C6:                 Print 1
  loc_1C883EC:                 var_16C = (Chr(&H1B) + Chr(&H6D))
  loc_1C883F2:                 Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1C88401:                 GoTo loc_1C872E9
  loc_1C88404:               End If
  loc_1C88406:               Close 1
  loc_1C88441:               If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), var_308) <> vbNullString) Then
  loc_1C88469:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C884C1:                 var_16C = CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value 
  loc_1C884C7:                 Print 1, var_16C
  loc_1C884E7:               Else
  loc_1C8850C:                 Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_1C88543:                 Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1C88554:               End If
  loc_1C88556:               Close 1
  loc_1C88560:               If (MemVar_1F953BC = "Y") Then
  loc_1C88592:                 var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1C885A3:               Else
  loc_1C885AB:                 For var_3F0 = 1 To var_E8:           var_EA = var_3F0 'Integer
  loc_1C885E0:                   var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_1C885F1:                 Next var_3F0 'Integer
  loc_1C885F6:               End If
  loc_1C885F6:             End If
  loc_1C885F6:           End If
  loc_1C885F6:         End If
  loc_1C885F6:       End If
  loc_1C885F6:     End If
  loc_1C8864C:     unk_5921F8.Execute CStr("UPDATE KOT SET PRINTED='Y' WHERE DOCID='" & Me.Fields.Item("SearchCode").Value & "'"), var_18C, -1
  loc_1C8866B:   Else
  loc_1C886B5:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_18C, var_1A4, Chr(&H12))
  loc_1C886D0:   End If
  loc_1C886D3:   var_BC.MoveNext
  loc_1C886D8:   GoTo loc_1C829EC
  loc_1C886DB: End If
  loc_1C886E0: Set var_B4 = Nothing
  loc_1C886E8: Set var_B8 = Nothing
  loc_1C886F0: Set var_BC = Nothing
  loc_1C886F3: Exit Sub
  loc_1C886F4: ' Referenced from: 1C81FFC
  loc_1C886F4: Proc_6_60_E63754(var_190)
  loc_1C886F9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1B0C288
  'Data Table: 5921DC
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
  Dim unk_5921F8 As Connection15
  Dim var_B0 As Variant
  Dim MemVar_1F950EC As Double
  Dim var_160 As Variant
  Dim var_164 As Variant
  Dim Me As Recordset15
  Dim var_8A As Variant
  Dim var_114 As Variant
  Dim var_88 As Variant
  Dim var_198 As Variant
  Dim var_1AC As Variant
  Dim var_1F0 As Variant
  Dim var_204 As Field20
  Dim var_248 As Variant
  Dim var_25C As Variant
  Dim var_2F0 As Variant
  Dim var_2E0 As Variant
  Dim var_2F4 As Variant
  Dim var_348 As Variant
  Dim var_3A0 As Variant
  Dim var_390 As Variant
  Dim var_3F8 As Variant
  Dim var_3E8 As Variant
  Dim var_498 As Variant
  Dim var_4AC As Variant
  Dim var_560 As Fields15
  Dim var_574 As Field20
  Dim var_5CC As Field20
  Dim var_610 As Variant
  Dim var_668 As Fields15
  Dim var_67C As Variant
  Dim var_764 As Variant
  Dim var_7A8 As Variant
  Dim var_8C0 As Variant
  Dim var_178 As Variant
  Dim var_188 As Variant
  Dim var_1CC As Variant
  Dim var_1EC As Variant
  Dim var_224 As Variant
  Dim var_2BC As Variant
  Dim var_2CC As Variant
  Dim var_314 As Variant
  Dim var_324 As Variant
  Dim var_36C As Variant
  Dim var_42C As Variant
  Dim var_43C As Variant
  Dim var_474 As Variant
  Dim var_484 As Variant
  Dim var_494 As Variant
  Dim var_4EC As Variant
  Dim var_53C As Variant
  Dim var_5B4 As Variant
  Dim var_60C As Variant
  Dim var_644 As Variant
  Dim var_6FC As Variant
  Dim var_72C As Variant
  Dim var_784 As Variant
  Dim var_7DC As Variant
  Dim var_7EC As Variant
  Dim var_844 As Variant
  Dim var_8E4 As Variant
  Dim var_914 As Variant
  Dim var_9D4 As Variant
  Dim var_9E4 As Variant
  Dim var_9F4 As Variant
  Dim var_150 As Double
  Dim var_19C As TextBox
  Dim var_B54 As Double
  Dim var_A5C As String
  Dim var_B5C As Double
  Dim var_A60 As String
  Dim var_B64 As Double
  Dim var_A64 As String
  Dim var_A74 As Variant
  Dim var_B6C As Double
  Dim var_AF8 As Variant
  Dim var_B18 As Variant
  Dim var_774 As Variant
  Dim var_A20 As String
  Dim var_A24 As String
  Dim var_A28 As String
  Dim var_A3C As String
  Dim var_A4C As String
  Dim var_A54 As String
  Dim var_134 As Variant
  Dim var_1BC As Variant
  Dim var_214 As Variant
  Dim var_26C As Variant
  Dim var_3B4 As Variant
  Dim var_40C As Variant
  Dim var_4BC As Variant
  Dim var_68C As Variant
  Dim var_A98 As Variant
  Dim var_70C As Variant
  Dim var_71C As Variant
  Dim var_A48 As String
  Dim var_F18 As Double
  Dim var_A58 As String
  Dim var_F20 As Double
  Dim var_CD0 As Variant
  Dim var_D00 As Variant
  Dim var_D60 As Variant
  Dim var_DA0 As Variant
  Dim var_E30 As Variant
  Dim var_E70 As Variant
  Dim var_F28 As Double
  Dim var_96C As Variant
  Dim var_A14 As Variant
  Dim var_C60 As Variant
  Dim var_CA0 As Variant
  Dim var_D50 As Variant
  Dim var_DB0 As Variant
  Dim var_DC0 As Variant
  Dim var_E00 As Variant
  Dim var_E10 As Variant
  Dim var_EA0 As Variant
  Dim var_EE0 As Variant
  Dim var_EF0 As Variant
  Dim var_C30 As Variant
  Dim var_F10 As Variant
  Dim var_A34 As String
  loc_1B07FD0: On Error Goto loc_1B0C26D
  loc_1B07FDE: Set var_A8 = Me.Txt
  loc_1B07FE4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1B0800D: If (Proc_6_27_EA61EC(var_AC, "Voucher Date") = 0) Then
  loc_1B08010:   Exit Sub
  loc_1B08011: End If
  loc_1B0801C: Set var_A8 = Me.Txt
  loc_1B08022: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1B0804B: If (Proc_6_27_EA61EC(var_AC, "Voucher No") = 0) Then
  loc_1B0804E:   Exit Sub
  loc_1B0804F: End If
  loc_1B0805A: If (LocalRestCode = vbNullString) Then
  loc_1B08076:   MsgBox("Open RestaurantChange Master", 0, var_F4, var_114, var_134)
  loc_1B08086:   Exit Sub
  loc_1B08087: End If
  loc_1B08092: Set var_A8 = Me.Txt
  loc_1B08098: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_AC)
  loc_1B080C1: If (Proc_6_27_EA61EC(var_AC, "KOT Time") = 0) Then
  loc_1B080C4:   Exit Sub
  loc_1B080C5: End If
  loc_1B080D0: Set var_A8 = Me.Txt
  loc_1B080D6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1B080FF: If (Proc_6_27_EA61EC(var_AC, "WAITER") = 0) Then
  loc_1B08102:   Exit Sub
  loc_1B08103: End If
  loc_1B0810E: Set var_A8 = Me.Txt
  loc_1B08114: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1B0813D: If (Proc_6_27_EA61EC(var_AC, "TABLE CODE") = 0) Then
  loc_1B08140:   Exit Sub
  loc_1B08141: End If
  loc_1B0814F: Set var_A8 = Me.Txt
  loc_1B08155: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1B0816B: var_F4 = Trim(CVar(var_AC.Tag))
  loc_1B08189: If (var_F4 = vbNullString) Then
  loc_1B081A5:   MsgBox("TABLE CODE is required field.", &H10, var_F4, var_114, var_134)
  loc_1B081C3:   Set var_A8 = Me.Txt
  loc_1B081C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1B081E3:   If (var_AC.Enabled = &HFF) Then
  loc_1B081F1:     Set var_A8 = Me.Txt
  loc_1B081F7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_AC)
  loc_1B081FF:     var_AC.SetFocus
  loc_1B0820B:   End If
  loc_1B0820B:   Exit Sub
  loc_1B0820C: End If
  loc_1B0821A: Set var_A8 = Me.Txt
  loc_1B08220: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1B08236: var_F4 = Trim(CVar(var_AC.Tag))
  loc_1B08254: If (var_F4 = vbNullString) Then
  loc_1B08270:   MsgBox("Steward Name is required field.", &H10, var_F4, var_114, var_134)
  loc_1B0828E:   Set var_A8 = Me.Txt
  loc_1B08294:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1B0829C:   var_136 = var_AC.Enabled
  loc_1B082AE:   If (var_136 = &HFF) Then
  loc_1B082BC:     Set var_A8 = Me.Txt
  loc_1B082C2:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_AC)
  loc_1B082CA:     var_AC.SetFocus
  loc_1B082D6:   End If
  loc_1B082D6:   Exit Sub
  loc_1B082D7: End If
  loc_1B082D7: var_C4 = 1
  loc_1B082E0: var_104 = 1
  loc_1B082FE: var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B08304: var_114 = Trim(var_F4)
  loc_1B08320: If (var_114 = vbNullString) Then
  loc_1B0833C:   MsgBox("Fill Item Name ", 0, var_F4, var_114, var_134)
  loc_1B0835F:   Me.FGrid.Row = 1
  loc_1B0836B:   Set var_A8 = Me.FGrid
  loc_1B0838F:   Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1B08397:   Exit Sub
  loc_1B08398: End If
  loc_1B08398: var_C4 = 1
  loc_1B083A4: var_104 = CVar(CLng(4)) 'Long
  loc_1B083BE: var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B083C4: var_114 = Trim(var_F4)
  loc_1B083E0: If (var_114 = vbNullString) Then
  loc_1B083FC:   MsgBox("Item Detail Required ", 0, var_F4, var_114, var_134)
  loc_1B0841F:   Me.FGrid.Row = 1
  loc_1B0842B:   Set var_A8 = Me.FGrid
  loc_1B08440:   var_C4 = CVar(CLng("14737632")) 'Long
  loc_1B0844F:   Me.FGrid.CellBackColor = var_C4
  loc_1B08457:   Exit Sub
  loc_1B08458: End If
  loc_1B0845B: Call Proc_251_88_104E91C(var_136, FGrid.DispID_8001, var_104, var_C4)
  loc_1B0846B: Set var_A8 = Me.TxtGrid
  loc_1B08471: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_AC, 0, FGrid.DispID_8001)
  loc_1B08479: var_AC.Visible = var_104
  loc_1B08485: Call Proc_251_91_EF7250(var_C4)
  loc_1B08498: Set var_A8 = Me.Txt
  loc_1B0849E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1B084C6: If (Proc_6_91_EF38D0(CDate(var_AC.Text)) = 0) Then
  loc_1B084D4:   Set var_A8 = Me.Txt
  loc_1B084DA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC)
  loc_1B084E2:   var_AC.SetFocus
  loc_1B084EE:   Exit Sub
  loc_1B084EF: End If
  loc_1B08524: var_114 = IIf((Me.ChkNCKOT.Value = 1), "Y", "N")
  loc_1B0852D: var_9C = CStr(var_114)
  loc_1B08542: Set var_A8 = Me.TopCtrl1
  loc_1B08548: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_AC)
  loc_1B08561: If (CStr() = "Add") Then
  loc_1B0857F:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B08582:     ' Referenced from: 1B08636
  loc_1B08586:     Set var_154 = New RsTouchScreenKeyBoard
  loc_1B08594:     var_154.ParentForm = CVar(Me)
  loc_1B085A1:     var_154.CAPTION = "Please Specify, Reason of NC KOT ?"
  loc_1B085B3:     var_154.TxtKeyBoard.MaxLength = 150
  loc_1B085BA:     var_C4 = 1
  loc_1B085C6:     Call var_154.Show
  loc_1B08602:     If (Trim(TxtKeyBoard) = vbNullString) Then
  loc_1B08610:       var_F4 = "Reason"
  loc_1B08620:       var_D4 = "Please Enter a Valid Reason for NC KOT."
  loc_1B08626:       MsgBox(var_D4, 0, var_F4, var_114, var_134)
  loc_1B08636:       GoTo loc_1B08582
  loc_1B08639:     End If
  loc_1B08639:   End If
  loc_1B0863F:   var_E4 = 0
  loc_1B0865C:   var_B4 = "Select NCUR from enviro where LogSite_code='" & MemVar_1F95078
  loc_1B0866C:   unk_5921F8.Execute var_B4 & "'", var_D4, -1
  loc_1B08674:   var_A8 = var_A8.Fields
  loc_1B0867C:   var_E4 = var_AC.Item(var_AC)
  loc_1B08684:   var_B0 = var_B0.Value
  loc_1B0868E:   MemVar_1F950EC = CDate(var_F4)
  loc_1B086D5:   Set var_A8 = Me.Txt
  loc_1B086DB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Select Count(*) From KOT Where DocID='", var_D4, -1, var_B0)
  loc_1B086FC:   unk_5921F8.Execute 0 & var_B4 & "'", var_164, var_F4
  loc_1B08704:   MemVar_1F950EC = var_B0.Fields
  loc_1B0870C:   var_C4 = var_AC.Text.Item(var_F4)
  loc_1B08714:    = var_164.Value
  loc_1B08741:   If (var_F4 > 0) Then
  loc_1B0874A:     Call Proc_251_93_10E97E0(MemVar_1F95044)
  loc_1B0875D:     Set var_A8 = Me.Txt
  loc_1B08763:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_1B0876B:     var_AC.Text = var_B4
  loc_1B0877A:   End If
  loc_1B0877D: Else
  loc_1B087B1:   global_248 = CStr(Me.Fields.Item("DocID").Value)
  loc_1B087C2:   ' Referenced from:   1B08876
  loc_1B087C6:   Set var_154 = New RsTouchScreenKeyBoard
  loc_1B087D4:   var_154.ParentForm = CVar(Me)
  loc_1B087E1:   var_154.CAPTION = "Please Specify, Reason of Editing ?"
  loc_1B087F3:   var_154.TxtKeyBoard.MaxLength = 150
  loc_1B087FA:   var_C4 = 1
  loc_1B08806:   Call var_154.Show
  loc_1B0881A:   global_172 = TxtKeyBoard
  loc_1B08842:   If (Trim(global_172) = vbNullString) Then
  loc_1B0885B:     var_C4 = "Please Enter a Valid Reason for Editing."
  loc_1B08866:     MsgBox(var_C4, 0, "Reason", var_114, var_134)
  loc_1B08876:     GoTo loc_1B087C2
  loc_1B08879:   End If
  loc_1B08879: End If
  loc_1B0887B: Set var_154 = Nothing 
  loc_1B08881: var_8A = &HFF
  loc_1B0888D: unk_5921F8.BeginTrans var_168
  loc_1B08896: Set var_A8 = Me.TopCtrl1
  loc_1B0889C: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_8A)
  loc_1B088B5: If (CStr(var_C4) = "Edit") Then
  loc_1B0890E:   unk_5921F8.Execute CStr("Select * from KOT Where DocId='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1B08919:   Set var_88 = var_B0
  loc_1B08933:   ' Referenced from: 1B08FC7
  loc_1B08942:   If Not(var_88.EOF) Then
  loc_1B089A2:     var_164 = var_88.Fields
  loc_1B089AA:     var_19C = var_164.Item("VDate")
  loc_1B089B2:     var_1AC = CVar(var_19C) 'Address
  loc_1B089B9:     Proc_6_7_F26918(var_1BC, var_1AC)
  loc_1B089D8:     var_204 = var_88.Fields.Item("vType")
  loc_1B089FF:     var_25C = var_88.Fields.Item("vPrefix")
  loc_1B08B7E:     var_610 = var_88.Fields
  loc_1B08BAD:     var_67C = var_88.Fields.Item("Waiter")
  loc_1B08BC8:     Proc_6_7_F26918(var_71C, Now, 1)
  loc_1B08C06:     var_7A8 = var_88.Fields
  loc_1B08CEB:     var_E4 = "Insert Into KOTLog (Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,DELFLAG,LogSite_Code,GuarAtt,ItemRestCode) Values ('"
  loc_1B08D23:     var_224 = var_E4 & var_88.Fields.Item("DocID").Value & "'," & var_88.Fields.Item("VNo").Value & "," & var_1BC & ",'" & var_204.Value 
  loc_1B08D66:     var_36C = var_224 & "','" & var_25C.Value & "','" & CVar(MemVar_1F95070) & "','" & var_88.Fields.Item("RestCode").Value & "','" & var_88.Fields.Item("RoomCat").Value 
  loc_1B08D96:     var_474 = var_36C & "','" & var_88.Fields.Item("Roomtype").Value & "','" & var_88.Fields.Item("RoomNo").Value & "','" & var_88.Fields.Item("Pending").Value 
  loc_1B08D9F:     var_494 = var_474 & "'," 
  loc_1B08DAF:     var_4EC = var_494 & var_88.Fields.Item("SNo").Value & ",'" 
  loc_1B08DDF:     var_60C = var_4EC & Format(Time, "hh:nn") & "','" & var_88.Fields.Item("Item").Value & "'," & var_88.Fields.Item("qty").Value & ",'" 
  loc_1B08E29:     var_784 = var_60C & var_610.Item("VoidYN").Value & "','" & var_67C.Value & "','" & CVar(MemVar_1F950C8) & "'," & var_71C & ",'" & var_88.Fields.Item("U_AE").Value 
  loc_1B08E39:     var_7DC = var_784 & "','" & var_7A8.Item("NCKOT").Value 
  loc_1B08E69:     var_8E4 = var_7DC & "'," & var_88.Fields.Item("Rate").Value & "," & var_88.Fields.Item("Amount").Value & ",'" & var_88.Fields.Item("Reasons").Value 
  loc_1B08E9C:     var_9D4 = var_8E4 & "','E','" & CVar(MemVar_1F95078) & "'," & var_88.Fields.Item("GuarAtt").Value & ",'" & var_88.Fields.Item("ItemRestcode").Value 
  loc_1B08EB3:     unk_5921F8.Execute CStr(var_9D4 & "')"), var_A14, -1
  loc_1B08FC2:     var_88.MoveNext
  loc_1B08FC7:     GoTo loc_1B08933
  loc_1B08FCA:   End If
  loc_1B08FD7:   var_E4 = "Update KOTLog Set SeqNo=(Select ISNull(Max(SeqNo),0)+1 From KOTLog  Where Docid= '"
  loc_1B0902B:   var_B0 = Me.Fields
  loc_1B0903B:   var_134 = var_B0.Item("SearchCode").Value
  loc_1B0905A:   unk_5921F8.Execute CStr(var_E4 & Me.Fields.Item("SearchCode").Value & "') Where IsNull(SeqNo,0)=0 And Docid= '" & var_134 & "'"), var_1AC, -1
  loc_1B09097:   If (Me.RecordCount > 0) Then
  loc_1B090F0:     unk_5921F8.Execute CStr("Delete From KOT Where DocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1B09162:     unk_5921F8.Execute CStr("Delete From Stock Where KOTDocID='" & Me.Fields.Item("SearchCode").Value & "'"), var_134, -1
  loc_1B091AD:     var_AC = Me.Fields.Item("SearchCode")
  loc_1B091B5:     var_D4 = var_AC.Value
  loc_1B091CA:     var_B4 = CStr("Delete From Stock Where DocID='" & var_D4 & "'")
  loc_1B091D4:     unk_5921F8.Execute var_B4, var_134, -1
  loc_1B091F0:   End If
  loc_1B0920E:   Set var_A8 = Me.Txt
  loc_1B09214:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Delete From KOT Where DocID='", var_D4, -1, var_B0)
  loc_1B0921C:   var_B0 = var_AC.Text
  loc_1B09235:   unk_5921F8.Execute var_B0 & var_B4 & "'", var_B0, var_164
  loc_1B0924F: End If
  loc_1B0926A: If (Me.ChkNCKOT.Value = 1) Then
  loc_1B09292:   For var_A1C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_A1C 'Integer
  loc_1B0929C:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B092A4:     var_104 = CVar(CLng(9)) 'Long
  loc_1B092ED:     If (Ucase(Trim(CVar(CStr(Me.FGrid.TextMatrix))))) = "CANCEL") Then
  loc_1B092F3:       var_A0 = "Y"
  loc_1B092F9:     Else
  loc_1B092FC:       var_A0 = "N"
  loc_1B092FF:     End If
  loc_1B0932B:     var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B09352:     Set var_AC = Me.FGrid
  loc_1B09363:     var_B4 = CStr(var_AC.TextMatrix))
  loc_1B093B2:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0)) And (Me.RecordCount > 0)) Then
  loc_1B093C3:       Set var_A8 = Me.Txt
  loc_1B093C9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (var_114 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1B093D1:       var_104 = var_AC.Text
  loc_1B09404:       var_150 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B09427:       Set var_164 = Me.Txt
  loc_1B0942D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_19C, var_A48, var_150, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B09435:       var_C4 = var_19C.Text
  loc_1B09442:       var_B54 = Val(var_A48)
  loc_1B09450:       Set var_1F0 = Me.Txt
  loc_1B09456:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_204, var_B54, 1)
  loc_1B09465:       Proc_6_7_F26918(var_114, CVar(var_204), var_A18)
  loc_1B09478:       Set var_248 = Me.Txt
  loc_1B0947E:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_25C, var_A58)
  loc_1B09486:       1 = var_25C.Tag
  loc_1B0948F:       var_2CC = CVar(CLng(var_92)) 'Long
  loc_1B09497:       var_324 = CVar(CLng(&HA)) 'Long
  loc_1B094B6:       var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1B094BE:       var_3F8 = CVar(CLng(5)) 'Long
  loc_1B094CD:       var_314 = Me.FGrid.TextMatrix)
  loc_1B09507:       var_B5C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B09538:       var_B64 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B09549:       Proc_6_7_F26918(var_494, Date, var_B64, CVar(CLng(8)), CVar(CLng(var_92)), var_B5C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B09552:       Set var_390 = Me.TopCtrl1
  loc_1B09558:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_314)
  loc_1B09593:       var_7EC = CVar(CLng(var_92)) 'Long
  loc_1B0959B:       var_844 = CVar(CLng(&HB)) 'Long
  loc_1B095BA:       var_8C0 = CVar(CLng(var_92)) 'Long
  loc_1B095C2:       var_914 = CVar(CLng(&HB)) 'Long
  loc_1B0960B:       var_9E4 = CVar(CLng(var_92)) 'Long
  loc_1B09613:       var_A74 = CVar(CLng(0)) 'Long
  loc_1B0963C:       var_AF8 = CVar(CLng(var_92)) 'Long
  loc_1B09644:       var_B18 = CVar(CLng(1)) 'Long
  loc_1B09673:       var_158 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,KOTDOCID,KOTSNO,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B4
  loc_1B096BA:       var_A4C = var_158 & "'," & CStr(var_150) & ",'" & global_136 & "','" & Me.LblVPrefix.Caption & "','" & MemVar_1F95070 & "',"
  loc_1B09712:       var_214 = CVar(var_A4C & CStr(var_B54) & ",") & var_114 & ",'" & CVar(MemVar_1F951A8) & "','" & CVar(global_140) & "','" & CVar(global_144) 
  loc_1B09761:       var_3B4 = var_214 & "','" & CVar(var_A58) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_314)) & "'," & CVar(var_B5C) 
  loc_1B097A8:       var_53C = var_3B4 & "," & CVar(var_B64) & ",'" & CVar(MemVar_1F950C8) & "'," & var_494 & ",'" & IIf((CStr(var_4EC) = "Add"), "A", "E") 
  loc_1B097E0:       var_68C = var_53C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & Me.Fields.Item("SearchCode").Value 
  loc_1B0981A:       var_72C = var_68C & "'," & CVar(Val(CStr(Me.FGrid.TextMatrix)))) & ",'" & CVar(var_A0) & "','" & CVar(MemVar_1F95078) 
  loc_1B09845:       unk_5921F8.Execute CStr(var_72C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "')"), var_7DC, -1
  loc_1B0992E:     Else
  loc_1B0995A:       var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B09981:       Set var_AC = Me.FGrid
  loc_1B09992:       var_B4 = CStr(var_AC.TextMatrix))
  loc_1B099C0:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1B099D1:         Set var_A8 = Me.Txt
  loc_1B099D7:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (var_114 <> vbNullString), CVar(CLng(&HA)), CVar(CLng(var_92)))
  loc_1B099DF:         var_4AC = var_AC.Text
  loc_1B099F9:         Set var_B0 = Me.FGrid
  loc_1B09A12:         var_150 = Val(CStr(var_B0.TextMatrix)))
  loc_1B09A1C:         Set var_160 = Me.LblVPrefix
  loc_1B09A22:         var_A34 = var_160.Caption
  loc_1B09A35:         Set var_164 = Me.Txt
  loc_1B09A3B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_19C, var_A48, var_150, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B09A43:         var_774 = var_19C.Text
  loc_1B09A50:         var_B54 = Val(var_A48)
  loc_1B09A5E:         Set var_1F0 = Me.Txt
  loc_1B09A64:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_204, var_B54, var_B18)
  loc_1B09A73:         Proc_6_7_F26918(var_114, CVar(var_204), var_AF8)
  loc_1B09A86:         Set var_248 = Me.Txt
  loc_1B09A8C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_25C, var_A58)
  loc_1B09A94:         var_B6C = var_25C.Tag
  loc_1B09A9D:         var_2CC = CVar(CLng(var_92)) 'Long
  loc_1B09AA5:         var_324 = CVar(CLng(&HA)) 'Long
  loc_1B09AC4:         var_3A0 = CVar(CLng(var_92)) 'Long
  loc_1B09ACC:         var_3F8 = CVar(CLng(5)) 'Long
  loc_1B09AD5:         Set var_2F4 = Me.FGrid
  loc_1B09ADB:         var_314 = var_2F4.TextMatrix)
  loc_1B09B0D:         var_A5C = CStr(Me.FGrid.TextMatrix))
  loc_1B09B15:         var_B5C = Val(var_A5C)
  loc_1B09B3E:         var_A60 = CStr(Me.FGrid.TextMatrix))
  loc_1B09B46:         var_B64 = Val(var_A60)
  loc_1B09B57:         Proc_6_7_F26918(var_494, Date, var_B64, CVar(CLng(8)), CVar(CLng(var_92)), var_B5C, CVar(CLng(7)), CVar(CLng(var_92)))
  loc_1B09B60:         Set var_390 = Me.TopCtrl1
  loc_1B09B66:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_314)
  loc_1B09BA1:         var_7EC = CVar(CLng(var_92)) 'Long
  loc_1B09BA9:         var_844 = CVar(CLng(&HB)) 'Long
  loc_1B09BC8:         var_8C0 = CVar(CLng(var_92)) 'Long
  loc_1B09BD0:         var_914 = CVar(CLng(&HB)) 'Long
  loc_1B09BEF:         var_A74 = CVar(CLng(var_92)) 'Long
  loc_1B09BF7:         var_A98 = CVar(CLng(1)) 'Long
  loc_1B09C26:         var_158 = "Insert Into Stock(DocId,SNo,VType,VPrefix,Site_Code,VNo,VDate,RestCode,RoomCat,RoomType,RoomNo,Item,UNIT,QtyIss,Rate,U_Name,U_EntDt,U_AE,DepartCode,GodownCode,DelFlag,LogSite_Code,ItemRestCode) Values ('" & var_B4
  loc_1B09C2D:         var_A20 = var_158 & "',"
  loc_1B09C58:         var_A3C = var_A20 & CStr(var_150) & ",'" & global_136 & "','" & var_A34
  loc_1B09C79:         var_A54 = var_A3C & "','" & MemVar_1F95070 & "'," & CStr(var_B54)
  loc_1B09C86:         var_178 = CVar(var_A54 & ",") & var_114 
  loc_1B09CD8:         var_26C = var_178 & ",'" & CVar(MemVar_1F951A8) & "','" & CVar(global_140) & "','" & CVar(global_144) & "','" & CVar(var_A58) 
  loc_1B09D28:         var_40C = var_26C & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(CStr(var_314)) & "'," & CVar(var_B5C) & "," & CVar(var_B64) 
  loc_1B09D6F:         var_5B4 = var_40C & ",'" & CVar(MemVar_1F950C8) & "'," & var_494 & ",'" & IIf((CStr(var_4EC) = "Add"), "A", "E") & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B09DBD:         var_70C = var_5B4 & "','" & CVar(CStr(Me.FGrid.TextMatrix))) & "','" & CVar(var_A0) & "','" & CVar(MemVar_1F95078) & "','" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_1B09DC6:         var_71C = var_70C & "')" 
  loc_1B09DD4:         unk_5921F8.Execute CStr(var_71C), var_72C, -1
  loc_1B09EA6:       End If
  loc_1B09EA6:     End If
  loc_1B09EA9:   Next var_A1C 'Integer
  loc_1B09EB1: Else
  loc_1B09EB5:   Set var_A8 = Me.TopCtrl1
  loc_1B09EBB:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1B09ED4:   If (CStr() = "Edit") Then
  loc_1B09EEE:     If (Me.RecordCount > 0) Then
  loc_1B09F05:       var_B4 = "UPDATE KOT SET NCKOT='" & var_9C
  loc_1B09F2C:       var_AC = Me.Fields.Item("SearchCode")
  loc_1B09F53:       unk_5921F8.Execute CStr(CVar(var_B4 & "' Where DocID='") & var_AC.Value & "'"), var_178, -1
  loc_1B09F75:     End If
  loc_1B09F93:     Set var_A8 = Me.Txt
  loc_1B09F99:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "Delete From KOT Where CONTRADocID='")
  loc_1B09FA1:     var_D4 = var_AC.Text
  loc_1B09FAA:     var_158 = -1 & var_B4
  loc_1B09FBA:     unk_5921F8.Execute CStr(CVar(var_B4 & "' Where DocID='") & var_AC.Value & "'") & "'", var_B0, var_B0
  loc_1B09FD4:   End If
  loc_1B09FD4: End If
  loc_1B09FF9: For var_B70 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_92 = var_B70 'Integer
  loc_1B0A01A:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B0A021:     Set var_A8 = Me.TopCtrl1
  loc_1B0A027:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(1)
  loc_1B0A040:     If (CStr() = "Edit") Then
  loc_1B0A047:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B0A04F:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1B0A069:       var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B0A096:       Set var_AC = Me.FGrid
  loc_1B0A0A7:       var_B4 = CStr(var_AC.TextMatrix))
  loc_1B0A0D5:       If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1B0A0E6:         Set var_A8 = Me.Txt
  loc_1B0A0EC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)))
  loc_1B0A0F4:         (Trim(var_F4) <> vbNullString) = var_AC.Text
  loc_1B0A107:         Set var_B0 = Me.Txt
  loc_1B0A10D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_A20)
  loc_1B0A115:         var_104 = var_160.Text
  loc_1B0A122:         var_150 = Val(var_A20)
  loc_1B0A130:         Set var_164 = Me.Txt
  loc_1B0A136:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C)
  loc_1B0A13E:         var_D4 = CVar(var_19C) 'Address
  loc_1B0A145:         Proc_6_7_F26918(var_F4, var_D4)
  loc_1B0A16A:         Set var_204 = Me.Txt
  loc_1B0A170:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_248, var_A34)
  loc_1B0A181:         var_2F0 = CVar(CLng(var_92)) 'Long
  loc_1B0A189:         var_348 = CVar(CLng(0)) 'Long
  loc_1B0A1AB:         var_B54 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0A1BC:         Set var_2E0 = Me.Txt
  loc_1B0A1C2:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_A3C, var_B54)
  loc_1B0A1CA:         var_348 = var_2F4.Text
  loc_1B0A1D3:         var_42C = CVar(CLng(var_92)) 'Long
  loc_1B0A1DB:         var_484 = CVar(CLng(&HA)) 'Long
  loc_1B0A1EA:         var_40C = Me.FGrid.TextMatrix)
  loc_1B0A224:         var_B5C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0A2E0:         var_644 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1B0A2F3:         Proc_6_7_F26918(var_71C, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_B5C)
  loc_1B0A2FC:         Set var_3E8 = Me.TopCtrl1
  loc_1B0A302:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(7)))
  loc_1B0A367:         var_B64 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0A398:         var_B6C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0A3C9:         var_F18 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0A3DC:         var_A88 = Proc_6_38_E69628(global_172, var_F18, CVar(CLng(8)), CVar(CLng(var_92)), var_B6C, CVar(CLng(7)), CVar(CLng(var_92)), var_B64)
  loc_1B0A3ED:         Set var_498 = Me.Txt
  loc_1B0A3F3:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4AC, var_A54, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1B0A41D:         var_574 = Me.Fields.Item("SearchCode")
  loc_1B0A450:         var_A58 = CStr(Me.FGrid.TextMatrix))
  loc_1B0A458:         var_F20 = Val(var_A58)
  loc_1B0A466:         Set var_5CC = Me.Txt
  loc_1B0A46C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_610, var_F20, CVar(CLng(0)), CVar(CLng(var_92)))
  loc_1B0A4A6:         var_D60 = CVar(CLng(var_92)) 'Long
  loc_1B0A4BD:         var_DA0 = Me.FGrid.TextMatrix)
  loc_1B0A4D7:         Set var_668 = Me.Txt
  loc_1B0A4DD:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_67C, var_A5C, var_DA0, CVar(CLng(6)))
  loc_1B0A4E5:         var_D60 = var_67C.Tag
  loc_1B0A4EE:         var_E30 = CVar(CLng(var_92)) 'Long
  loc_1B0A505:         var_E70 = Me.FGrid.TextMatrix)
  loc_1B0A51F:         Set var_764 = Me.Txt
  loc_1B0A525:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_7A8, var_A60, var_E70, CVar(CLng(1)))
  loc_1B0A52D:         var_E30 = var_7A8.Text
  loc_1B0A551:         var_158 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,ContraDocID,ContraSno,Logsite_Code,NCType,Description,Party,ItemRestCode,GuarAtt) " & " Values ('"
  loc_1B0A58B:         var_E4 = CVar(global_136) 'String
  loc_1B0A5A1:         var_1CC = CVar(var_158 & var_B4 & "'," & CStr(var_248.Tag) & ",") & var_F4 & ",'" & var_E4 & "','" & CVar(Me.LblVPrefix.Caption) 
  loc_1B0A5F6:         var_2BC = var_1CC & "','" & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_140) & "','" & CVar(global_144) 
  loc_1B0A644:         var_43C = var_2BC & "','" & CVar(var_A34) & "','Y'," & CVar(var_B54) & ",'" & CVar(var_A3C) & "','" & CVar(CStr(var_4AC.Text)) 
  loc_1B0A697:         var_6FC = var_43C & "'," & CVar(var_B5C) & ",'" & var_644 & "','" & CVar(MemVar_1F9501C) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_1B0A6DE:         var_88C = var_6FC & var_71C & ",'" & IIf((CStr(var_774) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_B64) & "," 
  loc_1B0A737:         var_C60 = var_88C & CVar((var_B6C * var_F18)) & ",'" & CVar(var_A88) & "','" & CVar(var_A54) & "','" & var_574.Value & "'," & CVar(var_F20) 
  loc_1B0A76E:         var_DC0 = var_C60 & ",'" & CVar(MemVar_1F95078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_610)), vbNullString) & "','" & CVar(CStr(var_DA0)) 
  loc_1B0A7C0:         unk_5921F8.Execute CStr(var_DC0 & "','" & CVar(var_A5C) & "','" & CVar(CStr(var_E70)) & "'," & CVar(Val(var_A60)) & ")"), var_F10, -1
  loc_1B0A908:       End If
  loc_1B0A90B:     Else
  loc_1B0A90F:       var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B0A917:       var_104 = CVar(CLng(&HA)) 'Long
  loc_1B0A937:       var_114 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_1B0A93F:       var_148 = vbNullString
  loc_1B0A94D:       var_198 = CVar(CLng(var_92)) 'Long
  loc_1B0A99D:       If CBool(CVar(CLng(7)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_1B0A9A4:         var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B0A9CB:         var_148 = CVar(CLng(var_92)) 'Long
  loc_1B0A9DC:         Set var_AC = Me.FGrid
  loc_1B0A9E2:         var_F4 = var_AC.TextMatrix)
  loc_1B0A9F5:         var_150 = Val(CStr(var_F4))
  loc_1B0AA0C:         var_B4 = CStr(Me.FGrid.TextMatrix))
  loc_1B0AA17:         var_A20 = "Update KOT Set VoidYN='Y',PENDING='N' Where Docid='" & var_B4 & "' And Sno="
  loc_1B0AA2C:         unk_5921F8.Execute var_A20 & CStr(var_150), var_114, -1
  loc_1B0AA60:         Set var_A8 = Me.Txt
  loc_1B0AA66:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, var_B0, var_150, CVar(CLng(&HD)), var_148)
  loc_1B0AA6E:         var_D4 = var_AC.Text
  loc_1B0AA81:         Set var_B0 = Me.Txt
  loc_1B0AA87:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_A20, CVar(CLng(&HC)), var_C4)
  loc_1B0AA8F:         var_198 = var_160.Text
  loc_1B0AA9C:         var_150 = Val(var_A20)
  loc_1B0AAAA:         Set var_164 = Me.Txt
  loc_1B0AAB0:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C, var_150)
  loc_1B0AABF:         Proc_6_7_F26918(var_F4, CVar(var_19C), (var_114 <> var_148))
  loc_1B0AAE4:         Set var_204 = Me.Txt
  loc_1B0AAEA:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_248, var_A34)
  loc_1B0AAF2:         var_104 = var_248.Tag
  loc_1B0AAFB:         var_2F0 = CVar(CLng(var_92)) 'Long
  loc_1B0AB03:         var_348 = CVar(CLng(0)) 'Long
  loc_1B0AB25:         var_B54 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0AB36:         Set var_2E0 = Me.Txt
  loc_1B0AB3C:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_A3C, var_B54)
  loc_1B0AB44:         var_348 = var_2F4.Text
  loc_1B0AB4D:         var_42C = CVar(CLng(var_92)) 'Long
  loc_1B0AB64:         var_40C = Me.FGrid.TextMatrix)
  loc_1B0AB9E:         var_B5C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0AC5A:         var_644 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1B0AC6D:         Proc_6_7_F26918(var_71C, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_B5C)
  loc_1B0AC76:         Set var_3E8 = Me.TopCtrl1
  loc_1B0AC7C:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(7)))
  loc_1B0ACE1:         var_B64 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0AD12:         var_B6C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0AD43:         var_F18 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0AD56:         var_A88 = Proc_6_38_E69628(global_172, var_F18, CVar(CLng(8)), CVar(CLng(var_92)), var_B6C, CVar(CLng(7)), CVar(CLng(var_92)), var_B64)
  loc_1B0AD67:         Set var_498 = Me.Txt
  loc_1B0AD6D:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4AC, var_A54, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1B0AD85:         Set var_560 = Me.Txt
  loc_1B0AD8B:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_574, CVar(CLng(&HA)))
  loc_1B0ADC5:         var_C30 = CVar(CLng(var_92)) 'Long
  loc_1B0ADDC:         var_CD0 = Me.FGrid.TextMatrix)
  loc_1B0ADF6:         Set var_5CC = Me.Txt
  loc_1B0ADFC:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_610, var_A58, var_CD0, CVar(CLng(6)))
  loc_1B0AE04:         var_C30 = var_610.Tag
  loc_1B0AE0D:         var_D00 = CVar(CLng(var_92)) 'Long
  loc_1B0AE24:         var_DB0 = Me.FGrid.TextMatrix)
  loc_1B0AE3E:         Set var_668 = Me.Txt
  loc_1B0AE44:         Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_67C, var_A5C, var_DB0, CVar(CLng(1)))
  loc_1B0AE4C:         var_D00 = var_67C.Text
  loc_1B0AE60:         var_E10 = CVar(CLng(var_92)) 'Long
  loc_1B0AE68:         var_E40 = CVar(CLng(&HC)) 'Long
  loc_1B0AE77:         var_E70 = Me.FGrid.TextMatrix)
  loc_1B0AE87:         var_EA0 = CVar(CLng(var_92)) 'Long
  loc_1B0AE8F:         var_EE0 = CVar(CLng(&HD)) 'Long
  loc_1B0AEB1:         var_F28 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0AEC8:         var_158 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Description,Party,ItemRestCode,GuarAtt,ContraDocId,ContraSNo) " & " Values ('"
  loc_1B0AF02:         var_E4 = CVar(global_136) 'String
  loc_1B0AF21:         var_1EC = CVar(var_158 & var_B4 & "'," & CStr(var_150) & ",") & var_F4 & ",'" & var_E4 & "','" & CVar(Me.LblVPrefix.Caption) & "','" 
  loc_1B0AF6D:         var_2BC = var_1EC & CVar(MemVar_1F95070) & "','" & CVar(LocalRestCode) & "','" & CVar(global_140) & "','" & CVar(global_144) 
  loc_1B0AFBB:         var_43C = var_2BC & "','" & CVar(var_A34) & "','Y'," & CVar(var_B54) & ",'" & CVar(var_A3C) & "','" & CVar(CStr(var_4AC.Text)) 
  loc_1B0B00E:         var_6FC = var_43C & "'," & CVar(var_B5C) & ",'" & var_644 & "','" & CVar(MemVar_1F9501C) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_1B0B055:         var_88C = var_6FC & var_71C & ",'" & IIf((CStr(var_774) = "Add"), "A", "E") & "','" & CVar(var_9C) & "'," & CVar(var_B64) & "," 
  loc_1B0B0A6:         var_9F4 = var_88C & CVar((var_B6C * var_F18)) & ",'" & CVar(var_A88) & "','" & CVar(var_A54) & "','" & CVar(MemVar_1F95078) & "','" 
  loc_1B0B0D4:         var_D50 = var_9F4 & IIf((var_9C = "Y"), Trim(CVar(var_574)), vbNullString) & "','" & CVar(CStr(var_CD0)) & "','" & CVar(var_A58) 
  loc_1B0B124:         var_EF0 = var_D50 & "','" & CVar(CStr(var_DB0)) & "'," & CVar(Val(var_A5C)) & ",'" & CVar(CStr(var_E70)) & "'," & CVar(var_F28) 
  loc_1B0B13B:         unk_5921F8.Execute CStr(var_EF0 & ")"), var_F68, -1
  loc_1B0B283:       End If
  loc_1B0B283:     End If
  loc_1B0B286:   Else
  loc_1B0B28A:     var_C4 = CVar(CLng(var_92)) 'Long
  loc_1B0B2AC:     var_F4 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_1B0B2D9:     Set var_AC = Me.FGrid
  loc_1B0B2EA:     var_B4 = CStr(var_AC.TextMatrix))
  loc_1B0B318:     If CBool(CVar(CLng(7)) And (CDbl(Val(var_B4)) <> CDbl(0))) Then
  loc_1B0B329:       Set var_A8 = Me.Txt
  loc_1B0B32F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, CVar(CLng(var_92)), (Trim(var_F4) <> vbNullString), CVar(CLng(&HA)), var_C4)
  loc_1B0B337:       var_7A8 = var_AC.Text
  loc_1B0B34A:       Set var_B0 = Me.Txt
  loc_1B0B350:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_160, var_A20, var_F28, var_EE0)
  loc_1B0B358:       var_EA0 = var_160.Text
  loc_1B0B365:       var_150 = Val(var_A20)
  loc_1B0B373:       Set var_164 = Me.Txt
  loc_1B0B379:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_19C, var_150)
  loc_1B0B388:       Proc_6_7_F26918(var_F4, CVar(var_19C), var_E70)
  loc_1B0B394:       Set var_1F0 = Me.LblVPrefix
  loc_1B0B3AD:       Set var_204 = Me.Txt
  loc_1B0B3B3:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_248, var_A34)
  loc_1B0B3BB:       var_E40 = var_248.Tag
  loc_1B0B3C4:       var_2F0 = CVar(CLng(var_92)) 'Long
  loc_1B0B3CC:       var_348 = CVar(CLng(0)) 'Long
  loc_1B0B3EE:       var_B54 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0B3FF:       Set var_2E0 = Me.Txt
  loc_1B0B405:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_2F4, var_A3C, var_B54)
  loc_1B0B40D:       var_348 = var_2F4.Text
  loc_1B0B416:       var_42C = CVar(CLng(var_92)) 'Long
  loc_1B0B42D:       var_40C = Me.FGrid.TextMatrix)
  loc_1B0B467:       var_B5C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0B523:       var_644 = IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Free"), "F", IIf((Trim(CVar(CStr(Me.FGrid.TextMatrix)))) = "Cancel"), "Y", "N"))
  loc_1B0B536:       Proc_6_7_F26918(var_71C, Date, CVar(CLng(9)), CVar(CLng(var_92)), CVar(CLng(9)), CVar(CLng(var_92)), var_B5C)
  loc_1B0B53F:       Set var_3E8 = Me.TopCtrl1
  loc_1B0B545:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(7)))
  loc_1B0B5AA:       var_B64 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0B5DB:       var_B6C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0B60C:       var_F18 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1B0B61F:       var_A64 = Proc_6_38_E69628(global_172, var_F18, CVar(CLng(8)), CVar(CLng(var_92)), var_B6C, CVar(CLng(7)), CVar(CLng(var_92)), var_B64)
  loc_1B0B630:       Set var_498 = Me.Txt
  loc_1B0B636:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_4AC, var_A54, CVar(CLng(8)), CVar(CLng(var_92)), CVar(CLng(var_92)))
  loc_1B0B64E:       Set var_560 = Me.Txt
  loc_1B0B654:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_574, CVar(CLng(&HA)))
  loc_1B0B68E:       var_C30 = CVar(CLng(var_92)) 'Long
  loc_1B0B6A5:       var_CD0 = Me.FGrid.TextMatrix)
  loc_1B0B6BF:       Set var_5CC = Me.Txt
  loc_1B0B6C5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_610, var_A58, var_CD0, CVar(CLng(6)))
  loc_1B0B6CD:       var_C30 = var_610.Tag
  loc_1B0B6D6:       var_D00 = CVar(CLng(var_92)) 'Long
  loc_1B0B6ED:       var_DB0 = Me.FGrid.TextMatrix)
  loc_1B0B707:       Set var_668 = Me.Txt
  loc_1B0B70D:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_67C, var_A5C, var_DB0, CVar(CLng(1)))
  loc_1B0B715:       var_D00 = var_67C.Text
  loc_1B0B739:       var_158 = "Insert Into KOT(Docid,VNo,VDate,VType,VPrefix,Site_Code,RestCode,RoomCat,RoomType,RoomNo,Pending,Sno,VTime,Item,Qty,VoidYN,Waiter,U_Name,U_EntDt,U_AE,NCKOT,Rate,Amount,Reasons,Remarks,Logsite_Code,NCType,Description,Party,ItemRestCode,GuarAtt) " & " Values ('"
  loc_1B0B74F:       var_A28 = CStr(var_150)
  loc_1B0B786:       var_1BC = CVar(var_1F0.Caption) 'String
  loc_1B0B79C:       var_214 = CVar(var_158 & var_B4 & "'," & var_A28 & ",") & var_F4 & ",'" & CVar(global_136) & "','" & var_1BC & "','" & CVar(MemVar_1F95070) 
  loc_1B0B7F1:       var_314 = var_214 & "','" & CVar(LocalRestCode) & "','" & CVar(global_140) & "','" & CVar(global_144) & "','" & CVar(var_A34) 
  loc_1B0B849:       var_4BC = var_314 & "','Y'," & CVar(var_B54) & ",'" & CVar(var_A3C) & "','" & CVar(CStr(var_4AC.Text)) & "'," & CVar(var_B5C) & ",'" 
  loc_1B0B896:       var_7DC = var_4BC & var_644 & "','" & CVar(MemVar_1F9501C) & "','" & CVar(MemVar_1F950C8) & "'," & var_71C & ",'" & IIf((CStr(var_774) = "Add"), "A", "E") 
  loc_1B0B8F1:       var_96C = var_7DC & "','" & CVar(var_9C) & "'," & CVar(var_B64) & "," & CVar((var_B6C * var_F18)) & ",'" & CVar(var_A64) & "','" 
  loc_1B0B91E:       var_CA0 = var_96C & CVar(var_A54) & "','" & CVar(MemVar_1F95078) & "','" & IIf((var_9C = "Y"), Trim(CVar(var_574)), vbNullString) 
  loc_1B0B96D:       var_E00 = var_CA0 & "','" & CVar(CStr(var_CD0)) & "','" & CVar(var_A58) & "','" & CVar(CStr(var_DB0)) & "'," & CVar(Val(var_A5C)) 
  loc_1B0B984:       unk_5921F8.Execute CStr(var_E00 & ")"), var_E70, -1
  loc_1B0BAB8:     End If
  loc_1B0BAB8:   End If
  loc_1B0BABB: Next var_B70 'Integer
  loc_1B0BAC4: Set var_A8 = Me.TopCtrl1
  loc_1B0BACA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1B0BAE3: If (CStr() = "Add") Then
  loc_1B0BAFA:   var_B4 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_1B0BB20:   var_114 = CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and VP.V_Type='" & global_136 & "' And VP.Date_From<=") 'String
  loc_1B0BB31:   Set var_A8 = Me.Txt
  loc_1B0BB37:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_AC, var_A28, var_114)
  loc_1B0BB3F:   var_188 = var_AC.Text
  loc_1B0BB4D:   Proc_6_7_F26918(var_F4, CVar(var_A28))
  loc_1B0BB55:   var_134 = -1 & var_F4 
  loc_1B0BB6C:   unk_5921F8.Execute CStr(CVar(var_B4 & "' AND VP.LOGSITE_CODE='" & var_B4 & "'," & var_A28 & ",") & var_F4 & " Order By VP.Date_From DESC"), var_B0, 
  loc_1B0BB77:   Set var_88 = var_B0
  loc_1B0BBB5:   If (var_88.RecordCount > 0) Then
  loc_1B0BBC6:     Set var_A8 = Me.Txt
  loc_1B0BBCC:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC)
  loc_1B0BBE1:     var_150 = Val(var_AC.Text)
  loc_1B0BBF6:     var_B0 = var_88.Fields
  loc_1B0BC06:     var_D4 = var_B0.Item("V_Type").Value
  loc_1B0BC31:     Proc_6_7_F26918(var_188, CVar(var_88.Fields.Item("Date_From")))
  loc_1B0BC56:     var_A20 = "Update Voucher_Prefix Set Start_Srl_No=" & CStr(var_150) & " Where (SITE_CODE='"
  loc_1B0BC81:     var_134 = CVar(var_A20 & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='") & var_D4 & "' and Date_From=" 
  loc_1B0BC96:     unk_5921F8.Execute CStr(var_134 & var_188), var_1BC, -1
  loc_1B0BCD0:   End If
  loc_1B0BCD0: End If
  loc_1B0BCD4: Set var_A8 = Me.TopCtrl1
  loc_1B0BCDA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_1F0)
  loc_1B0BCF3: If (CStr(var_150) = "Add") Then
  loc_1B0BD19:   var_B4 = "SELECT COUNT(*) FROM LASTVOU WHERE lOGSITE_CODE='" & MemVar_1F95078
  loc_1B0BD2E:   var_A24 = var_B4 & "' AND UNAME='" & MemVar_1F950C8 & "' AND ENAME='"
  loc_1B0BD37:   Call 0.Method_arg_50 (var_A20, var_A24, var_D4, -1, var_A8)
  loc_1B0BD50:   unk_5921F8.Execute var_AC & var_A20 & "' ", 0, var_B0
  loc_1B0BD58:   var_F4 = var_A8.Fields
  loc_1B0BD60:    = var_AC.Item()
  loc_1B0BD68:    = var_B0.Value
  loc_1B0BD99:   If (var_F4 > 0) Then
  loc_1B0BDBA:     Set var_A8 = Me.Txt
  loc_1B0BDC0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_B4, "UPDATE LASTVOU  SET DOCID='")
  loc_1B0BDC8:     var_D4 = var_AC.Text
  loc_1B0BDD1:     var_158 = -1 & var_B4
  loc_1B0BDEF:     Call 0.Method_arg_50 (var_A24, var_B4 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F950C8 & "' AND ENAME='")
  loc_1B0BE08:     unk_5921F8.Execute var_B0 & var_A24 & "'  ", , 
  loc_1B0BE2F:   Else
  loc_1B0BE53:     Call 0.Method_arg_50 ("INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='", "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "','", var_1BC)
  loc_1B0BE5C:     var_A20 = -1 & "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='"
  loc_1B0BE63:     var_A28 = "INSERT INTO LASTVOU (UNAME,ENAME,DOCID,Site_Code,U_EntDt,U_AE,LOGSITE_CODE) VALUES ('" & MemVar_1F950C8 & "' AND UNAME='" & "' WHERE UNAME='" & MemVar_1F950C8 & "','"
  loc_1B0BE74:     Set var_A8 = Me.Txt
  loc_1B0BE7A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC, var_A24)
  loc_1B0BE82:     var_A28 = var_AC.Text
  loc_1B0BEB1:     Proc_6_7_F26918(var_F4, Date)
  loc_1B0BEBD:     var_C4 = ",'A','"
  loc_1B0BEC9:     var_E4 = CVar(MemVar_1F95078) 'String
  loc_1B0BEE3:     unk_5921F8.Execute CStr(CVar(var_B0 & var_A24 & "','" & MemVar_1F95078 & "',") & var_F4 & var_C4 & var_E4 & "')"), , 
  loc_1B0BF1B:   End If
  loc_1B0BF1B: End If
  loc_1B0BF21: unk_5921F8.CommitTrans
  loc_1B0BF28: var_8A = 0
  loc_1B0BF39: Set var_A8 = Me.Txt
  loc_1B0BF3F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_AC)
  loc_1B0BF5B: var_8A = 0
  loc_1B0BF69: Me.Requery -1
  loc_1B0BF85: If (Me.RecordCount > 0) Then
  loc_1B0BFA3:   If (Me.ChkNCKOT.Value <> 1) Then
  loc_1B0BFCB:     Me.Find "SearchCode ='" & var_AC.Text & "'", 0, 1
  loc_1B0BFDA:   Else
  loc_1B0BFE0:     Me.MoveLast
  loc_1B0BFE5:   End If
  loc_1B0BFE5: End If
  loc_1B0C008: Call Proc_251_90_104CE7C(Proc_5_1_100EC1C("INI", Me, global_76), var_C4)
  loc_1B0C013: Call Proc_251_71_127DA08(var_8A)
  loc_1B0C02F: If (Me.RecordCount > 0) Then
  loc_1B0C042:   Me.Global.Load MemVar_1F96F64
  loc_1B0C065:   If (Me.ChkNCKOT.Value = 1) Then
  loc_1B0C075:     FrmMsgBox.ParentForm = Me
  loc_1B0C086:     Call 0.Method_arg_54 ("Print")
  loc_1B0C097:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1B0C09D:     FrmMsgBox.LblMsg.Caption = "Print NC KOT ?"
  loc_1B0C0B3:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1B0C0B9:     FrmMsgBox.LblMsg.BackColor = &HFFFF
  loc_1B0C0CC:     Call 0.Method_arg_64 (&HFFFF)
  loc_1B0C0E4:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1B0C0FA:     If (MsgBoxTouch = 6) Then
  loc_1B0C0FD:       Call TopCtrl1_UnknownEvent_14()
  loc_1B0C102:     End If
  loc_1B0C10F:     FrmMsgBox.ParentForm = Me
  loc_1B0C120:     Call 0.Method_arg_54 ("Print")
  loc_1B0C131:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1B0C137:     FrmMsgBox.LblMsg.Caption = "Print NC BILL ?"
  loc_1B0C14D:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1B0C153:     FrmMsgBox.LblMsg.BackColor = &HFF00
  loc_1B0C166:     Call 0.Method_arg_64 (&HFF00)
  loc_1B0C17E:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1B0C194:     If (MsgBoxTouch = 6) Then
  loc_1B0C197:       Call cmdNCBill_UnknownEvent_9()
  loc_1B0C19C:     End If
  loc_1B0C19F:   Else
  loc_1B0C1AC:     FrmMsgBox.ParentForm = Me
  loc_1B0C1BD:     Call 0.Method_arg_54 ("Print")
  loc_1B0C1CE:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1B0C1D4:     FrmMsgBox.LblMsg.Caption = "Print KOT ?"
  loc_1B0C1EA:     Set var_A8 = MemVar_1F96F64.LblMsg
  loc_1B0C1F0:     FrmMsgBox.LblMsg.BackColor = &HFFFF
  loc_1B0C203:     Call 0.Method_arg_64 (&HFFFF)
  loc_1B0C21B:     Call 0.Method_arg_2B0 (1, var_E4)
  loc_1B0C231:     If (MsgBoxTouch = 6) Then
  loc_1B0C234:       Call TopCtrl1_UnknownEvent_14()
  loc_1B0C239:     End If
  loc_1B0C239:   End If
  loc_1B0C239: End If
  loc_1B0C23E: Set var_88 = Nothing
  loc_1B0C250: Me.FGrid1.Visible = False
  loc_1B0C264: Me.LblPendingKot.Visible = False
  loc_1B0C26C: Exit Sub
  loc_1B0C26D: ' Referenced from: 1B07FD0
  loc_1B0C273: If (var_8A = &HFF) Then
  loc_1B0C27C:   unk_5921F8.RollbackTrans
  loc_1B0C281: End If
  loc_1B0C281: Proc_6_60_E63754(var_8A)
  loc_1B0C286: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_9 'F5A280
  'Data Table: 5921DC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F5A160: On Error Goto loc_F5A27A
  loc_F5A172: Me.DGTable.Visible = False
  loc_F5A191: If (Me.RecordCount > 0) Then
  loc_F5A1D0:   Set var_B4 = Me.Txt
  loc_F5A1D6:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5A1DE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F5A211:   var_B0 = Me.Fields.Item("Code")
  loc_F5A230:   Set var_B4 = Me.Txt
  loc_F5A236:   Call 0.Method_DGTable_UnknownEvent_90 (CInt(4), var_B8)
  loc_F5A23E:   var_B8.Tag = CStr(var_B0.Value)
  loc_F5A254: End If
  loc_F5A25F: Set var_A8 = Me.Txt
  loc_F5A265: Call 0.Method_DGTable_UnknownEvent_90 (CInt(4))
  loc_F5A26D: var_B0.SetFocus
  loc_F5A279: Exit Sub
  loc_F5A27A: ' Referenced from: F5A160
  loc_F5A27A: Proc_6_60_E63754(var_B0)
  loc_F5A27F: Exit Sub
End Sub

Private Sub DGTable_UnknownEvent_1F 'EA44D4
  'Data Table: 5921DC
  Dim var_A8 As Variant
  loc_EA4454: Set var_88 = Me.DGTable
  loc_EA447E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA4486: Set var_BC = Me.DGTable
  loc_EA44C2: Proc_6_138_106E830(Me.DGTable, global_84, CInt(4), Me.FGPoint)
  loc_EA44D0: Exit Sub
End Sub

Private Sub ChkNCKOT_Click() '1263A64
  'Data Table: 5921DC
  Dim var_A0 As String
  Dim var_8C As Variant
  Dim var_B8 As Variant
  Dim var_C4 As String
  Dim var_E0 As Integer
  Dim var_CC As String
  Dim unk_5921F8 As Connection15
  Dim var_E4 As Field20
  Dim var_88 As Recordset15
  loc_1263508: Set var_8C = Me.TopCtrl1
  loc_126350E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1263527: If (CStr() = "Browse") Then
  loc_126352A:   Exit Sub
  loc_126352B: End If
  loc_1263546: If (Me.ChkNCKOT.Value = 1) Then
  loc_1263555:   Me.Frame.Visible = True
  loc_126356D:   Me.Frame.ZOrder 0
  loc_1263583:   Set var_8C = Me.Txt
  loc_1263589:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_1263591:   var_B8.Text = vbNullString
  loc_12635A9:   Me.FrameGrpItem.Enabled = False
  loc_12635C9:   Call 0.Method_Me8 (var_BC)
  loc_12635E6:   Me.Frame.Top = Int(((var_BC - Me.Frame.Height) / CDbl(2)))
  loc_126360A:   Call 0.Method_Me0 (var_BC)
  loc_1263621:   Set var_B8 = Me.Frame
  loc_1263627:   var_B8.Left = Int(((var_BC - Me.Frame.Width) / CDbl(2)))
  loc_1263641:   Set var_8C = Me.Txt
  loc_1263647:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_1263661:   If (var_B8.Visible = 0) Then
  loc_1263671:     Set var_8C = Me.Txt
  loc_1263677:     Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_126367F:     var_B8.Visible = True
  loc_1263696:     Set var_8C = Me.Label1
  loc_126369C:     Call 0.Method_ChkNCKOT_Click0 (4, var_B8)
  loc_12636A4:     var_B8.Visible = True
  loc_12636B0:   End If
  loc_12636CB:   var_C4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_12636E2:   var_E0 = 0
  loc_1263702:   var_CC = "Select 'N'+ ShortName From Depart Where Code='" & LocalRestCode
  loc_1263712:   unk_5921F8.Execute var_CC & "'", var_9C, -1
  loc_126371A:   var_8C = var_8C.Fields
  loc_1263722:   var_E0 = var_B8.Item(var_B8)
  loc_126372A:   var_E4 = var_E4.Value
  loc_1263749:   unk_5921F8.Execute CStr(var_F4 & var_F4 & "' Order by Description"), CVar(var_C4 & MemVar_1F95078 & "') AND V_Type='"), var_158
  loc_1263754:   Set var_88 = var_15C
  loc_1263794:   If (var_88.RecordCount > 0) Then
  loc_12637B1:     var_B8 = var_88.Fields.Item(0)
  loc_12637B9:     var_9C = var_B8.Value
  loc_12637C2:     var_A0 = CStr(var_9C)
  loc_12637C8:     global_136 = var_A0
  loc_12637DF:     Call Proc_251_93_10E97E0(MemVar_1F95044, var_A0)
  loc_12637F2:     Set var_8C = Me.Txt
  loc_12637F8:     Call 0.Method_ChkNCKOT_Click0 (CInt(3), var_B8, var_A0)
  loc_1263800:     var_B8.Text = -1
  loc_126381C:     Me.LblKotNm.Caption = "NC Kot"
  loc_126382C:     Set var_8C = Me.cmdNCBill
  loc_1263832:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_126383A:   End If
  loc_126383D: Else
  loc_126384B:   Set var_8C = Me.Txt
  loc_1263851:   Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_126386B:   If (var_B8.Visible = &HFF) Then
  loc_126387B:     Set var_8C = Me.Txt
  loc_1263881:     Call 0.Method_ChkNCKOT_Click0 (CInt(7), var_B8)
  loc_1263889:     var_B8.Visible = False
  loc_12638A0:     Set var_8C = Me.Label1
  loc_12638A6:     Call 0.Method_ChkNCKOT_Click0 (4, var_B8)
  loc_12638AE:     var_B8.Visible = False
  loc_12638BA:   End If
  loc_12638D5:   var_C4 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_12638EC:   var_E0 = 0
  loc_126390C:   var_CC = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_126391C:   unk_5921F8.Execute var_CC & "'", var_9C, -1
  loc_1263924:   var_8C = var_8C.Fields
  loc_126392C:   var_E0 = var_B8.Item(var_B8)
  loc_1263934:   var_E4 = var_E4.Value
  loc_1263953:   unk_5921F8.Execute CStr(var_F4 & var_F4 & "' Order by Description"), CVar(var_C4 & MemVar_1F95078 & "') AND V_Type='"), var_158
  loc_126395E:   Set var_88 = var_15C
  loc_126399E:   If (var_88.RecordCount > 0) Then
  loc_12639BB:     var_B8 = var_88.Fields.Item(0)
  loc_12639CC:     var_A0 = CStr(var_B8.Value)
  loc_12639D2:     global_136 = var_A0
  loc_12639E9:     Call Proc_251_93_10E97E0(MemVar_1F95044, var_A0, -1)
  loc_12639FC:     Set var_8C = Me.Txt
  loc_1263A02:     Call 0.Method_ChkNCKOT_Click0 (CInt(3), var_B8, var_A0)
  loc_1263A0A:     var_B8.Text = var_15C
  loc_1263A26:     Me.LblKotNm.Caption = "Standard Kot"
  loc_1263A37:     Set var_8C = Me.cmdNCBill
  loc_1263A3D:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_1263A45:   End If
  loc_1263A51:   Me.Frame.Visible = False
  loc_1263A59: End If
  loc_1263A5E: Set var_88 = Nothing
  loc_1263A61: Exit Sub
End Sub

Public Sub Head_UnknownEvent_9(Index As Integer) 'F6B388
  'Data Table: 5921DC
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim var_8C As Variant
  loc_F6B247: var_86 = Index
  loc_F6B252: If (var_86 = CInt(0)) Then
  loc_F6B255:   GoTo loc_F6B386
  loc_F6B258: End If
  loc_F6B260: If (var_86 = CInt(1)) Then
  loc_F6B263:   Call TopCtrl1_UnknownEvent_D()
  loc_F6B26B: Else
  loc_F6B273:   If (var_86 = CInt(2)) Then
  loc_F6B276:     Call TopCtrl1_UnknownEvent_C()
  loc_F6B27E:   Else
  loc_F6B286:     If (var_86 = CInt(3)) Then
  loc_F6B289:       Call TopCtrl1_UnknownEvent_F()
  loc_F6B291:     Else
  loc_F6B299:       If (var_86 = CInt(4)) Then
  loc_F6B29C:         Call TopCtrl1_UnknownEvent_14()
  loc_F6B2A4:       Else
  loc_F6B2AC:         If (var_86 = CInt(5)) Then
  loc_F6B2AF:           Call TopCtrl1_UnknownEvent_16()
  loc_F6B2C1:           Set var_8C = Me.Txt
  loc_F6B2C7:           Call 0.Method_Head_UnknownEvent_90 (CInt(7), var_90)
  loc_F6B2CF:           var_90.Visible = False
  loc_F6B2E6:           Set var_8C = Me.Label1
  loc_F6B2EC:           Call 0.Method_Head_UnknownEvent_90 (4, var_90)
  loc_F6B2F4:           var_90.Visible = False
  loc_F6B30E:           Set var_8C = Me.Txt
  loc_F6B314:           Call 0.Method_Head_UnknownEvent_90 (CInt(7), var_90)
  loc_F6B31C:           var_90.Text = vbNullString
  loc_F6B32C:           Set var_8C = Me.FGNCType
  loc_F6B34A:           Me.FGNCType.Unload Me
  loc_F6B355:         Else
  loc_F6B35D:           If (var_86 = CInt(6)) Then
  loc_F6B360:             Call TopCtrl1_UnknownEvent_B()
  loc_F6B368:           Else
  loc_F6B370:             If (var_86 = CInt(7)) Then
  loc_F6B373:               Call TopCtrl1_UnknownEvent_E()
  loc_F6B37B:             Else
  loc_F6B383:               If (var_86 = CInt(8)) Then
  loc_F6B386:               End If
  loc_F6B386:             End If
  loc_F6B386:           End If
  loc_F6B386:         End If
  loc_F6B386:       End If
  loc_F6B386:     End If
  loc_F6B386:   End If
  loc_F6B386:   ' Referenced from: F6B255
  loc_F6B386: End If
  loc_F6B386: Exit Sub
End Sub

Private Sub cmdNCBill_UnknownEvent_9 '17A7B3C
  'Data Table: 5921DC
  Dim var_DC As String
  Dim var_E0 As String
  Dim var_E8 As String
  Dim unk_592243 As Connection15
  Dim var_D0 As Recordset15
  Dim var_10C As Variant
  Dim var_130 As Variant
  Dim Me As Recordset15
  Dim var_178 As Variant
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim unk_5921F8 As Connection15
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
  loc_17A5C74: On Error Goto loc_17A7B35
  loc_17A5C7A: MemVar_1F953C4 = "N"
  loc_17A5C81: MemVar_1F953C8 = "N"
  loc_17A5C88: MemVar_1F953CC = "K"
  loc_17A5CB8: var_E8 = "Select * from PrinterSetup where SITE_CODE='" & MemVar_1F95078 & "' AND RestCode='" & LocalRestCode & "'"
  loc_17A5CC1: unk_592243.Execute var_E8, var_108, -1
  loc_17A5CCC: Set var_D0 = var_10C
  loc_17A5CF4: If (var_D0.RecordCount > 0) Then
  loc_17A5CFA:   var_D0.MoveFirst
  loc_17A5D02: Else
  loc_17A5D1B:   MsgBox("Printer & Bill Type Not Defined ", &H40, var_130, var_150, var_170)
  loc_17A5D2B:   Exit Sub
  loc_17A5D2C: End If
  loc_17A5D47: If (Me.ChkNCKOT.Value <> 1) Then
  loc_17A5D4A:   Exit Sub
  loc_17A5D4B: End If
  loc_17A5D52: var_DC = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_17A5D97: var_88 = CStr(CVar(var_DC & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_17A5DB6: var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A5DF4: var_8C = CStr(var_130 & Me.Fields.Item("SearchCode").Value & "'")
  loc_17A5E1D: var_130 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A5E3D: var_178 = Me.Fields.Item("SearchCode")
  loc_17A5E45: var_108 = var_178.Value
  loc_17A5E5A: var_DC = CStr(var_130 & var_108 & "'")
  loc_17A5E64: unk_5921F8.Execute var_DC, var_188, -1
  loc_17A5E6F: Set var_BC = var_18C
  loc_17A5E93: If (var_88 = vbNullString) Then
  loc_17A5E96:   Exit Sub
  loc_17A5E97: End If
  loc_17A5E9F: If (var_8C = vbNullString) Then
  loc_17A5EA2:   Exit Sub
  loc_17A5EA3: End If
  loc_17A5EC7: Call 0.Method_cmdNCBill_UnknownEvent_90 (CInt(4), var_178, var_DC, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='", var_108)
  loc_17A5ECF: -1 = var_178.Text
  loc_17A5EE8: unk_5921F8.Execute var_18C & var_DC & "' AND CONTRADOCID IS NULL", var_18C, Me.Txt
  loc_17A5F1F: If (var_18C.RecordCount = 1) Then
  loc_17A5F25:   var_C8 = "New Order"
  loc_17A5F2B: Else
  loc_17A5F32:   Set var_10C = Me.LblState
  loc_17A5F40:   var_C8 = var_10C.Caption
  loc_17A5F46: End If
  loc_17A5F5C: unk_5921F8.Execute var_88, var_108, -1
  loc_17A5F67: Set var_B4 = var_10C
  loc_17A5F70: ' Referenced from: 17A7B11
  loc_17A5F7F: If Not(var_BC.EOF) Then
  loc_17A5F89:   var_130 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_17A5FA1:   var_10C = Me.Fields
  loc_17A5FB1:   var_108 = var_10C.Item("SearchCode").Value
  loc_17A5FC2:   var_170 = var_130 & var_108 & "' and K.VoidYN<>'Y'" 
  loc_17A5FF2:   unk_5921F8.Execute CStr(var_170), var_108, -1
  loc_17A5FFD:   Set var_B8 = var_10C
  loc_17A601A:   If (var_B8.RecordCount > 0) Then
  loc_17A604B:     var_19C = Trim(CVar(var_BC.Fields.Item("PrintType"))) 'Variant
  loc_17A6060:     If Not (var_19C = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_17A606E:       If (var_19C = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_17A6071:       End If
  loc_17A6073:       Close 1
  loc_17A608C:       var_E0 = "C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition)
  loc_17A609A:       Open var_E0 & ".TXT" For Output As 1 Len = &HFF
  loc_17A60AA:       var_B4.MoveFirst
  loc_17A60AF:       ' Referenced from: 17A6B06
  loc_17A60BE:       If Not(var_B4.EOF) Then
  loc_17A60D7:         If (0 = 0) Then
  loc_17A60DC:           Print 1
  loc_17A6110:           var_C0 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_17A6143:           Call Proc_251_96_10ABBB8(Me.LblRest.Caption, "D", &H28, var_E8)
  loc_17A614D:           Print 1, var_E8
  loc_17A6173:           Call Proc_251_96_10ABBB8("* NC Bill *", "D", &H28, var_E0)
  loc_17A617D:           Print 1, var_E0
  loc_17A618C:           var_92 = &H12
  loc_17A6191:           Print 1
  loc_17A6199:           Print 1
  loc_17A61D2:           Proc_6_39_E7D3A0(var_170, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_17A61F4:           var_130 = (Chr(&HF) + "V No.     : ")
  loc_17A61FE:           var_1AC = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EADFB8(CStr(var_170), &HA, var_92)))
  loc_17A6204:           Print 1, var_1AC
  loc_17A623F:           var_10C = var_B4.Fields
  loc_17A62B6:           var_130 = (Chr(&HF) + "Date.     : ")
  loc_17A62C0:           var_188 = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C.Item("VDate")), var_10C), &HC)))
  loc_17A62C9:           var_1AC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_10C.Item("VDate")), var_10C), &HC))), &HA, var_92)) + " ")
  loc_17A62D3:           var_1E4 = (var_1AC + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_17A62D9:           Print 1, var_1E4
  loc_17A632E:           var_178 = var_B4.Fields.Item("Remarks")
  loc_17A636B:           var_130 = (Chr(&HF) + "Remarks : ")
  loc_17A6375:           var_188 = (Trim(CVar(var_BC.Fields.Item("PrintType"))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32)))
  loc_17A637C:           var_1C0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_17A6382:           Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_17A63BB:           Set var_10C = Me.Label1
  loc_17A63C1:           Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_178)
  loc_17A6456:           var_188 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_17A645F:           var_1AC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))), &HA, var_92)) + ": ")
  loc_17A6466:           var_20C = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_17A6469:           var_21C = (Chr(&H12) + var_20C)
  loc_17A646F:           Print 1, var_21C
  loc_17A64BA:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A64C0:           Print 1, CVar(var_178)
  loc_17A64CD:         End If
  loc_17A64F3:         var_150 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_17A650D:         var_188 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_178)))))
  loc_17A6519:         var_1AC = Space(3)
  loc_17A6521:         var_1C0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_178))))), &HA, var_92)) + var_1AC)
  loc_17A653B:         var_1E4 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_17A654F:         var_20C = ("000" + Space(3))
  loc_17A6569:         var_230 = (var_20C + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_17A65AF:         var_130 = (Chr(&HF) + CVar(CStr(var_230)))
  loc_17A65B5:         Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_17A65D8:         var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A65DE:         Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_17A65F1:         var_92 = (var_92 + 4)
  loc_17A65F7:         var_B8.MoveFirst
  loc_17A65FC:         ' Referenced from: 17A6903
  loc_17A660B:         If Not(var_B8.EOF) Then
  loc_17A665B:           Proc_6_39_E7D3A0(var_1AC, CVar(var_B8.Fields.Item("qty")))
  loc_17A66A6:           Proc_6_39_E7D3A0(var_248, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A66F1:           Proc_6_39_E7D3A0(var_2F0, CVar(var_B8.Fields.Item("qty")), 1, 1)
  loc_17A671C:           Proc_6_39_E7D3A0(var_328, CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A676C:           var_130 = Space(3)
  loc_17A6774:           var_170 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + var_130)
  loc_17A678A:           var_1E4 = CVar(Proc_6_52_EAE084(CStr(Format(var_1AC, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_17A678D:           var_1FC = (1 + var_1E4)
  loc_17A67A1:           var_21C = (Space(3) + Space(3))
  loc_17A67BA:           var_298 = (var_92 + CVar(Proc_6_52_EAE084(CStr(Format(var_248, "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", &HA)))))
  loc_17A67CE:           var_2B8 = (var_298 + Space(3))
  loc_17A67E7:           var_398 = (var_2B8 + CVar(Proc_6_52_EAE084(CStr(Format((var_2F0 * var_328), "0.00")), &HA)))
  loc_17A685C:           var_10C = var_B8.Fields
  loc_17A6873:           Proc_6_39_E7D3A0(var_130, CVar(var_10C.Item("qty")))
  loc_17A68A1:           Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_10C.Item("qty"))))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_17A68AD:           var_1AC = (var_10C + (CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_10C.Item("qty")))))))
  loc_17A68B2:           var_D8 = CSng(var_1AC)
  loc_17A68DF:           var_130 = (Chr(&HF) + CVar(CStr(var_398)))
  loc_17A68E5:           Print 1, var_130
  loc_17A68F8:           var_92 = (var_92 + 1)
  loc_17A68FE:           var_B8.MoveNext
  loc_17A6903:           GoTo loc_17A65FC
  loc_17A6906:         End If
  loc_17A691C:         var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A6922:         Print 1, var_130
  loc_17A6934:         Print 1, vbNullString
  loc_17A69BA:         var_150 = (Chr(&HF) + Space(&H25))
  loc_17A69C4:         var_188 = (CVar(var_B8.Fields.Item("Rate")) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8)))
  loc_17A69CE:         var_20C = ((CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_10C.Item("qty")))))) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_D8, "0.00"))))), &HB, 1)))
  loc_17A69D4:         Print 1, Space(3)
  loc_17A6A05:         Print 1, vbNullString
  loc_17A6A5F:         var_130 = (Chr(&HF) + "Waiter Name  : ")
  loc_17A6A69:         var_188 = (Space(&H25) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_17A6A6F:         Print 1, (CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_B4.Fields.Item("qty"))))))
  loc_17A6A90:         Print 1
  loc_17A6AAB:         var_130 = (Chr(&HF) + "A Analysis Software")
  loc_17A6AB1:         Print 1, Space(&H25)
  loc_17A6AC1:         var_B4.MoveNext
  loc_17A6AC8:         Print 1
  loc_17A6AD0:         Print 1
  loc_17A6AD8:         Print 1
  loc_17A6AE0:         Print 1
  loc_17A6AE8:         Print 1
  loc_17A6AF0:         Print 1
  loc_17A6AF8:         Print 1
  loc_17A6B00:         Print 1
  loc_17A6B06:         GoTo loc_17A60AF
  loc_17A6B09:       End If
  loc_17A6B0B:       Close 1
  loc_17A6B46:       If (Proc_6_38_E69628(CVar(var_D0.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_17A6B6E:         Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A6BCC:         Print 1, CVar("TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_D0.Fields.Item("Printer").Value
  loc_17A6BEC:       Else
  loc_17A6C16:         Print 1, "TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_17A6C27:       End If
  loc_17A6C29:       Close 1
  loc_17A6C33:       If (MemVar_1F953BC = "Y") Then
  loc_17A6C65:         var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_17A6C76:       Else
  loc_17A6CA5:         var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_17A6CB3:       End If
  loc_17A6CB6:     Else
  loc_17A6CC1:       If (var_19C = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_17A6CC6:         Close 1
  loc_17A6CED:         Open "C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT" For Output As 1 Len = &HFF
  loc_17A6CFD:         var_B4.MoveFirst
  loc_17A6D02:         ' Referenced from:   17A78C2
  loc_17A6D11:         If Not(var_B4.EOF) Then
  loc_17A6D21:           var_90 = "* NC BILL *"
  loc_17A6D52:           var_C0 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_17A6D61:           If (0 = 0) Then
  loc_17A6D66:             Print 1
  loc_17A6D95:             var_188 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_17A6DD8:             var_268 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_17A6E02:             var_1D4 = (Chr(&HF) + Space(CLng(((CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_D0.Fields.Item("qty")))))) / 2))))
  loc_17A6E09:             var_20C = (CVar(CStr(Format(var_D8, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_17A6E10:             var_298 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_17A6E17:             var_2B8 = (var_298 + Chr(&H12))
  loc_17A6E1D:             Print 1, var_2B8
  loc_17A6E6B:             var_170 = (42 - Len(Trim(var_90)))
  loc_17A6E9E:             var_20C = (42 - Len(Trim(var_90)))
  loc_17A6EC8:             var_1C0 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_17A6ED2:             var_1D4 = (Space(CLng(((CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_D0.Fields.Item("qty")))))) / 2))) + CVar(var_90))
  loc_17A6ED9:             var_248 = (CVar(CStr(Format(var_D8, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_17A6EE0:             var_278 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_17A6EE6:             Print 1, ("0.00" / 2)
  loc_17A6F05:             var_92 = &H12
  loc_17A6F0A:             Print 1
  loc_17A6F12:             Print 1
  loc_17A6F4B:             Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B4.Fields.Item("VNo")), var_92)
  loc_17A6F7A:             var_130 = (Chr(&HF) + "KOT No.   :   ")
  loc_17A6F84:             var_1AC = (Trim(var_90) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)))
  loc_17A6F8B:             var_1D4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_17A6F91:             Print 1, CVar(CStr(Format(var_D8, "0.00")))
  loc_17A7054:             var_130 = (Chr(&HF) + "KOT Dt.   :   ")
  loc_17A705E:             var_188 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VDate")), var_92), &HC)))
  loc_17A7067:             var_1AC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + " ")
  loc_17A7071:             var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_17A7078:             var_20C = (Trim(var_90) + Chr(&H12))
  loc_17A707E:             Print 1, Space(3)
  loc_17A70D7:             var_178 = var_B4.Fields.Item("Remarks")
  loc_17A7114:             var_130 = (Chr(&HF) + "Remarks :   ")
  loc_17A711E:             var_188 = (Trim(var_90) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_178)), &H20)))
  loc_17A7125:             var_1C0 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + Chr(&H12))
  loc_17A712B:             Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_17A7164:             Set var_10C = Me.Label1
  loc_17A716A:             Call 0.Method_cmdNCBill_UnknownEvent_90 (2, var_178)
  loc_17A720C:             var_188 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA)))
  loc_17A7215:             var_1AC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + ":   ")
  loc_17A721C:             var_20C = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_17A721F:             var_21C = (Chr(&H12) + var_20C)
  loc_17A7226:             var_248 = ((Space(3) / 2) + Chr(&H12))
  loc_17A722C:             Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_17A7288:             var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A728F:             var_170 = (CVar(var_178) + Chr(&H12))
  loc_17A7295:             Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_178))), &HA))
  loc_17A72A6:           End If
  loc_17A72CC:           var_150 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_17A72E6:           var_188 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))
  loc_17A72F2:           var_1AC = Space(3)
  loc_17A72FA:           var_1C0 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, 1)) + var_1AC)
  loc_17A7314:           var_1E4 = (CVar(var_B4.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_17A735D:           var_130 = (Chr(&HF) + CVar(CStr("000")))
  loc_17A7364:           var_170 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_17A736A:           Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_17A739E:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A73A5:           var_170 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_17A73AB:           Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_17A73C2:           var_92 = (var_92 + 4)
  loc_17A73C8:           var_B8.MoveFirst
  loc_17A73CD:           ' Referenced from:   17A761F
  loc_17A73DC:           If Not(var_B8.EOF) Then
  loc_17A742C:             Proc_6_39_E7D3A0(var_1AC, CVar(var_B8.Fields.Item("qty")))
  loc_17A7477:             Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("Rate")), 1)
  loc_17A74B9:             var_130 = Space(3)
  loc_17A74C1:             var_170 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H13, 1, 1)) + var_130)
  loc_17A74DA:             var_1FC = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1AC, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))))
  loc_17A74EE:             var_21C = (Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000") + Space(3))
  loc_17A7507:             var_298 = (var_92 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_17A7577:             Proc_6_39_E7D3A0(var_130, CVar(var_B8.Fields.Item("qty")))
  loc_17A75A5:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))), CVar(var_B8.Fields.Item("Rate")), var_130)
  loc_17A75B1:             var_1AC = (var_D8 + (CVar(var_D8) * CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))))
  loc_17A75B6:             var_D8 = CSng(var_1AC)
  loc_17A75F0:             var_130 = (Chr(&HF) + CVar(CStr(var_298)))
  loc_17A75F7:             var_170 = (var_130 + Chr(&H12))
  loc_17A75FD:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_17A7614:             var_92 = (var_92 + 1)
  loc_17A761A:             var_B8.MoveNext
  loc_17A761F:             GoTo loc_17A73CD
  loc_17A7622:           End If
  loc_17A7645:           var_130 = (Chr(&HF) + CVar(var_C0))
  loc_17A764C:           var_170 = (var_130 + Chr(&H12))
  loc_17A7652:           Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_17A76D9:           var_150 = (Chr(&HF) + CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)))
  loc_17A76E3:           var_1E4 = (Chr(&H12) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_D8, "0.00"))))), &HB, 1)))
  loc_17A76E9:           Print 1, CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(Format(var_D8, "0.00"))), "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))))
  loc_17A7716:           Print 1, vbNullString
  loc_17A777D:           var_130 = (Chr(&HF) + "Waiter Name  :   ")
  loc_17A7787:           var_188 = (CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), 1), &H14)))
  loc_17A778E:           var_1C0 = (Format(var_D8, "0.00") + Chr(&H12))
  loc_17A7794:           Print 1, Trim(CVar(CStr(Format(var_D8, "0.00"))))
  loc_17A77DC:           var_188 = Chr(&H12)
  loc_17A77E9:           var_130 = (Chr(&HF) + "***  ")
  loc_17A77FC:           var_1AC = ("  ***" + var_188)
  loc_17A7806:           Print 1, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_C8) & Chr(&H12)
  loc_17A781F:           Print 1
  loc_17A7847:           var_130 = (Chr(&HF) + "** A Analysis Software **")
  loc_17A784E:           var_170 = (CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) + Chr(&H12))
  loc_17A7854:           Print 1, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_C8)
  loc_17A7868:           var_B4.MoveNext
  loc_17A786F:           Print 1
  loc_17A7877:           Print 1
  loc_17A787F:           Print 1
  loc_17A7887:           Print 1
  loc_17A78AD:           var_150 = (Chr(&H1B) + Chr(&H6D))
  loc_17A78B3:           Print 1, Chr(&H12)
  loc_17A78C2:           GoTo loc_17A6D02
  loc_17A78C5:         End If
  loc_17A78C7:         Close 1
  loc_17A7902:         If (Proc_6_38_E69628(CVar(var_D0.Fields.Item("Printer")), var_92) <> vbNullString) Then
  loc_17A792A:           Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A7988:           Print 1, CVar("TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_D0.Fields.Item("Printer").Value
  loc_17A79A8:         Else
  loc_17A79CD:           Open "C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_17A7A04:           Print 1, "TYPE C:\reptmp\NCBILL_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_17A7A15:         End If
  loc_17A7A17:         Close 1
  loc_17A7A21:         If (MemVar_1F953BC = "Y") Then
  loc_17A7A53:           var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_17A7A64:         Else
  loc_17A7A93:           var_A4 = CVar(Shell(CVar("C:\reptmp\NCBILLPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_17A7AA1:         End If
  loc_17A7AA1:       End If
  loc_17A7AA1:     End If
  loc_17A7AA4:   Else
  loc_17A7AEE:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_C8), var_188, Chr(&H12))
  loc_17A7B09:   End If
  loc_17A7B0C:   var_BC.MoveNext
  loc_17A7B11:   GoTo loc_17A5F70
  loc_17A7B14: End If
  loc_17A7B19: Set var_B4 = Nothing
  loc_17A7B21: Set var_B8 = Nothing
  loc_17A7B29: Set var_BC = Nothing
  loc_17A7B31: Set var_D0 = Nothing
  loc_17A7B34: Exit Sub
  loc_17A7B35: ' Referenced from: 17A5C74
  loc_17A7B35: Proc_6_60_E63754(var_D8)
  loc_17A7B3A: Exit Sub
End Sub

Private Sub CmChngToNC_UnknownEvent_9 '13FFC88
  'Data Table: 5921DC
  Dim var_88 As Variant
  Dim var_9C As Variant
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_118 As Field20
  Dim var_CC As Variant
  Dim var_13C As Variant
  Dim var_FC As Variant
  Dim unk_5921F8 As Connection15
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
  loc_13FF299: var_8A = Me.ChkNCKOT.Value
  loc_13FF2A7: If (var_8A = 1) Then
  loc_13FF2C3:   MsgBox("Can't Change NC KOT.", &H10, var_CC, var_EC, var_10C)
  loc_13FF2D3:   Exit Sub
  loc_13FF2D4: End If
  loc_13FF2D7: Call Proc_251_99_FF6A8C(var_8A)
  loc_13FF2E2: If (var_8A = 0) Then
  loc_13FF2E5:   Exit Sub
  loc_13FF2E6: End If
  loc_13FF2F3: var_BC = "Select K1.*,I.name as ItemName,I.Unit,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (KOT K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Where K1.RoomNo In (Select RoomNo From KOT Where DocId='"
  loc_13FF334: var_FC = 0
  loc_13FF364: unk_5921F8.Execute "Select ShortName From Depart Where Code='" & LocalRestCode & "'", var_EC, -1
  loc_13FF36C: var_124 = var_124.Fields
  loc_13FF374: var_FC = var_128.Item(var_128)
  loc_13FF37C: var_12C = var_12C.Value
  loc_13FF384: var_14C = (var_10C + var_10C)
  loc_13FF391: var_17C = "') And IsNull(K1.ContraDocId,'')='' And (K1.DelFlag NOT IN ('Y') OR K1.DelFlag IS NULL) AND K1.VType='K" & var_14C & "' And K1.VoidYN='N' order by K1.DocId,K1.Sno" 
  loc_13FF39F: unk_5921F8.Execute CStr(var_17C), var_BC & Me.Fields.Item("SearchCode").Value, var_1A0
  loc_13FF3EC: If (var_1A4.RecordCount <= 0) Then
  loc_13FF3F4:   Set var_110 = Nothing
  loc_13FF3F7:   Exit Sub
  loc_13FF3F8: End If
  loc_13FF3F8: Call TopCtrl1_UnknownEvent_A()
  loc_13FF409: Me.ChkNCKOT.Value = 1
  loc_13FF41D: Me.ChkNCKOT.Enabled = False
  loc_13FF434: Me.FGrid.Redraw = False
  loc_13FF44F: Me.FGrid.Rows = 1
  loc_13FF459: var_112 = 1
  loc_13FF470: If (var_110.RecordCount > 0) Then
  loc_13FF473:   ' Referenced from: 13FFA3D
  loc_13FF482:   If Not(var_110.EOF) Then
  loc_13FF485:     var_9C = vbNullString
  loc_13FF48F:     Set var_88 = Me.FGrid
  loc_13FF4A4:     Set var_1AC = Me.FGrid
  loc_13FF4AB:     var_9C = CVar(CLng(var_112)) 'Long
  loc_13FF4B3:     var_DC = CVar(CLng(0)) 'Long
  loc_13FF4BD:     var_AC = CVar(CStr(var_112)) 'String
  loc_13FF4C4:     LateIdCallSt
  loc_13FF4D3:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FF4DB:     var_FC = CVar(CLng(&HA)) 'Long
  loc_13FF50B:     var_CC = CVar(CStr(var_110.Fields.Item("Item").Value)) 'String
  loc_13FF512:     LateIdCallSt
  loc_13FF561:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_112)), var_1AC, var_CC, CVar(CLng(3)), CVar(CLng(var_112)))) 'String
  loc_13FF568:     LateIdCallSt
  loc_13FF5B3:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_112)), var_1AC, var_CC, var_1AC)) 'String
  loc_13FF5BA:     LateIdCallSt
  loc_13FF605:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FF60C:     LateIdCallSt
  loc_13FF657:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FF65E:     LateIdCallSt
  loc_13FF690:     var_DC = CVar(CLng(var_112)) 'Long
  loc_13FF698:     var_13C = CVar(CLng(7)) 'Long
  loc_13FF6C5:     var_10C = CVar(CStr(Format(CVar(var_110.Fields.Item("qty")), "0.00"))) 'String
  loc_13FF6CC:     LateIdCallSt
  loc_13FF737:     var_10C = CVar(CStr(Format(CVar(var_110.Fields.Item("Rate")), "0.00"))) 'String
  loc_13FF73E:     LateIdCallSt
  loc_13FF77C:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("VoidYN")), var_1AC, var_10C, 1, 1, CVar(CLng(8)), CVar(CLng(var_112)))) 'String
  loc_13FF7BE:     var_22C = CVar(CLng(var_112)) 'Long
  loc_13FF7C6:     var_24C = CVar(CLng(9)) 'Long
  loc_13FF7F8:     var_1EC = IIf((Trim(CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("VoidYN")), var_1AC, var_10C, 1))) = "Y"), "Cancel", vbNullString)
  loc_13FF832:     LateIdCallSt
  loc_13FF899:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_112)), var_1AC, CVar(CStr(IIf((Trim(var_CC) = "F"), "Free", var_1EC))))) 'String
  loc_13FF8A0:     LateIdCallSt
  loc_13FF8EB:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FF8F2:     LateIdCallSt
  loc_13FF93D:     var_CC = CVar(Proc_6_38_E69628(CVar(var_110.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_112)), var_1AC, var_CC)) 'String
  loc_13FF944:     LateIdCallSt
  loc_13FF95A:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FF962:     var_FC = CVar(CLng(&HC)) 'Long
  loc_13FF992:     var_CC = CVar(CStr(var_110.Fields.Item("DocID").Value)) 'String
  loc_13FF999:     LateIdCallSt
  loc_13FF9B3:     var_BC = CVar(CLng(var_112)) 'Long
  loc_13FF9BB:     var_FC = CVar(CLng(&HD)) 'Long
  loc_13FF9EB:     var_CC = CVar(CStr(var_110.Fields.Item("SNo").Value)) 'String
  loc_13FF9F2:     LateIdCallSt
  loc_13FFA0C:     var_9C = CVar(CLng(var_112)) 'Long
  loc_13FFA1E:     LateIdCallSt
  loc_13FFA28:     Set var_1AC = Nothing 
  loc_13FFA32:     var_112 = (var_112 + 1)
  loc_13FFA38:     var_110.MoveNext
  loc_13FFA3D:     GoTo loc_13FF473
  loc_13FFA40:   End If
  loc_13FFA59:   var_9C = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_13FFA6C:   Set var_118 = Me.FGrid
  loc_13FFA72:   LateIdCallSt
  loc_13FFA97:   Me.FGrid.FixedRows = 1
  loc_13FFA9F: End If
  loc_13FFAAD: Me.FGrid.Redraw = True
  loc_13FFAB5: var_9C = vbNullString
  loc_13FFABF: Set var_88 = Me.FGrid
  loc_13FFAD6: If (var_112 = 1) Then
  loc_13FFAD9:   var_9C = 1
  loc_13FFAEC:   Me.FGrid.Rows = var_9C
  loc_13FFB12:   var_AC = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), FGrid.DispID_10000, var_9C, var_118, global_104, var_9C, var_112))) 'String
  loc_13FFB1A:   Set var_118 = Me.FGrid
  loc_13FFB3E:   var_AC = Me.FGrid.Rows
  loc_13FFB4D:   var_9C = CVar((CLng(var_AC) - 1)) 'Long
  loc_13FFB60:   Set var_118 = Me.FGrid
  loc_13FFB66:   LateIdCallSt
  loc_13FFB8B:   Me.FGrid.FixedRows = 1
  loc_13FFB93: End If
  loc_13FFB9C: Set var_88 = Me.CmChngSteward
  loc_13FFBA2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_13FFBB3: Set var_88 = Me.CmNoOfPersons
  loc_13FFBB9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_13FFBD1: Set var_88 = Me.CmFgrid
  loc_13FFBD7: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(2), var_118, False, var_118, global_104, False, FGrid.DispID_10000)
  loc_13FFBDF: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_AC)
  loc_13FFBEB: var_9C = False
  loc_13FFBFB: Set var_88 = Me.CmFgrid
  loc_13FFC01: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(4), var_118, var_9C, var_1AC, global_104)
  loc_13FFC09: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_9C)
  loc_13FFC25: Set var_88 = Me.CmFgrid
  loc_13FFC2B: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(5), var_118, False)
  loc_13FFC33: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_1AC)
  loc_13FFC4F: Set var_88 = Me.CmFgrid
  loc_13FFC55: Call 0.Method_CmChngToNC_UnknownEvent_90 (CInt(6), var_118, False)
  loc_13FFC5D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(var_CC)
  loc_13FFC75: Me.FrameGrpItem.Enabled = False
  loc_13FFC82: Set var_110 = Nothing
  loc_13FFC85: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E853F8
  'Data Table: 5921DC
  loc_E853A4: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_E853A7:   Call DGTable_UnknownEvent_9()
  loc_E853AC: End If
  loc_E853C8: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_E853CB:   Call DGItem_UnknownEvent_9()
  loc_E853D0: End If
  loc_E853EC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_E853EF:   Call DGRest_UnknownEvent_9()
  loc_E853F4: End If
  loc_E853F4: Exit Sub
  loc_E853F5: CExtInstUnk
End Sub

Private Sub CmChngSteward_UnknownEvent_9 'F542C8
  'Data Table: 5921DC
  Dim var_A4 As Integer
  Dim var_B0 As String
  Dim var_C8 As Recordset15
  Dim var_CC As Variant
  Dim var_D0 As Field20
  Dim var_E8 As TextBox
  loc_F541CD: RsTouchScreenSteward.pOpenAs = "Steward"
  loc_F541DE: RsTouchScreenSteward.pRestCode = LocalRestCode
  loc_F541F6: Call 0.Method_arg_2B0 (1)
  loc_F54201: var_A4 = 0
  loc_F5422C: var_B0 = "Select W.Name As Name From Waiter W Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and W.code='" & MemVar_1F9501C
  loc_F5423C: RsTouchScreenSteward.Connection15.Execute var_B0 & "'", var_C4, -1
  loc_F54244: var_C8 = var_C8.Fields
  loc_F5424C: var_A4 = var_CC.Item(var_CC)
  loc_F54254: var_D0 = var_D0.Value
  loc_F5426B: Set var_E4 = Me.Txt
  loc_F54271: Call 0.Method_CmChngSteward_UnknownEvent_90 (CInt(5), var_E8, CStr(var_E0))
  loc_F54279: var_E8.Text = var_E0
  loc_F542AD: Set var_C8 = Me.Txt
  loc_F542B3: Call 0.Method_CmChngSteward_UnknownEvent_90 (CInt(5), var_CC)
  loc_F542BB: var_CC.Tag = MemVar_1F9501C
  loc_F542C7: Exit Sub
End Sub

Private Sub CmNoOfPersons_UnknownEvent_9 'EAD17C
  'Data Table: 5921DC
  loc_EAD0F4: Me.FrameQty.Visible = True
  loc_EAD109: Me.LblIndex.Caption = vbNullString
  loc_EAD11E: Me.LblIndex.Tag = vbNullString
  loc_EAD133: Me.LblVtype.Caption = "No.of Person"
  loc_EAD148: Me.LblVtype.Tag = vbNullString
  loc_EAD15D: Me.TxtQty.Text = vbNullString
  loc_EAD172: Me.TxtQty.Tag = vbNullString
  loc_EAD17A: Exit Sub
End Sub

Private Sub CmTransKOT_UnknownEvent_9 'EE4C50
  'Data Table: 5921DC
  loc_EE4B97: Call Proc_251_99_FF6A8C(var_86)
  loc_EE4BA2: If (var_86 = 0) Then
  loc_EE4BA5:   Exit Sub
  loc_EE4BA6: End If
  loc_EE4BAE: If (MemVar_1F95210 = "Yes") Then
  loc_EE4BB5:   Set var_8C = New RsTbChange
  loc_EE4BBB: Else
  loc_EE4BBF:   Set var_8C = New RsTbChange
  loc_EE4BC2: End If
  loc_EE4BCD: var_8C.ParentForm = CVar(Me)
  loc_EE4BE3: var_8C.PTableNo = CVar(PTableNo)
  loc_EE4BF5: Set var_C4 = var_C8(CInt(3))
  loc_EE4BFB: Call 0.Method_CmTransKOT_UnknownEvent_90 ()
  loc_EE4C0B: var_8C.pDocId = CVar(var_C8)
  loc_EE4C22: var_8C.LocalRestCode = CVar(LocalRestCode)
  loc_EE4C32: var_8C.OpenMode = 1
  loc_EE4C3F: var_8C.CAPTION = "Transfer KOT"
  loc_EE4C46: Call var_8C.Show
  loc_EE4C4C: Exit Sub
End Sub

Public Sub CmFgrid_UnknownEvent_9(Index As Integer) '13CCE78
  'Data Table: 5921DC
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
  loc_13CC502: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CC52A: var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CC539: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CC555: Me.LblIndex.Caption = vbNullString
  loc_13CC56A: Me.LblIndex.Tag = vbNullString
  loc_13CC57F: Me.LblVtype.Caption = vbNullString
  loc_13CC594: Me.LblVtype.Tag = vbNullString
  loc_13CC5A9: Me.TxtQty.Text = vbNullString
  loc_13CC5BE: Me.TxtQty.Tag = vbNullString
  loc_13CC5C9: var_C2 = Index
  loc_13CC5D4: If (var_C2 = CInt(0)) Then
  loc_13CC5F6:   If (CLng(Me.FGrid.Row) > 1) Then
  loc_13CC612:     var_AC = CVar((CLng(Me.FGrid.Row) - 1)) 'Long
  loc_13CC621:     Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CC649:     var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CC658:     Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CC689:     Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_13CC698:   End If
  loc_13CC69B: Else
  loc_13CC6A3:   If (var_C2 = CInt(1)) Then
  loc_13CC6E1:     If (CLng(Me.FGrid.Row) < (CLng(Me.FGrid.Rows) - 1)) Then
  loc_13CC6FD:       var_AC = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_13CC70C:       Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_13CC734:       var_AC = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_13CC743:       Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_13CC774:       Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_13CC783:     End If
  loc_13CC786:   Else
  loc_13CC78E:     If (var_C2 = CInt(2)) Then
  loc_13CC795:       Set var_8C = Me.TopCtrl1
  loc_13CC79B:       Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C2)
  loc_13CC7B4:       If (CStr() = "Browse") Then
  loc_13CC7B7:         Exit Sub
  loc_13CC7B8:       End If
  loc_13CC7CB:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC7D3:       var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CC806:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CC809:         Exit Sub
  loc_13CC80A:       End If
  loc_13CC81D:       var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CC825:       var_E8 = CVar(CLng(0)) 'Long
  loc_13CC858:       If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CC85B:         Exit Sub
  loc_13CC85C:       End If
  loc_13CC868:       Me.FrameQty.Visible = True
  loc_13CC870:       var_AC = 0
  loc_13CC880:       Me.FrameQty.ZOrder var_AC
  loc_13CC895:       Me.TxtQty.Text = vbNullString
  loc_13CC8AE:       Me.TxtQty.Tag = CStr(2)
  loc_13CC8C6:       Me.LblVtype.Caption = "Qty"
  loc_13CC8D1:     Else
  loc_13CC8D9:       If (var_C2 = CInt(3)) Then
  loc_13CC8E0:         Set var_8C = Me.TopCtrl1
  loc_13CC8E6:         Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_E8)
  loc_13CC8FF:         If (CStr(var_AC) = "Browse") Then
  loc_13CC902:           Exit Sub
  loc_13CC903:         End If
  loc_13CC907:         Set var_FC = Me.FGrid
  loc_13CC916:         var_AC = CVar(CLng(var_FC.Row)) 'Long
  loc_13CC91E:         var_E8 = CVar(CLng(0)) 'Long
  loc_13CC931:         var_D8 = CStr(var_FC.TextMatrix))
  loc_13CC945:         var_11C = CVar(CLng(var_FC.Row)) 'Long
  loc_13CC97B:         If (CVar(CLng(&HA)) And (CStr(var_FC.TextMatrix)) <> vbNullString)) Then
  loc_13CC98A:           var_AC = CVar(CLng(var_FC.RowSel)) 'Long
  loc_13CC9C7:           For var_164 = CInt(CLng(var_FC.RowSel)) To CInt((CLng(var_FC.Rows) - 1)):       var_86 = var_164 'Integer
  loc_13CC9D1:             var_AC = CVar(CLng(var_86)) 'Long
  loc_13CC9D9:             var_E8 = CVar(CLng(0)) 'Long
  loc_13CC9E3:             var_9C = CVar(CStr(var_86)) 'String
  loc_13CC9EA:             LateIdCallSt
  loc_13CC9F8:           Next var_164 'Integer
  loc_13CC9FD:         End If
  loc_13CC9FF:         Set var_FC = Nothing 
  loc_13CCA06:       Else
  loc_13CCA0E:         If (var_C2 = CInt(4)) Then
  loc_13CCA15:           Set var_8C = Me.TopCtrl1
  loc_13CCA1B:           Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_13CCA34:           If (CStr() = "Browse") Then
  loc_13CCA37:             Exit Sub
  loc_13CCA38:           End If
  loc_13CCA4B:           var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCA53:           var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CCA86:           If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CCA89:             Exit Sub
  loc_13CCA8A:           End If
  loc_13CCA9D:           var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCAA5:           var_E8 = CVar(CLng(9)) 'Long
  loc_13CCAE7:           If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "CANCEL") Then
  loc_13CCAFD:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCB05:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CCB0A:             var_11C = vbNullString
  loc_13CCB14:             Set var_C0 = Me.FGrid
  loc_13CCB1A:             LateIdCallSt
  loc_13CCB2F:           Else
  loc_13CCB42:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCB4A:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CCB4F:             var_11C = "Cancel"
  loc_13CCB59:             Set var_C0 = Me.FGrid
  loc_13CCB5F:             LateIdCallSt
  loc_13CCB71:           End If
  loc_13CCB74:         Else
  loc_13CCB7C:           If (var_C2 = CInt(5)) Then
  loc_13CCB83:             Set var_8C = Me.TopCtrl1
  loc_13CCB89:             Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_13CCBA2:             If (CStr(var_11C) = "Browse") Then
  loc_13CCBA5:               Exit Sub
  loc_13CCBA6:             End If
  loc_13CCBB9:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCBC1:             var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CCBF4:             If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CCBF7:               Exit Sub
  loc_13CCBF8:             End If
  loc_13CCC0B:             var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCC13:             var_E8 = CVar(CLng(9)) 'Long
  loc_13CCC55:             If (Ucase(CVar(CStr(Me.FGrid.TextMatrix)))) = "FREE") Then
  loc_13CCC6B:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCC73:               var_E8 = CVar(CLng(9)) 'Long
  loc_13CCC78:               var_11C = vbNullString
  loc_13CCC82:               Set var_C0 = Me.FGrid
  loc_13CCC88:               LateIdCallSt
  loc_13CCC9D:             Else
  loc_13CCCB0:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCCB8:               var_E8 = CVar(CLng(9)) 'Long
  loc_13CCCBD:               var_11C = "Free"
  loc_13CCCC7:               Set var_C0 = Me.FGrid
  loc_13CCCCD:               LateIdCallSt
  loc_13CCCDF:             End If
  loc_13CCCE2:           Else
  loc_13CCCEA:             If (var_C2 = CInt(6)) Then
  loc_13CCCF1:               Set var_8C = Me.TopCtrl1
  loc_13CCCF7:               Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_C0)
  loc_13CCD10:               If (CStr(var_11C) = "Browse") Then
  loc_13CCD13:                 Exit Sub
  loc_13CCD14:               End If
  loc_13CCD27:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCD2F:               var_E8 = CVar(CLng(&HA)) 'Long
  loc_13CCD62:               If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_13CCD65:                 Exit Sub
  loc_13CCD66:               End If
  loc_13CCD76:               Set global_232 = New RsTouchScreenKeyBoard
  loc_13CCD84:               var_AC = CVar(Me) 'Address
  loc_13CCD8F:               Me.ParentForm = var_AC
  loc_13CCD97:               Set var_8C = var_AC(var_E8)
  loc_13CCDA6:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCDAE:               var_E8 = CVar(CLng(6)) 'Long
  loc_13CCDF2:               var_9C = CVar(CStr(Me.FGrid.TextMatrix)))
  loc_13CCDF7:               var_9C.MaxLength = 0
  loc_13CCE11:               var_9C.Show 1, var_BC
  loc_13CCE29:               var_AC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13CCE31:               var_E8 = CVar(CLng(6)) 'Long
  loc_13CCE41:               var_D4 = CVar(TxtKeyBoard) 'String
  loc_13CCE49:               Set var_C0 = Me.FGrid
  loc_13CCE4F:               LateIdCallSt
  loc_13CCE70:               Set global_232 = Nothing
  loc_13CCE77:             End If
  loc_13CCE77:           End If
  loc_13CCE77:         End If
  loc_13CCE77:       End If
  loc_13CCE77:     End If
  loc_13CCE77:   End If
  loc_13CCE77: End If
  loc_13CCE77: Exit Sub
End Sub

Private Sub DGRest_UnknownEvent_9 'FE4230
  'Data Table: 5921DC
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  Dim var_B4 As MSHFlexGrid
  Dim var_A4 As Variant
  Dim var_EC As Variant
  Dim var_11C As Variant
  loc_FE406B: Me.DGRest.Visible = False
  loc_FE408A: If (Me.RecordCount > 0) Then
  loc_FE40C7:   Set var_B4 = Me.TxtGrid
  loc_FE40CD:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B8)
  loc_FE40D5:   var_B8.Text = CStr(Me.Fields.Item("Code").Value)
  loc_FE40FE:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE4106:   var_EC = CVar(CLng(2)) 'Long
  loc_FE4139:   var_11C = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_FE4141:   Set var_B8 = Me.FGrid
  loc_FE4147:   LateIdCallSt
  loc_FE4176:   var_A4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FE417E:   var_EC = CVar(CLng(1)) 'Long
  loc_FE41A0:   var_B0 = Me.Fields.Item("Code")
  loc_FE41B1:   var_11C = CVar(CStr(var_B0.Value)) 'String
  loc_FE41B9:   Set var_B8 = Me.FGrid
  loc_FE41BF:   LateIdCallSt
  loc_FE41DB: End If
  loc_FE41E7: Set var_A8 = Me.TxtGrid
  loc_FE41ED: Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_12E, var_B8, var_11C, var_EC)
  loc_FE41F5: var_A4 = var_B0.Visible
  loc_FE4207: If (var_12E = &HFF) Then
  loc_FE4213:   Set var_A8 = Me.TxtGrid
  loc_FE4219:   Call 0.Method_DGRest_UnknownEvent_90 (0, var_B0, var_B8)
  loc_FE4221:   var_B0.SetFocus
  loc_FE422D: End If
  loc_FE422D: Exit Sub
  loc_FE422E: ArrayRebase1Var
End Sub

Private Sub DGRest_UnknownEvent_1F 'E9F520
  'Data Table: 5921DC
  Dim var_A8 As Variant
  loc_E9F4A4: Set var_88 = Me.DGRest
  loc_E9F4CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9F4D6: Set var_BC = Me.DGRest
  loc_E9F510: Proc_6_138_106E830(Me.DGRest, global_88, 0, Me.FGPoint)
  loc_E9F51E: Exit Sub
End Sub

Public Sub CmdCatType_UnknownEvent_9(Index As Integer) '101FE30
  'Data Table: 5921DC
  Dim Me As Variant
  Dim var_A8 As Variant
  loc_101FC18: Set var_8C = Me.CmdCatType
  loc_101FC1E: Call 0.Method_CmdCatType_UnknownEvent_98 (var_8E, var_86)
  loc_101FC29: For var_92 =  To var_8E: 0 = var_92 'Integer
  loc_101FC39:   Set var_8C = Me.CmdCatType
  loc_101FC3F:   Call 0.Method_CmdCatType_UnknownEvent_90 (var_86)
  loc_101FC47:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_69(var_98)
  loc_101FC5C:   If (CInt() = 1) Then
  loc_101FC69:     Set var_8C = Me.CmdCatType
  loc_101FC6F:     Call 0.Method_CmdCatType_UnknownEvent_90 (Index)
  loc_101FC77:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_98)
  loc_101FC85:     global_164 = CStr()
  loc_101FC96:   End If
  loc_101FC99: Next var_92 'Integer
  loc_101FCAD: Me.Filter = 0
  loc_101FCB8: Me.MoveFirst
  loc_101FCCB: Set var_8C = Me.SSPGroup
  loc_101FCD1: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101FCD9: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_101FCF3: Set var_8C = Me.SSPItem
  loc_101FCF9: Call 0.Method_CmdCatType_UnknownEvent_90 (0, var_98)
  loc_101FD01: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_101FD28: Me.Filter = CVar("CatType='" & global_164 & "'")
  loc_101FD44: var_A8 = CVar(Me.RecordCount) 'Long
  loc_101FD4B: Proc_6_39_E7D3A0(var_E0)
  loc_101FD57: global_228 = CInt(var_E0)
  loc_101FD6C: If (global_220 = "Group") Then
  loc_101FD75:   global_220 = "Group"
  loc_101FD8D:   Set var_98 = Me.SSPGroup
  loc_101FDB0:   Call Proc_251_78_1284D58(Me.SSPGroup, CInt(4), global_240, CInt(4))
  loc_101FDBC:   global_216 = CInt(var_A8)
  loc_101FDD0: Else
  loc_101FDD6:   global_220 = "Group"
  loc_101FE11:   Call Proc_251_78_1284D58(Me.SSPGroup, CInt(4), global_240, CInt(4), Me.SSPItem, var_A8)
  loc_101FE1D:   global_216 = CInt(var_A8)
  loc_101FE2E: End If
  loc_101FE2E: Exit Sub
End Sub

Public Sub SSPGroup_UnknownEvent_9(Index As Integer) 'F77F38
  'Data Table: 5921DC
  Dim Me As Variant
  Dim var_CC As Variant
  loc_F77E17: Me.Filter = 0
  loc_F77E22: Me.MoveFirst
  loc_F77E34: Set var_98 = Me.SSPGroup
  loc_F77E3A: Call 0.Method_SSPGroup_UnknownEvent_90 (Index, var_9C)
  loc_F77E42: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B("ItemGroup='")
  loc_F77E66: var_CC = CVar(CStr() & "' And CatType='" & global_164 & "'") 'String
  loc_F77E70: Me.Filter = var_CC
  loc_F77EA6: Proc_6_39_E7D3A0(var_CC)
  loc_F77EB2: global_228 = CInt(var_CC)
  loc_F77ED3: If (Me.RecordCount > 0) Then
  loc_F77EDC:   global_220 = "Item"
  loc_F77EF4:   Set var_9C = Me.SSPGroup
  loc_F77F17:   Call Proc_251_78_1284D58(Me.SSPItem, CInt(4), global_236, CInt(4))
  loc_F77F23:   global_216 = CInt(CVar(Me.RecordCount))
  loc_F77F34: End If
  loc_F77F34: Exit Sub
End Sub

Public Sub SSPItem_UnknownEvent_9(Index As Integer) '12EE500
  'Data Table: 5921DC
  Dim var_90 As String
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_C0 As String
  Dim unk_5921F8 As Connection15
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
  loc_12EDE73: var_90 = "Select D.Code As OutletCode,D.Name As OutletName,I.Dispcode,I.Unit,I.Kitchen From ItemMast I Inner Join Depart D On I.RestCode=D.Code where I.RestCode='" & LocalRestCode
  loc_12EDE7A: var_AC = var_90 & "' And I.Code='"
  loc_12EDE87: Set var_94 = Me.SSPItem
  loc_12EDE8D: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, var_AC)
  loc_12EDE95: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_E0)
  loc_12EDE9D: var_B0 = CStr(-1)
  loc_12EDEB6: var_C0 = var_E4 & var_B0 & "' And (I.LOGSITE_CODE='" & MemVar_1F95078 & "' or I.LOGSITE_CODE='HO') AND (I.ACTIVEYN='Yes' or I.ActiveYN is NULL or I.ActiveYN='' ) AND I.Type='Finish' And I.DispCode<>9999  "
  loc_12EDEBF: unk_5921F8.Execute var_C0, , 
  loc_12EDECA: Set var_8C = var_E4
  loc_12EDEF2: Set var_E8 = Me.FGrid
  loc_12EDF07: var_D0 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EDF0F: var_108 = CVar(CLng(0)) 'Long
  loc_12EDF28: var_128 = CVar(CStr((CLng(var_E8.Rows) - 1))) 'String
  loc_12EDF2F: LateIdCallSt
  loc_12EDF52: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EDF5A: var_118 = CVar(CLng(1)) 'Long
  loc_12EDF8A: var_128 = CVar(CStr(var_8C.Fields.Item("OutletCode").Value)) 'String
  loc_12EDF91: LateIdCallSt
  loc_12EDFBB: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EDFC3: var_118 = CVar(CLng(2)) 'Long
  loc_12EDFF3: var_128 = CVar(CStr(var_8C.Fields.Item("OutLetName").Value)) 'String
  loc_12EDFFA: LateIdCallSt
  loc_12EE024: var_F8 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EE02C: var_118 = CVar(CLng(3)) 'Long
  loc_12EE04B: var_98 = var_8C.Fields.Item("DispCode")
  loc_12EE063: LateIdCallSt
  loc_12EE08D: var_D0 = CVar((CLng(var_E8.Rows) - 1)) 'Long
  loc_12EE0A4: Set var_94 = Me.SSPItem
  loc_12EE0AA: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, CVar(CLng(4)), "DispCode", var_E8, CVar(CStr(var_98.Value)), var_118)
  loc_12EE0B2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_F8)
  loc_12EE0BA: var_128 = CVar(CStr(var_E8)) 'String
  loc_12EE0C1: LateIdCallSt
  loc_12EE0DC: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E8)
  loc_12EE0EB: var_D0 = CVar((CLng(var_128) - 1)) 'Long
  loc_12EE102: Set var_94 = Me.SSPItem
  loc_12EE108: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, CVar(CLng(&HA)), "DispCode", var_128)
  loc_12EE110: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(var_118)
  loc_12EE11F: LateIdCallSt
  loc_12EE13A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E8)
  loc_12EE149: var_F8 = CVar((CLng(CVar(CStr(var_F8))) - 1)) 'Long
  loc_12EE151: var_118 = CVar(CLng(5)) 'Long
  loc_12EE170: var_98 = var_8C.Fields.Item("Unit")
  loc_12EE188: LateIdCallSt
  loc_12EE1A3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_4(var_E8)
  loc_12EE1B2: var_108 = CVar((CLng(CVar(CStr(var_98.Value))) - 1)) 'Long
  loc_12EE1D9: var_A8 = "1"
  loc_12EE1F2: LateIdCallSt
  loc_12EE211: Set var_94 = Me.SSPItem
  loc_12EE217: Call 0.Method_SSPItem_UnknownEvent_90 (Index, var_98, var_E8, CVar(CStr(Format(var_A8, "0.000"))), 1, 1)
  loc_12EE21F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000B(CVar(CLng(7)))
  loc_12EE236: Set var_E4 = Me.Txt
  loc_12EE23C: Call 0.Method_SSPItem_UnknownEvent_90 (CInt(1), var_17C, var_AC, CVar(CLng(&HA)))
  loc_12EE244: var_118 = var_17C.Text
  loc_12EE28A: Call Proc_251_98_F2291C(CStr(var_A8), var_AC, CStr(var_8C.Fields.Item("OutletCode").Value), var_18C)
  loc_12EE2A1: var_118 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12EE2A9: var_148 = CVar(CLng(8)) 'Long
  loc_12EE2D6: var_1AC = CVar(CStr(Format(CVar(var_18C), "0.00"))) 'String
  loc_12EE2DD: LateIdCallSt
  loc_12EE320: var_D0 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12EE336: LateIdCallSt
  loc_12EE353: var_F8 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12EE363: var_D0 = "Kitchen"
  loc_12EE388: var_128 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item(var_D0)), CVar(CLng(&HB)), "0.000", var_E8, vbNullString, CVar(CLng(9)), var_D0)) 'String
  loc_12EE38F: LateIdCallSt
  loc_12EE3B5: var_D0 = CVar((CLng(Txt.DispID_4) - 1)) 'Long
  loc_12EE3C7: LateIdCallSt
  loc_12EE3EB: var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_12EE3FA: Me.FGrid.Row = var_D0
  loc_12EE42B: Me.FGrid.TopRow = CVar(CLng(Me.FGrid.Row))
  loc_12EE44C: var_D0 = CVar((CLng(var_E8.Rows) + 1)) 'Long
  loc_12EE46E: var_D0 = CVar((CLng(CVar(CLng(Me.FGrid.Row))) - 1)) 'Long
  loc_12EE480: LateIdCallSt
  loc_12EE48D: Set var_E8 = Nothing 
  loc_12EE4AA: var_D0 = CVar((CLng(Me.FGrid.Rows) - 2)) 'Long
  loc_12EE4B9: Me.FGrid.Row = CVar(CLng(Me.FGrid.Row))
  loc_12EE4E1: var_D0 = CVar((CLng(Me.FGrid.Cols) - 1)) 'Long
  loc_12EE4F0: Me.FGrid.ColSel = CVar(CLng(Me.FGrid.Row))
  loc_12EE4FF: Exit Sub
End Sub

Public Function MasterFormExitGet() '594AD4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '594AE3
  MasterFormExit = Value
End Sub

Public Function LocalRestCodeGet() '594AF2
  LocalRestCodeGet = LocalRestCode
End Function

Public Sub LocalRestCodePut(Value) '594B01
  LocalRestCode = Value
End Sub

Public Function LocalRestTypeGet() '594B10
  LocalRestTypeGet = LocalRestType
End Function

Public Sub LocalRestTypePut(Value) '594B1F
  LocalRestType = Value
End Sub

Public Function SpecialRateGet() '594B2E
  SpecialRateGet = SpecialRate
End Function

Public Sub SpecialRatePut(Value) '594B3D
  SpecialRate = Value
End Sub

Public Property Let MsgBoxTouch(vNewValue) 'E02224
  'Data Table: 5921DC
  loc_E0221E: global_268 = vNewValue
  loc_E02221: Exit Sub
End Sub

Public Property Get MsgBoxTouch() 'E09190
  'Data Table: 5921DC
  loc_E09189: MsgBoxTouch = global_268
End Sub

Public Property Let PTableNo(vNewValue) 'E147CC
  'Data Table: 5921DC
  loc_E147C4: global_196 = vNewValue
  loc_E147C8: Exit Sub
End Sub

Public Property Get PTableNo() 'E1419C
  'Data Table: 5921DC
  loc_E14190: var_88 = global_196
  loc_E14193: PTableNo = 
End Sub

Public Property Let pRestCode(vNewValue) 'E0F954
  'Data Table: 5921DC
  loc_E0F94C: global_200 = vNewValue
  loc_E0F950: Exit Sub
End Sub

Public Property Get pRestCode() 'E0F834
  'Data Table: 5921DC
  loc_E0F828: var_88 = global_200
  loc_E0F82B: pRestCode = 
End Sub

Public Property Let OpenType(vNewValue) 'E0F7A4
  'Data Table: 5921DC
  loc_E0F79C: global_192 = vNewValue
  loc_E0F7A0: Exit Sub
End Sub

Public Property Get OpenType() 'E0F75C
  'Data Table: 5921DC
  Dim var_1DC As Variant
  loc_E0F750: var_88 = global_192
  loc_E0F753: OpenType = 
  loc_E0F759: var_1DC = CVar() 'String
End Sub

Public Property Get OpenMode() 'E09350
  'Data Table: 5921DC
  loc_E09349: OpenMode = global_188
End Sub

Public Property Let OpenMode(vNewValue) 'E0184C
  'Data Table: 5921DC
  loc_E01846: global_188 = vNewValue
  loc_E01849: Exit Sub
End Sub

Public Property Let TxtKeyBoard(vNewValue) 'E0F564
  'Data Table: 5921DC
  loc_E0F55C: global_208 = vNewValue
  loc_E0F560: Exit Sub
End Sub

Public Property Get TxtKeyBoard() 'E0F51C
  'Data Table: 5921DC
  loc_E0F510: var_88 = global_208
  loc_E0F513: TxtKeyBoard = 
End Sub

Public Property Let PSteward(vNewValue) 'E0F4D4
  'Data Table: 5921DC
  loc_E0F4CC: global_204 = vNewValue
  loc_E0F4D0: Exit Sub
End Sub

Public Property Get PSteward() 'E0F324
  'Data Table: 5921DC
  loc_E0F318: var_88 = global_204
  loc_E0F31B: PSteward = 
End Sub

Public Sub SEARCHBACK_TransferKOT() 'E7E24C
  'Data Table: 5921DC
  Dim Me As Recordset15
  loc_E7E1E4: On Error Goto loc_E7E246
  loc_E7E1F2: Me.Requery -1
  loc_E7E20E: If (Me.RecordCount > 0) Then
  loc_E7E217:   Me.MoveFirst
  loc_E7E21C: End If
  loc_E7E238: Proc_5_0_1107AD0(&HFF, Me)
  loc_E7E240: Call Proc_251_87_16D3768(global_76)
  loc_E7E245: Exit Sub
  loc_E7E246: ' Referenced from: E7E1E4
  loc_E7E246: Proc_6_60_E63754(0)
  loc_E7E24B: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'E94900
  'Data Table: 5921DC
  Dim Me As Recordset15
  loc_E9488E: On Error Goto loc_E948F7
  loc_E94897: Me.MoveFirst
  loc_E948C1: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E948E9: Proc_5_0_1107AD0(&HFF, Me, global_76)
  loc_E948F1: Call Proc_251_87_16D3768(0)
  loc_E948F6: Exit Sub
  loc_E948F7: ' Referenced from: E9488E
  loc_E948F7: Proc_6_60_E63754(var_A0)
  loc_E948FC: Exit Sub
End Sub

Public Sub Proc_251_71_127DA08
  'Data Table: 5921DC
  Dim var_88 As Frame
  loc_127D448: Set var_88 = Me.TopCtrl1
  loc_127D44E: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016()
  loc_127D467: Set var_9C = Me.Head
  loc_127D46D: Call 0.Method_Proc_251_71_127DA080 (CInt(1), var_A0)
  loc_127D475: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127D48E: Set var_88 = Me.TopCtrl1
  loc_127D494: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030017()
  loc_127D4AD: Set var_9C = Me.Head
  loc_127D4B3: Call 0.Method_Proc_251_71_127DA080 (CInt(2), var_A0)
  loc_127D4BB: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127D4D4: Set var_88 = Me.TopCtrl1
  loc_127D4DA: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030014()
  loc_127D4F3: Set var_9C = Me.Head
  loc_127D4F9: Call 0.Method_Proc_251_71_127DA080 (CInt(3), var_A0)
  loc_127D501: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127D51A: Set var_88 = Me.TopCtrl1
  loc_127D520: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000F()
  loc_127D539: Set var_9C = Me.Head
  loc_127D53F: Call 0.Method_Proc_251_71_127DA080 (CInt(4), var_A0)
  loc_127D547: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127D560: Set var_88 = Me.TopCtrl1
  loc_127D566: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_6803000D()
  loc_127D57F: Set var_9C = Me.Head
  loc_127D585: Call 0.Method_Proc_251_71_127DA080 (CInt(5), var_A0)
  loc_127D58D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127D5A6: Set var_88 = Me.TopCtrl1
  loc_127D5AC: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030018()
  loc_127D5C5: Set var_9C = Me.Head
  loc_127D5CB: Call 0.Method_Proc_251_71_127DA080 (CInt(6), var_A0)
  loc_127D5D3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127D5EC: Set var_88 = Me.TopCtrl1
  loc_127D5F2: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016()
  loc_127D604: Set var_9C = Me.CmChngToNC
  loc_127D60A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127D621: Set var_88 = Me.TopCtrl1
  loc_127D627: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030016()
  loc_127D639: Set var_9C = Me.CmTransKOT
  loc_127D63F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(CBool())
  loc_127D656: Set var_88 = Me.TopCtrl1
  loc_127D65C: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_127D675: If (CStr() = "Add") Then
  loc_127D680:   Set var_88 = Me.CmChngSteward
  loc_127D686:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D696:   Set var_88 = Me.CmNoOfPersons
  loc_127D69C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D6B3:   Set var_88 = Me.CmFgrid
  loc_127D6B9:   Call 0.Method_Proc_251_71_127DA080 (CInt(2), var_9C)
  loc_127D6C1:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D6DC:   Set var_88 = Me.CmFgrid
  loc_127D6E2:   Call 0.Method_Proc_251_71_127DA080 (CInt(3), var_9C)
  loc_127D6EA:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D705:   Set var_88 = Me.CmFgrid
  loc_127D70B:   Call 0.Method_Proc_251_71_127DA080 (CInt(4), var_9C)
  loc_127D713:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D72E:   Set var_88 = Me.CmFgrid
  loc_127D734:   Call 0.Method_Proc_251_71_127DA080 (CInt(5), var_9C)
  loc_127D73C:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D757:   Set var_88 = Me.CmFgrid
  loc_127D75D:   Call 0.Method_Proc_251_71_127DA080 (CInt(6), var_9C)
  loc_127D765:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D77D:   Me.FrameGrpItem.Enabled = True
  loc_127D788: Else
  loc_127D78C:   Set var_88 = Me.TopCtrl1
  loc_127D792:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_127D7AB:   If (CStr() = "Edit") Then
  loc_127D7B7:     Set var_88 = Me.CmChngSteward
  loc_127D7BD:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D7CE:     Set var_88 = Me.CmNoOfPersons
  loc_127D7D4:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D7EB:     Set var_88 = Me.CmFgrid
  loc_127D7F1:     Call 0.Method_Proc_251_71_127DA080 (CInt(2), var_9C)
  loc_127D7F9:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D815:     Set var_88 = Me.CmFgrid
  loc_127D81B:     Call 0.Method_Proc_251_71_127DA080 (CInt(3), var_9C)
  loc_127D823:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D83E:     Set var_88 = Me.CmFgrid
  loc_127D844:     Call 0.Method_Proc_251_71_127DA080 (CInt(4), var_9C)
  loc_127D84C:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D867:     Set var_88 = Me.CmFgrid
  loc_127D86D:     Call 0.Method_Proc_251_71_127DA080 (CInt(5), var_9C)
  loc_127D875:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D890:     Set var_88 = Me.CmFgrid
  loc_127D896:     Call 0.Method_Proc_251_71_127DA080 (CInt(6), var_9C)
  loc_127D89E:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(True)
  loc_127D8B6:     Me.FrameGrpItem.Enabled = True
  loc_127D8C1:   Else
  loc_127D8C5:     Set var_88 = Me.TopCtrl1
  loc_127D8CB:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_127D8E4:     If (CStr() = "Browse") Then
  loc_127D8F0:       Set var_88 = Me.CmChngSteward
  loc_127D8F6:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D907:       Set var_88 = Me.CmNoOfPersons
  loc_127D90D:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D925:       Set var_88 = Me.CmFgrid
  loc_127D92B:       Call 0.Method_Proc_251_71_127DA080 (CInt(2), var_9C)
  loc_127D933:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D94F:       Set var_88 = Me.CmFgrid
  loc_127D955:       Call 0.Method_Proc_251_71_127DA080 (CInt(3), var_9C)
  loc_127D95D:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D979:       Set var_88 = Me.CmFgrid
  loc_127D97F:       Call 0.Method_Proc_251_71_127DA080 (CInt(4), var_9C)
  loc_127D987:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D9A3:       Set var_88 = Me.CmFgrid
  loc_127D9A9:       Call 0.Method_Proc_251_71_127DA080 (CInt(5), var_9C)
  loc_127D9B1:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D9CD:       Set var_88 = Me.CmFgrid
  loc_127D9D3:       Call 0.Method_Proc_251_71_127DA080 (CInt(6), var_9C)
  loc_127D9DB:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(False)
  loc_127D9F3:       Me.FrameGrpItem.Enabled = False
  loc_127DA00:       Call CmdCatType_UnknownEvent_9(0)
  loc_127DA05:     End If
  loc_127DA05:   End If
  loc_127DA05: End If
  loc_127DA05: Exit Sub
End Sub

Public Sub Proc_251_72_EF36B8
  'Data Table: 5921DC
  Dim var_BC As Boolean
  loc_EF35F1: For var_9C = 1 To CInt(Me.UBound): var_86 = var_9C 'Integer
  loc_EF35F7:   var_BC = False
  loc_EF3610:   ).Visible = var_86
  loc_EF3637:   Me..FrameGrpItem.Unload )
  loc_EF3645: Next var_9C 'Integer
  loc_EF365B: For var_D4 = 1 To CInt(Me.UBound): var_86 = var_D4 'Integer
  loc_EF3661:   var_BC = False
  loc_EF367A:   ).Visible = var_86
  loc_EF36A1:   Me..FrameGrpItem.Unload )
  loc_EF36AF: Next var_D4 'Integer
  loc_EF36B4: Exit Sub
End Sub

Public Sub Proc_251_73_EEE80C
  'Data Table: 5921DC
  Dim var_BC As Boolean
  loc_EEE749: For var_9C = 1 To CInt(Me.UBound): var_86 = var_9C 'Integer
  loc_EEE74F:   var_BC = True
  loc_EEE767:   ).Visible = var_86
  loc_EEE78E:   Me..FrameGrpItem.Unload )
  loc_EEE79C: Next var_9C 'Integer
  loc_EEE7B2: For var_D4 = 1 To CInt(Me.UBound): var_86 = var_D4 'Integer
  loc_EEE7B8:   var_BC = True
  loc_EEE7D0:   ).Visible = var_86
  loc_EEE7F7:   Me..FrameGrpItem.Unload )
  loc_EEE805: Next var_D4 'Integer
  loc_EEE80A: Exit Sub
End Sub

Public Sub Proc_251_74_127440C
  'Data Table: 5921DC
  Dim var_94 As Variant
  Dim var_D4 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_104 As String
  loc_1273E72: Me.FGrid.Left = CVar(CDbl(0))
  loc_1273E8D: Me.FGrid.Top = CVar(CDbl(1500))
  loc_1273EA8: Me.FGrid.Height = CVar(CDbl(6300))
  loc_1273EC3: Me.FGrid.Width = CVar(CDbl(7200))
  loc_1273EE9: Me.FrameGrpItem.Top = CDbl(Me.FGrid.Top)
  loc_1273F34: Me.FrameGrpItem.Left = ((CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width)) + CDbl(1050))
  loc_1273F58: Me.FrameQty.Top = CDbl(7500)
  loc_1273F97: Me.FrameQty.Left = (CDbl(Me.FGrid.Left) + CDbl(Me.FGrid.Width))
  loc_1273FB4: global_104 = &H258
  loc_1273FCA: Me.FGrid.Cols = &HE
  loc_1273FD2: var_94 = CVar(CLng(0)) 'Long
  loc_1273FD7: var_E4 = &H13B
  loc_1273FE3: LateIdCallSt
  loc_1273FEB: var_94 = 0
  loc_1273FF7: var_E4 = CVar(CLng(1)) 'Long
  loc_1273FFC: var_104 = "Rest"
  loc_1274005: LateIdCallSt
  loc_1274010: var_94 = CVar(CLng(1)) 'Long
  loc_127401B: var_E4 = CVar(CInt(1)) 'Integer
  loc_1274022: LateIdCallSt
  loc_127402D: var_94 = CVar(CLng(1)) 'Long
  loc_1274032: var_E4 = 0
  loc_127403E: LateIdCallSt
  loc_1274046: var_94 = 0
  loc_1274052: var_E4 = CVar(CLng(2)) 'Long
  loc_1274057: var_104 = "Rest."
  loc_1274060: LateIdCallSt
  loc_127406B: var_94 = CVar(CLng(2)) 'Long
  loc_1274076: var_E4 = CVar(CInt(1)) 'Integer
  loc_127407D: LateIdCallSt
  loc_1274088: var_94 = CVar(CLng(2)) 'Long
  loc_127408D: var_E4 = 0
  loc_1274099: LateIdCallSt
  loc_12740A1: var_94 = 0
  loc_12740AD: var_E4 = CVar(CLng(3)) 'Long
  loc_12740B2: var_104 = "Code"
  loc_12740BB: LateIdCallSt
  loc_12740C6: var_94 = CVar(CLng(3)) 'Long
  loc_12740D1: var_E4 = CVar(CInt(1)) 'Integer
  loc_12740D8: LateIdCallSt
  loc_12740E3: var_94 = CVar(CLng(3)) 'Long
  loc_12740E8: var_E4 = 0
  loc_12740F4: LateIdCallSt
  loc_12740FC: var_94 = 0
  loc_1274108: var_E4 = CVar(CLng(4)) 'Long
  loc_127410D: var_104 = "Item Name"
  loc_1274116: LateIdCallSt
  loc_1274121: var_94 = CVar(CLng(4)) 'Long
  loc_127412C: var_E4 = CVar(CInt(1)) 'Integer
  loc_1274133: LateIdCallSt
  loc_127413E: var_94 = CVar(CLng(4)) 'Long
  loc_1274143: var_E4 = &H960
  loc_127414F: LateIdCallSt
  loc_1274157: var_94 = 0
  loc_1274163: var_E4 = CVar(CLng(5)) 'Long
  loc_1274168: var_104 = "Unit"
  loc_1274171: LateIdCallSt
  loc_127417C: var_94 = CVar(CLng(5)) 'Long
  loc_1274187: var_E4 = CVar(CInt(1)) 'Integer
  loc_127418E: LateIdCallSt
  loc_1274199: var_94 = CVar(CLng(5)) 'Long
  loc_127419E: var_E4 = &H320
  loc_12741AA: LateIdCallSt
  loc_12741B2: var_94 = 0
  loc_12741BE: var_E4 = CVar(CLng(6)) 'Long
  loc_12741C3: var_104 = "Description"
  loc_12741CC: LateIdCallSt
  loc_12741D7: var_94 = CVar(CLng(6)) 'Long
  loc_12741E2: var_E4 = CVar(CInt(1)) 'Integer
  loc_12741E9: LateIdCallSt
  loc_12741F4: var_94 = CVar(CLng(6)) 'Long
  loc_12741FF: var_E4 = CVar(CInt(1)) 'Integer
  loc_1274206: LateIdCallSt
  loc_1274211: var_94 = CVar(CLng(6)) 'Long
  loc_1274216: var_E4 = &H44C
  loc_1274222: LateIdCallSt
  loc_127422A: var_94 = 0
  loc_1274236: var_E4 = CVar(CLng(7)) 'Long
  loc_127423B: var_104 = "Qty"
  loc_1274244: LateIdCallSt
  loc_127424F: var_94 = CVar(CLng(7)) 'Long
  loc_127425A: var_E4 = CVar(CInt(7)) 'Integer
  loc_1274261: LateIdCallSt
  loc_127426C: var_94 = CVar(CLng(7)) 'Long
  loc_1274277: var_E4 = CVar(CInt(7)) 'Integer
  loc_127427E: LateIdCallSt
  loc_1274289: var_94 = CVar(CLng(7)) 'Long
  loc_127428E: var_E4 = &H320
  loc_127429A: LateIdCallSt
  loc_12742A2: var_94 = 0
  loc_12742AE: var_E4 = CVar(CLng(8)) 'Long
  loc_12742B3: var_104 = "Rate"
  loc_12742BC: LateIdCallSt
  loc_12742C7: var_94 = CVar(CLng(8)) 'Long
  loc_12742D2: var_E4 = CVar(CInt(7)) 'Integer
  loc_12742D9: LateIdCallSt
  loc_12742E4: var_94 = CVar(CLng(8)) 'Long
  loc_12742EF: var_E4 = CVar(CInt(7)) 'Integer
  loc_12742F6: LateIdCallSt
  loc_1274301: var_94 = CVar(CLng(8)) 'Long
  loc_1274306: var_E4 = &H320
  loc_1274312: LateIdCallSt
  loc_127431A: var_94 = 0
  loc_1274326: var_E4 = CVar(CLng(9)) 'Long
  loc_127432B: var_104 = "Status"
  loc_1274334: LateIdCallSt
  loc_127433F: var_94 = CVar(CLng(9)) 'Long
  loc_127434A: var_E4 = CVar(CInt(1)) 'Integer
  loc_1274351: LateIdCallSt
  loc_127435C: var_94 = CVar(CLng(9)) 'Long
  loc_1274367: var_E4 = CVar(CInt(1)) 'Integer
  loc_127436E: LateIdCallSt
  loc_1274379: var_94 = CVar(CLng(9)) 'Long
  loc_127437E: var_E4 = &H2BC
  loc_127438A: LateIdCallSt
  loc_1274395: var_94 = CVar(CLng(&HA)) 'Long
  loc_127439A: var_E4 = 0
  loc_12743A6: LateIdCallSt
  loc_12743B1: var_94 = CVar(CLng(&HB)) 'Long
  loc_12743B6: var_E4 = 0
  loc_12743C2: LateIdCallSt
  loc_12743CD: var_94 = CVar(CLng(&HC)) 'Long
  loc_12743D2: var_E4 = 0
  loc_12743DE: LateIdCallSt
  loc_12743E9: var_94 = CVar(CLng(&HD)) 'Long
  loc_12743EE: var_E4 = 0
  loc_12743FA: LateIdCallSt
  loc_1274404: Set var_D4 = Nothing 
  loc_1274408: Exit Sub
End Sub

Public Sub Proc_251_75_105706C
  'Data Table: 5921DC
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_1056DFF: Me.LblPendingKot.Left = CDbl(8280)
  loc_1056E16: Me.LblPendingKot.Top = CDbl(6630)
  loc_1056E31: Me.FGrid1.Left = CVar(CDbl(8280))
  loc_1056E4C: Me.FGrid1.Top = CVar(CDbl(6960))
  loc_1056E67: Me.FGrid1.Height = CVar(CDbl(5750))
  loc_1056E82: Me.FGrid1.Width = CVar(CDbl(5100))
  loc_1056E8E: Set var_AC = Me.FGrid1
  loc_1056EA5: global_244 = CStr(CLng(var_AC.BackColor))
  loc_1056EBB: var_AC.Cols = 5
  loc_1056EC3: var_98 = CVar(CLng(0)) 'Long
  loc_1056EC8: var_D0 = &H12C
  loc_1056ED4: LateIdCallSt
  loc_1056EDC: var_98 = 0
  loc_1056EE8: var_D0 = CVar(CLng(1)) 'Long
  loc_1056EED: var_F0 = "KotNo"
  loc_1056EF6: LateIdCallSt
  loc_1056F01: var_98 = CVar(CLng(1)) 'Long
  loc_1056F0C: var_D0 = CVar(CInt(1)) 'Integer
  loc_1056F13: LateIdCallSt
  loc_1056F1E: var_98 = CVar(CLng(1)) 'Long
  loc_1056F23: var_D0 = &H28A
  loc_1056F2F: LateIdCallSt
  loc_1056F37: var_98 = 0
  loc_1056F43: var_D0 = CVar(CLng(2)) 'Long
  loc_1056F48: var_F0 = "Time"
  loc_1056F51: LateIdCallSt
  loc_1056F5C: var_98 = CVar(CLng(2)) 'Long
  loc_1056F67: var_D0 = CVar(CInt(1)) 'Integer
  loc_1056F6E: LateIdCallSt
  loc_1056F79: var_98 = CVar(CLng(2)) 'Long
  loc_1056F7E: var_D0 = &H258
  loc_1056F8A: LateIdCallSt
  loc_1056F92: var_98 = 0
  loc_1056F9E: var_D0 = CVar(CLng(3)) 'Long
  loc_1056FA3: var_F0 = "Item Name"
  loc_1056FAC: LateIdCallSt
  loc_1056FB7: var_98 = CVar(CLng(3)) 'Long
  loc_1056FC2: var_D0 = CVar(CInt(1)) 'Integer
  loc_1056FC9: LateIdCallSt
  loc_1056FD4: var_98 = CVar(CLng(3)) 'Long
  loc_1056FD9: var_D0 = &H9C4
  loc_1056FE5: LateIdCallSt
  loc_1056FED: var_98 = 0
  loc_1056FF9: var_D0 = CVar(CLng(4)) 'Long
  loc_1056FFE: var_F0 = "Qty"
  loc_1057007: LateIdCallSt
  loc_1057012: var_98 = CVar(CLng(4)) 'Long
  loc_105701D: var_D0 = CVar(CInt(7)) 'Integer
  loc_1057024: LateIdCallSt
  loc_105702F: var_98 = CVar(CLng(4)) 'Long
  loc_105703A: var_D0 = CVar(CInt(7)) 'Integer
  loc_1057041: LateIdCallSt
  loc_105704C: var_98 = CVar(CLng(4)) 'Long
  loc_1057051: var_D0 = &H2BC
  loc_105705D: LateIdCallSt
  loc_1057067: Set var_AC = Nothing 
  loc_105706B: Exit Sub
End Sub

Public Sub Proc_251_76_119CB50
  'Data Table: 5921DC
  Dim var_98 As Variant
  Dim var_AC As Variant
  Dim var_B0 As String
  Dim var_B4 As Variant
  Dim var_C0 As String
  Dim unk_5921F8 As Connection15
  Dim var_88 As Recordset15
  Dim var_D4 As Variant
  Dim var_FC As Variant
  Dim var_100 As TextBox
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_B8 As String
  Dim var_13C As Variant
  Dim var_A8 As Variant
  Dim var_14C As Variant
  Dim var_EC As Variant
  Dim var_15C As Variant
  loc_119C777: Me.FGrid1.Redraw = False
  loc_119C792: Me.FGrid1.Rows = 1
  loc_119C79F: global_264 = 1
  loc_119C7B9: var_B0 = "select *,K.Vno as KotNo,K.VTime as KotTime,M.name as ItemName,k.qty as ItemQty from (Kot k left join itemmast M on k.item=M.code And M.restcode=k.itemrestcode) where K.PENDING IN('Y')AND VOIDYN NOT IN('Y')And K.RestCode='" & LocalRestCode
  loc_119C7D1: Set var_AC = Me.Txt
  loc_119C7D7: Call 0.Method_Proc_251_76_119CB500 (CInt(4), var_B4, var_B8, var_B0 & "' and (k.DelFlag<>'Y' or k.DelFlag Is NULL) And NCKOT<>'Y' AND K.RoomNo = '")
  loc_119C7DF: var_D4 = var_B4.Text
  loc_119C7E8: var_C0 = -1 & var_B8
  loc_119C7F8: unk_5921F8.Execute var_C0 & "' order by K.Vno ", var_D8, global_264
  loc_119C803: Set var_88 = var_D8
  loc_119C833: If (var_88.RecordCount = 0) Then
  loc_119C845:   Me.FGrid1.Visible = False
  loc_119C859:   Me.LblPendingKot.Visible = False
  loc_119C864: Else
  loc_119C872:   Me.FGrid1.Visible = True
  loc_119C886:   Me.LblPendingKot.Visible = True
  loc_119C89C:   Set var_AC = Me.Label1
  loc_119C8A2:   Call 0.Method_Proc_251_76_119CB500 (2, var_B4)
  loc_119C8B9:   var_FC = ("Running Item For The " + Trim(CVar(var_B4)))
  loc_119C8CB:   Set var_D8 = Me.Txt
  loc_119C8D1:   Call 0.Method_Proc_251_76_119CB500 (CInt(4), var_100)
  loc_119C8E4:   var_120 = (var_FC + CVar(var_100.Text))
  loc_119C8F6:   Me.LblPendingKot.Caption = CStr(var_120)
  loc_119C916:   ' Referenced from:   119CB0D
  loc_119C925:   If Not(var_88.EOF) Then
  loc_119C92F:     var_98 = vbNullString
  loc_119C947:     var_98 = CVar(CLng(global_264)) 'Long
  loc_119C94F:     var_13C = CVar(CLng(0)) 'Long
  loc_119C95C:     var_D4 = CVar(CStr(global_264)) 'String
  loc_119C963:     LateIdCallSt
  loc_119C975:     var_A8 = CVar(CLng(global_264)) 'Long
  loc_119C97D:     var_14C = CVar(CLng(1)) 'Long
  loc_119C9AD:     var_EC = CVar(CStr(var_88.Fields.Item("KOTNo").Value)) 'String
  loc_119C9B4:     LateIdCallSt
  loc_119C9D1:     var_A8 = CVar(CLng(global_264)) 'Long
  loc_119C9D9:     var_14C = CVar(CLng(2)) 'Long
  loc_119CA09:     var_EC = CVar(CStr(var_88.Fields.Item("KotTime").Value)) 'String
  loc_119CA10:     LateIdCallSt
  loc_119CA62:     var_EC = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ItemName")), CVar(CLng(3)), CVar(CLng(global_264)), Me.FGrid1, var_EC, CVar(CLng(3)), CVar(CLng(global_264)))) 'String
  loc_119CA69:     LateIdCallSt
  loc_119CA9E:     var_13C = CVar(CLng(global_264)) 'Long
  loc_119CAA6:     var_15C = CVar(CLng(4)) 'Long
  loc_119CAD3:     var_110 = CVar(CStr(Format(CVar(var_88.Fields.Item("ItemQty")), "0.00"))) 'String
  loc_119CADA:     LateIdCallSt
  loc_119CAF2:     Set var_12C = Nothing 
  loc_119CB02:     global_264 = (global_264 + 1)
  loc_119CB08:     var_88.MoveNext
  loc_119CB0D:     GoTo loc_119C916
  loc_119CB10:   End If
  loc_119CB23:   Me.FGrid1.FixedRows = 1
  loc_119CB2B: End If
  loc_119CB39: Me.FGrid1.Redraw = True
  loc_119CB46: Set var_88 = Nothing
  loc_119CB49: Call Proc_251_75_105706C(global_264, var_12C, var_110, 1, 1, var_15C, var_13C)
  loc_119CB4E: Exit Sub
End Sub

Public Sub Proc_251_77_1900B94
  'Data Table: 5921DC
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
  Dim unk_5921F8 As Connection15
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
  loc_18FE15C: On Error Goto loc_1900B86
  loc_18FE162: MemVar_1F953C4 = "N"
  loc_18FE169: MemVar_1F953C8 = "N"
  loc_18FE170: MemVar_1F953CC = "K"
  loc_18FE18F: If (Me.ChkNCKOT.Value <> 1) Then
  loc_18FE197:   Proc_251_77_1900B94 = 0
  loc_18FE19D: End If
  loc_18FE1A4: var_F0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_18FE1E9: var_8C = CStr(CVar(var_F0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_18FE208: var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.rate, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_18FE228: var_104 = Me.Fields.Item("SearchCode")
  loc_18FE246: var_90 = CStr(var_124 & var_104.Value & "'")
  loc_18FE263: If (var_8C = vbNullString) Then
  loc_18FE26B:   Proc_251_77_1900B94 = 0
  loc_18FE271: End If
  loc_18FE279: If (var_90 = vbNullString) Then
  loc_18FE281:   Proc_251_77_1900B94 = 0
  loc_18FE287: End If
  loc_18FE2A5: Set var_E8 = Me.Txt
  loc_18FE2AB: Call 0.Method_Proc_251_77_1900B940 (CInt(4), var_104, var_F0, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_18FE2B3: var_114 = var_104.Text
  loc_18FE2BC: var_158 = -1 & var_F0
  loc_18FE2CC: unk_5921F8.Execute var_158 & "' AND CONTRADOCID IS NULL", var_160, 
  loc_18FE2F5: var_144 = 0
  loc_18FE325: unk_5921F8.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_114, -1
  loc_18FE335: var_144 = var_104.Item(var_104)
  loc_18FE33D: var_160 = var_160.Value
  loc_18FE34A: var_D4 = Proc_6_38_E69628(var_124)
  loc_18FE378: var_F0 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & MemVar_1F95078
  loc_18FE388: unk_5921F8.Execute var_F0 & "MK'", var_114, -1
  loc_18FE393: Set var_C0 = var_E8.Fields
  loc_18FE3B7: If (var_160.RecordCount = 1) Then
  loc_18FE3BD:   var_CC = "New Order"
  loc_18FE3C3: Else
  loc_18FE3CA:   Set var_E8 = Me.LblState
  loc_18FE3D8:   var_CC = var_E8.Caption
  loc_18FE3DE: End If
  loc_18FE3F4: unk_5921F8.Execute var_8C, var_114, -1
  loc_18FE3FF: Set var_B8 = var_E8
  loc_18FE408: ' Referenced from: 1900B50
  loc_18FE417: If Not(var_C0.EOF) Then
  loc_18FE430:   unk_5921F8.Execute "SELECT KOTPrinting FROM Enviro", var_114, -1
  loc_18FE43B:   Set var_D0 = var_E8
  loc_18FE44B:   var_124 = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_18FE463:   var_E8 = Me.Fields
  loc_18FE473:   var_114 = var_E8.Item("SearchCode").Value
  loc_18FE4B4:   unk_5921F8.Execute CStr(var_124 & var_114 & "' and K.VoidYN<>'Y'"), var_114, -1
  loc_18FE4BF:   Set var_BC = var_E8
  loc_18FE4DC:   If (var_BC.RecordCount > 0) Then
  loc_18FE4EE:     var_E8 = var_C0.Fields
  loc_18FE50D:     var_174 = Trim(CVar(var_E8.Item("PrintType"))) 'Variant
  loc_18FE522:     If (var_174 = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_18FE532:       Call Proc_251_84_EFACAC(New, var_E8, var_E8, var_E8)
  loc_18FE53A:       Set var_D8 = var_E8
  loc_18FE540:       Me.Recordset15.MoveFirst
  loc_18FE545:       ' Referenced from: 18FF1BF
  loc_18FE554:       If Not(var_B8.EOF) Then
  loc_18FE56D:         If (0 = 0) Then
  loc_18FE58E:           Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString, 1)
  loc_18FE5CA:           var_C4 = Replace(CStr(Space(&H26)), " ", "-", 1, -1, 0)
  loc_18FE601:           var_124 = CVar(Me.LblRest.Caption) 'String
  loc_18FE604:           var_134 = (Space(1) + var_124)
  loc_18FE619:           Call Proc_251_85_F14964(var_D8, vbNullString, CStr(var_124 & Space(1)), vbNullString)
  loc_18FE64B:           Call Proc_251_85_F14964(var_D8, vbNullString, " * NC Bill *", vbNullString)
  loc_18FE659:           var_96 = &H12
  loc_18FE67A:           Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString, var_96)
  loc_18FE6A6:           Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FE6C3:           var_E8 = var_B8.Fields
  loc_18FE6DA:           Proc_6_39_E7D3A0(var_124, CVar(var_E8.Item("VNo")), var_96)
  loc_18FE717:           Call Proc_251_85_F14964(var_D8, vbNullString, " V No.     : " & Proc_6_45_EADFB8(CStr(var_124), &HA, var_E8))
  loc_18FE744:           var_E8 = var_B8.Fields
  loc_18FE7E7:           Call Proc_251_85_F14964(var_D8, vbNullString, " Date.     : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8.Item("VDate")), vbNullString), &HC) & " " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")), var_E8), 8))
  loc_18FE82E:           var_104 = var_B8.Fields.Item("Remarks")
  loc_18FE879:           Call Proc_251_85_F14964(var_D8, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104), vbNullString), &H1E))
  loc_18FE8AB:           Set var_E8 = Me.Label1
  loc_18FE8B1:           Call 0.Method_Proc_251_77_1900B940 (2, var_104)
  loc_18FE93A:           var_190 = Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")), vbNullString)), "000")), 5, 1)
  loc_18FE940:           var_17C = vbNullString
  loc_18FE94F:           var_1B4 = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_18FE958:           var_1C4 = (var_1B4 + ": ")
  loc_18FE962:           var_234 = (var_1C4 + CVar(var_190))
  loc_18FE977:           Call Proc_251_85_F14964(var_D8, vbNullString, CStr(var_234))
  loc_18FE9C9:           Call Proc_251_85_F14964(var_D8, vbNullString, var_C4, vbNullString)
  loc_18FE9D5:         End If
  loc_18FE9FB:         var_134 = (var_17C + CVar(Proc_6_45_EADFB8("ITEM NAME", &H12, Space(1))))
  loc_18FEA0F:         var_1B4 = (Trim(CVar(var_104)) + Space(1))
  loc_18FEA29:         var_1D4 = (1 + CVar(Proc_6_52_EAE084("Qty", 3, var_1B4)))
  loc_18FEA35:         var_1E4 = Space(1)
  loc_18FEA3D:         var_204 = (CVar(var_B8.Fields.Item("TableNo")) + var_1E4)
  loc_18FEA57:         var_224 = ("000" + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_18FEA6B:         var_248 = (CVar(var_190) + Space(1))
  loc_18FEA85:         var_26C = (var_248 + CVar(Proc_6_52_EAE084("Amount", 7)))
  loc_18FEABC:         var_158 = vbNullString
  loc_18FEAD1:         Call Proc_251_85_F14964(var_D8, vbNullString, CStr(var_26C))
  loc_18FEAE0:         var_158 = vbNullString
  loc_18FEAF5:         Call Proc_251_85_F14964(var_D8, vbNullString, var_C4)
  loc_18FEB07:         var_96 = (var_96 + 4)
  loc_18FEB0D:         var_BC.MoveFirst
  loc_18FEB12:         ' Referenced from: 18FEE2C
  loc_18FEB21:         If Not(var_BC.EOF) Then
  loc_18FEB46:           var_124 = var_BC.Fields.Item("ItemName").Value
  loc_18FEB71:           Proc_6_39_E7D3A0(var_1E4, CVar(var_BC.Fields.Item("qty")), var_96)
  loc_18FEB99:           var_280 = "Rate"
  loc_18FEBBC:           Proc_6_39_E7D3A0(var_294, CVar(var_BC.Fields.Item(var_280)), 1, 1)
  loc_18FEBCB:           var_2A4 = "0.00"
  loc_18FEC07:           Proc_6_39_E7D3A0(var_33C, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_18FEC32:           Proc_6_39_E7D3A0(var_374, CVar(var_BC.Fields.Item("Rate")), var_158)
  loc_18FEC8A:           var_154 = (1 + CVar(Proc_6_45_EADFB8(CStr(var_124), &H12, Space(1), 1)))
  loc_18FEC9E:           var_1C4 = (Space(1) + Space(1))
  loc_18FECB7:           var_234 = (var_158 + CVar(Proc_6_52_EAE084(CStr(Format(var_1E4, "0")), 3, CVar(Proc_6_52_EAE084("Qty", 3, Space(1))))))
  loc_18FECCB:           var_25C = (Space(1) + Space(1))
  loc_18FECE4:           var_2E4 = (CVar(Proc_6_52_EAE084("Amount", 7)) + CVar(Proc_6_52_EAE084(CStr(Format(var_294, var_2A4)), 6)))
  loc_18FECF8:           var_304 = (var_2E4 + Space(1))
  loc_18FED11:           var_3E4 = (var_304 + CVar(Proc_6_52_EAE084(CStr(Format((var_33C * var_374), "0.00")), 7)))
  loc_18FED77:           var_1F4 = CVar(var_E4) 'Double
  loc_18FEDA1:           Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_18FEDCF:           Proc_6_39_E7D3A0(Space(1), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_18FEDDB:           var_1C4 = (var_124 + (var_1F4 * Space(1)))
  loc_18FEDE0:           var_E4 = CSng(CVar(Proc_6_52_EAE084("Qty", 3, (var_1F4 * Space(1)))))
  loc_18FEDFA:           var_158 = vbNullString
  loc_18FEE0F:           Call Proc_251_85_F14964(var_D8, vbNullString, CStr(var_3E4))
  loc_18FEE21:           var_96 = (var_96 + 1)
  loc_18FEE27:           var_BC.MoveNext
  loc_18FEE2C:           GoTo loc_18FEB12
  loc_18FEE2F:         End If
  loc_18FEE47:         Call Proc_251_85_F14964(var_D8, vbNullString, var_C4, vbNullString)
  loc_18FEE71:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FEEAC:         var_144 = "0.00"
  loc_18FEEB1:         var_154 = var_144
  loc_18FEEFE:         var_134 = (Space(&H16) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8, var_96)))
  loc_18FEF08:         var_204 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, var_154))))), 8, 1)))
  loc_18FEF1D:         Call Proc_251_85_F14964(var_D8, vbNullString, CStr("0"), vbNullString)
  loc_18FEF68:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FEF79:         var_100 = "WaiterName"
  loc_18FEFB8:         var_17C = vbNullString
  loc_18FEFD8:         Call Proc_251_85_F14964(var_D8, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_100)), 1), &H14))
  loc_18FF012:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF047:         Call Proc_251_85_F14964(var_D8, vbNullString, " ** " & MemVar_1F95220 & " **", vbNullString)
  loc_18FF05A:         var_B8.MoveNext
  loc_18FF07D:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF0A9:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF0D5:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF101:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF12D:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF159:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF185:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF1B1:         Call Proc_251_85_F14964(var_D8, vbNullString, vbNullString, vbNullString)
  loc_18FF1BF:         GoTo loc_18FE545
  loc_18FF1C2:       End If
  loc_18FF1C5:       var_DC = "WinKOTPrint"
  loc_18FF1EC:       Set var_E8 = var_D8 
  loc_18FF1F3:       CreateFieldDefFile(var_E8, MemVar_1F950B4 & "\" & var_DC & ".ttx", &HFF)
  loc_18FF225:       var_158 = MemVar_1F950B4 & "\" & var_DC
  loc_18FF22C:       var_15C = var_158 & ".RPT"
  loc_18FF235:       Call 0.Method_arg_1C (var_15C, var_100, var_E8)
  loc_18FF240:       MemVar_1F951E8 = var_E8
  loc_18FF269:       Call 0.Method_arg_64 (var_E8, CVar(var_E8), var_144, var_1F4)
  loc_18FF271:       Call 0.Method_arg_2C (var_17C, var_158)
  loc_18FF281:       If (var_D4 <> vbNullString) Then
  loc_18FF2A2:         If CBool(Ucase(var_D4) <> "PRN") Then
  loc_18FF2A8:           Call Proc_251_82_F0F208(var_D4)
  loc_18FF2AD:         End If
  loc_18FF2AD:       End If
  loc_18FF2CA:       Call 0.Method_Me8 (False, 1, var_1F4)
  loc_18FF2D4:       Set var_D8 = Nothing
  loc_18FF2DA:     Else
  loc_18FF2E5:       If Not (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_18FF2F3:         If (var_174 = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_18FF2F6:         End If
  loc_18FF2F8:         Close 1
  loc_18FF301:         Open "C:\reptmp\NCBILL_C.TXT" For Output As 1 Len = &HFF
  loc_18FF308:         var_B8.MoveFirst
  loc_18FF30D:         ' Referenced from:   18FFDAB
  loc_18FF31C:         If Not(var_B8.EOF) Then
  loc_18FF321:           var_96 = 0
  loc_18FF335:           If (var_96 = 0) Then
  loc_18FF33A:             Print 1
  loc_18FF36E:             var_C4 = Replace(CStr(Space(&H38)), " ", "-", 1, -1, 0)
  loc_18FF3B5:             Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14, 1, var_96), "D", &H28, var_17C)
  loc_18FF3BF:             Print 1, var_17C
  loc_18FF3FD:             Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("* NC Bill *", &H14, var_280), "D", &H28)
  loc_18FF407:             Print 1, var_15C
  loc_18FF41F:             Print 1
  loc_18FF427:             Print 1
  loc_18FF460:             Proc_6_39_E7D3A0(var_154, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_18FF482:             var_124 = (Chr(&HF) + "V No.     :   ")
  loc_18FF48C:             var_1C4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(CStr(var_154), &HA, var_15C)))
  loc_18FF492:             Print 1, CVar(CStr(Format(var_E4, var_154)))
  loc_18FF544:             var_124 = (Chr(&HF) + "Date.     :   ")
  loc_18FF54E:             var_1B4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC)))
  loc_18FF557:             var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))), &HA, Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4))) + " ")
  loc_18FF561:             var_204 = (CVar(CStr(Format(var_E4, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2A4), &HC))))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_18FF567:             Print 1, "0"
  loc_18FF5BC:             var_104 = var_B8.Fields.Item("Remarks")
  loc_18FF5F9:             var_124 = (Chr(&HF) + "Remarks :   ")
  loc_18FF603:             var_1B4 = (CVar(Proc_6_45_EADFB8("TOTAL  :", 8, &H12)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32)))
  loc_18FF60A:             var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H32))) + Chr(&H12))
  loc_18FF610:             Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_18FF649:             Set var_E8 = Me.Label1
  loc_18FF64F:             Call 0.Method_Proc_251_77_1900B940 (2, var_104)
  loc_18FF6E4:             var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_18FF6ED:             var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))) + ":   ")
  loc_18FF6F4:             var_224 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_18FF6F7:             var_234 = (Chr(&H12) + var_224)
  loc_18FF6FD:             Print 1, Space(1)
  loc_18FF748:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FF74E:             Print 1, CVar(var_104)
  loc_18FF75B:           End If
  loc_18FF781:           var_134 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_18FF79B:           var_1B4 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_104)))))
  loc_18FF7A7:           var_1C4 = Space(3)
  loc_18FF7AF:           var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_104))))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))) + var_1C4)
  loc_18FF7C9:           var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_18FF7DD:           var_224 = ("000" + Space(3))
  loc_18FF7F7:           var_248 = (var_224 + CVar(Proc_6_52_EAE084("Amount", &HA)))
  loc_18FF83D:           var_124 = (Chr(&HF) + CVar(CStr(Space(1))))
  loc_18FF843:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_18FF866:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FF86C:           Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_18FF87F:           var_96 = (var_96 + 4)
  loc_18FF885:           var_BC.MoveFirst
  loc_18FF88A:           ' Referenced from:   18FFB91
  loc_18FF899:           If Not(var_BC.EOF) Then
  loc_18FF8E9:             Proc_6_39_E7D3A0(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_18FF934:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Amount", 7)), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_18FF97F:             Proc_6_39_E7D3A0(var_304, CVar(var_BC.Fields.Item("qty")), 1, 1)
  loc_18FF9AA:             Proc_6_39_E7D3A0(var_33C, CVar(var_BC.Fields.Item("Rate")), 1)
  loc_18FF9FA:             var_124 = Space(3)
  loc_18FFA02:             var_154 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + var_124)
  loc_18FFA18:             var_204 = CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("ItemName"))))))) 'String
  loc_18FFA1B:             var_214 = (1 + var_204)
  loc_18FFA2F:             var_234 = (Space(3) + Space(3))
  loc_18FFA45:             var_2B4 = CVar(Proc_6_52_EAE084(CStr(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00")), 6, CVar(Proc_6_52_EAE084("Amount", &HA)))) 'String
  loc_18FFA48:             var_2C4 = (&H12 + var_2B4)
  loc_18FFA5C:             var_2E4 = (Format(Format(CVar(Proc_6_52_EAE084("Amount", 7)), "0.00"), "0.00") + Space(3))
  loc_18FFA75:             var_3C4 = (var_2E4 + CVar(Proc_6_52_EAE084(CStr(Format((var_304 * var_33C), "0.00")), &HA)))
  loc_18FFB01:             Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_18FFB2F:             Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_18FFB3B:             var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))))
  loc_18FFB40:             var_E4 = CSng(var_1C4)
  loc_18FFB6D:             var_124 = (Chr(&HF) + CVar(CStr(Format((var_33C * (var_304 * var_33C)), "0.00"))))
  loc_18FFB73:             Print 1, var_124
  loc_18FFB86:             var_96 = (var_96 + 1)
  loc_18FFB8C:             var_BC.MoveNext
  loc_18FFB91:             GoTo loc_18FF88A
  loc_18FFB94:           End If
  loc_18FFBAA:           var_124 = (Chr(&HF) + CVar(var_C4))
  loc_18FFBB0:           Print 1, var_124
  loc_18FFBC2:           Print 1, vbNullString
  loc_18FFC48:           var_134 = (Chr(&HF) + Space(&H25))
  loc_18FFC52:           var_1B4 = (CVar(var_BC.Fields.Item("Rate")) + CVar(Proc_6_45_EADFB8("TOTAL  :", 8)))
  loc_18FFC5C:           var_224 = ((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_18FFC62:           Print 1, Space(3)
  loc_18FFC93:           Print 1, vbNullString
  loc_18FFCED:           var_124 = (Chr(&HF) + "Waiter Name  :   ")
  loc_18FFCF7:           var_1B4 = (Space(&H25) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_18FFCFD:           Print 1, (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty"))))))
  loc_18FFD1E:           Print 1
  loc_18FFD39:           var_124 = (Chr(&HF) + "** ")
  loc_18FFD43:           var_134 = (Space(&H25) + CVar(MemVar_1F95220))
  loc_18FFD4C:           var_154 = (CVar(var_B8.Fields.Item("WaiterName")) + " **")
  loc_18FFD52:           Print 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14))
  loc_18FFD66:           var_B8.MoveNext
  loc_18FFD6D:           Print 1
  loc_18FFD75:           Print 1
  loc_18FFD7D:           Print 1
  loc_18FFD85:           Print 1
  loc_18FFD8D:           Print 1
  loc_18FFD95:           Print 1
  loc_18FFD9D:           Print 1
  loc_18FFDA5:           Print 1
  loc_18FFDAB:           GoTo loc_18FF30D
  loc_18FFDAE:         End If
  loc_18FFDB0:         Close 1
  loc_18FFDBA:         If (var_D4 <> vbNullString) Then
  loc_18FFDC4:           Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FFDD4:           Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & var_D4
  loc_18FFDE0:         Else
  loc_18FFDE7:           Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_18FFDF7:           Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & MemVar_1F953B8
  loc_18FFE00:         End If
  loc_18FFE02:         Close 1
  loc_18FFE0C:         If (MemVar_1F953BC = "Y") Then
  loc_18FFE28:           var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.PIF", 0)) 'Variant
  loc_18FFE32:         Else
  loc_18FFE4B:           var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.BAT", 0)) 'Variant
  loc_18FFE52:         End If
  loc_18FFE55:       Else
  loc_18FFE60:         If (var_174 = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_18FFE65:           Close 1
  loc_18FFE6E:           Open "C:\reptmp\NCBILL_C.TXT" For Output As 1 Len = &HFF
  loc_18FFE75:           var_B8.MoveFirst
  loc_18FFE7A:           ' Referenced from:     1900A39
  loc_18FFE89:           If Not(var_B8.EOF) Then
  loc_18FFE99:             var_94 = "* NC BILL *"
  loc_18FFECA:             var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_18FFED9:             If (0 = 0) Then
  loc_18FFEDE:               Print 1
  loc_18FFF0D:               var_1B4 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_18FFF50:               var_26C = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_18FFF7A:               var_1E4 = (Chr(&HF) + Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))))
  loc_18FFF81:               var_224 = (CVar(CStr(Format(var_E4, "0.00"))) + Trim(CVar(Me.LblRest)))
  loc_18FFF88:               var_2C4 = (Space(3) + Space(CLng(("0.00" / 2))))
  loc_18FFF8F:               var_2E4 = (Format(("0.00" / 2), "0.00") + Chr(&H12))
  loc_18FFF95:               Print 1, var_2E4
  loc_18FFFE3:               var_154 = (42 - Len(Trim(var_94)))
  loc_1900016:               var_224 = (42 - Len(Trim(var_94)))
  loc_1900040:               var_1D4 = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_190004A:               var_1E4 = (Space(CLng(((CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Trim(CVar(var_BC.Fields.Item("qty")))))) / 2))) + CVar(var_94))
  loc_1900051:               var_25C = (CVar(CStr(Format(var_E4, "0.00"))) + Space(CLng((Space(3) / 2))))
  loc_1900058:               var_294 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_190005E:               Print 1, ("0.00" / 2)
  loc_190007D:               var_96 = &H12
  loc_1900082:               Print 1
  loc_190008A:               Print 1
  loc_19000C3:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")), var_96, 1)
  loc_19000F2:               var_124 = (Chr(&HF) + "KOT No.   :     ")
  loc_19000FC:               var_1C4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)))
  loc_1900103:               var_1E4 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1900109:               Print 1, CVar(CStr(Format(var_E4, "0.00")))
  loc_19001CC:               var_124 = (Chr(&HF) + "KOT Dt.   :     ")
  loc_19001D6:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_96), &HC)))
  loc_19001DF:               var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + " ")
  loc_19001E9:               var_204 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_19001F0:               var_224 = (Trim(var_94) + Chr(&H12))
  loc_19001F6:               Print 1, Space(3)
  loc_190024F:               var_104 = var_B8.Fields.Item("Remarks")
  loc_190028C:               var_124 = (Chr(&HF) + "Remarks :     ")
  loc_1900296:               var_1B4 = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_104)), &H20)))
  loc_190029D:               var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + Chr(&H12))
  loc_19002A3:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_19002DC:               Set var_E8 = Me.Label1
  loc_19002E2:               Call 0.Method_Proc_251_77_1900B940 (2, var_104)
  loc_1900384:               var_1B4 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA)))
  loc_190038D:               var_1C4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + ":     ")
  loc_1900394:               var_224 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1900397:               var_234 = (Chr(&H12) + var_224)
  loc_190039E:               var_25C = ((Space(3) / 2) + Chr(&H12))
  loc_19003A4:               Print 1, Len(Trim(CVar(Me.LblRest)))
  loc_1900400:               var_124 = (Chr(&HF) + CVar(var_C4))
  loc_1900407:               var_154 = (CVar(var_104) + Chr(&H12))
  loc_190040D:               Print 1, CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_104))), &HA))
  loc_190041E:             End If
  loc_1900444:             var_134 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_190045E:             var_1B4 = (1 + CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))
  loc_190046A:             var_1C4 = Space(3)
  loc_1900472:             var_1D4 = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA, var_96)) + var_1C4)
  loc_190048C:             var_204 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_19004D5:             var_124 = (Chr(&HF) + CVar(CStr("000")))
  loc_19004DC:             var_154 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_19004E2:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1900516:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_190051D:             var_154 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1900523:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_190053A:             var_96 = (var_96 + 4)
  loc_1900540:             var_BC.MoveFirst
  loc_1900545:             ' Referenced from:     1900797
  loc_1900554:             If Not(var_BC.EOF) Then
  loc_19005A4:               Proc_6_39_E7D3A0(var_1C4, CVar(var_BC.Fields.Item("qty")))
  loc_19005EF:               Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1900631:               var_124 = Space(3)
  loc_1900639:               var_154 = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + var_124)
  loc_1900652:               var_214 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1C4, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))))))
  loc_1900666:               var_234 = (Format(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))), "000") + Space(3))
  loc_190067F:               var_2C4 = (var_96 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), "0.00")), 6, (Space(3) / 2))))
  loc_19006EF:               Proc_6_39_E7D3A0(var_124, CVar(var_BC.Fields.Item("qty")))
  loc_190071D:               Proc_6_39_E7D3A0(CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12))), CVar(var_BC.Fields.Item("Rate")), var_124)
  loc_1900729:               var_1C4 = (var_E4 + (CVar(var_E4) * CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))))
  loc_190072E:               var_E4 = CSng(var_1C4)
  loc_1900768:               var_124 = (Chr(&HF) + CVar(CStr(Format(Format(Len(Trim(CVar(Me.LblRest))), "0.00"), "0.00"))))
  loc_190076F:               var_154 = (var_124 + Chr(&H12))
  loc_1900775:               Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_190078C:               var_96 = (var_96 + 1)
  loc_1900792:               var_BC.MoveNext
  loc_1900797:               GoTo loc_1900545
  loc_190079A:             End If
  loc_19007BD:             var_124 = (Chr(&HF) + CVar(var_C4))
  loc_19007C4:             var_154 = (var_124 + Chr(&H12))
  loc_19007CA:             Print 1, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))
  loc_1900851:             var_134 = (Chr(&HF) + CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)))
  loc_190085B:             var_204 = (Chr(&H12) + CVar(Proc_6_52_EAE084(CStr(Trim(CVar(CStr(Format(var_E4, "0.00"))))), &HB, 1)))
  loc_1900861:             Print 1, CVar(Proc_6_52_EAE084(CStr(Format(CVar(CStr(Format(var_E4, "0.00"))), "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6, Chr(&H12)))))
  loc_190088E:             Print 1, vbNullString
  loc_19008F5:             var_124 = (Chr(&HF) + "Waiter Name  :     ")
  loc_19008FF:             var_1B4 = (CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1), &H14)))
  loc_1900906:             var_1D4 = (Format(var_E4, "0.00") + Chr(&H12))
  loc_190090C:             Print 1, Trim(CVar(CStr(Format(var_E4, "0.00"))))
  loc_1900954:             var_1B4 = Chr(&H12)
  loc_1900961:             var_124 = (Chr(&HF) + "***  ")
  loc_1900974:             var_1C4 = ("  ***" + var_1B4)
  loc_190097E:             Print 1, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_CC) & Chr(&H12)
  loc_1900997:             Print 1
  loc_19009B2:             var_124 = (Chr(&HF) + "** ")
  loc_19009BC:             var_134 = (CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) + CVar(MemVar_1F95220))
  loc_19009C5:             var_154 = (Trim(var_CC) + " **")
  loc_19009CB:             Print 1, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_CC)
  loc_19009DF:             var_B8.MoveNext
  loc_19009E6:             Print 1
  loc_19009EE:             Print 1
  loc_19009F6:             Print 1
  loc_19009FE:             Print 1
  loc_1900A24:             var_134 = (Chr(&H1B) + Chr(&H6D))
  loc_1900A2A:             Print 1, Trim(var_CC)
  loc_1900A39:             GoTo loc_18FFE7A
  loc_1900A3C:           End If
  loc_1900A3E:           Close 1
  loc_1900A48:           If (var_D4 <> vbNullString) Then
  loc_1900A52:             Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1900A62:             Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & var_D4
  loc_1900A6E:           Else
  loc_1900A75:             Open "C:\reptmp\NCBILLPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1900A85:             Print 1, "TYPE C:\reptmp\NCBILL_C.TXT>" & MemVar_1F953B8
  loc_1900A8E:           End If
  loc_1900A90:           Close 1
  loc_1900A9A:           If (MemVar_1F953BC = "Y") Then
  loc_1900AB6:             var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.PIF", 0)) 'Variant
  loc_1900AC0:           Else
  loc_1900AD9:             var_A8 = CVar(Shell("C:\reptmp\NCBILLPrint_C.BAT", 0)) 'Variant
  loc_1900AE0:           End If
  loc_1900AE0:         End If
  loc_1900AE0:       End If
  loc_1900AE0:     End If
  loc_1900AE3:   Else
  loc_1900B2D:     MsgBox("Please Check Printer Setting of " & var_C0.Fields.Item("Name").Value & ".", &H40, CVar(Proc_6_52_EAE084("TOTAL  :", &H1C)) & Trim(var_CC), var_1B4, Chr(&H12))
  loc_1900B48:   End If
  loc_1900B4B:   var_C0.MoveNext
  loc_1900B50:   GoTo loc_18FE408
  loc_1900B53: End If
  loc_1900B58: Set var_B8 = Nothing
  loc_1900B60: Set var_BC = Nothing
  loc_1900B68: Set var_C0 = Nothing
  loc_1900B70: Set var_D0 = Nothing
  loc_1900B78: Set var_D8 = Nothing
  loc_1900B80: Proc_251_77_1900B94 = &HFF
  loc_1900B86: ' Referenced from: 18FE15C
  loc_1900B86: Proc_6_60_E63754(var_96)
  loc_1900B8B: Proc_251_77_1900B94 = var_E4
End Sub

Public Sub Proc_251_78_1284D58
  'Data Table: 5921DC
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
  loc_12847A4: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(0)
  loc_12847AE: False.Visible = 
  loc_12847C3: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(0)
  loc_12847CD: False.Visible = 
  loc_12847E5: For var_F4 = 1 To CInt(Me.UBound): var_9E = var_F4 'Integer
  loc_12847FA:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9E)
  loc_1284804:   False.Visible = 1
  loc_1284815:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9E)
  loc_128482B:   Me.Global.Unload 
  loc_1284839: Next var_F4 'Integer
  loc_128484F: For var_FC = 1 To CInt(Me.UBound): var_9E = var_FC 'Integer
  loc_1284864:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9E)
  loc_128486E:   False.Visible = 1
  loc_128487F:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9E)
  loc_1284895:   Me.Global.Unload 
  loc_12848A3: Next var_FC 'Integer
  loc_12848B6: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_12848BD: Proc_6_39_E7D3A0(var_110)
  loc_12848D4: If (var_110 > 0) Then
  loc_12848DD:   var_96 = (arg_18 + 1)
  loc_12848E2:   var_98 = 0
  loc_12848E7:   var_9A = 0
  loc_12848FD:   var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_1284904:   Proc_6_39_E7D3A0(var_110, var_F0, var_9C, 1)
  loc_1284914:   For var_124 = var_98 To CInt(var_110): var_9A = var_124 'Integer
  loc_1284924:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_128493A:     Me.Global.Load var_98
  loc_1284959:     If ((((var_9C - 1) Mod arg_18) <> 0) Or (var_9C = 1)) Then
  loc_1284962:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_1284969:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(0)
  loc_128497F:       var_D0 = CVar((var_9C - 1)) 'Integer
  loc_1284986:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(False)
  loc_1284996:       var_144 = (var_F0 + var_96.top.height)
  loc_12849A5:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_12849AF:       var_144.top = 
  loc_12849C8:       var_B0 = CVar((var_9C - 1)) 'Integer
  loc_12849CF:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(0)
  loc_12849EA:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_12849F4:       .left.left = 
  loc_1284A0F:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284A19:       True.Visible = 
  loc_1284A56:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284A60:       CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")))).CAPTION = 
  loc_1284AA6:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284AB0:       CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")))).Tag = 
  loc_1284ACB:       If (var_9C = (arg_18 * arg_10)) Then
  loc_1284AE0:         var_94 = CVar(Me.Recordset15.AbsolutePosition) 'Variant
  loc_1284AE4:         Exit For
  loc_1284AE7:       End If
  loc_1284AEA:     Else
  loc_1284AF5:       If ((var_9C Mod var_96) = var_98) Then
  loc_1284AFF:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_1284B06:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(CVar(Me.Recordset15.AbsolutePosition))
  loc_1284B10:         var_120 = .left
  loc_1284B1D:         var_D0 = CVar((var_9C - arg_18)) 'Integer
  loc_1284B24:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(False)
  loc_1284B34:         var_144 = ( + var_120.width)
  loc_1284B43:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284B4D:         var_144.left = 
  loc_1284B67:         var_B0 = CVar((var_9C - arg_18)) 'Integer
  loc_1284B6E:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(CVar(Me.Recordset15.AbsolutePosition))
  loc_1284B89:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284B93:         .top.top = 
  loc_1284BAE:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284BB8:         True.Visible = 
  loc_1284BF5:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284BFF:         CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Name")))).CAPTION = 
  loc_1284C37:         var_110 = CVar(Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("Code")))) 'String
  loc_1284C45:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_0(var_9C)
  loc_1284C4F:         var_110.Tag = 
  loc_1284C65:         var_9A = (var_9A + 1)
  loc_1284C6F:         var_98 = (var_96 - var_9A)
  loc_1284C72:       End If
  loc_1284C72:     End If
  loc_1284C75:     Me.MoveNext
  loc_1284C8E:     If (Me.AbsolutePosition = -3) Then
  loc_1284C91:       GoTo loc_1284C9C
  loc_1284C94:     End If
  loc_1284C97:   Next var_124 'Integer
  loc_1284C9C:   ' Referenced from: 1284C91
  loc_1284C9C:   ' Referenced from: 1284AE4
  loc_1284C9C: End If
  loc_1284CBC: var_F0 = CVar(Me.Recordset15.RecordCount) 'Long
  loc_1284CC3: Proc_6_39_E7D3A0(var_110)
  loc_1284CE2: Call Proc_251_80_E61DC8(Me.SSPPrevious, CInt(Me.Recordset15.AbsolutePosition), CInt(var_110))
  loc_1284D1E: Proc_6_39_E7D3A0(var_110, CVar(Me.Recordset15.RecordCount))
  loc_1284D3D: Call Proc_251_79_E55A50(Me.SSPNext, CInt(Me.AbsolutePosition), CInt(var_110))
  loc_1284D52: Proc_251_78_1284D58 = var_120
End Sub

Public Sub Proc_251_79_E55A50
  'Data Table: 5921DC
  loc_E55A2C: If ((CLng(arg_10) = -3) Or ((arg_14 Mod CInt(&H10)) = 0)) Then
  loc_E55A37:   Me.Enabled = False
  loc_E55A3E: Else
  loc_E55A45:   Me.Enabled = True
  loc_E55A49: End If
  loc_E55A49: Proc_251_79_E55A50 = 
End Sub

Public Sub Proc_251_80_E61DC8
  'Data Table: 5921DC
  loc_E61DA5: If (((arg_10 = CInt(&H10)) Or (CLng(arg_10) = -1)) Or ((CLng(arg_10) = -3) And (arg_14 < CInt(&H10)))) Then
  loc_E61DB0:   Me.Enabled = False
  loc_E61DB7: Else
  loc_E61DBE:   Me.Enabled = True
  loc_E61DC2: End If
  loc_E61DC2: Proc_251_80_E61DC8 = 
End Sub

Public Sub Proc_251_81_EA192C
  'Data Table: 5921DC
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  loc_EA18BF: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_EA18C7: var_C8 = CVar(CLng(0)) 'Long
  loc_EA18FA: If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_EA18FD:   Exit Sub
  loc_EA18FE: End If
  loc_EA190E: Me.FrameQty.ZOrder 0
  loc_EA1923: Me.TxtQty.Text = vbNullString
  loc_EA192B: Exit Sub
End Sub

Public Sub Proc_251_82_F0F208(arg_C) 'F0F208
  'Data Table: 5921DC
  Dim var_94 As Integer
  Dim var_96 As Integer
  Dim var_C8 As Variant
  loc_F0F137: var_94 = CInt(InStr(1, arg_C, ",", 0))
  loc_F0F160: var_96 = CInt(InStr((InStr(1, arg_C, ",", 0) + 1), arg_C, ",", 0))
  loc_F0F169: var_C8 = CVar((var_94 - 1)) 'Integer
  loc_F0F199: var_C8 = CVar((var_96 - (var_94 + 1))) 'Integer
  loc_F0F1AE: var_D8 = Mid(arg_C, CLng((var_94 + 1)), var_C8)
  loc_F0F1C8: var_C8 = CVar((CInt(Len(arg_C)) - var_96)) 'Integer
  loc_F0F1DD: var_D8 = Mid(arg_C, CLng((var_96 + 1)), var_C8)
  loc_F0F1FF: Call 0.Method_MeC (CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)), CStr(Mid(arg_C, 1, var_C8)))
  loc_F0F204: Exit Sub
End Sub

Public Sub Proc_251_83_1BBE5E0
  'Data Table: 5921DC
  Dim var_12C As Variant
  Dim var_10C As Variant
  Dim var_13C As Variant
  Dim var_140 As String
  Dim unk_5921F8 As Connection15
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
  loc_1BB908C: On Error Goto loc_1BBE5D4
  loc_1BB90AC: Proc_6_17_EAAE40(var_11C, MemVar_1F95078, "SELECT * FROM ENVIRO WHERE LOGSITE_CODE=")
  loc_1BB90C2: unk_5921F8.Execute CStr(var_160 & var_11C), -1, var_164
  loc_1BB90CD: Set var_FC = var_164
  loc_1BB90F3: If (var_FC.RecordCount > 0) Then
  loc_1BB912D:   var_EC = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KOTHeader1"))))))
  loc_1BB9173:   var_F0 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KOTHeader2"))))))
  loc_1BB91B9:   var_F4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KOTHeader3"))))))
  loc_1BB91FF:   var_F8 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_FC.Fields.Item("KOTHeader4"))))))
  loc_1BB920E: End If
  loc_1BB9211: MemVar_1F953C4 = "N"
  loc_1BB9218: MemVar_1F953C8 = "N"
  loc_1BB921F: MemVar_1F953CC = "K"
  loc_1BB922A: var_140 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.NCKOT,K.Remarks , K.ContraDocId, D.ShortName,K.GuarAtt " & "From ((KOT K Left Join Waiter W on K.Waiter=W.Code) Left Join Depart D on D.Code=K.RestCode) "
  loc_1BB926F: var_8C = CStr(CVar(var_140 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1BB928E: var_13C = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BB92AE: var_16C = Me.Fields.Item("SearchCode")
  loc_1BB92BE: var_160 = var_13C & var_16C.Value 
  loc_1BB92C7: var_17C = var_160 & "'" 
  loc_1BB92CC: var_90 = CStr(var_17C)
  loc_1BB92E9: If (var_8C = vbNullString) Then
  loc_1BB92F1:   Proc_251_83_1BBE5E0 = 0
  loc_1BB92F7: End If
  loc_1BB92FF: If (var_90 = vbNullString) Then
  loc_1BB9307:   Proc_251_83_1BBE5E0 = 0
  loc_1BB930D: End If
  loc_1BB932B: Set var_164 = Me.Txt
  loc_1BB9331: Call 0.Method_Proc_251_83_1BBE5E00 (CInt(4), var_16C, var_140, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_1BB9339: var_11C = var_16C.Text
  loc_1BB9342: var_180 = -1 & var_140
  loc_1BB9352: unk_5921F8.Execute var_180 & "' AND CONTRADOCID IS NULL", var_188, 
  loc_1BB9389: If (var_188.RecordCount = 1) Then
  loc_1BB938F:   var_CC = "New Order"
  loc_1BB9395: Else
  loc_1BB939C:   Set var_164 = Me.LblState
  loc_1BB93AA:   var_CC = var_164.Caption
  loc_1BB93B0: End If
  loc_1BB93C6: unk_5921F8.Execute var_8C, var_11C, -1
  loc_1BB93D1: Set var_B8 = var_164
  loc_1BB93F0: unk_5921F8.Execute "SELECT KOTPrinting FROM Enviro", var_11C, -1
  loc_1BB93FB: Set var_D4 = var_164
  loc_1BB940A: var_12C = 0
  loc_1BB943A: unk_5921F8.Execute "Select CKOTPrintPath From Depart Where Code='" & LocalRestCode & "'", var_11C, -1
  loc_1BB9442: var_164 = var_164.Fields
  loc_1BB944A: var_12C = var_16C.Item(var_16C)
  loc_1BB9452: var_188 = var_188.Value
  loc_1BB945F: var_D8 = Proc_6_38_E69628(var_13C, var_13C)
  loc_1BB9488: var_164 = var_B8.Fields
  loc_1BB94B2: If (Proc_6_38_E69628(CVar(var_164.Item("ContraDocId")), var_164) <> vbNullString) Then
  loc_1BB94C8:   var_11C = "Sale Bill Already Generated !!"
  loc_1BB94CE:   MsgBox(var_11C, &H40, var_13C, var_160, var_17C)
  loc_1BB94E3:   Proc_251_83_1BBE5E0 = 0
  loc_1BB94E9: End If
  loc_1BB9500: var_140 = "Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer,Depart.PrintType From Depart Where Depart.Code='" & LocalRestCode
  loc_1BB9510: unk_5921F8.Execute var_140 & "'", var_11C, -1
  loc_1BB951B: Set var_C0 = var_164
  loc_1BB952B: ' Referenced from: 1BBE5AE
  loc_1BB953A: If Not(var_C0.EOF) Then
  loc_1BB9544:   var_13C = CVar("Select K.Sno,I.Name as ItemName,K.Qty,K.Rate,K.Description, Depart.ShortName,Depart.Code,dEPART.nAME AS KITCHEN,Depart.PrintType,K.VoidYN As Cancel,K.Printed From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_1BB955C:   var_164 = Me.Fields
  loc_1BB956C:   var_11C = var_164.Item("SearchCode").Value
  loc_1BB95AD:   unk_5921F8.Execute CStr(var_13C & var_11C & "'"), var_11C, -1
  loc_1BB95B8:   Set var_BC = var_164
  loc_1BB95C7:   var_168 = var_BC.RecordCount
  loc_1BB95D5:   If (var_168 > 0) Then
  loc_1BB95E7:     var_164 = var_C0.Fields
  loc_1BB9606:     var_1AC = Trim(CVar(var_164.Item("PrintType"))) 'Variant
  loc_1BB961B:     If (var_1AC = "3 INCH RUNNING PAPER WINPRINT") Then
  loc_1BB962B:       Call Proc_251_84_EFACAC(New, var_164, var_164)
  loc_1BB9633:       Set var_E0 = var_164
  loc_1BB9639:       Me.Recordset15.MoveFirst
  loc_1BB963E:       ' Referenced from: 1BBA3CC
  loc_1BB964D:       If Not(var_B8.EOF) Then
  loc_1BB9652:         var_96 = 0
  loc_1BB9669:         var_164 = var_B8.Fields
  loc_1BB977A:         var_2F8 = IIf((Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_164.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_164) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BB9783:         var_94 = CStr(var_2F8)
  loc_1BB97C7:         If (var_96 = 0) Then
  loc_1BB97CD:           var_184 = vbNullString
  loc_1BB97E8:           Call Proc_251_85_F14964(var_E0, vbNullString, vbNullString)
  loc_1BB9824:           var_C4 = Replace(CStr(Space(&H23)), " ", "-", 1, -1, 0)
  loc_1BB985B:           var_13C = CVar(Me.LblRest.Caption) 'String
  loc_1BB985E:           var_160 = (Space(1) + var_13C)
  loc_1BB9873:           Call Proc_251_85_F14964(var_E0, vbNullString, CStr(Trim(CVar(Proc_6_38_E69628(CVar(Me.LblRest.Item("ShortName")), 1, var_96)))))
  loc_1BB98A5:           Call Proc_251_85_F14964(var_E0, vbNullString, var_94, vbNullString)
  loc_1BB98D4:           Call Proc_251_85_F14964(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1BB9908:           Proc_6_39_E7D3A0(var_13C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BB993C:           var_184 = vbNullString
  loc_1BB9945:           Call Proc_251_85_F14964(var_E0, var_184, " KOT No.   : " & Proc_6_45_EADFB8(CStr(var_13C), &HA, vbNullString))
  loc_1BB9A01:           var_304 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")), " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC)), 8)
  loc_1BB9A15:           Call Proc_251_85_F14964(var_E0, vbNullString, " KOT Dt.   : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), vbNullString), &HC) & " " & var_304)
  loc_1BB9A5C:           var_16C = var_B8.Fields.Item("Remarks")
  loc_1BB9AA7:           Call Proc_251_85_F14964(var_E0, vbNullString, " Remarks : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C), vbNullString), &H1E))
  loc_1BB9AD9:           Set var_164 = Me.Label1
  loc_1BB9ADF:           Call 0.Method_Proc_251_83_1BBE5E00 (2, var_16C)
  loc_1BB9B4A:           var_300 = vbNullString
  loc_1BB9B59:           var_1BC = (Space(1) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BB9B62:           var_1CC = (Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3) + ": ")
  loc_1BB9B69:           var_1F0 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")), vbNullString), 5)) 'String
  loc_1BB9B6C:           var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3)) + var_1F0)
  loc_1BB9B81:           Call Proc_251_85_F14964(var_E0, vbNullString, CStr("* NC LOT *"))
  loc_1BB9BB8:           var_180 = vbNullString
  loc_1BB9BCD:           Call Proc_251_85_F14964(var_E0, vbNullString, var_C4)
  loc_1BB9BD9:         End If
  loc_1BB9BFF:         var_160 = (var_180 + CVar(Proc_6_45_EADFB8("ITEM NAME", &H19, Space(1))))
  loc_1BB9C13:         var_1BC = (Trim(CVar(var_16C)) + Space(1))
  loc_1BB9C2A:         var_1CC = CVar(Proc_6_52_EAE084("Qty", 3, Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_164.Item("ShortName")), 1, &H12))), 1, 3))) 'String
  loc_1BB9C2D:         var_1DC = (var_300 + var_1CC)
  loc_1BB9C32:         var_B0 = CStr(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BB9C50:         var_180 = vbNullString
  loc_1BB9C65:         Call Proc_251_85_F14964(var_E0, vbNullString, var_B0)
  loc_1BB9C74:         var_180 = vbNullString
  loc_1BB9C89:         Call Proc_251_85_F14964(var_E0, vbNullString, var_C4)
  loc_1BB9C9B:         var_96 = (var_96 + 4)
  loc_1BB9CA1:         var_BC.MoveFirst
  loc_1BB9CA6:         ' Referenced from: 1BBA027
  loc_1BB9CB5:         If Not(var_BC.EOF) Then
  loc_1BB9CEE:           var_188 = var_BC.Fields
  loc_1BB9D05:           Proc_6_39_E7D3A0(var_1F0, CVar(var_188.Item("qty")), &H12)
  loc_1BB9D30:           var_198 = "Cancel"
  loc_1BB9D6A:           var_200 = "Y"
  loc_1BB9DA8:           var_17C = (1 + CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, Space(1), 1)))
  loc_1BB9DBC:           var_1CC = (Space(1) + Space(1))
  loc_1BB9DD5:           var_278 = (var_180 + CVar(Proc_6_52_EAE084(CStr(Format(var_1F0, "0")), 3, var_1CC)))
  loc_1BB9DEB:           var_348 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item(var_198).Value = var_200), "Void", vbNullString)), 5, CVar(var_B8.Fields.Item("NCKOT")))) 'String
  loc_1BB9DEE:           var_358 = (var_180 + var_348)
  loc_1BB9E4D:           Call Proc_251_85_F14964(var_E0, vbNullString, CStr(var_358))
  loc_1BB9E5F:           var_96 = (var_96 + 1)
  loc_1BB9E9B:           If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BB9ECC:             var_300 = vbNullString
  loc_1BB9EF3:             Call Proc_251_85_F14964(var_E0, vbNullString, "(" & Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), vbNullString) & ")")
  loc_1BB9F13:             var_96 = (var_96 + 1)
  loc_1BB9F16:           End If
  loc_1BB9F20:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BB9F3B:             Call Proc_251_85_F14964(var_E0, vbNullString, var_C4, vbNullString)
  loc_1BB9F65:             Call Proc_251_85_F14964(var_E0, vbNullString, " Contd.", vbNullString)
  loc_1BB9F79:             var_98 = (var_98 + 1)
  loc_1BB9F99:             Call Proc_251_85_F14964(var_E0, vbNullString, var_94, vbNullString, 0)
  loc_1BB9FC2:             Call Proc_251_85_F14964(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1BB9FE6:             Call Proc_251_85_F14964(var_E0, vbNullString, var_B0, vbNullString)
  loc_1BBA00A:             Call Proc_251_85_F14964(var_E0, vbNullString, var_C4, vbNullString)
  loc_1BBA01C:             var_96 = (var_96 + 4)
  loc_1BBA01F:           End If
  loc_1BBA022:           var_BC.MoveNext
  loc_1BBA027:           GoTo loc_1BB9CA6
  loc_1BBA02A:         End If
  loc_1BBA034:         If (&H12 < (&H45 - var_AA)) Then
  loc_1BBA037:           ' Referenced from: 1BBA079
  loc_1BBA041:           If (&H12 = (&H45 - var_AA)) Then
  loc_1BBA062:             Call Proc_251_85_F14964(var_E0, vbNullString, vbNullString, vbNullString, &H12)
  loc_1BBA076:             var_96 = (var_96 + 1)
  loc_1BBA079:             GoTo loc_1BBA037
  loc_1BBA07C:           End If
  loc_1BBA07C:         End If
  loc_1BBA094:         Call Proc_251_85_F14964(var_E0, vbNullString, var_C4, vbNullString, &H12)
  loc_1BBA0E2:         var_300 = vbNullString
  loc_1BBA102:         Call Proc_251_85_F14964(var_E0, vbNullString, " Waiter Name  : " & Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), 1, &H12), &H14))
  loc_1BBA15D:         Call Proc_251_85_F14964(var_E0, vbNullString, CStr(" ***  " & Trim(var_CC) & "  ***"), vbNullString)
  loc_1BBA1BC:         var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BBA1CA:         unk_5921F8.Execute CStr(var_160), Space(1), -1
  loc_1BBA22B:         If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BBA255:           Call Proc_251_85_F14964(var_E0, vbNullString, " ***  " & "Changed KOT" & "  ***", vbNullString)
  loc_1BBA268:         Else
  loc_1BBA275:           var_12C = "Select Printed from kot where docid='"
  loc_1BBA2AB:           var_150 = "'"
  loc_1BBA2BE:           unk_5921F8.Execute CStr(var_12C & Me.Fields.Item("SearchCode").Value & var_150), Space(1), -1
  loc_1BBA2E6:           var_10C = 0
  loc_1BBA31C:           If (Proc_6_38_E69628(CVar(var_188.Fields.Item(var_10C)), var_188, var_188) = "Y") Then
  loc_1BBA346:             Call Proc_251_85_F14964(var_E0, vbNullString, " ***  " & "DUPLICATE KOT" & "  ***", vbNullString)
  loc_1BBA359:           Else
  loc_1BBA377:             Call Proc_251_85_F14964(var_E0, vbNullString, vbNullString, vbNullString)
  loc_1BBA385:           End If
  loc_1BBA385:         End If
  loc_1BBA38A:         Set var_E4 = Nothing
  loc_1BBA3B4:         Call Proc_251_85_F14964(var_E0, vbNullString, "** " & MemVar_1F95220 & " **", vbNullString)
  loc_1BBA3C7:         var_B8.MoveNext
  loc_1BBA3CC:         GoTo loc_1BB963E
  loc_1BBA3CF:       End If
  loc_1BBA3D2:       var_DC = "WinKOTPrint"
  loc_1BBA3F9:       Set var_164 = var_E0 
  loc_1BBA400:       CreateFieldDefFile(var_164, MemVar_1F950B4 & "\" & var_DC & ".ttx", &HFF)
  loc_1BBA442:       Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_DC & ".RPT", var_10C, var_164)
  loc_1BBA44D:       MemVar_1F951E8 = var_164
  loc_1BBA476:       Call 0.Method_arg_64 (var_164, CVar(var_164), var_12C, var_150)
  loc_1BBA47E:       Call 0.Method_arg_2C (var_300, var_300)
  loc_1BBA48E:       If (var_D8 <> vbNullString) Then
  loc_1BBA4AF:         If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1BBA4B5:           Call Proc_251_82_F0F208(var_D8)
  loc_1BBA4BA:         End If
  loc_1BBA4BA:       End If
  loc_1BBA4C6:       var_12C = 1
  loc_1BBA4D7:       Call 0.Method_Me8 (False, var_12C, var_150)
  loc_1BBA4E1:       Set var_E0 = Nothing
  loc_1BBA4E7:     Else
  loc_1BBA4F2:       If (var_1AC = "ADJUSTABLE WINDOWS KOT PRINT") Then
  loc_1BBA4F8:         var_B8.MoveFirst
  loc_1BBA4FD:         ' Referenced from:   1BBB2D1
  loc_1BBA50C:         If Not(var_B8.EOF) Then
  loc_1BBA512:           var_10C = "ShortName"
  loc_1BBA542:           var_17C = 3
  loc_1BBA571:           var_188 = var_B8.Fields
  loc_1BBA579:           var_1E0 = var_188.Item("NCKOT")
  loc_1BBA61B:           var_150 = "LAU"
  loc_1BBA625:           var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_10C)), "NCKOT"))), 1, var_17C)) = var_150) 'Variant
  loc_1BBA62F:           var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E69628(CVar(var_1E0), (Proc_6_38_E69628(CVar(var_1E0), var_200) = "Y")) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT"))) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BBA638:           var_94 = CStr(var_2F8)
  loc_1BBA679:           var_DC = "KOTPrint"
  loc_1BBA6A0:           Set var_164 = var_BC 
  loc_1BBA6A7:           CreateFieldDefFile(var_164, MemVar_1F950B4 & "\" & var_DC & ".ttx")
  loc_1BBA6B3:           Set var_BC = var_164
  loc_1BBA6E9:           Call 0.Method_arg_1C (MemVar_1F950B4 & "\" & var_DC & ".RPT", var_10C, var_164)
  loc_1BBA6F4:           MemVar_1F951E8 = var_164
  loc_1BBA71D:           Call 0.Method_arg_64 (var_164, CVar(var_BC), var_12C)
  loc_1BBA725:           Call 0.Method_arg_2C (var_150, &HFF)
  loc_1BBA733:           Call 0.Method_arg_150 (var_164)
  loc_1BBA780:           var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BBA78E:           unk_5921F8.Execute CStr(var_160), var_17C, -1
  loc_1BBA7EF:           If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BBA7F5:             var_D0 = "Changed KOT"
  loc_1BBA7FB:           Else
  loc_1BBA851:             unk_5921F8.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BBA885:             var_164 = var_188.Fields
  loc_1BBA88D:             var_16C = var_164.Item(0)
  loc_1BBA89E:             var_140 = Proc_6_38_E69628(CVar(var_16C), var_188)
  loc_1BBA8AF:             If (var_140 = "Y") Then
  loc_1BBA8B5:               var_D0 = "DUPLICATE KOT"
  loc_1BBA8BB:             Else
  loc_1BBA8BE:               var_D0 = vbNullString
  loc_1BBA8C1:             End If
  loc_1BBA8C1:           End If
  loc_1BBA8C6:           Set var_E4 = Nothing
  loc_1BBA8DA:           Call 0.Method_arg_90 (var_164, var_168, var_B2)
  loc_1BBA8E2:           Call 0.Method_arg_24 (1)
  loc_1BBA8EE:           For var_35C =  To CInt(var_168):   var_188 = var_35C 'Integer
  loc_1BBA907:             Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BBA90F:             Call 0.Method_arg_20 (var_16C)
  loc_1BBA917:             Call 0.Method_arg_30 (var_140)
  loc_1BBA92D:             var_36C = Ucase(CVar(var_140)) 'Variant
  loc_1BBA95D:             If (var_36C = Ucase("comp_name")) Then
  loc_1BBA981:               Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BBA989:               Call 0.Method_arg_20 (var_16C)
  loc_1BBA991:               Call 0.Method_arg_38 ("'" & MemVar_1F95130 & "'")
  loc_1BBA9A7:             Else
  loc_1BBA9C9:               If (var_36C = Ucase("comp_add1")) Then
  loc_1BBA9ED:                 Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BBA9F5:                 Call 0.Method_arg_20 (var_16C)
  loc_1BBA9FD:                 Call 0.Method_arg_38 ("'" & MemVar_1F95134 & "'")
  loc_1BBAA13:               Else
  loc_1BBAA35:                 If (var_36C = Ucase("comp_pin")) Then
  loc_1BBAA59:                   Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BBAA61:                   Call 0.Method_arg_20 (var_16C)
  loc_1BBAA69:                   Call 0.Method_arg_38 ("'" & MemVar_1F9513C & "'")
  loc_1BBAA7F:                 Else
  loc_1BBAAA1:                   If (var_36C = Ucase("comp_GSTIN")) Then
  loc_1BBAAC5:                     Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BBAACD:                     Call 0.Method_arg_20 (var_16C)
  loc_1BBAAD5:                     Call 0.Method_arg_38 ("'" & MemVar_1F95154 & "'")
  loc_1BBAAEB:                   Else
  loc_1BBAB0D:                     If (var_36C = Ucase("RestName")) Then
  loc_1BBAB1A:                       Set var_164 = Me.LblRest
  loc_1BBAB43:                       Call 0.Method_arg_90 (var_16C, CLng(var_B2))
  loc_1BBAB4B:                       Call 0.Method_arg_20 (var_188)
  loc_1BBAB53:                       Call 0.Method_arg_38 ("'" & var_164.Caption & "'")
  loc_1BBAB6D:                     Else
  loc_1BBAB8F:                       If (var_36C = Ucase("mTitle")) Then
  loc_1BBABB3:                         Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BBABBB:                         Call 0.Method_arg_20 (var_16C)
  loc_1BBABC3:                         Call 0.Method_arg_38 ("'" & var_94 & "'")
  loc_1BBABD9:                       Else
  loc_1BBABE1:                         var_11C = "Header1"
  loc_1BBABFB:                         If (var_36C = Ucase(var_11C)) Then
  loc_1BBAC09:                           Proc_6_17_EAAE40(var_11C)
  loc_1BBAC25:                           Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BBAC2D:                           Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BBAC35:                           Call 0.Method_arg_38 (var_EC)
  loc_1BBAC4A:                         Else
  loc_1BBAC52:                           var_11C = "Header2"
  loc_1BBAC6C:                           If (var_36C = Ucase(var_11C)) Then
  loc_1BBAC7A:                             Proc_6_17_EAAE40(var_11C)
  loc_1BBAC96:                             Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BBAC9E:                             Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BBACA6:                             Call 0.Method_arg_38 (var_F0)
  loc_1BBACBB:                           Else
  loc_1BBACC3:                             var_11C = "Header3"
  loc_1BBACDD:                             If (var_36C = Ucase(var_11C)) Then
  loc_1BBACEB:                               Proc_6_17_EAAE40(var_11C)
  loc_1BBAD07:                               Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BBAD0F:                               Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BBAD17:                               Call 0.Method_arg_38 (var_F4)
  loc_1BBAD2C:                             Else
  loc_1BBAD34:                               var_11C = "Header4"
  loc_1BBAD4E:                               If (var_36C = Ucase(var_11C)) Then
  loc_1BBAD5C:                                 Proc_6_17_EAAE40(var_11C)
  loc_1BBAD78:                                 Call 0.Method_arg_90 (var_164, CLng(var_B2), var_16C)
  loc_1BBAD80:                                 Call 0.Method_arg_20 (CStr(var_11C))
  loc_1BBAD88:                                 Call 0.Method_arg_38 (var_F8)
  loc_1BBAD9D:                               Else
  loc_1BBADAE:                                 var_13C = Ucase("KotNo")
  loc_1BBADBF:                                 If (var_36C = var_13C) Then
  loc_1BBADED:                                   Proc_6_39_E7D3A0(var_13C, CVar(var_B8.Fields.Item("VNo")))
  loc_1BBADF9:                                   var_150 = "'"
  loc_1BBAE16:                                   Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BBAE1E:                                   Call 0.Method_arg_20 (var_1E0)
  loc_1BBAE26:                                   Call 0.Method_arg_38 (CStr("'" & var_13C & var_150))
  loc_1BBAE45:                                 Else
  loc_1BBAE67:                                   If (var_36C = Ucase("KotDate")) Then
  loc_1BBAEB3:                                     Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BBAEBB:                                     Call 0.Method_arg_20 (var_1E0)
  loc_1BBAEC3:                                     Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate"))) & "'")
  loc_1BBAEE0:                                   Else
  loc_1BBAF02:                                     If (var_36C = Ucase("KotTime")) Then
  loc_1BBAF4E:                                       Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BBAF56:                                       Call 0.Method_arg_20 (var_1E0)
  loc_1BBAF5E:                                       Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))) & "'")
  loc_1BBAF7B:                                     Else
  loc_1BBAF9D:                                       If (var_36C = Ucase("Remarks")) Then
  loc_1BBAFBA:                                         var_16C = var_B8.Fields.Item("Remarks")
  loc_1BBAFE9:                                         Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BBAFF1:                                         Call 0.Method_arg_20 (var_1E0)
  loc_1BBAFF9:                                         Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_16C)) & "'")
  loc_1BBB016:                                       Else
  loc_1BBB038:                                         If (var_36C = Ucase("TableTitle")) Then
  loc_1BBB049:                                           Set var_164 = Me.Label1
  loc_1BBB04F:                                           Call 0.Method_Proc_251_83_1BBE5E00 (2, var_16C)
  loc_1BBB087:                                           Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BBB08F:                                           Call 0.Method_arg_20 (var_1E0)
  loc_1BBB097:                                           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_16C)) & "'"))
  loc_1BBB0B6:                                         Else
  loc_1BBB0D8:                                           If (var_36C = Ucase("TableNo")) Then
  loc_1BBB124:                                             Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BBB12C:                                             Call 0.Method_arg_20 (var_1E0)
  loc_1BBB134:                                             Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))) & "'")
  loc_1BBB151:                                           Else
  loc_1BBB173:                                             If (var_36C = Ucase("Steward")) Then
  loc_1BBB188:                                               var_164 = var_B8.Fields
  loc_1BBB190:                                               var_16C = var_164.Item("WaiterName")
  loc_1BBB1BF:                                               Call 0.Method_arg_90 (var_188, CLng(var_B2))
  loc_1BBB1C7:                                               Call 0.Method_arg_20 (var_1E0)
  loc_1BBB1CF:                                               Call 0.Method_arg_38 ("'" & Proc_6_38_E69628(CVar(var_16C)) & "'")
  loc_1BBB1EC:                                             Else
  loc_1BBB20E:                                               If (var_36C = Ucase("KotStatus")) Then
  loc_1BBB232:                                                 Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BBB23A:                                                 Call 0.Method_arg_20 (var_16C)
  loc_1BBB242:                                                 Call 0.Method_arg_38 ("'" & var_CC & "'")
  loc_1BBB258:                                               Else
  loc_1BBB27A:                                                 If (var_36C = Ucase("KotRemark")) Then
  loc_1BBB29E:                                                   Call 0.Method_arg_90 (var_164, CLng(var_B2))
  loc_1BBB2A6:                                                   Call 0.Method_arg_20 (var_16C)
  loc_1BBB2AE:                                                   Call 0.Method_arg_38 ("'" & var_D0 & "'")
  loc_1BBB2C1:                                                 End If
  loc_1BBB2C1:                                               End If
  loc_1BBB2C1:                                             End If
  loc_1BBB2C1:                                           End If
  loc_1BBB2C1:                                         End If
  loc_1BBB2C1:                                       End If
  loc_1BBB2C1:                                     End If
  loc_1BBB2C1:                                   End If
  loc_1BBB2C1:                                 End If
  loc_1BBB2C1:                               End If
  loc_1BBB2C1:                             End If
  loc_1BBB2C1:                           End If
  loc_1BBB2C1:                         End If
  loc_1BBB2C1:                       End If
  loc_1BBB2C1:                     End If
  loc_1BBB2C1:                   End If
  loc_1BBB2C1:                 End If
  loc_1BBB2C1:               End If
  loc_1BBB2C1:             End If
  loc_1BBB2C4:           Next var_35C 'Integer
  loc_1BBB2CC:           var_B8.MoveNext
  loc_1BBB2D1:           GoTo loc_1BBA4FD
  loc_1BBB2D4:         End If
  loc_1BBB2DC:         If (var_D8 <> vbNullString) Then
  loc_1BBB2FD:           If CBool(Ucase(var_D8) <> "PRN") Then
  loc_1BBB303:             Call Proc_251_82_F0F208(var_D8)
  loc_1BBB308:           End If
  loc_1BBB308:         End If
  loc_1BBB325:         Call 0.Method_Me8 (False, 1, var_150)
  loc_1BBB32D:       Else
  loc_1BBB338:         If (var_1AC = "3 INCH RUNNING PAPER (NORMAL PRINTER)") Then
  loc_1BBB33D:           Close 1
  loc_1BBB346:           Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BBB34D:           var_B8.MoveFirst
  loc_1BBB352:           ' Referenced from:     1BBC3EA
  loc_1BBB361:           If Not(var_B8.EOF) Then
  loc_1BBB366:             var_96 = 0
  loc_1BBB3A1:             var_17C = 3
  loc_1BBB3C4:             var_198 = "NCKOT"
  loc_1BBB441:             var_2FC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")))
  loc_1BBB45D:             var_180 = var_2FC
  loc_1BBB484:             var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_17C)) = "LAU") 'Variant
  loc_1BBB48E:             var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item(var_198)), var_198) = "Y"), "* NC LOT *", "* LOT *"), IIf((var_180 = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BBB497:             var_94 = CStr(var_2F8)
  loc_1BBB4DB:             If (var_96 = 0) Then
  loc_1BBB4E0:               Print 1
  loc_1BBB514:               var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BBB525:               If (var_EC <> vbNullString) Then
  loc_1BBB54E:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BBB554:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBB566:               End If
  loc_1BBB56E:               If (var_F0 <> vbNullString) Then
  loc_1BBB597:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BBB59D:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBB5AF:               End If
  loc_1BBB5B7:               If (var_F4 <> vbNullString) Then
  loc_1BBB5E0:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1BBB5E6:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBB5F8:               End If
  loc_1BBB600:               If (var_F8 <> vbNullString) Then
  loc_1BBB629:                 var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1BBB62F:                 Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBB641:               End If
  loc_1BBB643:               Print 1
  loc_1BBB673:               Call Proc_251_96_10ABBB8(Me.LblRest.Caption, "D", &H28)
  loc_1BBB67D:               Print 1, var_2FC
  loc_1BBB6A3:               Call Proc_251_96_10ABBB8(var_94, "D", &H28)
  loc_1BBB6AD:               Print 1, var_180
  loc_1BBB6C1:               Print 1
  loc_1BBB6C9:               Print 1
  loc_1BBB702:               Proc_6_39_E7D3A0(var_17C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BBB724:               var_13C = (Chr(&HF) + "KOT No.   :     ")
  loc_1BBB72E:               var_1CC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_17C), &HA, Proc_6_45_EADFB8(CStr(var_17C), &HA, var_180))))
  loc_1BBB734:               Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C))
  loc_1BBB7E6:               var_13C = (Chr(&HF) + "KOT Dt.   :     ")
  loc_1BBB7F0:               var_1BC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC)))
  loc_1BBB7F9:               var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC))), &HA, Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC))), &HA, var_180))) + " ")
  loc_1BBB803:               var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), var_2FC), &HC)))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BBB809:               Print 1, "* NC LOT *"
  loc_1BBB85E:               var_16C = var_B8.Fields.Item("Remarks")
  loc_1BBB89B:               var_13C = (Chr(&HF) + "Remarks :     ")
  loc_1BBB8A5:               var_1BC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32)))
  loc_1BBB8AC:               var_1DC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32))), &HA, Proc_6_38_E69628(CVar(var_16C)))) + Chr(&H12))
  loc_1BBB8B2:               Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BBB8EB:               Set var_164 = Me.Label1
  loc_1BBB8F1:               Call 0.Method_Proc_251_83_1BBE5E00 (2, var_16C)
  loc_1BBB962:               var_1BC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BBB96B:               var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA))), &HA, Proc_6_38_E69628(CVar(var_16C)))) + ":     ")
  loc_1BBB975:               var_220 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BBB97B:               Print 1, "* NC LOT *"
  loc_1BBB9C0:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBB9C6:               Print 1, CVar(var_16C)
  loc_1BBB9D3:             End If
  loc_1BBB9F9:             var_160 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B)) + Space(1))
  loc_1BBBA13:             var_1BC = (Trim(CVar(var_16C)) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1BBBA18:             var_B0 = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084("Qty", 6))), &HA, "Qty")))
  loc_1BBBA45:             var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BBBA4B:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B))
  loc_1BBBA6E:             var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBBA74:             Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H1B))
  loc_1BBBA87:             var_96 = (var_96 + 4)
  loc_1BBBA8D:             var_BC.MoveFirst
  loc_1BBBA92:             ' Referenced from:     1BBC003
  loc_1BBBAA1:             If Not(var_BC.EOF) Then
  loc_1BBBAD2:               var_160 = Trim(CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("ItemName")), &H12)))
  loc_1BBBADB:               var_E8 = CStr(var_160)
  loc_1BBBB10:               Proc_6_39_E7D3A0(var_160, CVar(var_BC.Fields.Item("qty")))
  loc_1BBBB47:               var_188 = var_BC.Fields
  loc_1BBBBB3:               var_1DC = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_160, "0.00")), 6, Space(1))))
  loc_1BBBBC9:               var_2C8 = CVar(Proc_6_52_EAE084(CStr(IIf((var_188.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, CVar(var_B8.Fields.Item("TableNo")))) 'String
  loc_1BBBBCC:               var_2D8 = (1 + var_2C8)
  loc_1BBBBD1:               var_C8 = CStr(IIf(("Qty" = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BBBC03:               ' Referenced from:     1BBBE08
  loc_1BBBC0D:               If (Len(var_E8) <> 0) Then
  loc_1BBBC3E:                 var_168 = InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0)
  loc_1BBBC75:                 var_17C = CVar((InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0) - 1)) 'Long
  loc_1BBBCC8:                 var_2FC = Proc_6_45_EADFB8(CStr(Mid(var_E8, 1, IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 27, "0.00"))), &H1B)
  loc_1BBBD04:                 var_13C = (Chr(&HF) + CVar(var_2FC & var_2FC & var_C8))
  loc_1BBBD0A:                 Print 1, Left(var_E8, &H1B)
  loc_1BBBD1D:                 var_96 = (var_96 + 1)
  loc_1BBBD23:                 var_C8 = vbNullString
  loc_1BBBD30:                 If (Len(var_E8) > &H1B) Then
  loc_1BBBD61:                   var_168 = InStrRev(CStr(Left(var_E8, &H1B)), " ", -1, 0)
  loc_1BBBD89:                   var_180 = CStr(Left(var_E8, &H1B))
  loc_1BBBD98:                   var_17C = CVar((InStrRev(var_180, " ", -1, 0) + 1)) 'Long
  loc_1BBBDE2:                   var_E8 = CStr(Mid(var_E8, CLng(IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00")), CVar(Len(var_E8))))
  loc_1BBBE02:                 Else
  loc_1BBBE05:                   var_E8 = vbNullString
  loc_1BBBE08:                 End If
  loc_1BBBE08:                 GoTo loc_1BBBC03
  loc_1BBBE0B:               End If
  loc_1BBBE44:               If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), var_168, &H12) <> vbNullString) Then
  loc_1BBBE87:                 var_13C = (Chr(&HF) + "(")
  loc_1BBBE91:                 var_1BC = (Left(var_E8, &H1B) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), var_168)))
  loc_1BBBE9A:                 var_1CC = (IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00") + ")")
  loc_1BBBEA0:                 Print 1, CVar(Len(var_E8))
  loc_1BBBEC1:                 var_96 = (var_96 + 1)
  loc_1BBBEC4:               End If
  loc_1BBBECE:               If (&H12 = (&H45 - var_AA)) Then
  loc_1BBBEE7:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBBEED:                 Print 1, Left(var_E8, &H1B)
  loc_1BBBEFF:                 Print 1, "Contd."
  loc_1BBBF17:                 Print 1, Chr(&HC)
  loc_1BBBF26:                 var_98 = (var_98 + 1)
  loc_1BBBF3C:                 Call Proc_251_97_1200EA4(1, 0, &H28, var_306)
  loc_1BBBF5B:                 Call Proc_251_96_10ABBB8(var_94, "B", &H28, var_180, var_306)
  loc_1BBBF65:                 Print 1, var_180
  loc_1BBBF74:                 var_96 = &H12
  loc_1BBBF8D:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBBF93:                 Print 1, Left(var_E8, &H1B)
  loc_1BBBFB6:                 var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BBBFBC:                 Print 1, Left(var_E8, &H1B)
  loc_1BBBFDF:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBBFE5:                 Print 1, Left(var_E8, &H1B)
  loc_1BBBFF8:                 var_96 = (var_96 + 4)
  loc_1BBBFFB:               End If
  loc_1BBBFFE:               var_BC.MoveNext
  loc_1BBC003:               GoTo loc_1BBBA92
  loc_1BBC006:             End If
  loc_1BBC010:             If (var_96 < (&H45 - var_AA)) Then
  loc_1BBC013:               ' Referenced from:     1BBC034
  loc_1BBC01D:               If (var_96 = (&H45 - var_AA)) Then
  loc_1BBC025:                 Print 1, vbNullString
  loc_1BBC031:                 var_96 = (var_96 + 1)
  loc_1BBC034:                 GoTo loc_1BBC013
  loc_1BBC037:               End If
  loc_1BBC037:             End If
  loc_1BBC04D:             var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBC053:             Print 1, Left(var_E8, &H1B)
  loc_1BBC0B4:             var_13C = (Chr(&HF) + "Waiter Name  :     ")
  loc_1BBC0BB:             var_17C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)) 'String
  loc_1BBC0BE:             var_1BC = (Left(var_E8, &H1B) + var_17C)
  loc_1BBC0C4:             Print 1, IIf(((var_168 = 0) Or (Len(var_E8) <= &H1B)), 28, "0.00")
  loc_1BBC108:             var_13C = (Chr(&HF) + "***  ")
  loc_1BBC10F:             var_17C = Left(var_E8, &H1B) & Trim(var_CC) 
  loc_1BBC11E:             Print 1, var_17C & "  ***"
  loc_1BBC179:             var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BBC187:             unk_5921F8.Execute CStr(var_160), var_17C, -1
  loc_1BBC1E8:             If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BBC219:               Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("Changed KOT", &H14, var_188), "D", &H28, var_2FC)
  loc_1BBC223:               Print 1, var_2FC
  loc_1BBC239:             Else
  loc_1BBC28F:               unk_5921F8.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BBC2ED:               If (Proc_6_38_E69628(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1BBC303:                 var_300 = Proc_6_45_EADFB8("DUPLICATE KOT", &H14)
  loc_1BBC31E:                 Call Proc_251_96_10ABBB8(var_300, "D", &H28)
  loc_1BBC328:                 Print 1, var_2FC
  loc_1BBC33E:               Else
  loc_1BBC340:                 Print 1
  loc_1BBC346:               End If
  loc_1BBC346:             End If
  loc_1BBC34B:             Set var_E4 = Nothing
  loc_1BBC363:             var_13C = (Chr(&HF) + "** ")
  loc_1BBC36D:             var_160 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1BBC376:             var_17C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BBC37C:             Print 1, var_17C
  loc_1BBC390:             var_B8.MoveNext
  loc_1BBC397:             Print 1
  loc_1BBC39F:             Print 1
  loc_1BBC3A7:             Print 1
  loc_1BBC3AF:             Print 1
  loc_1BBC3D5:             var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1BBC3DB:             Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BBC3EA:             GoTo loc_1BBB352
  loc_1BBC3ED:           End If
  loc_1BBC3EF:           Close 1
  loc_1BBC3F9:           If (var_D8 <> vbNullString) Then
  loc_1BBC403:             Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BBC413:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BBC41F:           Else
  loc_1BBC42B:             Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F953B8
  loc_1BBC434:           End If
  loc_1BBC436:           Close 1
  loc_1BBC440:           If (MemVar_1F953BC = "Y") Then
  loc_1BBC45C:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BBC466:           Else
  loc_1BBC47F:             var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BBC486:           End If
  loc_1BBC489:         Else
  loc_1BBC494:           If (var_1AC = "3 INCH RUNNING PAPER (NORMAL PRINTER WITH EJECT)") Then
  loc_1BBC499:             Close 1
  loc_1BBC4A2:             Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BBC4A9:             var_B8.MoveFirst
  loc_1BBC4AE:             ' Referenced from:       1BBD3A1
  loc_1BBC4BD:             If Not(var_B8.EOF) Then
  loc_1BBC4C2:               var_96 = 0
  loc_1BBC4FD:               var_17C = 3
  loc_1BBC545:               var_184 = Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_2FC)
  loc_1BBC5E0:               var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, var_17C)) = "LAU") 'Variant
  loc_1BBC5EA:               var_2F8 = IIf(var_2E8, IIf((var_184 = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BBC5F3:               var_94 = CStr(var_2F8)
  loc_1BBC637:               If (var_96 = 0) Then
  loc_1BBC63C:                 Print 1
  loc_1BBC670:                 var_C4 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1BBC681:                 If (var_EC <> vbNullString) Then
  loc_1BBC6AA:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BBC6B0:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBC6C2:                 End If
  loc_1BBC6CA:                 If (var_F0 <> vbNullString) Then
  loc_1BBC6F3:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BBC6F9:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBC70B:                 End If
  loc_1BBC713:                 If (var_F4 <> vbNullString) Then
  loc_1BBC73C:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1BBC742:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBC754:                 End If
  loc_1BBC75C:                 If (var_F8 <> vbNullString) Then
  loc_1BBC785:                   var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1BBC78B:                   Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBC79D:                 End If
  loc_1BBC79F:                 Print 1
  loc_1BBC7E3:                 Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8(Me.LblRest.Caption, &H14), "D", &H28)
  loc_1BBC7ED:                 Print 1, var_300
  loc_1BBC82B:                 Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8(var_94, &H14), "D", &H28)
  loc_1BBC835:                 Print 1, var_184
  loc_1BBC84D:                 Print 1
  loc_1BBC855:                 Print 1
  loc_1BBC88E:                 Proc_6_39_E7D3A0(var_17C, CVar(var_B8.Fields.Item("VNo")), &H12)
  loc_1BBC8B0:                 var_13C = (Chr(&HF) + "KOT No.   :       ")
  loc_1BBC8BA:                 var_1CC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(CStr(var_17C), &HA, var_184)))
  loc_1BBC8C0:                 Print 1, Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C))
  loc_1BBC972:                 var_13C = (Chr(&HF) + "KOT Dt.   :       ")
  loc_1BBC979:                 var_17C = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")))), &HC)) 'String
  loc_1BBC97C:                 var_1BC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + var_17C)
  loc_1BBC985:                 var_1CC = (CVar(Proc_6_45_EADFB8(CStr(var_17C), &HA, Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME")))))) + " ")
  loc_1BBC98F:                 var_220 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, &H12))), 1, var_17C)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BBC995:                 Print 1, "* NC LOT *"
  loc_1BBC9EA:                 var_16C = var_B8.Fields.Item("Remarks")
  loc_1BBCA27:                 var_13C = (Chr(&HF) + "Remarks :       ")
  loc_1BBCA31:                 var_1BC = (CVar(Proc_6_45_EADFB8(var_F8, &H28)) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32)))
  loc_1BBCA38:                 var_1DC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32))), &HA, Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H32))) + Chr(&H12))
  loc_1BBCA3E:                 Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BBCA77:                 Set var_164 = Me.Label1
  loc_1BBCA7D:                 Call 0.Method_Proc_251_83_1BBE5E00 (2, var_16C)
  loc_1BBCACE:                 var_2FC = Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo")))
  loc_1BBCAEE:                 var_1BC = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA)))
  loc_1BBCAF7:                 var_1CC = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA))) + ":       ")
  loc_1BBCB01:                 var_220 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(var_2FC, 5)))
  loc_1BBCB07:                 Print 1, "* NC LOT *"
  loc_1BBCB4C:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBCB52:                 Print 1, CVar(var_16C)
  loc_1BBCB5F:               End If
  loc_1BBCB85:               var_160 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1BBCB91:               var_180 = "Qty"
  loc_1BBCB9F:               var_1BC = (Trim(CVar(var_16C)) + CVar(Proc_6_52_EAE084(var_180, 6)))
  loc_1BBCBA4:               var_B0 = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_180, 6))), &HA, Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA))))
  loc_1BBCBD1:               var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BBCBD7:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BBCBFA:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBCC00:               Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1BBCC13:               var_96 = (var_96 + 4)
  loc_1BBCC19:               var_BC.MoveFirst
  loc_1BBCC1E:               ' Referenced from:       1BBCFBF
  loc_1BBCC2D:               If Not(var_BC.EOF) Then
  loc_1BBCC66:                 var_188 = var_BC.Fields
  loc_1BBCC7D:                 Proc_6_39_E7D3A0(Chr(&H12), CVar(var_188.Item("qty")))
  loc_1BBCD20:                 var_17C = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_1BBCD39:                 var_240 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_180, 6)))))
  loc_1BBCD4F:                 var_2F8 = CVar(Proc_6_52_EAE084(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString)), 6, "* LOT *")) 'String
  loc_1BBCD52:                 var_334 = (&H12 + var_2F8)
  loc_1BBCDAB:                 var_13C = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Cancel").Value = "Y"), "Void", vbNullString))))
  loc_1BBCDB1:                 Print 1, Space(3)
  loc_1BBCDC4:                 var_96 = (var_96 + 1)
  loc_1BBCE00:                 If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BBCE43:                   var_13C = (Chr(&HF) + "(")
  loc_1BBCE4D:                   var_1BC = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BBCE56:                   var_1CC = (CVar(var_188.Item("qty")) + ")")
  loc_1BBCE5C:                   Print 1, Chr(&H12)
  loc_1BBCE7D:                   var_96 = (var_96 + 1)
  loc_1BBCE80:                 End If
  loc_1BBCE8A:                 If (&H12 = (&H45 - var_AA)) Then
  loc_1BBCEA3:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBCEA9:                   Print 1, Space(3)
  loc_1BBCEBB:                   Print 1, "Contd."
  loc_1BBCED3:                   Print 1, Chr(&HC)
  loc_1BBCEE2:                   var_98 = (var_98 + 1)
  loc_1BBCEF8:                   Call Proc_251_97_1200EA4(1, 0, &H28, var_306)
  loc_1BBCF17:                   Call Proc_251_96_10ABBB8(var_94, "B", &H28, var_180, var_306)
  loc_1BBCF21:                   Print 1, var_180
  loc_1BBCF30:                   var_96 = &H12
  loc_1BBCF49:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBCF4F:                   Print 1, Space(3)
  loc_1BBCF72:                   var_13C = (Chr(&HF) + CVar(var_B0))
  loc_1BBCF78:                   Print 1, Space(3)
  loc_1BBCF9B:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBCFA1:                   Print 1, Space(3)
  loc_1BBCFB4:                   var_96 = (var_96 + 4)
  loc_1BBCFB7:                 End If
  loc_1BBCFBA:                 var_BC.MoveNext
  loc_1BBCFBF:                 GoTo loc_1BBCC1E
  loc_1BBCFC2:               End If
  loc_1BBCFCC:               If (var_96 < (&H45 - var_AA)) Then
  loc_1BBCFCF:                 ' Referenced from:       1BBCFF0
  loc_1BBCFD9:                 If (var_96 = (&H45 - var_AA)) Then
  loc_1BBCFE1:                   Print 1, vbNullString
  loc_1BBCFED:                   var_96 = (var_96 + 1)
  loc_1BBCFF0:                   GoTo loc_1BBCFCF
  loc_1BBCFF3:                 End If
  loc_1BBCFF3:               End If
  loc_1BBD009:               var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBD00F:               Print 1, Space(3)
  loc_1BBD065:               var_184 = Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), var_96, var_96, var_96), &H14, var_96)
  loc_1BBD070:               var_13C = (Chr(&HF) + "Waiter Name  :       ")
  loc_1BBD07A:               var_1BC = (Space(3) + CVar(var_184))
  loc_1BBD080:               Print 1, CVar(var_188.Item("qty"))
  loc_1BBD0C4:               var_13C = (Chr(&HF) + "***  ")
  loc_1BBD0CB:               var_17C = Space(3) & Trim(var_CC) 
  loc_1BBD0DA:               Print 1, var_17C & "  ***"
  loc_1BBD135:               var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BBD143:               unk_5921F8.Execute CStr(var_160), var_17C, -1
  loc_1BBD1A4:               If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BBD1D5:                 Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("Changed KOT", &H14, var_188), "D", &H28, var_2FC)
  loc_1BBD1DF:                 Print 1, var_2FC
  loc_1BBD1F5:               Else
  loc_1BBD24B:                 unk_5921F8.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BBD2A9:                 If (Proc_6_38_E69628(CVar(var_188.Fields.Item(0)), var_188, 1) = "Y") Then
  loc_1BBD2DA:                   Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1BBD2E4:                   Print 1, var_2FC
  loc_1BBD2FA:                 Else
  loc_1BBD2FC:                   Print 1
  loc_1BBD302:                 End If
  loc_1BBD302:               End If
  loc_1BBD307:               Set var_E4 = Nothing
  loc_1BBD31F:               var_13C = (Chr(&HF) + "** ")
  loc_1BBD329:               var_160 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1BBD332:               var_17C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BBD338:               Print 1, var_17C
  loc_1BBD34C:               var_B8.MoveNext
  loc_1BBD353:               Print 1
  loc_1BBD35B:               Print 1
  loc_1BBD363:               Print 1
  loc_1BBD36B:               Print 1
  loc_1BBD373:               Print 1
  loc_1BBD37B:               Print 1
  loc_1BBD383:               Print 1
  loc_1BBD38B:               Print 1
  loc_1BBD393:               Print 1
  loc_1BBD39B:               Print 1
  loc_1BBD3A1:               GoTo loc_1BBC4AE
  loc_1BBD3A4:             End If
  loc_1BBD3A6:             Close 1
  loc_1BBD3B0:             If (var_D8 <> vbNullString) Then
  loc_1BBD3BA:               Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BBD3CA:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BBD3D6:             Else
  loc_1BBD3E2:               Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F953B8
  loc_1BBD3EB:             End If
  loc_1BBD3ED:             Close 1
  loc_1BBD3F7:             If (MemVar_1F953BC = "Y") Then
  loc_1BBD413:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BBD41D:             Else
  loc_1BBD436:               var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BBD43D:             End If
  loc_1BBD440:           Else
  loc_1BBD44B:             If (var_1AC = "3 INCH RUNNING PAPER (THERMAL PRINTER)") Then
  loc_1BBD450:               Close 1
  loc_1BBD459:               Open "C:\reptmp\TEXTFILE_C.TXT" For Output As 1 Len = &HFF
  loc_1BBD460:               var_B8.MoveFirst
  loc_1BBD465:               ' Referenced from:         1BBE497
  loc_1BBD474:               If Not(var_B8.EOF) Then
  loc_1BBD479:                 var_96 = 0
  loc_1BBD597:                 var_2E8 = (Ucase(Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3)) = "LAU") 'Variant
  loc_1BBD5A1:                 var_2F8 = IIf(var_2E8, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *"), IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *"))
  loc_1BBD5AA:                 var_94 = CStr(var_2F8)
  loc_1BBD616:                 var_C4 = Replace(CStr(Space(&H2A)), " ", "-", 1, -1, 0)
  loc_1BBD625:                 If (var_96 = 0) Then
  loc_1BBD62A:                   Print 1
  loc_1BBD638:                   If (var_EC <> vbNullString) Then
  loc_1BBD661:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_EC, &H28)))
  loc_1BBD667:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBD679:                   End If
  loc_1BBD681:                   If (var_F0 <> vbNullString) Then
  loc_1BBD6AA:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F0, &H28)))
  loc_1BBD6B0:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBD6C2:                   End If
  loc_1BBD6CA:                   If (var_F4 <> vbNullString) Then
  loc_1BBD6F3:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F4, &H28)))
  loc_1BBD6F9:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBD70B:                   End If
  loc_1BBD713:                   If (var_F8 <> vbNullString) Then
  loc_1BBD73C:                     var_160 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(var_F8, &H28)))
  loc_1BBD742:                     Print 1, Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96)))
  loc_1BBD754:                   End If
  loc_1BBD756:                   Print 1
  loc_1BBD785:                   var_1BC = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BBD797:                   var_1DC = Space(CLng((Mid(Trim(CVar(Proc_6_38_E69628(CVar(var_B8.Fields.Item("ShortName")), 1, var_96))), 1, 3) / 2)))
  loc_1BBD7C8:                   var_2D8 = (42 - Len(Trim(CVar(Me.LblRest))))
  loc_1BBD7DA:                   var_2F8 = Space(CLng((IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *") / 2)))
  loc_1BBD7F2:                   var_1F0 = (Chr(&HF) + var_1DC)
  loc_1BBD7F9:                   var_250 = (CVar(var_B8.Fields.Item("NCKOT")) + Trim(CVar(Me.LblRest)))
  loc_1BBD800:                   var_334 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *") + var_2F8)
  loc_1BBD807:                   var_358 = (IIf((var_BC.Fields.Item(2).Value = (Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y")), "Void", vbNullString) + Chr(&H12))
  loc_1BBD80D:                   Print 1, var_358
  loc_1BBD85B:                   var_17C = (42 - Len(Trim(var_94)))
  loc_1BBD88E:                   var_250 = (42 - Len(Trim(var_94)))
  loc_1BBD897:                   var_278 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96)) = "Y"), "* NC LOT *", "* LOT *") / 2)
  loc_1BBD8B8:                   var_1DC = (Chr(&HF) + Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))))
  loc_1BBD8C2:                   var_1F0 = (var_1DC + CVar(var_94))
  loc_1BBD8C9:                   var_2C8 = (CVar(var_B8.Fields.Item("NCKOT")) + Space(CLng(var_278)))
  loc_1BBD8D0:                   var_2E8 = (Len(Trim(CVar(Me.LblRest))) + Chr(&H12))
  loc_1BBD8D6:                   Print 1, (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_96) = "Y"), "* NC KOT *", "* KOT *") / 2)
  loc_1BBD8FA:                   Print 1
  loc_1BBD902:                   Print 1
  loc_1BBD93B:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("VNo")))
  loc_1BBD96A:                   var_13C = (Chr(&HF) + "KOT No.   :         ")
  loc_1BBD974:                   var_1CC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)))
  loc_1BBD97B:                   var_1F0 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + Chr(&H12))
  loc_1BBD981:                   Print 1, CVar(var_B8.Fields.Item("NCKOT"))
  loc_1BBDA44:                   var_13C = (Chr(&HF) + "KOT Dt.   :         ")
  loc_1BBDA4E:                   var_1BC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)))
  loc_1BBDA57:                   var_1CC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + " ")
  loc_1BBDA61:                   var_220 = (Space(CLng((Len(Trim(CVar(Me.LblRest))) / 2))) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VTIME"))), 8)))
  loc_1BBDA68:                   var_250 = (Trim(var_94) + Chr(&H12))
  loc_1BBDA6E:                   Print 1, IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("VDate")), &H12), &HC)) = "Y"), "* NC LOT *", "* LOT *")
  loc_1BBDAC7:                   var_16C = var_B8.Fields.Item("Remarks")
  loc_1BBDB04:                   var_13C = (Chr(&HF) + "Remarks :         ")
  loc_1BBDB0E:                   var_1BC = (Trim(var_94) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_16C)), &H20)))
  loc_1BBDB15:                   var_1DC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + Chr(&H12))
  loc_1BBDB1B:                   Print 1, CVar(var_B8.Fields.Item("VTIME"))
  loc_1BBDB54:                   Set var_164 = Me.Label1
  loc_1BBDB5A:                   Call 0.Method_Proc_251_83_1BBE5E00 (2, var_16C)
  loc_1BBDB80:                   var_2FC = Proc_6_45_EADFB8(CStr(Trim(CVar(var_16C))), &HA)
  loc_1BBDBF5:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_B8.Fields.Item("GuarAtt")))
  loc_1BBDC26:                   var_1BC = (Chr(&HF) + CVar(var_2FC))
  loc_1BBDC2F:                   var_1CC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + ":         ")
  loc_1BBDC39:                   var_220 = (Chr(&H12) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("TableNo"))), 5)))
  loc_1BBDC40:                   var_250 = (Trim(var_94) + Space(&HA))
  loc_1BBDC49:                   var_278 = (IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), var_2FC) = "Y"), "* NC LOT *", "* LOT *") + "Covers:         ")
  loc_1BBDC53:                   var_2E8 = (var_278 + CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), 7)))
  loc_1BBDC5A:                   var_334 = ((IIf((Proc_6_38_E69628(CVar(var_B8.Fields.Item("NCKOT")), &H12) = "Y"), "* NC KOT *", "* KOT *") / 2) + Chr(&H12))
  loc_1BBDC60:                   Print 1, IIf((var_BC.Fields.Item("GuarAtt").Value = var_94), "Void", vbNullString)
  loc_1BBDCCC:                   var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBDCD3:                   var_17C = (CVar(var_16C) + Chr(&H12))
  loc_1BBDCD9:                   Print 1, CVar(var_2FC)
  loc_1BBDCEA:                 End If
  loc_1BBDD10:                 var_160 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Space(3))
  loc_1BBDD2A:                 var_1BC = (Chr(&H12) + CVar(Proc_6_52_EAE084("Qty", 6)))
  loc_1BBDD36:                 var_1CC = Space(3)
  loc_1BBDD3E:                 var_1DC = (CVar(Proc_6_45_EADFB8(CStr(Len(Trim(CVar(Me.LblRest)))), &HA)) + var_1CC)
  loc_1BBDD58:                 var_220 = (CVar(var_B8.Fields.Item("TableNo")) + CVar(Proc_6_52_EAE084("Rate", 6)))
  loc_1BBDDA1:                 var_13C = (Chr(&HF) + CVar(CStr(Trim(var_94))))
  loc_1BBDDA8:                 var_17C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BBDDAE:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BBDDE2:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBDDE9:                 var_17C = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H13)) + Chr(&H12))
  loc_1BBDDEF:                 Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BBDE06:                 var_96 = (var_96 + 4)
  loc_1BBDE0C:                 var_BC.MoveFirst
  loc_1BBDE11:                 ' Referenced from:         1BBE099
  loc_1BBDE20:                 If Not(var_BC.EOF) Then
  loc_1BBDE59:                   var_188 = var_BC.Fields
  loc_1BBDE70:                   Proc_6_39_E7D3A0(var_1CC, CVar(var_188.Item("qty")))
  loc_1BBDEBB:                   Proc_6_39_E7D3A0(Len(Trim(CVar(Me.LblRest))), CVar(var_BC.Fields.Item("Rate")), 1)
  loc_1BBDECA:                   var_200 = "0.00"
  loc_1BBDF05:                   var_17C = (CVar(Proc_6_45_EADFB8(CStr(var_BC.Fields.Item("ItemName").Value), &H13, 1, 1)) + Space(3))
  loc_1BBDF1E:                   var_240 = (1 + CVar(Proc_6_52_EAE084(CStr(Format(var_1CC, "0.00")), 6, CVar(Proc_6_52_EAE084("Qty", 6)))))
  loc_1BBDF32:                   var_278 = (Space(&HA) + Space(3))
  loc_1BBDF4B:                   var_334 = (&H12 + CVar(Proc_6_52_EAE084(CStr(Format(Len(Trim(CVar(Me.LblRest))), var_200)), 6, var_278)))
  loc_1BBDFB1:                   var_13C = (Chr(&HF) + CVar(CStr(IIf((var_BC.Fields.Item("Rate").Value = var_200), "Void", vbNullString))))
  loc_1BBDFB8:                   var_17C = (Space(3) + Chr(&H12))
  loc_1BBDFBE:                   Print 1, CVar(Proc_6_52_EAE084("Qty", 6))
  loc_1BBDFD5:                   var_96 = (var_96 + 1)
  loc_1BBE011:                   If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")), &H12) <> vbNullString) Then
  loc_1BBE054:                     var_13C = (Chr(&HF) + "(")
  loc_1BBE05E:                     var_1BC = (Space(3) + CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description")))))
  loc_1BBE067:                     var_1CC = (CVar(var_188.Item("qty")) + ")")
  loc_1BBE06D:                     Print 1, var_1CC
  loc_1BBE08E:                     var_96 = (var_96 + 1)
  loc_1BBE091:                   End If
  loc_1BBE094:                   var_BC.MoveNext
  loc_1BBE099:                   GoTo loc_1BBDE11
  loc_1BBE09C:                 End If
  loc_1BBE0BF:                 var_13C = (Chr(&HF) + CVar(var_C4))
  loc_1BBE0C6:                 var_17C = (Space(3) + Chr(&H12))
  loc_1BBE0CC:                 Print 1, CVar(Proc_6_38_E69628(CVar(var_BC.Fields.Item("Description"))))
  loc_1BBE13E:                 var_13C = (Chr(&HF) + "Waiter Name  :         ")
  loc_1BBE148:                 var_1BC = (Space(3) + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B8.Fields.Item("WaiterName")), &H12), &H14)))
  loc_1BBE14F:                 var_1DC = (CVar(var_188.Item("qty")) + Chr(&H12))
  loc_1BBE155:                 Print 1, "0.00"
  loc_1BBE19D:                 var_1BC = Chr(&H12)
  loc_1BBE1AA:                 var_13C = (Chr(&HF) + "***  ")
  loc_1BBE1B1:                 var_17C = Space(3) & Trim(var_CC) 
  loc_1BBE1BD:                 var_1CC = ("  ***" + var_1BC)
  loc_1BBE1C7:                 Print 1, var_17C & Chr(&H12)
  loc_1BBE226:                 var_160 = "Select Count(Distinct Printed) from kot where docid='" & Me.Fields.Item("SearchCode").Value & "' AND (PRINTED IS NULL OR PRINTED='' OR PRINTED='Y')" 
  loc_1BBE234:                 unk_5921F8.Execute CStr(var_160), var_17C, -1
  loc_1BBE295:                 If (var_188.Fields.Item(0).Value > 1) Then
  loc_1BBE2C6:                   Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("Changed KOT", &H14), "D", &H28)
  loc_1BBE2D0:                   Print 1, var_2FC
  loc_1BBE2E6:                 Else
  loc_1BBE33C:                   unk_5921F8.Execute CStr("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"), var_17C, -1
  loc_1BBE39A:                   If (Proc_6_38_E69628(CVar(var_188.Fields.Item(0)), var_188, var_2FC) = "Y") Then
  loc_1BBE3CB:                     Call Proc_251_96_10ABBB8(Proc_6_45_EADFB8("DUPLICATE KOT", &H14), "D", &H28)
  loc_1BBE3D5:                     Print 1, var_2FC
  loc_1BBE3EB:                   Else
  loc_1BBE3ED:                     Print 1
  loc_1BBE3F3:                   End If
  loc_1BBE3F3:                 End If
  loc_1BBE3F8:                 Set var_E4 = Nothing
  loc_1BBE410:                 var_13C = (Chr(&HF) + "** ")
  loc_1BBE41A:                 var_160 = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value + CVar(MemVar_1F95220))
  loc_1BBE423:                 var_17C = ("Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'" + " **")
  loc_1BBE429:                 Print 1, var_17C
  loc_1BBE43D:                 var_B8.MoveNext
  loc_1BBE444:                 Print 1
  loc_1BBE44C:                 Print 1
  loc_1BBE454:                 Print 1
  loc_1BBE45C:                 Print 1
  loc_1BBE482:                 var_160 = (Chr(&H1B) + Chr(&H6D))
  loc_1BBE488:                 Print 1, "Select Printed from kot where docid='" & Me.Fields.Item("SearchCode").Value & "'"
  loc_1BBE497:                 GoTo loc_1BBD465
  loc_1BBE49A:               End If
  loc_1BBE49C:               Close 1
  loc_1BBE4A6:               If (var_D8 <> vbNullString) Then
  loc_1BBE4B0:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BBE4C0:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & var_D8
  loc_1BBE4CC:               Else
  loc_1BBE4D3:                 Open "C:\reptmp\KOTPrint_C.BAT" For Output As 1 Len = &HFF
  loc_1BBE4E3:                 Print 1, "TYPE C:\reptmp\TEXTFILE_C.TXT>" & MemVar_1F953B8
  loc_1BBE4EC:               End If
  loc_1BBE4EE:               Close 1
  loc_1BBE4F8:               If (MemVar_1F953BC = "Y") Then
  loc_1BBE514:                 var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.PIF", 0)) 'Variant
  loc_1BBE51E:               Else
  loc_1BBE537:                 var_A8 = CVar(Shell("C:\reptmp\KOTPrint_C.BAT", 0)) 'Variant
  loc_1BBE53E:               End If
  loc_1BBE53E:             End If
  loc_1BBE53E:           End If
  loc_1BBE53E:         End If
  loc_1BBE53E:       End If
  loc_1BBE53E:     End If
  loc_1BBE541:   Else
  loc_1BBE58B:     MsgBox("Please Check Printer Setting of Central KOT For " & var_C0.Fields.Item("Name").Value & ".", &H40, var_17C, var_1BC, Chr(&H12))
  loc_1BBE5A6:   End If
  loc_1BBE5A9:   var_C0.MoveNext
  loc_1BBE5AE:   GoTo loc_1BB952B
  loc_1BBE5B1: End If
  loc_1BBE5B6: Set var_B8 = Nothing
  loc_1BBE5BE: Set var_BC = Nothing
  loc_1BBE5C6: Set var_C0 = Nothing
  loc_1BBE5CE: Proc_251_83_1BBE5E0 = &HFF
  loc_1BBE5D4: ' Referenced from: 1BB908C
  loc_1BBE5D4: Proc_6_60_E63754(var_2FC, var_188)
  loc_1BBE5D9: Proc_251_83_1BBE5E0 = var_200
End Sub

Public Sub Proc_251_84_EFACAC(arg_C) 'EFACAC
  'Data Table: 5921DC
  Dim var_8C As Recordset15
  loc_EFABD5: Set var_8C = arg_C 
  loc_EFABFD: var_8C.Fields.Append "mLine", &HC8, 1
  loc_EFAC29: var_8C.Fields.Append "Detail", &HC8, &H32
  loc_EFAC55: var_8C.Fields.Append "Mark", &HC8, 1
  loc_EFAC65: var_8C.CursorType = 3
  loc_EFAC72: var_8C.LockType = 3
  loc_EFAC91: var_8C.Open var_A0, var_B0, -1
  loc_EFAC98: Set var_8C = Nothing 
  loc_EFAC9F: Set var_88 = arg_C 
  loc_EFACA3: Proc_251_84_EFACAC = -1
End Sub

Public Sub Proc_251_85_F14964(arg_C, arg_10, arg_14, arg_18) 'F14964
  'Data Table: 5921DC
  Dim var_88 As Recordset15
  Dim var_98 As Variant
  Dim var_A8 As String
  loc_F14873: Set var_88 = arg_C 
  loc_F14882: var_88.AddNew var_98, var_A8
  loc_F148BA: var_88.Fields.Item("mLine").Value = Trim(arg_10)
  loc_F148FC: var_88.Fields.Item("Detail").Value = Trim(arg_14)
  loc_F1490E: var_98 = arg_18
  loc_F14922: var_A8 = "Mark"
  loc_F1493E: var_88.Fields.Item(var_A8).Value = Trim(var_98)
  loc_F14958: var_88.Update var_98, var_A8
  loc_F1495F: Set var_88 = Nothing 
  loc_F14963: Exit Sub
End Sub

Public Sub Proc_251_86_1573664
  'Data Table: 5921DC
  Dim var_D0 As String
  Dim var_108 As Variant
  Dim Me As Recordset15
  Dim var_D4 As Variant
  Dim var_E8 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim unk_5921F8 As Connection15
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
  loc_1572604: On Error Goto loc_157365E
  loc_157260A: MemVar_1F953C4 = "N"
  loc_1572611: MemVar_1F953C8 = "N"
  loc_1572618: MemVar_1F953CC = "K"
  loc_1572623: var_D0 = "Select DISTINCT k.Vtime,K.VNo,K.VDate,W.name as WaiterName,k.RoomNo as TableNo,K.Remarks " & "From (KOT K Left Join Waiter W on K.Waiter=W.Code) "
  loc_1572668: var_88 = CStr(CVar(var_D0 & "Where K.DocID='") & Me.Fields.Item("SearchCode").Value & "'")
  loc_1572687: var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15726C5: var_8C = CStr(var_108 & Me.Fields.Item("SearchCode").Value & "'")
  loc_15726EE: var_108 = CVar("Select distinct(Depart.ShortName),Depart.Name,Depart.Code,Depart.Printer From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_157270E: var_E8 = Me.Fields.Item("SearchCode")
  loc_157272B: var_D0 = CStr(var_108 & var_E8.Value & "'")
  loc_1572735: unk_5921F8.Execute var_D0, var_158, -1
  loc_1572740: Set var_BC = var_15C
  loc_1572764: If (var_88 = vbNullString) Then
  loc_1572767:   Exit Sub
  loc_1572768: End If
  loc_1572770: If (var_8C = vbNullString) Then
  loc_1572773:   Exit Sub
  loc_1572774: End If
  loc_1572792: Set var_D4 = Me.Txt
  loc_1572798: Call 0.Method_Proc_251_86_15736640 (CInt(4), var_E8, var_D0, "SELECT DISTINCT DOCID FROM KOT WHERE ROOMNO='")
  loc_15727A0: var_F8 = var_E8.Text
  loc_15727A9: var_160 = -1 & var_D0
  loc_15727B9: unk_5921F8.Execute var_160 & "' AND CONTRADOCID IS NULL", var_15C, var_15C
  loc_15727F0: If (var_15C.RecordCount = 1) Then
  loc_15727F6:   var_C8 = "New Order"
  loc_15727FC: Else
  loc_1572803:   Set var_D4 = Me.LblState
  loc_1572811:   var_C8 = var_D4.Caption
  loc_1572817: End If
  loc_157282D: unk_5921F8.Execute var_88, var_F8, -1
  loc_1572838: Set var_B4 = var_D4
  loc_1572841: ' Referenced from: 1573642
  loc_1572850: If Not(var_BC.EOF) Then
  loc_1572869:   unk_5921F8.Execute "SELECT KOTPrinting FROM Enviro", var_F8, -1
  loc_157288C:   var_D4 = var_D4.Fields
  loc_15728C7:   If (Trim(CVar(Proc_6_38_E69628(CVar(var_D4.Item("KOTPrinting")), var_D4))) = "Seperate for All Kitchen") Then
  loc_15728D1:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_157294A:     var_1C0 = var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value & "'" & " AND I.Kitchen='" 
  loc_1572986:     var_8C = CStr(var_1C0 & var_BC.Fields.Item("Code").Value & "' and K.VoidYN<>'Y'")
  loc_15729B4:   Else
  loc_15729BB:     var_108 = CVar("Select K.Sno,I.Name as ItemName,K.Qty, Depart.ShortName,Depart.Code From (KOT K Left Join  ItemMast I on K.Item=I.Code And K.ItemRestCode=I.RestCode) LEFT JOIN Depart ON I.Kitchen=Depart.Code " & "Where K.DocID='") 'String
  loc_15729D3:     var_D4 = Me.Fields
  loc_15729E3:     var_F8 = var_D4.Item("SearchCode").Value
  loc_15729F4:     var_138 = var_108 & var_F8 & "' and K.VoidYN<>'Y'" 
  loc_15729F9:     var_8C = CStr(var_138)
  loc_1572A0E:   End If
  loc_1572A24:   unk_5921F8.Execute var_8C, var_F8, -1
  loc_1572A2F:   Set var_B8 = var_D4
  loc_1572A4C:   If (var_B8.RecordCount > 0) Then
  loc_1572A51:     Close 1
  loc_1572A6A:     var_160 = "C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition)
  loc_1572A78:     Open var_160 & ".TXT" For Output As 1 Len = &HFF
  loc_1572A88:     var_B4.MoveFirst
  loc_1572A8D:     ' Referenced from: 1573425
  loc_1572A9C:     If Not(var_B4.EOF) Then
  loc_1572AAC:       var_90 = "* KOT *"
  loc_1572AB5:       If (0 = 0) Then
  loc_1572ABA:         Print 1
  loc_1572AEE:         var_C0 = Replace(CStr(Space(&H28)), " ", "-", 1, -1, 0)
  loc_1572B21:         Call Proc_251_96_10ABBB8(Me.LblRest.Caption, "D", &H28, var_21C)
  loc_1572B2B:         Print 1, var_21C
  loc_1572B51:         Call Proc_251_96_10ABBB8(var_90, "D", &H28, var_160)
  loc_1572B5B:         Print 1, var_160
  loc_1572B6A:         var_92 = &H12
  loc_1572B6F:         Print 1
  loc_1572B77:         Print 1
  loc_1572BB0:         Proc_6_39_E7D3A0(var_138, CVar(var_B4.Fields.Item("VNo")), var_92, 1)
  loc_1572BD2:         var_108 = (Chr(&HF) + "KOT No.   : ")
  loc_1572BDC:         var_180 = (var_108 + CVar(Proc_6_45_EADFB8(CStr(var_138), &HA, var_92)))
  loc_1572BE2:         Print 1, var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value
  loc_1572C1D:         var_D4 = var_B4.Fields
  loc_1572C94:         var_108 = (Chr(&HF) + "KOT Dt.   : ")
  loc_1572C9E:         var_158 = (var_108 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_D4.Item("VDate")), var_D4), &HC)))
  loc_1572CA7:         var_180 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_D4.Item("VDate")), var_D4), &HC))), &HA, var_92)) + " ")
  loc_1572CB1:         var_1E8 = (var_108 & Me.Fields.Item("SearchCode").Value & "' AND Depart.Code='" & var_BC.Fields.Item("Code").Value + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("VTIME"))), 8)))
  loc_1572CB7:         Print 1, var_BC.Fields.Item("Code").Value
  loc_1572D0C:         var_E8 = var_B4.Fields.Item("Remarks")
  loc_1572D49:         var_108 = (Chr(&HF) + "Remarks : ")
  loc_1572D53:         var_158 = (var_108 + CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8)), &H32)))
  loc_1572D5A:         var_1A0 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_E8)), &H32))), &HA, var_92)) + Chr(&H12))
  loc_1572D60:         Print 1, CVar(var_B4.Fields.Item("VTIME"))
  loc_1572D99:         Set var_D4 = Me.Label1
  loc_1572D9F:         Call 0.Method_Proc_251_86_15736640 (2, var_E8)
  loc_1572E34:         var_158 = (Chr(&HF) + CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_E8))), &HA)))
  loc_1572E3D:         var_180 = (CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_45_EADFB8(CStr(Trim(CVar(var_E8))), &HA))), &HA, var_92)) + ": ")
  loc_1572E44:         var_218 = CVar(Proc_6_45_EADFB8(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000")), 5, 1)) 'String
  loc_1572E47:         var_238 = (Chr(&H12) + var_218)
  loc_1572E4D:         Print 1, var_238
  loc_1572E98:         var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1572E9E:         Print 1, CVar(var_E8)
  loc_1572EAB:       End If
  loc_1572ED1:       var_118 = (CVar(Proc_6_45_EADFB8("ITEM NAME", &H19)) + Space(3))
  loc_1572EDD:       var_160 = "Qty"
  loc_1572EEB:       var_158 = (1 + CVar(Proc_6_52_EAE084(var_160, 6, Trim(CVar(var_E8)))))
  loc_1572EF0:       var_AC = CStr(CVar(Proc_6_45_EADFB8(CStr(CVar(Proc_6_52_EAE084(var_160, 6, Trim(CVar(var_E8))))), &HA, var_92)))
  loc_1572F1D:       var_108 = (Chr(&HF) + CVar(var_AC))
  loc_1572F23:       Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1572F46:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1572F4C:       Print 1, CVar(Proc_6_45_EADFB8("ITEM NAME", &H19))
  loc_1572F5F:       var_92 = (var_92 + 4)
  loc_1572F65:       var_B8.MoveFirst
  loc_1572F6A:       ' Referenced from: 15732AF
  loc_1572F79:       If Not(var_B8.EOF) Then
  loc_1572FC9:         Proc_6_39_E7D3A0(Chr(&H12), CVar(var_B8.Fields.Item("qty")))
  loc_1573093:         var_300 = IIf((var_B8.Fields.Item("Cancel").Value = "Y"), "Void", IIf((var_B8.Fields.Item("Cancel").Value = "F"), "Free", vbNullString))
  loc_15730BD:         var_138 = (CVar(Proc_6_45_EADFB8(CStr(var_B8.Fields.Item("ItemName").Value), &H19, 1)) + Space(3))
  loc_15730D3:         var_1E8 = CVar(Proc_6_52_EAE084(CStr(Format(Chr(&H12), "0.00")), 6, CVar(Proc_6_52_EAE084(var_160, 6, Trim(CVar(var_B8.Fields.Item("ItemName"))))))) 'String
  loc_15730D6:         var_1F8 = (1 + var_1E8)
  loc_15730EC:         var_314 = CVar(Proc_6_52_EAE084(CStr(var_300), 6, Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("TableNo")))), "000"))) 'String
  loc_15730EF:         var_324 = (var_92 + var_314)
  loc_1573154:         var_108 = (Chr(&HF) + CVar(CStr(var_324)))
  loc_157315A:         Print 1, Space(3)
  loc_157316D:         var_92 = (var_92 + 1)
  loc_157317A:         If (var_92 = (&H45 - var_A6)) Then
  loc_1573193:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1573199:           Print 1, Space(3)
  loc_15731AB:           Print 1, "Contd."
  loc_15731C3:           Print 1, Chr(&HC)
  loc_15731D2:           var_94 = (var_94 + 1)
  loc_15731E8:           Call Proc_251_97_1200EA4(1, 0, &H28, var_21E)
  loc_1573207:           Call Proc_251_96_10ABBB8(var_90, "B", &H28, var_160, var_21E)
  loc_1573211:           Print 1, var_160
  loc_1573220:           var_92 = &H12
  loc_1573239:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_157323F:           Print 1, Space(3)
  loc_1573262:           var_108 = (Chr(&HF) + CVar(var_AC))
  loc_1573268:           Print 1, Space(3)
  loc_157328B:           var_108 = (Chr(&HF) + CVar(var_C0))
  loc_1573291:           Print 1, Space(3)
  loc_15732A4:           var_92 = (var_92 + 4)
  loc_15732A7:         End If
  loc_15732AA:         var_B8.MoveNext
  loc_15732AF:         GoTo loc_1572F6A
  loc_15732B2:       End If
  loc_15732BC:       If (var_92 < (&H45 - var_A6)) Then
  loc_15732BF:         ' Referenced from: 15732E0
  loc_15732C9:         If (var_92 = (&H45 - var_A6)) Then
  loc_15732D1:           Print 1, vbNullString
  loc_15732DD:           var_92 = (var_92 + 1)
  loc_15732E0:           GoTo loc_15732BF
  loc_15732E3:         End If
  loc_15732E3:       End If
  loc_15732F9:       var_108 = (Chr(&HF) + CVar(var_C0))
  loc_15732FF:       Print 1, Space(3)
  loc_1573360:       var_108 = (Chr(&HF) + "Waiter Name  : ")
  loc_1573367:       var_138 = CVar(Proc_6_45_EADFB8(Proc_6_38_E69628(CVar(var_B4.Fields.Item("WaiterName")), var_92, var_92, var_92), &H14, var_92)) 'String
  loc_157336A:       var_158 = (Space(3) + var_138)
  loc_1573370:       Print 1, CVar(var_B8.Fields.Item("qty"))
  loc_15733B4:       var_108 = (Chr(&HF) + "***  ")
  loc_15733BB:       var_138 = Space(3) & Trim(var_C8) 
  loc_15733C4:       var_158 = var_138 & "  ***" 
  loc_15733CA:       Print 1, var_158
  loc_15733DF:       Print 1
  loc_15733FA:       var_108 = (Chr(&HF) + "** A Analysis Software **")
  loc_1573400:       Print 1, Space(3)
  loc_1573410:       var_B4.MoveNext
  loc_1573417:       Print 1
  loc_157341F:       Print 1
  loc_1573425:       GoTo loc_1572A8D
  loc_1573428:     End If
  loc_157342A:     Close 1
  loc_1573465:     If (Proc_6_38_E69628(CVar(var_BC.Fields.Item("Printer")), 1) <> vbNullString) Then
  loc_157348D:       Open "C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT" For Output As 1 Len = &HFF
  loc_15734EB:       Print 1, CVar("TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>") & var_BC.Fields.Item("Printer").Value
  loc_157350B:     Else
  loc_1573535:       Print 1, "TYPE C:\reptmp\TEXTFILE_" & CStr(var_BC.AbsolutePosition) & ".TXT>" & MemVar_1F953B8
  loc_1573546:     End If
  loc_1573548:     Close 1
  loc_1573552:     If (MemVar_1F953BC = "Y") Then
  loc_1573584:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".PIF"), 0)) 'Variant
  loc_1573595:     Else
  loc_15735C4:       var_A4 = CVar(Shell(CVar("C:\reptmp\KOTPrint_" & CStr(var_BC.AbsolutePosition) & ".BAT"), 0)) 'Variant
  loc_15735D2:     End If
  loc_15735D5:   Else
  loc_157361F:     MsgBox("Please Check Printer Setting of " & var_BC.Fields.Item("Name").Value & ".", &H40, var_138, var_158, Chr(&H12))
  loc_157363A:   End If
  loc_157363D:   var_BC.MoveNext
  loc_1573642:   GoTo loc_1572841
  loc_1573645: End If
  loc_157364A: Set var_B4 = Nothing
  loc_1573652: Set var_B8 = Nothing
  loc_157365A: Set var_BC = Nothing
  loc_157365D: Exit Sub
  loc_157365E: ' Referenced from: 1572604
  loc_157365E: Proc_6_60_E63754(var_92)
  loc_1573663: Exit Sub
End Sub

Public Sub Proc_251_87_16D3768
  'Data Table: 5921DC
  Dim var_94 As Variant
  Dim var_A8 As Variant
  Dim Me As Variant
  Dim var_A4 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_108 As String
  Dim unk_5921F8 As Connection15
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
  loc_16D1D8C: On Error Goto loc_16D3762
  loc_16D1D9E: Me.FGrid1.Visible = False
  loc_16D1DB2: Me.LblPendingKot.Visible = False
  loc_16D1DD1: If (Me.RecordCount > 0) Then
  loc_16D1E13:   var_E4 = "Select K.*,R.name as RName From KOT K left join RoomMast R on R.Type=K.RoomType and R.Code=K.RoomNo Where K.Docid='" & Me.Fields.Item("DocID").Value 
  loc_16D1E2A:   unk_5921F8.Execute CStr(var_E4 & "' order by K.Sno"), var_128, -1
  loc_16D1E35:   Set var_AC = var_12C
  loc_16D1E52:   Set var_130 = var_AC 
  loc_16D1E8F:   Set var_12C = Me.Txt
  loc_16D1E95:   Call 0.Method_Proc_251_87_16D37680 (CInt(3), var_134)
  loc_16D1E9D:   var_134.Text = CStr(var_130.Fields.Item("DocID").Value)
  loc_16D1ECD:   var_C4 = var_130.Fields.Item("vType")
  loc_16D1ED5:   var_D4 = var_C4.Value
  loc_16D1EFB:   var_A4 = 0
  loc_16D1F2D:   var_140 = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "') and V_Type='"
  loc_16D1F47:   unk_5921F8.Execute var_140 & CStr(var_D4) & "'", var_D4, -1
  loc_16D1F4F:   var_A8 = var_A8.Fields
  loc_16D1F57:   var_A4 = var_C4.Item(var_C4)
  loc_16D1F5F:   var_12C = var_12C.Value
  loc_16D1F6E:   global_260 = CStr(var_E4)
  loc_16D1FCC:   Set var_12C = Me.Txt
  loc_16D1FD2:   Call 0.Method_Proc_251_87_16D37680 (CInt(0), var_134, CStr(var_130.Fields.Item("VNo").Value))
  loc_16D1FDA:   var_134.Text = var_E4
  loc_16D201B:   var_E4 = "DD/MMM/YYYY"
  loc_16D2042:   Set var_12C = Me.Txt
  loc_16D2048:   Call 0.Method_Proc_251_87_16D37680 (CInt(1), var_134, CStr(Format(CVar(var_130.Fields.Item("VDate")), var_E4)))
  loc_16D2050:   var_134.Text = 1
  loc_16D20A2:   Me.LblVPrefix.Caption = CStr(var_130.Fields.Item("vPrefix").Value)
  loc_16D20EC:   Set var_12C = Me.Txt
  loc_16D20F2:   Call 0.Method_Proc_251_87_16D37680 (CInt(6), var_134)
  loc_16D20FA:   var_134.Text = Proc_6_38_E69628(CVar(var_AC.Fields.Item("Remarks")), 1)
  loc_16D214A:   If (var_130.Fields.Item("Pending").Value = "Y") Then
  loc_16D215A:     Me.LblState.Caption = "Running Order"
  loc_16D2165:   Else
  loc_16D2172:     Me.LblState.Caption = "Completed Order"
  loc_16D217A:   End If
  loc_16D21B2:   var_108 = Proc_6_38_E69628(CVar(var_130.Fields.Item("Party")), "Select Code,Name,CardNo From (Select SubCode as Code,Name,CardNo From SubGroup union all Select Code,Name,CardNo From SmartCardRegistration) Q where Code='", var_E4)
  loc_16D21B6:   var_138 = -1 & var_108
  loc_16D21C6:   unk_5921F8.Execute "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "'", var_12C, var_12C
  loc_16D21D1:   Set var_B0 = var_12C
  loc_16D21FF:   If (var_B0.RecordCount > 0) Then
  loc_16D223B:     Set var_12C = Me.Txt
  loc_16D2241:     Call 0.Method_Proc_251_87_16D37680 (CInt(&HB), var_134)
  loc_16D2249:     var_134.Tag = CStr(var_B0.Fields.Item(0).Value)
  loc_16D2298:     Set var_12C = Me.Txt
  loc_16D229E:     Call 0.Method_Proc_251_87_16D37680 (CInt(&HB), var_134)
  loc_16D22A6:     var_134.Text = CStr(var_B0.Fields.Item(1).Value)
  loc_16D22D6:     var_C4 = var_B0.Fields.Item(2)
  loc_16D22F5:     Set var_12C = Me.Txt
  loc_16D22FB:     Call 0.Method_Proc_251_87_16D37680 (CInt(&HC), var_134)
  loc_16D2303:     var_134.Text = CStr(var_C4.Value)
  loc_16D231C:   Else
  loc_16D232A:     Set var_A8 = Me.Txt
  loc_16D2330:     Call 0.Method_Proc_251_87_16D37680 (CInt(&HB), var_C4)
  loc_16D2338:     var_C4.Tag = vbNullString
  loc_16D2352:     Set var_A8 = Me.Txt
  loc_16D2358:     Call 0.Method_Proc_251_87_16D37680 (CInt(&HB), var_C4)
  loc_16D2360:     var_C4.Text = vbNullString
  loc_16D237A:     Set var_A8 = Me.Txt
  loc_16D2380:     Call 0.Method_Proc_251_87_16D37680 (CInt(&HC), var_C4)
  loc_16D2388:     var_C4.Text = vbNullString
  loc_16D2394:   End If
  loc_16D23BC:   var_108 = Proc_6_38_E69628(CVar(var_130.Fields.Item("Waiter")))
  loc_16D23CA:   Set var_12C = Me.Txt
  loc_16D23D0:   Call 0.Method_Proc_251_87_16D37680 (CInt(5), var_134)
  loc_16D23D8:   var_134.Tag = var_108
  loc_16D2438:   var_C4 = var_130.Fields.Item("Waiter")
  loc_16D245A:   If CBool(var_C4.Value <> vbNullString) Then
  loc_16D247B:     Set var_A8 = Me.Txt
  loc_16D2481:     Call 0.Method_Proc_251_87_16D37680 (CInt(5), var_C4, var_108, "Select Name From Waiter Where Code='")
  loc_16D2489:     var_D4 = var_C4.Tag
  loc_16D2492:     var_138 = -1 & var_108
  loc_16D2499:     var_13C = "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "' and (code is not null or code <> '')"
  loc_16D24A2:     unk_5921F8.Execute var_13C, var_12C, Proc_6_38_E69628(CVar(var_130.Fields.Item("Waiter")))
  loc_16D24AD:     Set var_B8 = var_12C
  loc_16D24D9:     If (var_B8.RecordCount > 0) Then
  loc_16D2515:       Set var_12C = Me.Txt
  loc_16D251B:       Call 0.Method_Proc_251_87_16D37680 (CInt(5), var_134)
  loc_16D2523:       var_134.Text = CStr(var_B8.Fields.Item("Name").Value)
  loc_16D2539:     End If
  loc_16D253E:     Set var_B8 = Nothing
  loc_16D2541:   End If
  loc_16D2558:   If ((global_144 = "TB") Or (global_144 = "RO")) Then
  loc_16D2591:     Set var_12C = Me.Txt
  loc_16D2597:     Call 0.Method_Proc_251_87_16D37680 (CInt(4), var_134)
  loc_16D259F:     var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("RoomNo")))
  loc_16D25B6:   Else
  loc_16D25EC:     Set var_12C = Me.Txt
  loc_16D25F2:     Call 0.Method_Proc_251_87_16D37680 (CInt(4), var_134)
  loc_16D25FA:     var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("RName")))
  loc_16D260E:   End If
  loc_16D2628:   var_C4 = var_130.Fields.Item("Pending")
  loc_16D2630:   var_D4 = var_C4.Value
  loc_16D264A:   If (var_D4 = "Y") Then
  loc_16D268B:     Set var_A8 = Me.Txt
  loc_16D2691:     Call 0.Method_Proc_251_87_16D37680 (CInt(4), var_C4, "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='", "sELECT COUNT(DISTINCT VNO) FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='", var_D4, -1)
  loc_16D26A9:     var_144 = var_134 & "Select NCAT From Voucher_Type Where (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='" & "' AND PENDING='Y' AND (DELFLAG IS NULL OR DELFLAG<>'Y')"
  loc_16D26B2:     unk_5921F8.Execute var_144, 0, var_150
  loc_16D26BA:     var_E4 = var_C4.Text.Fields
  loc_16D26C2:      = var_134.Item()
  loc_16D26CA:      = var_150.Value
  loc_16D26FB:     If (var_E4 = 1) Then
  loc_16D270B:       Me.LblState.Caption = "New Order"
  loc_16D2716:     Else
  loc_16D2723:       Me.LblState.Caption = "Running Order"
  loc_16D272B:     End If
  loc_16D272E:   Else
  loc_16D273B:     Me.LblState.Caption = "Completed Order"
  loc_16D2743:   End If
  loc_16D2762:   var_D4 = CVar(var_130.Fields.Item("GuarAtt")) 'Address
  loc_16D2769:   Proc_6_39_E7D3A0(var_E4)
  loc_16D2780:   Set var_12C = Me.Txt
  loc_16D2786:   Call 0.Method_Proc_251_87_16D37680 (CInt(&HD), var_134)
  loc_16D278E:   var_134.Text = CStr(var_E4)
  loc_16D27C0:   var_C4 = var_130.Fields.Item("NCKOT")
  loc_16D2801:   Me.ChkNCKOT.Value = CInt(IIf((var_C4.Value = "Y"), 1, 0))
  loc_16D2837:   If (Me.ChkNCKOT.Value = 1) Then
  loc_16D2847:     Set var_A8 = Me.Txt
  loc_16D284D:     Call 0.Method_Proc_251_87_16D37680 (CInt(7), var_C4)
  loc_16D2855:     var_C4.Visible = True
  loc_16D286C:     Set var_A8 = Me.Label1
  loc_16D2872:     Call 0.Method_Proc_251_87_16D37680 (4, var_C4)
  loc_16D287A:     var_C4.Visible = True
  loc_16D2892:     Me.Frame.Visible = False
  loc_16D28A7:     Me.LblKotNm.Caption = "NC Kot"
  loc_16D28B7:     Set var_A8 = Me.cmdNCBill
  loc_16D28BD:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(True)
  loc_16D28C8:   Else
  loc_16D28D5:     Set var_A8 = Me.Txt
  loc_16D28DB:     Call 0.Method_Proc_251_87_16D37680 (CInt(7), var_C4)
  loc_16D28E3:     var_C4.Visible = False
  loc_16D28FA:     Set var_A8 = Me.Label1
  loc_16D2900:     Call 0.Method_Proc_251_87_16D37680 (4, var_C4)
  loc_16D2908:     var_C4.Visible = False
  loc_16D2921:     Me.LblKotNm.Caption = "Standerd Kot"
  loc_16D2932:     Set var_A8 = Me.cmdNCBill
  loc_16D2938:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010007(False)
  loc_16D2940:   End If
  loc_16D2976:   Set var_12C = Me.Txt
  loc_16D297C:   Call 0.Method_Proc_251_87_16D37680 (CInt(7), var_134)
  loc_16D2984:   var_134.Text = Proc_6_38_E69628(CVar(var_130.Fields.Item("NCType")))
  loc_16D2A31:   var_128 = 1
  loc_16D2AA8:   Set var_12C = Me.Txt
  loc_16D2AAE:   Call 0.Method_Proc_251_87_16D37680 (CInt(4), var_134, Proc_6_38_E69628(CVar(var_130.Fields.Item("RoomNo")), CByte(IIf((var_130.Fields.Item("NCKOT").Value = "Y"), var_128, 0))))
  loc_16D2AB6:   var_134.Tag = CByte(IIf((var_130.Fields.Item("NCKOT").Value = "Y"), 1, 0))
  loc_16D2AF5:   var_E4 = "hh:nn"
  loc_16D2B1C:   Set var_12C = Me.Txt
  loc_16D2B22:   Call 0.Method_Proc_251_87_16D37680 (CInt(2), var_134, CStr(Format(CVar(var_130.Fields.Item("VTIME")), var_E4)))
  loc_16D2B2A:   var_134.Text = 1
  loc_16D2B84:   var_138 = CStr(var_130.Fields.Item("VTIME").Value)
  loc_16D2B8C:   var_13C = Replace(var_138, ":", ".", 1, -1, 0)
  loc_16D2BBE:   var_148 = "Select Name From SessionMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and " & CStr(Val("sELECT COUNT(DISTINCT VNO) FROM KOT WHERE RESTCODE='" & LocalRestCode & "' AND ROOMNO='"))
  loc_16D2BCE:   unk_5921F8.Execute var_148 & " BETWEEN FromTime AND ToTime", var_E4, -1
  loc_16D2BD9:   Set var_B8 = var_12C
  loc_16D2BFF:   Set var_130 = Nothing 
  loc_16D2C12:   Me.FGrid.Redraw = False
  loc_16D2C2D:   Me.FGrid.Rows = 1
  loc_16D2C37:   var_B2 = 1
  loc_16D2C47:   var_A4 = "Select K1.*,I.name as ItemName,I.Unit,DispCode,D.Code as DepartCode,D.ShortName as DepartName,I.Kitchen From (KOT K1 Inner Join ItemMast I On K1.Item=I.Code And K1.ItemRestCode=I.RestCode)Inner Join Depart D on D.Code=I.RestCode Where K1.DocId='"
  loc_16D2C90:   unk_5921F8.Execute CStr(var_A4 & Me.Fields.Item("SearchCode").Value & "' order by K1.Sno"), var_128, -1
  loc_16D2C9B:   Set var_AC = var_12C
  loc_16D2CC9:   If (var_AC.RecordCount > 0) Then
  loc_16D2CCC:     ' Referenced from: 16D3215
  loc_16D2CDB:     If Not(var_AC.EOF) Then
  loc_16D2CDE:       var_94 = vbNullString
  loc_16D2CE8:       Set var_A8 = Me.FGrid
  loc_16D2CFD:       Set var_180 = Me.FGrid
  loc_16D2D04:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_16D2D0C:       var_118 = CVar(CLng(0)) 'Long
  loc_16D2D3C:       var_E4 = CVar(CStr(var_AC.Fields.Item("SNo").Value)) 'String
  loc_16D2D43:       LateIdCallSt
  loc_16D2D5D:       var_A4 = CVar(CLng(var_B2)) 'Long
  loc_16D2D65:       var_118 = CVar(CLng(&HA)) 'Long
  loc_16D2D95:       var_E4 = CVar(CStr(var_AC.Fields.Item("Item").Value)) 'String
  loc_16D2D9C:       LateIdCallSt
  loc_16D2DEB:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("DispCode")), CVar(CLng(3)), CVar(CLng(var_B2)), var_180, var_E4, CVar(CLng(3)), CVar(CLng(var_B2)))) 'String
  loc_16D2DF2:       LateIdCallSt
  loc_16D2E3D:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("ItemName")), CVar(CLng(4)), CVar(CLng(var_B2)), var_180, var_E4, var_180)) 'String
  loc_16D2E44:       LateIdCallSt
  loc_16D2E8F:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Unit")), CVar(CLng(5)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16D2E96:       LateIdCallSt
  loc_16D2EE1:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Description")), CVar(CLng(6)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16D2EE8:       LateIdCallSt
  loc_16D2F1A:       var_F4 = CVar(CLng(var_B2)) 'Long
  loc_16D2F22:       var_190 = CVar(CLng(7)) 'Long
  loc_16D2F4F:       var_128 = CVar(CStr(Format(CVar(var_AC.Fields.Item("qty")), "0.00"))) 'String
  loc_16D2F56:       LateIdCallSt
  loc_16D2FC1:       var_128 = CVar(CStr(Format(CVar(var_AC.Fields.Item("Rate")), "0.00"))) 'String
  loc_16D2FC8:       LateIdCallSt
  loc_16D3006:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("VoidYN")), var_180, var_128, 1, 1, CVar(CLng(8)), CVar(CLng(var_B2)))) 'String
  loc_16D3028:       var_134 = var_AC.Fields.Item("VoidYN")
  loc_16D3048:       var_250 = CVar(CLng(var_B2)) 'Long
  loc_16D3050:       var_270 = CVar(CLng(9)) 'Long
  loc_16D3078:       var_1E0 = (Trim(CVar(Proc_6_38_E69628(CVar(var_134), var_180, var_128, 1))) = "Y") 'Variant
  loc_16D30BC:       LateIdCallSt
  loc_16D3123:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("Kitchen")), CVar(CLng(&HB)), CVar(CLng(var_B2)), var_180, CVar(CStr(IIf((Trim(var_E4) = "F"), "Free", IIf(var_1E0, "Cancel", vbNullString)))))) 'String
  loc_16D312A:       LateIdCallSt
  loc_16D3175:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("DepartCode")), CVar(CLng(1)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16D317C:       LateIdCallSt
  loc_16D31C7:       var_E4 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("DEPARTNAME")), CVar(CLng(2)), CVar(CLng(var_B2)), var_180, var_E4)) 'String
  loc_16D31CE:       LateIdCallSt
  loc_16D31E4:       var_94 = CVar(CLng(var_B2)) 'Long
  loc_16D31F6:       LateIdCallSt
  loc_16D3200:       Set var_180 = Nothing 
  loc_16D320A:       var_B2 = (var_B2 + 1)
  loc_16D3210:       var_AC.MoveNext
  loc_16D3215:       GoTo loc_16D2CCC
  loc_16D3218:     End If
  loc_16D3231:     var_94 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_16D3244:     Set var_C4 = Me.FGrid
  loc_16D324A:     LateIdCallSt
  loc_16D326F:     Me.FGrid.FixedRows = 1
  loc_16D3277:   End If
  loc_16D3285:   Me.FGrid.Redraw = True
  loc_16D3293:   If (var_B2 = 1) Then
  loc_16D3296:     var_94 = 1
  loc_16D32A9:     Me.FGrid.Rows = var_94
  loc_16D32B5:     Set var_12C = Me.FGrid
  loc_16D32CF:     var_D4 = CVar(CStr(Proc_6_127_F25B10(var_12C, CInt(0), var_C4, global_104, var_94, var_B2, var_180, global_104))) 'String
  loc_16D32D7:     Set var_C4 = Me.FGrid
  loc_16D32FB:     var_D4 = Me.FGrid.Rows
  loc_16D330A:     var_94 = CVar((CLng(var_D4) - 1)) 'Long
  loc_16D331D:     Set var_C4 = Me.FGrid
  loc_16D3323:     LateIdCallSt
  loc_16D3335:     var_94 = 1
  loc_16D3348:     Me.FGrid.FixedRows = var_94
  loc_16D3350:   End If
  loc_16D335B:   If (LocalRestType = "Room Service") Then
  loc_16D337E:     If (Me.LblState.Caption = "Running Order") Then
  loc_16D3395:       var_108 = "SELECT RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest,GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3 FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_16D33AD:       Set var_A8 = Me.Txt
  loc_16D33B3:       Call 0.Method_Proc_251_87_16D37680 (CInt(4), var_C4, var_138, var_108 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL and RC.RoomNo='", var_D4, -1, var_12C)
  loc_16D33BB:       var_C4 = var_C4.Tag
  loc_16D33D4:       unk_5921F8.Execute global_104 & var_138 & "'  Order by RC.ROOMNO", var_94, FGrid.DispID_10000
  loc_16D33DF:       Set var_BC = var_12C
  loc_16D33FE:     Else
  loc_16D340B:       var_A4 = "SELECT distinct GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3, KOT.RoomNo, GuestProf.Name FROM  PayCharge INNER JOIN  KOT ON PayCharge.DocId = KOT.ContraDocId INNER JOIN   GuestProf ON PayCharge.GuestProf = GuestProf.Code WHERE (KOT.DocId = '"
  loc_16D3416:       var_94 = "DocID"
  loc_16D3435:       var_D4 = Me.Fields.Item(var_94).Value
  loc_16D343D:       var_E4 = var_A4 & var_D4 
  loc_16D3450:       var_128 = var_E4 & "') AND  KOT.ContraDocID<>'' AND (PayCharge.RoomType = 'RO') AND (PayCharge.PayCode = '" & CVar(MemVar_1F95078) 
  loc_16D346B:       Set var_12C = Me.Txt
  loc_16D3471:       Call 0.Method_Proc_251_87_16D37680 (CInt(4), var_134, var_108, var_128 & "TOUT') AND  KOT.RoomNo='", var_1E0)
  loc_16D3479:       -1 = var_134.Tag
  loc_16D3481:       var_170 = CVar(var_108) 'String
  loc_16D349B:       unk_5921F8.Execute CStr(var_150 & var_170 & "'"), var_D4, var_94
  loc_16D34A6:       Set var_BC = var_150
  loc_16D34CE:     End If
  loc_16D34E2:     If (var_BC.RecordCount > 0) Then
  loc_16D34E5:       ' Referenced from: 16D3618
  loc_16D34F6:       If (var_BC.EOF = 0) Then
  loc_16D3532:         Set var_12C = Me.Txt
  loc_16D3538:         Call 0.Method_Proc_251_87_16D37680 (CInt(8), var_134)
  loc_16D3540:         var_134.Text = CStr(var_BC.Fields.Item("Comments1").Value)
  loc_16D358F:         Set var_12C = Me.Txt
  loc_16D3595:         Call 0.Method_Proc_251_87_16D37680 (CInt(9), var_134)
  loc_16D359D:         var_134.Text = CStr(var_BC.Fields.Item("Comments2").Value)
  loc_16D35CD:         var_C4 = var_BC.Fields.Item("Comments3")
  loc_16D35D5:         var_D4 = var_C4.Value
  loc_16D35EC:         Set var_12C = Me.Txt
  loc_16D35F2:         Call 0.Method_Proc_251_87_16D37680 (CInt(&HA), var_134)
  loc_16D35FA:         var_134.Text = CStr(var_D4)
  loc_16D3613:         var_BC.MoveNext
  loc_16D3618:         GoTo loc_16D34E5
  loc_16D361B:       End If
  loc_16D361B:     End If
  loc_16D361B:   End If
  loc_16D361E: Else
  loc_16D361E:   Call Proc_251_89_101DC1C(var_180)
  loc_16D363E:   var_138 = "Select V_Type As Code,Description As Name,NCat From Voucher_Type WHERE (SITE_CODE='" & MemVar_1F95070 & "' AND LOGSITE_CODE='"
  loc_16D3655:   var_A4 = 0
  loc_16D3675:   var_140 = "Select 'K'+ShortName From Depart Where Code='" & LocalRestCode
  loc_16D3685:   unk_5921F8.Execute global_104 & var_138 & "'", var_D4, -1
  loc_16D368D:   var_A8 = var_A8.Fields
  loc_16D3695:   var_A4 = var_C4.Item(var_C4)
  loc_16D369D:   var_12C = var_12C.Value
  loc_16D36BC:   unk_5921F8.Execute CStr(var_E4 & var_E4 & "' Order by Description"), CVar(var_138 & MemVar_1F95078 & "') and V_Type='"), var_170
  loc_16D36C7:   Set var_AC = var_134
  loc_16D3707:   If (var_AC.RecordCount > 0) Then
  loc_16D373B:     global_136 = CStr(var_AC.Fields.Item(0).Value)
  loc_16D374C:   End If
  loc_16D374C: End If
  loc_16D374C: Call Proc_251_91_EF7250(-1)
  loc_16D3756: Set var_AC = Nothing
  loc_16D375E: Set var_BC = Nothing
  loc_16D3761: Exit Sub
  loc_16D3762: ' Referenced from: 16D1D8C
  loc_16D3762: Proc_6_60_E63754(var_134)
  loc_16D3767: Exit Sub
End Sub

Public Sub Proc_251_88_104E91C
  'Data Table: 5921DC
  Dim var_A0 As String
  Dim var_A4 As TextBox
  Dim unk_5921F8 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_F8 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_BC As Variant
  loc_104E6D5: Set var_8C = Me.TopCtrl1
  loc_104E6DB: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_104E6E3: var_A0 = CStr()
  loc_104E6F4: If (var_A0 = "Add") Then
  loc_104E724:   Set var_8C = Me.Txt
  loc_104E72A:   Call 0.Method_Proc_251_88_104E91C0 (CInt(3), var_A4, var_A0, "Select Count(*) From KOT Where DocID='", var_9C, -1)
  loc_104E74B:   unk_5921F8.Execute var_C4 & var_A0 & "'", 0, var_D8
  loc_104E75B:    = var_C4.Item()
  loc_104E763:    = var_D8.Value
  loc_104E790:   If (var_A4.Text.Fields > 0) Then
  loc_104E799:     Call Proc_251_93_10E97E0(MemVar_1F95044)
  loc_104E7AC:     Set var_8C = Me.Txt
  loc_104E7B2:     Call 0.Method_Proc_251_88_104E91C0 (CInt(3), var_A4)
  loc_104E7BA:     var_A4.Text = var_A0
  loc_104E7C9:   End If
  loc_104E7C9: End If
  loc_104E7EE: For var_10C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_10C 'Integer
  loc_104E7F8:   var_BC = CVar(CLng(var_88)) 'Long
  loc_104E800:   var_F8 = CVar(CLng(&HA)) 'Long
  loc_104E820:   var_108 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_104E83C:   If CBool(var_108 <> vbNullString) Then
  loc_104E843:     var_BC = CVar(CLng(var_88)) 'Long
  loc_104E84B:     var_F8 = CVar(CLng(7)) 'Long
  loc_104E87B:     If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) = CDbl(0)) Then
  loc_104E8A3:       MsgBox(CVar("Quantity Required in Row " & CStr(var_88)), &H40, "Required Data", var_108, var_13C)
  loc_104E8C9:       Me.FGrid.Row = CVar(CLng(var_88))
  loc_104E8D5:       Set var_8C = Me.FGrid
  loc_104E8F9:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_104E906:       Proc_251_88_104E91C = 0
  loc_104E90C:     End If
  loc_104E90C:   End If
  loc_104E90F: Next var_10C 'Integer
  loc_104E914: Proc_251_88_104E91C = 
End Sub

Public Sub Proc_251_89_101DC1C
  'Data Table: 5921DC
  Dim var_8C As Variant
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As Variant
  loc_101D9F9: Me.LblVPrefix.Caption = vbNullString
  loc_101DA0F: Set var_8C = Me.Txt
  loc_101DA15: Call 0.Method_Proc_251_89_101DC1CC (var_8E, var_86)
  loc_101DA25: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_101DA3B:   Set var_8C = Me.Txt
  loc_101DA41:   Call 0.Method_Proc_251_89_101DC1C0 (CInt(var_86), var_98)
  loc_101DA49:   var_98.Text = vbNullString
  loc_101DA65:   Set var_8C = Me.Txt
  loc_101DA6B:   Call 0.Method_Proc_251_89_101DC1C0 (CInt(var_86), var_98)
  loc_101DA73:   var_98.Tag = vbNullString
  loc_101DA82: Next var_92 'Byte
  loc_101DA96: Set var_8C = Me.Txt
  loc_101DA9C: Call 0.Method_Proc_251_89_101DC1C0 (CInt(2), var_98)
  loc_101DAA4: var_98.Text = "00:00"
  loc_101DABE: Set var_8C = Me.Txt
  loc_101DAC4: Call 0.Method_Proc_251_89_101DC1C0 (CInt(2), var_98)
  loc_101DACC: var_98.Tag = vbNullString
  loc_101DAEB: Me.FGrid.Rows = 1
  loc_101DB11: var_C8 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid))) 'String
  loc_101DB19: Set var_98 = Me.FGrid
  loc_101DB33: var_A8 = 1
  loc_101DB3F: var_DC = CVar(CLng(1)) 'Long
  loc_101DB52: Set var_8C = Me.FGrid
  loc_101DB58: LateIdCallSt
  loc_101DB63: var_A8 = 1
  loc_101DB6F: var_DC = CVar(CLng(2)) 'Long
  loc_101DB82: Set var_8C = Me.FGrid
  loc_101DB88: LateIdCallSt
  loc_101DBAC: var_A8 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_101DBBF: Set var_98 = Me.FGrid
  loc_101DBC5: LateIdCallSt
  loc_101DBEA: Me.FGrid.FixedRows = 1
  loc_101DBFE: Me.ChkNCKOT.Value = 0
  loc_101DC13: Me.LblState.Caption = vbNullString
  loc_101DC1B: Exit Sub
End Sub

Public Sub Proc_251_90_104CE7C(arg_C) '104CE7C
  'Data Table: 5921DC
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_104CC16: Set var_8C = Me.Txt
  loc_104CC1C: Call 0.Method_Proc_251_90_104CE7CC (var_8E, var_86)
  loc_104CC2C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_104CC42:   Set var_8C = Me.Txt
  loc_104CC48:   Call 0.Method_Proc_251_90_104CE7C0 (CInt(var_86), var_98)
  loc_104CC50:   var_98.Enabled = arg_C
  loc_104CC5F: Next var_92 'Byte
  loc_104CC72: Set var_8C = Me.cmdNCBill
  loc_104CC78: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_8001000D(Not(arg_C))
  loc_104CC90: Set var_8C = Me.Txt
  loc_104CC96: Call 0.Method_Proc_251_90_104CE7C0 (CInt(2), var_98)
  loc_104CC9E: var_98.Enabled = False
  loc_104CCB7: Set var_8C = Me.Txt
  loc_104CCBD: Call 0.Method_Proc_251_90_104CE7C0 (CInt(3), var_98)
  loc_104CCC5: var_98.Enabled = False
  loc_104CCDE: Set var_8C = Me.Txt
  loc_104CCE4: Call 0.Method_Proc_251_90_104CE7C0 (CInt(1), var_98)
  loc_104CCEC: var_98.Enabled = False
  loc_104CD05: Set var_8C = Me.Txt
  loc_104CD0B: Call 0.Method_Proc_251_90_104CE7C0 (CInt(0), var_98)
  loc_104CD13: var_98.Enabled = False
  loc_104CD2C: Set var_8C = Me.Txt
  loc_104CD32: Call 0.Method_Proc_251_90_104CE7C0 (CInt(4), var_98)
  loc_104CD3A: var_98.Enabled = False
  loc_104CD53: Set var_8C = Me.Txt
  loc_104CD59: Call 0.Method_Proc_251_90_104CE7C0 (CInt(&HD), var_98)
  loc_104CD61: var_98.Enabled = False
  loc_104CD7A: Set var_8C = Me.Txt
  loc_104CD80: Call 0.Method_Proc_251_90_104CE7C0 (CInt(5), var_98)
  loc_104CD88: var_98.Enabled = False
  loc_104CDA1: Set var_8C = Me.Txt
  loc_104CDA7: Call 0.Method_Proc_251_90_104CE7C0 (CInt(8), var_98)
  loc_104CDAF: var_98.Enabled = False
  loc_104CDC8: Set var_8C = Me.Txt
  loc_104CDCE: Call 0.Method_Proc_251_90_104CE7C0 (CInt(9), var_98)
  loc_104CDD6: var_98.Enabled = False
  loc_104CDEF: Set var_8C = Me.Txt
  loc_104CDF5: Call 0.Method_Proc_251_90_104CE7C0 (CInt(&HA), var_98)
  loc_104CDFD: var_98.Enabled = False
  loc_104CE14: If (global_160 = "Auto") Then
  loc_104CE24:   Set var_8C = Me.Txt
  loc_104CE2A:   Call 0.Method_Proc_251_90_104CE7C0 (CInt(&HB), var_98)
  loc_104CE32:   var_98.Enabled = False
  loc_104CE4B:   Set var_8C = Me.Txt
  loc_104CE51:   Call 0.Method_Proc_251_90_104CE7C0 (CInt(&HC), var_98)
  loc_104CE59:   var_98.Enabled = False
  loc_104CE65: End If
  loc_104CE72: Me.ChkNCKOT.Enabled = arg_C
  loc_104CE7A: Exit Sub
End Sub

Public Sub Proc_251_91_EF7250
  'Data Table: 5921DC
  loc_EF7190: If (CBool(Me.DGItem.Visible) = &HFF) Then
  loc_EF71A2:   Me.DGItem.Visible = False
  loc_EF71AA: End If
  loc_EF71C6: If (CBool(Me.DGTable.Visible) = &HFF) Then
  loc_EF71D8:   Me.DGTable.Visible = False
  loc_EF71E0: End If
  loc_EF71FC: If (CBool(Me.DGRest.Visible) = &HFF) Then
  loc_EF720E:   Me.DGRest.Visible = False
  loc_EF7216: End If
  loc_EF7232: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF7244:   Me.FGPoint.Visible = False
  loc_EF724C: End If
  loc_EF724C: Exit Sub
End Sub

Public Sub Proc_251_92_F0B630
  'Data Table: 5921DC
  loc_F0B554: Call Proc_251_91_EF7250()
  loc_F0B564: Set var_88 = Me.Txt
  loc_F0B56A: Call 0.Method_Proc_251_92_F0B6300 (CInt(1))
  loc_F0B593: If (Proc_6_27_EA61EC(var_8C, "Invoice Date") = 0) Then
  loc_F0B596:   Exit Sub
  loc_F0B597: End If
  loc_F0B5A2: Set var_88 = Me.Txt
  loc_F0B5A8: Call 0.Method_Proc_251_92_F0B6300 (CInt(0), var_8C)
  loc_F0B5D1: If (Proc_6_27_EA61EC(var_8C, "Invoice No") = 0) Then
  loc_F0B5D4:   Exit Sub
  loc_F0B5D5: End If
  loc_F0B60C: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_F0B60F:   Call TopCtrl1_UnknownEvent_16()
  loc_F0B617: Else
  loc_F0B61D:   Call 0.Method_arg_1E8 (var_88)
  loc_F0B625:   Call var_88.SetFocus
  loc_F0B62E: End If
  loc_F0B62E: Exit Sub
End Sub

Public Sub Proc_251_93_10E97E0
  'Data Table: 5921DC
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
  loc_10E9508: var_90 = global_136
  loc_10E951F: var_94 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Inner Join Voucher_Prefix VP on (VT.V_Type=VP.V_Type AND VT.SITE_CODE=VP.SITE_CODE AND VP.LOGSITE_CODE=VP.LOGSITE_CODE) Where (VP.SITE_CODE='" & MemVar_1F95070
  loc_10E9550: Set var_A8 = Me.Txt
  loc_10E9556: Call 0.Method_Proc_251_93_10E97E00 (CInt(1), var_AC, CVar(var_94 & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<="))
  loc_10E9565: Proc_6_7_F26918(var_CC, CVar(var_AC), var_130)
  loc_10E956D: var_EC = -1 & var_CC 
  loc_10E9581: Me.Txt.Execute CStr(var_EC & " Order By VP.Date_From DESC"), var_134, 
  loc_10E958C: Set var_8C = var_134
  loc_10E95C8: If (var_8C.RecordCount > 0) Then
  loc_10E9607:   If (var_8C.Fields.Item("Number_Method").Value = "Automatic") Then
  loc_10E963B:     global_252 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10E9666:     var_AC = var_8C.Fields.Item("start_srl_no")
  loc_10E967B:     var_CC = (var_AC.Value + 1)
  loc_10E9684:     global_256 = CLng(var_CC)
  loc_10E9695:   End If
  loc_10E9695: End If
  loc_10E96C0: var_BC = Space((5 - Len(var_90)))
  loc_10E96C8: var_DC = (CVar(MemVar_1F9506C & Proc_6_45_EADFB8(MemVar_1F95070, 2) & var_90) + var_AC.Value)
  loc_10E96DC: var_EC = Space((5 - Len(global_252)))
  loc_10E96E4: var_10C = (CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2) & "' AND VP.LOGSITE_CODE='" & MemVar_1F95078 & "') and  VP.V_Type='" & var_90 & "' And VP.Date_From<=") + var_EC)
  loc_10E96F1: var_130 = (var_EC & " Order By VP.Date_From DESC" + CVar(global_252))
  loc_10E970A: var_14C = Space((8 - Len(CStr(global_256))))
  loc_10E9712: var_15C = (var_130 + var_14C)
  loc_10E9721: var_17C = (var_15C + CVar(CStr(global_256)))
  loc_10E972C: global_248 = CStr(var_17C)
  loc_10E9762: Me.LblVPrefix.Caption = global_252
  loc_10E977B: Set var_A8 = Me.Txt
  loc_10E9781: Call 0.Method_Proc_251_93_10E97E00 (CInt(3), var_AC)
  loc_10E9789: var_AC.Text = global_248
  loc_10E97AB: Set var_A8 = Me.Txt
  loc_10E97B1: Call 0.Method_Proc_251_93_10E97E00 (CInt(0), var_AC)
  loc_10E97B9: var_AC.Text = CStr(global_256)
  loc_10E97CE: var_88 = global_248
  loc_10E97D6: Set var_8C = Nothing
  loc_10E97D9: Proc_251_93_10E97E0 = global_256
End Sub

Public Sub Proc_251_94_FC23E8
  'Data Table: 5921DC
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC226B: If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_FC2270:   var_92 = 4 'Byte
  loc_FC2274: End If
  loc_FC227D: Set var_98 = Me.TxtGrid
  loc_FC2283: Call 0.Method_Proc_251_94_FC23E80 (0, var_B0)
  loc_FC22A6: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC22DA: For var_D4 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC22FE:   If (CLng(var_88) = CLng(Me.FGrid.Row)) Then
  loc_FC2301:     GoTo loc_FC23D3
  loc_FC2304:   End If
  loc_FC2308:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC2332:   var_D0 = Trim(CVar(CStr(Me.FGrid.TextMatrix))))
  loc_FC233C:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC2371:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC2395:     MsgBox("Duplicate Item Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC23AE:     Set var_98 = Me.TxtGrid
  loc_FC23B4:     Call 0.Method_Proc_251_94_FC23E80 (0, var_B0, CVar(CLng(var_92)))
  loc_FC23BC:     var_B0.SetFocus
  loc_FC23CD:     Proc_251_94_FC23E8 = 0
  loc_FC23D3:     ' Referenced from: FC2301
  loc_FC23D3:   End If
  loc_FC23D6: Next var_D4 'Integer
  loc_FC23E0: Proc_251_94_FC23E8 = &HFF
End Sub

Public Sub Proc_251_95_11FD7D8
  'Data Table: 5921DC
  Dim var_90 As String
  Dim var_A0 As Variant
  Dim Me As Recordset15
  Dim var_B4 As Variant
  Dim var_D0 As String
  loc_11FD332: Set global_84 = New 
  loc_11FD344: Me.Recordset15.CursorLocation = 3
  loc_11FD34F: var_8C = LocalRestType
  loc_11FD35A: If (var_8C = "Hall") Then
  loc_11FD382:   var_A0 = CVar("Select T.Code,T.Name As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')and  T.Type in('HL') Order by T.Code") 'String
  loc_11FD38C:   Me.Open var_A0, CVar(MemVar_1F95044), 3
  loc_11FD3A3:   Set var_88 = Me.Label1
  loc_11FD3A9:   Call 0.Method_Proc_251_95_11FD7D80 (2, var_B4, "Hall")
  loc_11FD3B1:   var_B4.Caption = 1
  loc_11FD3CD:   Set var_88 = Me.DGTable
  loc_11FD3EC:   DGTable.DispID_69.Item(1).Caption = "Hall"
  loc_11FD403:   global_140 = "HALL"
  loc_11FD40D:   global_144 = "HL"
  loc_11FD422:   Set var_88 = Me.DGTable
  loc_11FD441:   DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FD463:   Set var_88 = Me.DGTable
  loc_11FD474:   Set var_B4 = DGTable.DispID_69
  loc_11FD482:   var_B4.Item(3).Width = CDbl(0)
  loc_11FD4A1:   Set var_88 = Me.Txt
  loc_11FD4A7:   Call 0.Method_Proc_251_95_11FD7D80 (CInt(4), var_B4)
  loc_11FD4AF:   var_BC = var_B4.Width
  loc_11FD4C6:   Me.DGTable.Width = CVar(var_BC)
  loc_11FD4D7: Else
  loc_11FD4DF:   If (var_8C = "Outlet") Then
  loc_11FD4EE:     Set var_88 = Me.Label1
  loc_11FD4F4:     Call 0.Method_Proc_251_95_11FD7D80 (2, var_B4)
  loc_11FD4FC:     var_B4.Caption = "Table #"
  loc_11FD518:     Set var_88 = Me.DGTable
  loc_11FD537:     DGTable.DispID_69.Item(1).Caption = "Table No"
  loc_11FD56D:     var_D0 = "Select T.Code,T.Code As Name From RoomMast T where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and T.Type in ('TB') And RestCode='"
  loc_11FD588:     Me.Open CVar(var_D0 & LocalRestCode & "' Order By T.Code"), CVar(MemVar_1F95044), 3
  loc_11FD59F:     global_140 = "REST"
  loc_11FD5A9:     global_144 = "TB"
  loc_11FD5BE:     Set var_88 = Me.DGTable
  loc_11FD5DD:     DGTable.DispID_69.Item(2).Width = CDbl(0)
  loc_11FD5FF:     Set var_88 = Me.DGTable
  loc_11FD610:     Set var_B4 = DGTable.DispID_69
  loc_11FD61E:     var_B4.Item(3).Width = CDbl(0)
  loc_11FD63D:     Set var_88 = Me.Txt
  loc_11FD643:     Call 0.Method_Proc_251_95_11FD7D80 (CInt(4), var_B4, var_BC)
  loc_11FD64B:     1 = var_B4.Width
  loc_11FD662:     Me.DGTable.Width = CVar(var_BC)
  loc_11FD673:   Else
  loc_11FD67B:     If (var_8C = "Room Service") Then
  loc_11FD68A:       Set var_88 = Me.Label1
  loc_11FD690:       Call 0.Method_Proc_251_95_11FD7D80 (2, var_B4, "Room #")
  loc_11FD698:       var_B4.Caption = -1
  loc_11FD6B4:       Set var_88 = Me.DGTable
  loc_11FD6D3:       DGTable.DispID_69.Item(1).Caption = "Room No"
  loc_11FD702:       var_90 = "SELECT RC.RoomNo AS Code, RC.RoomNo AS Name, RC.RoomCat, GuestProf.Name as Guest, PlanName = Case  When isnull(PlanMast.Name,'')='' then 'Europian Plan' else PlanMast.Name end, GuestProf.Comments1, GuestProf.Comments2,GuestProf.Comments3  FROM (ROOMOCC AS RC LEFT JOIN GuestProf ON (RC.GuestProf = GuestProf.Code and RC.LogSite_Code=GuestProf.LogSite_Code)) LEFT JOIN PlanMast ON RC.PlanCode = PlanMast.Code where (RC.LOGSITE_CODE='" & MemVar_1F95078
  loc_11FD709:       var_A0 = CVar(var_90 & "' or RC.LOGSITE_CODE='HO') and RC.ROOMType in('RO') AND RC.CHKOUTDATE IS NULL Order by RC.ROOMNO") 'String
  loc_11FD713:       Me.Open var_A0, CVar(MemVar_1F95044), 3
  loc_11FD724:       global_144 = "RO"
  loc_11FD73A:       Set var_88 = Me.DGTable
  loc_11FD759:       DGTable.DispID_69.Item(1).Width = CDbl(1515)
  loc_11FD77C:       Set var_88 = Me.DGTable
  loc_11FD79B:       DGTable.DispID_69.Item(2).Width = CDbl(3539)
  loc_11FD7AC:       GoTo loc_11FD7AF
  loc_11FD7AF:       ' Referenced from:     11FD7AC
  loc_11FD7AF:     End If
  loc_11FD7AF:   End If
  loc_11FD7AF: End If
  loc_11FD7B8: CVarUnk
  loc_11FD7BD: VerifyVarObj
  loc_11FD7C3: Set var_88 = Me.DGTable
  loc_11FD7C9: LateIdStAd
  loc_11FD7D7: Exit Sub
End Sub

Public Sub Proc_251_96_10ABBB8(arg_C, arg_10, arg_14) '10ABBB8
  'Data Table: 5921DC
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
  loc_10AB90D: var_88 = vbNullString
  loc_10AB924: arg_C = CStr(Trim(arg_C))
  loc_10AB930: var_8A = CInt(Len(arg_C))
  loc_10AB936: var_C0 = arg_10
  loc_10AB941: If (var_C0 = "A") Then
  loc_10AB960:   var_AC = CVar(Int((CDbl((CInt(Int((CDbl(arg_14) / CDbl(2)))) - var_8A)) / CDbl(2)))) 'Double
  loc_10AB964:   var_9C = arg_C 'Variant
  loc_10AB9BA:   var_F0 = (Chr(&H12) + Chr(&HE))
  loc_10AB9CE:   var_110 = (0 + Chr(&H1B))
  loc_10AB9D7:   var_120 = (var_110 + "G")
  loc_10AB9EB:   var_140 = (var_120 + Space(CLng(IIf((var_9C > 0), var_9C, 0))))
  loc_10AB9F5:   var_150 = (var_140 + CVar(arg_C))
  loc_10ABA09:   var_170 = (var_150 + Chr(&H1B))
  loc_10ABA12:   var_190 = (var_170 + "H")
  loc_10ABA17:   var_88 = CStr(var_190)
  loc_10ABA38: Else
  loc_10ABA40:   If (var_C0 = "D") Then
  loc_10ABA4E:     arg_14 = CInt(Int((CDbl(arg_14) / CDbl(2))))
  loc_10ABA5F:     var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10ABA63:     var_9C = "G" 'Variant
  loc_10ABAB9:     var_F0 = (Chr(&HE) + Chr(&HF))
  loc_10ABACD:     var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10ABAD7:     var_120 = (var_110 + CVar(arg_C))
  loc_10ABADC:     var_88 = CStr(var_120)
  loc_10ABAF1:   Else
  loc_10ABAF9:     If (var_C0 = "E") Then
  loc_10ABB0A:       var_AC = CVar(Int((CDbl((arg_14 - var_8A)) / CDbl(2)))) 'Double
  loc_10ABB0E:       var_9C = CVar(arg_C) 'Variant
  loc_10ABB64:       var_F0 = (Chr(&H12) + Chr(&HF))
  loc_10ABB78:       var_110 = (0 + Space(CLng(IIf((IIf((var_9C > 0), var_9C, 0) > 0), IIf((var_9C > 0), var_9C, 0), 0))))
  loc_10ABB82:       var_120 = (var_110 + CVar(arg_C))
  loc_10ABB96:       var_140 = (var_120 + Chr(&H12))
  loc_10ABB9B:       var_88 = CStr(var_140)
  loc_10ABBB1:     End If
  loc_10ABBB1:   End If
  loc_10ABBB1: End If
  loc_10ABBB1: Proc_251_96_10ABBB8 = arg_14
End Sub

Public Sub Proc_251_97_1200EA4(arg_C, arg_10, arg_14) '1200EA4
  'Data Table: 5921DC
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
  loc_1200A41: var_90 = vbNullString
  loc_1200A47: var_94 = vbNullString
  loc_1200A4D: var_98 = vbNullString
  loc_1200A53: var_9C = vbNullString
  loc_1200A5E: If (MemVar_1F953C4 = "Y") Then
  loc_1200A68:   var_E0 = vbNullString & "DATE "
  loc_1200A99:   var_8C = 1 & CStr(Format(MemVar_1F950EC, "dd/MM/yy"))
  loc_1200AAC: End If
  loc_1200AB4: If (MemVar_1F953C8 = "Y") Then
  loc_1200B18:   var_164 = (CVar(arg_14) - IIf((MemVar_1F953C4 = "Y"), CVar(Len("DATE " & CStr(Format(MemVar_1F950EC, "dd/MM/yy")))), 0))
  loc_1200B3F:   var_1B4 = (" PAGE NO " + Trim(Str(arg_C)))
  loc_1200B47:   var_1D4 = (var_164 - Len(var_1B4))
  loc_1200B58:   var_204 = (CVar(var_8C) + Space(CLng(var_1D4)))
  loc_1200B61:   var_224 = (var_204 + " PAGE NO ")
  loc_1200B83:   var_264 = (var_224 + Trim(Str(arg_C)))
  loc_1200B88:   var_8C = CStr(var_264)
  loc_1200BB5: End If
  loc_1200BC3: If (MemVar_1F953CC = "K") Then
  loc_1200BD0:   If (Len(MemVar_1F95130) <= &H28) Then
  loc_1200BE9:     var_DC = (CVar(var_90) + Chr(&HF))
  loc_1200BFD:     var_134 = (Format(MemVar_1F950EC, "dd/MM/yy") + Chr(&HE))
  loc_1200C11:     var_164 = (0 + Chr(&H1B))
  loc_1200C25:     var_194 = (var_164 + Chr(&H45))
  loc_1200C2F:     var_1B4 = (Trim(Str(arg_C)) + CVar(MemVar_1F95130))
  loc_1200C43:     var_1D4 = (var_1B4 + Chr(&H1B))
  loc_1200C57:     var_204 = (var_1D4 + Chr(&H46))
  loc_1200C6B:     var_244 = (var_204 + Chr(&HE))
  loc_1200C70:     var_90 = CStr(Str(arg_C))
  loc_1200C97:   Else
  loc_1200CAD:     var_DC = (CVar(var_90) + Chr(&H12))
  loc_1200CC1:     var_134 = (Format(MemVar_1F950EC, "dd/MM/yy") + Chr(&HE))
  loc_1200CD5:     var_164 = (0 + Chr(&HF))
  loc_1200CDF:     var_184 = (var_164 + CVar(MemVar_1F95130))
  loc_1200CF3:     var_1B4 = (Chr(&H45) + Chr(&H12))
  loc_1200CF8:     var_90 = CStr(var_1B4)
  loc_1200D10:   End If
  loc_1200D1A:   If (Len(MemVar_1F95134) > 0) Then
  loc_1200D46:     Call Proc_251_96_10ABBB8(MemVar_1F95134, "D", CInt(Val(CStr(arg_14))))
  loc_1200D4F:     var_94 = var_270 & var_270
  loc_1200D5B:   End If
  loc_1200D65:   If (Len(MemVar_1F95138) > 0) Then
  loc_1200D91:     Call Proc_251_96_10ABBB8(MemVar_1F95138, "D", CInt(Val(CStr(arg_14))))
  loc_1200D9A:     var_98 = var_270 & var_270
  loc_1200DA6:   End If
  loc_1200DB0:   If (Len(MemVar_1F9513C) > 0) Then
  loc_1200DDC:     Call Proc_251_96_10ABBB8(MemVar_1F9513C, "D", CInt(Val(CStr(arg_14))))
  loc_1200DE5:     var_9C = var_270 & var_270
  loc_1200DF1:   End If
  loc_1200DF1: End If
  loc_1200DFB: If (Len(var_8C) > 0) Then
  loc_1200E03:   Print 1, var_8C
  loc_1200E0F:   arg_10 = (arg_10 + 1)
  loc_1200E12: End If
  loc_1200E1C: If (Len(var_90) > 0) Then
  loc_1200E24:   Print 1, var_90
  loc_1200E30:   arg_10 = (arg_10 + 1)
  loc_1200E33: End If
  loc_1200E3D: If (Len(var_94) > 0) Then
  loc_1200E45:   Print 1, var_94
  loc_1200E51:   arg_10 = (arg_10 + 1)
  loc_1200E54: End If
  loc_1200E5E: If (Len(var_98) > 0) Then
  loc_1200E66:   Print 1, var_98
  loc_1200E72:   arg_10 = (arg_10 + 1)
  loc_1200E75: End If
  loc_1200E7F: If (Len(var_9C) > 0) Then
  loc_1200E87:   Print 1, var_9C
  loc_1200E93:   arg_10 = (arg_10 + 1)
  loc_1200E96: End If
  loc_1200E9C: Proc_251_97_1200EA4 = arg_10
End Sub

Public Sub Proc_251_98_F2291C(arg_C, arg_10, arg_14) 'F2291C
  'Data Table: 5921DC
  Dim unk_5921F8 As Connection15
  Dim var_90 As Recordset15
  Dim var_15C As Fields15
  Dim var_8C As Double
  loc_F22861: Proc_6_7_F26918(var_B4, arg_10, CVar("Select Rate,Appdate From ItemRate Where ItemCode='" & arg_C & "' And AppDate <="))
  loc_F22893: unk_5921F8.Execute CStr(var_158 & var_B4 & " And RestCode='" & CVar(arg_14) & "' Order by Appdate Desc"), -1, var_15C
  loc_F2289E: Set var_90 = var_15C
  loc_F228D0: If (var_90.RecordCount > 0) Then
  loc_F228FE:   var_8C = CSng(var_90.Fields.Item("Rate").Value)
  loc_F2290E: Else
  loc_F22911:   var_8C = CDbl(0)
  loc_F22914: End If
  loc_F22914: Proc_251_98_F2291C = var_8C
End Sub

Public Sub Proc_251_99_FF6A8C
  'Data Table: 5921DC
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_B4 As String
  Dim unk_5921F8 As Connection15
  Dim var_90 As Recordset15
  Dim var_94 As Fields15
  Dim var_86 As Integer
  loc_FF68BC: Set global_232 = New RsTouchScreenKeyBoard
  loc_FF68D5: Me.ParentForm = CVar(Me)
  loc_FF68EA: Me.TxtKeyBoard.MaxLength = 20
  loc_FF68F7: var_C4 = Me.TxtKeyBoard
  loc_FF6909: var_E4 = Me.TxtKeyBoard
  loc_FF690E: var_E4.BackColor = var_C4.ForeColor
  loc_FF6924: var_E4.Caption = "User Password"
  loc_FF693C: Form.Show 1, var_B4
  loc_FF696D: Proc_6_17_EAAE40(var_C4, MemVar_1F950C8, "SELECT IsNull(Max(PASSWD),'') FROM USERMAST WHERE USER_NAME=", var_E4, -1)
  loc_FF6983: unk_5921F8.Execute CStr(var_90 & var_C4), var_94, 0
  loc_FF6993:  = var_94.Item(var_11C)
  loc_FF699B:  = var_90.Fields.Value
  loc_FF69E6: If CBool(Trim(CVar(TxtKeyBoard)) <> vbNullString) Then
  loc_FF6A08:   Call Proc_251_100_EE9DE4(CStr(var_11C), var_120)
  loc_FF6A10:   var_E4 = CVar(var_120) 'String
  loc_FF6A16:   var_11C = Ucase(var_E4)
  loc_FF6A2B:   If (Ucase(CVar(TxtKeyBoard)) = var_11C) Then
  loc_FF6A30:     var_86 = &HFF
  loc_FF6A36:   Else
  loc_FF6A57:     MsgBox("Invalid Password.", &H10, "User Authentication", var_E4, var_11C)
  loc_FF6A69:     var_86 = 0
  loc_FF6A6C:   End If
  loc_FF6A6F: Else
  loc_FF6A71:   var_86 = 0
  loc_FF6A74: End If
  loc_FF6A7F: Set global_232 = Nothing
  loc_FF6A86: Proc_251_99_FF6A8C = var_86
End Sub

Public Sub Proc_251_100_EE9DE4(arg_C) 'EE9DE4
  'Data Table: 5921DC
  Dim var_90 As Integer
  Dim var_108 As Variant
  loc_EE9D52: var_90 = (Asc(CStr(Left(arg_C, 1))) - &H1B)
  loc_EE9D71: For var_B8 = 1 To CInt((Len(arg_C) - 1)): var_8E = var_B8 'Integer
  loc_EE9D94:   var_D8 = Mid(arg_C, CLng((var_8E + 1)), 1)
  loc_EE9DB0:   var_E8 = Chr(CLng(((Asc(CStr(var_D8)) - &H1B) - var_90)))
  loc_EE9DB8:   var_108 = (CVar(vbNullString) + var_E8)
  loc_EE9DBD:   var_8C = CStr(var_108)
  loc_EE9DD1: Next var_B8 'Integer
  loc_EE9DD9: var_88 = var_8C
  loc_EE9DDC: Proc_251_100_EE9DE4 = 
End Sub
