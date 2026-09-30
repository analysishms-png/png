VERSION 5.00
Begin VB.Form MembershipMast
  Caption = "Member Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Picture = "MembershipMast.frx":0
  Icon = "MembershipMast.frx":342
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 15240
  ClientHeight = 9750
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 53
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 4785
    Width = 4470
    Height = 255
    Enabled = 0   'False
    TabIndex = 29
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
  Begin TextBox TxtAgeing
    BackColor = &HC0FFFF&
    ForeColor = &HFF&
    Left = 9600
    Top = 15
    Width = 7215
    Height = 420
    TabIndex = 188
    BorderStyle = 0 'None
    MultiLine = -1  'True
    TabStop = 0   'False
    MaxLength = 200
    Locked = -1  'True
    BeginProperty Font
      Name = "Monotype Corsiva"
      Size = 14.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = -1 'True
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin Frame Frame1
    Left = 18600
    Top = 660
    Width = 7290
    Height = 4605
    Visible = 0   'False
    TabIndex = 78
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 49
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6030
      Top = 90
      Width = 1185
      Height = 285
      TabIndex = 80
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
      Index = 52
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6795
      Top = 720
      Width = 420
      Height = 285
      TabIndex = 83
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 51
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6030
      Top = 720
      Width = 420
      Height = 285
      TabIndex = 82
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 50
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 6030
      Top = 405
      Width = 1185
      Height = 285
      TabIndex = 81
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
    Begin CheckBox Check1
      Caption = "All"
      BackColor = &HFF0000&
      ForeColor = &HFFFFFF&
      Left = 675
      Top = 990
      Width = 915
      Height = 195
      TabIndex = 103
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdFindz
      Caption = "SMS"
      Index = 2
      Left = 5625
      Top = 1125
      Width = 1215
      Height = 450
      Visible = 0   'False
      TabIndex = 92
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
    Begin Frame frmList1
      Left = 100
      Top = 2205
      Width = 1470
      Height = 1725
      Visible = 0   'False
      TabIndex = 90
      BorderStyle = 0 'None
      Begin ListView ListView1
        Left = 15
        Top = 0
        Width = 1380
        Height = 1665
        TabStop = 0   'False
        TabIndex = 91
      End
    End
    Begin TextBox Txt
      Index = 34
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = 2310
      Top = 105
      Width = 1800
      Height = 285
      TabIndex = 79
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
      Index = 33
      BackColor = &HFFFFFF&
      Left = 3510
      Top = 435
      Width = 1290
      Height = 255
      Visible = 0   'False
      TabIndex = 86
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
      Index = 32
      BackColor = &HFFFFFF&
      Left = 1965
      Top = 435
      Width = 1290
      Height = 255
      Visible = 0   'False
      TabIndex = 85
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
    Begin MSHFlexGrid GridSel
      Left = 630
      Top = 435
      Width = 4500
      Height = 4005
      TabIndex = 84
    End
    Begin BtnEnh CmdFind
      Index = 0
      Left = 5685
      Top = 1620
      Width = 945
      Height = 540
      TabIndex = 163
    End
    Begin BtnEnh CmdFind
      Index = 1
      Left = 5670
      Top = 2220
      Width = 945
      Height = 540
      TabIndex = 164
    End
    Begin Label LblName
      Caption = "Age Of"
      Index = 3
      ForeColor = &HFF0000&
      Left = 5205
      Top = 105
      Width = 645
      Height = 240
      TabIndex = 192
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
      Caption = "To"
      Index = 6
      ForeColor = &HFF0000&
      Left = 6510
      Top = 735
      Width = 240
      Height = 240
      TabIndex = 191
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
      Caption = "From"
      Index = 5
      ForeColor = &HFF0000&
      Left = 5235
      Top = 735
      Width = 495
      Height = 240
      TabIndex = 190
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
      Caption = "On Date"
      Index = 4
      ForeColor = &HFF0000&
      Left = 5205
      Top = 420
      Width = 765
      Height = 240
      TabIndex = 189
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
    Begin Image tmpImage
      Left = 135
      Top = 240
      Width = 1740
      Height = 1980
      Visible = 0   'False
      Stretch = -1  'True
    End
    Begin Label LblName
      Caption = "Print Type"
      Index = 2
      ForeColor = &HFF0000&
      Left = 1275
      Top = 120
      Width = 975
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
      Caption = "To"
      Index = 1
      ForeColor = &H0&
      Left = 3270
      Top = 435
      Width = 225
      Height = 240
      Visible = 0   'False
      TabIndex = 88
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
      Caption = "Date Between"
      Index = 0
      ForeColor = &H0&
      Left = 705
      Top = 435
      Width = 1185
      Height = 240
      Visible = 0   'False
      TabIndex = 87
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
  Begin TextBox Txt
    Index = 48
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 13995
    Top = 480
    Width = 1170
    Height = 255
    Enabled = 0   'False
    TabIndex = 4
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
    Index = 47
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 2790
    Width = 4365
    Height = 255
    Enabled = 0   'False
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
    Index = 46
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 1935
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 33
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
    Index = 45
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 11055
    Top = 480
    Width = 1170
    Height = 255
    Enabled = 0   'False
    TabIndex = 3
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
    Index = 44
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 4500
    Width = 4470
    Height = 255
    Enabled = 0   'False
    TabIndex = 28
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
    Index = 42
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 1365
    Width = 4470
    Height = 255
    TabIndex = 10
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
    Index = 43
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 4215
    Width = 4470
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 14430
    Top = 3690
    Width = 2340
    Height = 255
    Visible = 0   'False
    TabIndex = 73
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
  Begin PictureBox Picture1
    Picture = "MembershipMast.frx":784
    Left = 15930
    Top = 4155
    Width = 390
    Height = 405
    Visible = 0   'False
    TabIndex = 160
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGMemMeshAc
    Left = 18150
    Top = 4680
    Width = 5010
    Height = 2625
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 97
  End
  Begin MSHFlexGrid FGrid
    Left = 18060
    Top = 4290
    Width = 5760
    Height = 1485
    Visible = 0   'False
    TabIndex = 48
  End
  Begin DataGrid DGAcName
    Left = 17895
    Top = 4005
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 51
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 15240
    Height = 450
    TabIndex = 156
  End
  Begin TextBox Txt
    Index = 41
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 1080
    Width = 4470
    Height = 255
    TabIndex = 9
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
  Begin Frame FrmList
    Left = 16980
    Top = 630
    Width = 1470
    Height = 1725
    Visible = 0   'False
    TabIndex = 62
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 0
      Top = -15
      Width = 1380
      Height = 1665
      TabStop = 0   'False
      TabIndex = 63
    End
  End
  Begin CommandButton CmdImgDelete
    Caption = "Delete"
    Left = 16785
    Top = 4185
    Width = 735
    Height = 255
    Visible = 0   'False
    TabIndex = 154
  End
  Begin SSTab SSTab1
    Left = 45
    Top = 5115
    Width = 16500
    Height = 3870
    TabIndex = 64
    Begin TextBox TxtA
      Index = 10
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -66060
      Top = 2805
      Width = 2340
      Height = 285
      Enabled = 0   'False
      TabIndex = 187
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
    Begin TextBox TxtGrid
      Index = 1
      BackColor = &HE0E0E0&
      Left = -73770
      Top = 630
      Width = 1200
      Height = 240
      Visible = 0   'False
      TabIndex = 177
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin Frame FrmList3
      Left = -73905
      Top = 885
      Width = 1470
      Height = 1725
      Visible = 0   'False
      TabIndex = 171
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      BorderStyle = 0 'None
      Begin ListView ListView3
        Left = 0
        Top = -15
        Width = 1380
        Height = 1665
        TabStop = 0   'False
        TabIndex = 172
      End
    End
    Begin MSFlexGrid FGPoint1
      Left = -66675
      Top = 1785
      Width = 1980
      Height = 1440
      Visible = 0   'False
      TabIndex = 170
    End
    Begin Frame FrmList4
      Left = -64050
      Top = 1095
      Width = 1845
      Height = 1815
      Visible = 0   'False
      TabIndex = 168
      BorderStyle = 0 'None
      Begin ListView ListView4
        Left = -15
        Top = 90
        Width = 1845
        Height = 1815
        TabStop = 0   'False
        TabIndex = 169
      End
    End
    Begin TextBox TxtGrid
      Index = 2
      BackColor = &HE0E0E0&
      Left = -70860
      Top = 405
      Width = 1200
      Height = 240
      Visible = 0   'False
      TabIndex = 167
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin DataGrid DGRev
      Left = -68250
      Top = 1215
      Width = 3930
      Height = 2565
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 166
    End
    Begin BtnEnh CmdAdd
      Index = 3
      Left = -64560
      Top = 3435
      Width = 840
      Height = 330
      TabIndex = 159
    End
    Begin BtnEnh CmdAdd
      Index = 0
      Left = -69840
      Top = 450
      Width = 2565
      Height = 390
      TabIndex = 157
    End
    Begin BtnEnh CmdAdd
      Index = 1
      Left = -66270
      Top = 450
      Width = 2565
      Height = 390
      TabIndex = 158
    End
    Begin Frame FrmList2
      Left = 585
      Top = 1455
      Width = 1470
      Height = 1725
      Visible = 0   'False
      TabIndex = 148
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      BorderStyle = 0 'None
      Begin ListView ListView2
        Left = 0
        Top = -15
        Width = 1380
        Height = 1665
        TabStop = 0   'False
        TabIndex = 149
      End
    End
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HE0E0E0&
      Left = 135
      Top = 615
      Width = 1200
      Height = 240
      Visible = 0   'False
      TabIndex = 47
      BorderStyle = 0 'None
      MaxLength = 10
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
    Begin TextBox TxtA
      Index = 4
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -66060
      Top = 1890
      Width = 2340
      Height = 285
      Enabled = 0   'False
      TabIndex = 122
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
    Begin TextBox TxtA
      Index = 5
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 2190
      Width = 2925
      Height = 285
      Enabled = 0   'False
      TabIndex = 123
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
    Begin TextBox TxtA
      Index = 9
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 3105
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 129
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
    Begin TextBox TxtA
      Index = 8
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 2805
      Width = 2925
      Height = 285
      Enabled = 0   'False
      TabIndex = 127
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
    Begin TextBox TxtA
      Index = 7
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 2490
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 125
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
    Begin TextBox TxtA
      Index = 2
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 1590
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 120
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
    Begin TextBox TxtA
      Index = 1
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 1290
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 119
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
    Begin TextBox TxtA
      Index = 0
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 990
      Width = 6135
      Height = 285
      Enabled = 0   'False
      TabIndex = 118
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
    Begin TextBox TxtA
      Index = 3
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -69855
      Top = 1890
      Width = 2925
      Height = 285
      Enabled = 0   'False
      TabIndex = 121
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin TextBox TxtA
      Index = 6
      BackColor = &HFFFFFF&
      ForeColor = &HFF0000&
      Left = -66060
      Top = 2190
      Width = 2340
      Height = 285
      Enabled = 0   'False
      TabIndex = 124
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin CommandButton CmdAddz
      Caption = "Residential Address"
      Index = 0
      Left = -69285
      Top = 555
      Width = 975
      Height = 345
      Visible = 0   'False
      TabIndex = 115
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
    Begin CommandButton CmdAddz
      Caption = "WorkPlace Address"
      Index = 1
      Left = -67200
      Top = 570
      Width = 2220
      Height = 345
      Visible = 0   'False
      TabIndex = 117
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
    Begin CommandButton CmdAddz
      Caption = "Abroad Address"
      Index = 2
      Left = -68745
      Top = 630
      Width = 2220
      Height = 345
      Visible = 0   'False
      TabIndex = 116
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
    Begin CheckBox ChkCorresAdd
      Caption = "Correspondence Address"
      ForeColor = &H80&
      Left = -69855
      Top = 3480
      Width = 2490
      Height = 210
      TabIndex = 131
      BeginProperty Font
        Name = "Arial"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin CommandButton CmdAddz
      Caption = "Confirm"
      Index = 3
      Left = -65130
      Top = 3585
      Width = 1440
      Height = 315
      Visible = 0   'False
      TabIndex = 133
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
    Begin MSHFlexGrid FAGrid
      Left = 0
      Top = 405
      Width = 13920
      Height = 3270
      TabIndex = 46
    End
    Begin MSHFlexGrid FGrid1
      Left = -74955
      Top = 390
      Width = 7905
      Height = 3270
      TabIndex = 165
    End
    Begin DataGrid DGPropMember
      Left = -72060
      Top = 630
      Width = 3360
      Height = 2145
      Visible = 0   'False
      TabStop = 0   'False
      TabIndex = 173
    End
    Begin MSHFlexGrid FPGrid
      Left = -75000
      Top = 405
      Width = 13260
      Height = 3255
      TabIndex = 174
    End
    Begin Label Lbl
      Caption = "Mobile2"
      Index = 46
      ForeColor = &HC00000&
      Left = -66870
      Top = 2820
      Width = 750
      Height = 240
      TabIndex = 186
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
    Begin Image ImgPropMemSign
      Left = -61305
      Top = 2880
      Width = 2295
      Height = 705
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin Image ImgPropMemPhoto
      Left = -61080
      Top = 585
      Width = 1860
      Height = 2280
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin Label LblPropMemSign
      Caption = "Signature"
      ForeColor = &HC0&
      Left = -60570
      Top = 3090
      Width = 825
      Height = 225
      TabIndex = 176
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
    Begin Label LblPropMemPhoto
      Caption = "Photo"
      ForeColor = &HC0&
      Left = -60390
      Top = 1560
      Width = 495
      Height = 225
      TabIndex = 175
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
    Begin Label Lbl
      Caption = "City"
      Index = 36
      ForeColor = &HC00000&
      Left = -71745
      Top = 1875
      Width = 360
      Height = 240
      TabIndex = 132
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
    Begin Label LblAddType
      Caption = "Residential Address"
      ForeColor = &HC00000&
      Left = -71745
      Top = 990
      Width = 1875
      Height = 240
      TabIndex = 134
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
    Begin Image ImgFamilyMemSign
      Left = 14145
      Top = 2745
      Width = 2295
      Height = 705
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin Image ImgFamilyMemPhoto
      Left = 14355
      Top = 435
      Width = 1860
      Height = 2280
      Stretch = -1  'True
      BorderStyle = 1 'Fixed Single
    End
    Begin Label LblFamilyMemSign
      Caption = "Signature"
      ForeColor = &HC0&
      Left = 14865
      Top = 2955
      Width = 825
      Height = 225
      TabIndex = 153
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
    Begin Label LblFamilyMemPhoto
      Caption = "Photo"
      ForeColor = &HC0&
      Left = 15045
      Top = 1425
      Width = 495
      Height = 225
      TabIndex = 152
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
    Begin Label Lbl
      Caption = "State"
      Index = 31
      ForeColor = &HC00000&
      Left = -66645
      Top = 1905
      Width = 495
      Height = 240
      TabIndex = 137
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
      Caption = "Country"
      Index = 32
      ForeColor = &HC00000&
      Left = -71745
      Top = 2190
      Width = 735
      Height = 240
      TabIndex = 136
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
      Caption = "Phone No(s)"
      Index = 33
      ForeColor = &HC00000&
      Left = -71745
      Top = 2505
      Width = 1140
      Height = 240
      TabIndex = 135
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
      Caption = "Mobile1"
      Index = 37
      ForeColor = &HC00000&
      Left = -71745
      Top = 2820
      Width = 750
      Height = 240
      TabIndex = 130
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
      Caption = "E-Mail"
      Index = 39
      ForeColor = &HC00000&
      Left = -71745
      Top = 3120
      Width = 585
      Height = 240
      TabIndex = 128
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
      Caption = "PinCode"
      Index = 40
      ForeColor = &HC00000&
      Left = -66885
      Top = 2205
      Width = 810
      Height = 240
      TabIndex = 126
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
    Index = 35
    BackColor = &HC0FFFF&
    ForeColor = &HFF&
    Left = 12285
    Top = 795
    Width = 4530
    Height = 1065
    TabIndex = 45
    BorderStyle = 0 'None
    MultiLine = -1  'True
    ScrollBars = 2
    MaxLength = 200
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Appearance = 0 'Flat
  End
  Begin CommandButton CmdProposedMemInf
    Caption = "Proposed Member Detail"
    Left = 18930
    Top = 6150
    Width = 2220
    Height = 345
    Visible = 0   'False
    TabIndex = 100
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
  Begin CommandButton CmdMCard
    Caption = "Generate Member Card"
    BackColor = &HFFC0C0&
    Left = 18375
    Top = 8475
    Width = 2565
    Height = 510
    Visible = 0   'False
    TabIndex = 77
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin CommandButton CmdVarifyCard
    Caption = "Verify Member Card"
    BackColor = &HFFC0C0&
    Left = 18375
    Top = 7980
    Width = 2565
    Height = 510
    Visible = 0   'False
    TabIndex = 76
    BeginProperty Font
      Name = "Tahoma"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Style = 1
  End
  Begin TextBox Txt
    Index = 28
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 480
    Width = 1170
    Height = 255
    Enabled = 0   'False
    TabIndex = 2
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
    Left = 4590
    Top = 480
    Width = 1545
    Height = 255
    TabIndex = 1
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
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 480
    Width = 1470
    Height = 255
    Enabled = 0   'False
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 15840
    Top = 2700
    Width = 765
    Height = 255
    Enabled = 0   'False
    TabIndex = 43
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 15840
    Top = 2985
    Width = 645
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 44
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
  Begin CommandButton CmdAddz
    Caption = "Additionals/Family Members"
    Index = 10
    Left = 18930
    Top = 7260
    Width = 2220
    Height = 345
    Visible = 0   'False
    TabIndex = 72
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
  Begin CommandButton CmdAddz
    Caption = "C&hildren Details"
    Index = 9
    Left = 18930
    Top = 6900
    Width = 2220
    Height = 345
    Visible = 0   'False
    TabIndex = 71
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
  Begin CommandButton CmdAddz
    Caption = "Spo&use Details"
    Index = 8
    Left = 18930
    Top = 6495
    Width = 2220
    Height = 345
    Visible = 0   'False
    TabIndex = 70
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
  Begin DataGrid DgMemType
    Left = 2460
    Top = 5670
    Width = 4830
    Height = 2730
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 59
  End
  Begin DataGrid DGUnderAc
    Left = 1650
    Top = 6390
    Width = 5610
    Height = 3150
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 50
  End
  Begin MSFlexGrid FGPoint
    Left = 17235
    Top = 2250
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 61
  End
  Begin DataGrid DGCity
    Left = 720
    Top = 6015
    Width = 4845
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 60
  End
  Begin TextBox txtCurrBal
    Left = 15840
    Top = 2985
    Width = 765
    Height = 255
    Enabled = 0   'False
    TabIndex = 56
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
  Begin CommonDialog CDlg
  End
  Begin TextBox Txt
    Index = 38
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 10590
    Top = 795
    Width = 1635
    Height = 255
    Enabled = 0   'False
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
    Index = 37
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 795
    Width = 1635
    Height = 255
    Enabled = 0   'False
    TabIndex = 7
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 3255
    Top = 795
    Width = 2880
    Height = 255
    Enabled = 0   'False
    TabIndex = 6
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 795
    Width = 525
    Height = 255
    Enabled = 0   'False
    Text = "Mr."
    TabIndex = 5
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 2505
    Width = 570
    Height = 255
    Enabled = 0   'False
    TabIndex = 14
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 2220
    Width = 4470
    Height = 255
    Enabled = 0   'False
    TabIndex = 13
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 1650
    Width = 4470
    Height = 255
    TabIndex = 11
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 1935
    Width = 4470
    Height = 255
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
    Index = 30
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 2790
    Width = 1845
    Height = 255
    Enabled = 0   'False
    TabIndex = 17
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
    ForeColor = &HFF0000&
    Left = 4290
    Top = 3075
    Width = 1845
    Height = 255
    Enabled = 0   'False
    TabIndex = 19
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
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 3360
    Width = 1845
    Height = 255
    Enabled = 0   'False
    TabIndex = 21
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 3360
    Width = 1275
    Height = 255
    TabIndex = 20
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
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 3075
    Width = 1275
    Height = 255
    Enabled = 0   'False
    TabIndex = 18
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
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 3645
    Width = 1845
    Height = 255
    Enabled = 0   'False
    TabIndex = 24
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
    Index = 26
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 2790
    Width = 570
    Height = 255
    Enabled = 0   'False
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
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 3645
    Width = 1275
    Height = 255
    Enabled = 0   'False
    TabIndex = 22
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
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 3930
    Width = 1845
    Height = 255
    TabIndex = 26
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 3360
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 38
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
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 3075
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 37
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 2505
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 35
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 2220
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 34
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
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 1650
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 32
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 1080
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 30
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 1365
    Width = 4365
    Height = 255
    Enabled = 0   'False
    TabIndex = 31
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
    Index = 39
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 1665
    Top = 3930
    Width = 1275
    Height = 255
    Enabled = 0   'False
    TabIndex = 25
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
    Index = 40
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 4290
    Top = 2505
    Width = 1845
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
    Index = 36
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 4485
    Width = 4365
    Height = 255
    TabIndex = 39
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
  Begin Frame FrBlackListed
    Caption = "Frame2"
    ForeColor = &HFF0000&
    Left = 6165
    Top = 3930
    Width = 6090
    Height = 555
    TabIndex = 94
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
      Index = 29
      BackColor = &HFFFFFF&
      Left = 1695
      Top = -15
      Width = 4365
      Height = 255
      Enabled = 0   'False
      TabIndex = 41
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
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      Left = 1695
      Top = 270
      Width = 4365
      Height = 255
      Enabled = 0   'False
      TabIndex = 42
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
    Begin Label Lbl
      Caption = "BlackList Reason  "
      Index = 20
      ForeColor = &HFF0000&
      Left = 30
      Top = -15
      Width = 1740
      Height = 240
      TabIndex = 96
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
      Caption = "Black List By  "
      Index = 21
      ForeColor = &HFF0000&
      Left = 30
      Top = 270
      Width = 1335
      Height = 240
      TabIndex = 95
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
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HFF0000&
    Left = 7860
    Top = 3645
    Width = 500
    Height = 255
    Enabled = 0   'False
    TabIndex = 40
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
  Begin TextBox Txt
    Index = 24
    BackColor = &HFFFFFF&
    Left = 19860
    Top = 7605
    Width = 1845
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 23
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
    Appearance = 0 'Flat
  End
  Begin Label Lbl
    Caption = "GSTIN"
    Index = 47
    ForeColor = &HFF0000&
    Left = 195
    Top = 4785
    Width = 600
    Height = 240
    TabIndex = 193
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
  Begin Line Line1
    BorderColor = &HFF0000&
    X1 = 45
    Y1 = 765
    X2 = 16965
    Y2 = 765
    BorderWidth = 2
  End
  Begin Label Lbl
    Caption = "Mobile1"
    Index = 45
    ForeColor = &HC00000&
    Left = 8355
    Top = 7860
    Width = 750
    Height = 240
    TabIndex = 185
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
    Caption = "Cessation Date"
    Index = 44
    ForeColor = &HFF0000&
    Left = 12465
    Top = 480
    Width = 1410
    Height = 240
    TabIndex = 184
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
    Caption = "Posted At"
    Index = 43
    ForeColor = &HFF0000&
    Left = 6195
    Top = 2790
    Width = 900
    Height = 240
    TabIndex = 183
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
    Caption = "CIN No."
    Index = 38
    ForeColor = &HFF0000&
    Left = 6195
    Top = 1935
    Width = 705
    Height = 240
    TabIndex = 182
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
    Caption = "Id Proof No."
    Index = 35
    ForeColor = &HFF0000&
    Left = 195
    Top = 4500
    Width = 1125
    Height = 240
    TabIndex = 181
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
    Caption = "Id Proof"
    Index = 25
    ForeColor = &HFF0000&
    Left = 195
    Top = 4200
    Width = 750
    Height = 240
    TabIndex = 180
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
    Caption = "Mother Name"
    Index = 22
    ForeColor = &HFF0000&
    Left = 195
    Top = 1350
    Width = 1275
    Height = 240
    TabIndex = 179
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
    Caption = "MemberShip Date"
    Index = 12
    ForeColor = &HFF0000&
    Left = 9255
    Top = 480
    Width = 1710
    Height = 240
    TabIndex = 178
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
    Caption = "Corporate Membership #"
    Index = 75
    ForeColor = &HFF0000&
    Left = 14250
    Top = 3435
    Width = 2340
    Height = 240
    Visible = 0   'False
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
  Begin Label LblUser
    Caption = "User"
    ForeColor = &HFF0000&
    Left = 14190
    Top = 4350
    Width = 2520
    Height = 255
    TabIndex = 162
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
    Left = 14175
    Top = 4665
    Width = 2520
    Height = 255
    TabIndex = 161
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
  Begin Label Lbl
    Caption = "Father Name"
    Index = 14
    ForeColor = &HFF0000&
    Left = 195
    Top = 1065
    Width = 1230
    Height = 240
    TabIndex = 155
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
  Begin Image ImgMemPhoto
    Left = 12285
    Top = 1920
    Width = 1860
    Height = 2280
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
  End
  Begin Image ImgMemSign
    Left = 14250
    Top = 1935
    Width = 2295
    Height = 705
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
  End
  Begin Label LblMemSign
    Caption = "Member Signature"
    ForeColor = &HC0&
    Left = 14550
    Top = 2220
    Width = 1575
    Height = 225
    TabIndex = 151
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
  Begin Label LblMemPhoto
    Caption = "Member Photo"
    ForeColor = &HC0&
    Left = 12600
    Top = 2985
    Width = 1245
    Height = 225
    TabIndex = 150
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
  Begin Label Lbl
    Caption = "Residing Since"
    Index = 41
    ForeColor = &H0&
    Left = 18570
    Top = 7575
    Width = 1305
    Height = 240
    Visible = 0   'False
    TabIndex = 108
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
  Begin Label Lbl
    Caption = "Application Date"
    Index = 11
    ForeColor = &HFF0000&
    Left = 6210
    Top = 480
    Width = 1575
    Height = 240
    TabIndex = 74
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
    Caption = "Member ID"
    Index = 74
    ForeColor = &HFF0000&
    Left = 195
    Top = 480
    Width = 1035
    Height = 240
    TabIndex = 68
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
    Caption = "Application No."
    Index = 73
    ForeColor = &HFF0000&
    Left = 3135
    Top = 480
    Width = 1455
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
  Begin Label LblOpBalType
    Caption = "Dr/Cr"
    ForeColor = &HC0&
    Left = 16650
    Top = 2700
    Width = 555
    Height = 240
    TabIndex = 55
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
  Begin Label LblCurBalType
    Caption = "Dr/Cr"
    ForeColor = &HC0&
    Left = 16650
    Top = 2985
    Width = 555
    Height = 240
    TabIndex = 54
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
    Caption = "Opening Balance"
    Index = 17
    ForeColor = &HFF0000&
    Left = 14190
    Top = 2670
    Width = 1650
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
    Caption = "Current Balance"
    Index = 16
    ForeColor = &HFF0000&
    Left = 14190
    Top = 2985
    Width = 1545
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
  Begin Label Label1
    Caption = "First Name"
    Index = 5
    ForeColor = &HFF0000&
    Left = 2235
    Top = 795
    Width = 1020
    Height = 240
    TabIndex = 145
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
    Caption = "Last Name"
    Index = 4
    ForeColor = &HFF0000&
    Left = 9555
    Top = 795
    Width = 1005
    Height = 240
    TabIndex = 102
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
    ForeColor = &HFF0000&
    Left = 6195
    Top = 795
    Width = 1260
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
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 1
    ForeColor = &HFF0000&
    Left = 195
    Top = 795
    Width = 1440
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
  Begin Label Lbl
    Caption = "Credit Limit"
    Index = 6
    ForeColor = &HFF0000&
    Left = 3000
    Top = 2520
    Width = 1110
    Height = 240
    TabIndex = 147
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
    Left = 195
    Top = 3900
    Width = 1200
    Height = 240
    TabIndex = 146
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
    Left = 6195
    Top = 1080
    Width = 1590
    Height = 240
    TabIndex = 144
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
    Left = 6195
    Top = 1365
    Width = 1635
    Height = 240
    TabIndex = 143
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
    Left = 6195
    Top = 1650
    Width = 1590
    Height = 240
    TabIndex = 142
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
    Left = 6195
    Top = 2220
    Width = 855
    Height = 240
    TabIndex = 141
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
    Left = 6195
    Top = 2505
    Width = 1125
    Height = 240
    TabIndex = 140
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
    Left = 6195
    Top = 3090
    Width = 975
    Height = 240
    TabIndex = 139
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
    Left = 3000
    Top = 3645
    Width = 795
    Height = 240
    TabIndex = 138
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
    Left = 6180
    Top = 3375
    Width = 1485
    Height = 240
    TabIndex = 114
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
    Left = 3000
    Top = 3930
    Width = 780
    Height = 240
    TabIndex = 110
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
    Left = 195
    Top = 3615
    Width = 1020
    Height = 240
    TabIndex = 109
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
    Left = 195
    Top = 3330
    Width = 1185
    Height = 240
    TabIndex = 107
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
    Left = 3000
    Top = 3360
    Width = 1050
    Height = 240
    TabIndex = 106
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
    Left = 3000
    Top = 3075
    Width = 1305
    Height = 240
    TabIndex = 105
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
    Left = 195
    Top = 3045
    Width = 705
    Height = 240
    TabIndex = 104
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
    ForeColor = &HC0&
    Left = 2280
    Top = 2805
    Width = 435
    Height = 240
    TabIndex = 99
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
    ForeColor = &HC0&
    Left = 2280
    Top = 2535
    Width = 435
    Height = 240
    TabIndex = 98
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
    Left = 195
    Top = 2760
    Width = 585
    Height = 240
    TabIndex = 93
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
    Left = 3000
    Top = 2790
    Width = 960
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
  Begin Label Lbl
    Caption = "A/c Name"
    Index = 0
    ForeColor = &HFF0000&
    Left = 195
    Top = 1635
    Width = 915
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
  Begin Label Lbl
    Caption = "Allow Credit"
    Index = 23
    ForeColor = &HFF0000&
    Left = 195
    Top = 2475
    Width = 1170
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
    Caption = "Category"
    Index = 18
    ForeColor = &HFF0000&
    Left = 195
    Top = 2175
    Width = 855
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
    Caption = "Under Group"
    Index = 2
    ForeColor = &HFF0000&
    Left = 195
    Top = 1890
    Width = 1215
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
  Begin Label LblMessAc
    Caption = "Mess A/c"
    ForeColor = &HFF0000&
    Left = 6195
    Top = 4515
    Width = 825
    Height = 240
    TabIndex = 113
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
    Left = 6180
    Top = 3660
    Width = 1155
    Height = 240
    TabIndex = 112
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
    Index = 2
    ForeColor = &HC0&
    Left = 8400
    Top = 3645
    Width = 435
    Height = 240
    TabIndex = 111
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

Attribute VB_Name = "MembershipMast"

Private global_156 As Byte
Private global_52 As Integer
Private global_60 As Integer
Private global_112 As Integer
Private global_110 As Integer
Private global_104 As Integer
Private global_228 As Variant
Private global_272 As Integer
Private global_274 As Integer
Private global_80 As Integer
Private global_120 As Long

Private Sub Form_Load() '136DA98
  'Data Table: 5ADDB4
  Dim var_94 As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_90 As Variant
  Dim var_C8 As String
  Dim var_B4 As Variant
  Dim Me As Recordset15
  Dim unk_5ADDE0 As Connection15
  Dim var_8C As Recordset15
  loc_136D224: On Error Goto loc_136DA5C
  loc_136D232: Set var_90 = Me.LblName
  loc_136D238: Call 0.Method_Form_Load0 (0, var_94)
  loc_136D240: var_94.Visible = False
  loc_136D257: Set var_90 = Me.LblName
  loc_136D25D: Call 0.Method_Form_Load0 (1, var_94)
  loc_136D265: var_94.Visible = False
  loc_136D27E: Set var_90 = Me.Txt
  loc_136D284: Call 0.Method_Form_Load0 (CInt(&H20), var_94)
  loc_136D28C: var_94.Visible = False
  loc_136D2A5: Set var_90 = Me.Txt
  loc_136D2AB: Call 0.Method_Form_Load0 (CInt(&H21), var_94)
  loc_136D2B3: var_94.Visible = False
  loc_136D2D5: unk_5ADE1E.Execute "Delete From MemAddRWA where  Mark='*'", var_B4, -1
  loc_136D2F0: Me.SSTab1.Tab = 0
  loc_136D300: Call 0.Method_MeC (CDbl(7590))
  loc_136D30D: Call 0.Method_Me4 (CDbl(11900))
  loc_136D319: Call 0.Method_arg_7C (CDbl(0))
  loc_136D325: Call 0.Method_arg_74 (CDbl(0))
  loc_136D331: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_136D349: Me.SSTab1.BackColor = CVar(CLng(MemVar_1F951B8))
  loc_136D35F: Me.Frame1.BackColor = CLng(MemVar_1F951B4)
  loc_136D373: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_136D384: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_136D395: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_136D3A6: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_136D3B7: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_136D3C8: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_136D3D9: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_136D3EA: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_136D3FB: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_136D40C: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_136D426: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_136D434: Set var_90 = MemVar_1F95044
  loc_136D443: Call 0.Method_Form_Load8 (var_90)
  loc_136D459: Me.Recordset20.Clone
  loc_136D473: Call 0.Method_Form_LoadC (var_90, -1)
  loc_136D48D: Me.Recordset20.Clone
  loc_136D4A7: Call 0.Method_arg_50 (var_90, -1, var_90)
  loc_136D4BA: global_156 = CByte(1)
  loc_136D4EB: Proc_183_1_F5BEA0(Me, CStr(-2147483643), CStr(&HC00000), CByte(1))
  loc_136D503: Set var_90 = Me.txtCurrBal
  loc_136D509: Me.txtCurrBal.BackColor = -2147483643
  loc_136D520: Me.txtCurrBal.ForeColor = &HC00000
  loc_136D52D: global_52 = 0
  loc_136D53A: Set global_168 = New 
  loc_136D54C: Me.Recordset15.CursorLocation = 3
  loc_136D576: var_B4 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE NATURE='Customer' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_136D580: Me.Open var_B4, CVar(MemVar_1F951E0), 2
  loc_136D594: CVarUnk
  loc_136D599: VerifyVarObj
  loc_136D59F: Set var_90 = Me.DGAcName
  loc_136D5A5: LateIdStAd
  loc_136D5BD: Set global_180 = New 
  loc_136D5CF: Me.DGAcName.CursorLocation = 3
  loc_136D5F2: var_C8 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where NATURE='Customer' AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_136D603: Me.Open CVar(var_C8 & "' or LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F951E0), 2
  loc_136D617: CVarUnk
  loc_136D61C: VerifyVarObj
  loc_136D622: Set var_90 = Me.DGUnderAc
  loc_136D628: LateIdStAd
  loc_136D640: Set global_176 = New 
  loc_136D652: Me.DGUnderAc.CursorLocation = 3
  loc_136D67C: var_B4 = CVar("Select SubCode As Code,Name From SubGroup Where CompanyType in ('Mesh') And ActiveYN=1 And (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') order by Name") 'String
  loc_136D686: Me.Open var_B4, CVar(MemVar_1F951E0), 2
  loc_136D69A: CVarUnk
  loc_136D69F: VerifyVarObj
  loc_136D6A5: Set var_90 = Me.DGMemMeshAc
  loc_136D6AB: LateIdStAd
  loc_136D6C3: Set global_184 = New 
  loc_136D6D5: Me.DGMemMeshAc.CursorLocation = 3
  loc_136D6F8: var_C8 = "Select CityCode As Code,CityName As Name,CityHelp,S.Name As SName,S.Code As SCode,C.Name As CName,C.Code As CCode From ((City Inner Join State S On S.Code=City.State) Inner Join Country C On C.Code=City.Country)  WHERE (City.LOGSITE_CODE='" & MemVar_1F95078
  loc_136D709: Me.Open CVar(var_C8 & "' or City.LOGSITE_CODE='HO')  Order by CityName"), CVar(MemVar_1F951E0), 2
  loc_136D71D: CVarUnk
  loc_136D722: VerifyVarObj
  loc_136D728: Set var_90 = Me.DGCity
  loc_136D72E: LateIdStAd
  loc_136D746: Set global_188 = New 
  loc_136D758: Me.DGCity.CursorLocation = 3
  loc_136D782: var_B4 = CVar("Select  Code, Name, Corporate From MemCatMast WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_136D7A0: CVarUnk
  loc_136D7A5: VerifyVarObj
  loc_136D7AB: Set var_90 = Me.DgMemType
  loc_136D7B1: LateIdStAd
  loc_136D7DB: Me.DgMemType.CursorLocation = 3
  loc_136D7FE: var_C8 = "Select M.SubCode as PMemCode,M.Name,M.CardNo,M.ConPrefix,M.Gender,M.Mobile,M.Email,M.Desig,M.PicPath,M.SigPath,M.Label From MemberFamily M Inner Join SubGroup S On M.SubCode=S.SubCode And M. RelationShip='Member' Where M.LOGSITE_CODE='" & MemVar_1F95078
  loc_136D805: var_B4 = CVar(var_C8 & "' And M.RelationShip='Member' And S.ActiveYN=1 Order by M.Name") 'String
  loc_136D80F: r_B4, CVar(MemVar_1F951E0), 2 var_B4, CVar(MemVar_1F95044), 2
  loc_136D823: CVarUnk
  loc_136D828: VerifyVarObj
  loc_136D834: LateIdStAd
  loc_136D856: var_C8 = "SELECT MembershipRevMast.Code, MembershipRevMast.Description As Name FROM MembershipRevMast Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_136D866: unk_5ADDE0.Execute var_C8 & "' or LOGSITE_CODE='HO') ORDER BY MembershipRevMast.Description", var_B4, -1
  loc_136D895: CVarUnk
  loc_136D89A: VerifyVarObj
  loc_136D8A6: LateIdStAd
  loc_136D8D8: unk_5ADDE0.Execute "Select * From MemEnviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_B4, -1
  loc_136D8E3: Set var_8C = Me.DGRev
  loc_136D907: If (var_8C.RecordCount > 0) Then
  loc_136D919:   var_90 = var_8C.Fields
  loc_136D938:   global_268 = Proc_6_38_E69628(CVar(var_90.Item("Interface")), var_90, var_90, Me.DGPropMember, var_90, var_90, New)
  loc_136D948: Else
  loc_136D95B:   var_B4 = "Member EnvironMent Settings NOT SET!"
  loc_136D961:   MsgBox(var_B4, 0, var_E0, var_100, var_120)
  loc_136D971: End If
  loc_136D97B: Set global_164 = New 
  loc_136D98D: Me.Recordset15.LockType = 3
  loc_136D99D: Me.CursorLocation = 3
  loc_136D9AD: Me.CursorType = 2
  loc_136D9C6: var_C8 = "Select SubCode As SearchCode,SubCode,Site_Code,Name From SubGroup Where CompanyType in (SELECT Code FROM MemCatMast WHERE Corporate='N') and (LOGSITE_CODE='" & MemVar_1F95078
  loc_136D9D6: unk_5ADE1E.Execute var_C8 & "' or LOGSITE_CODE='HO') order by Name", var_B4, -1
  loc_136DA11: var_C8 = "INI"
  loc_136DA1F: Call Proc_265_103_10EA5D0(Proc_5_1_100EC1C(var_C8, Me, Me, Me, 3), -1, Me)
  loc_136DA2A: Call Proc_265_91_154638C(global_188, 3)
  loc_136DA2F: Call Proc_265_108_10E24F4(-1)
  loc_136DA34: Call Proc_265_92_12D58F4()
  loc_136DA39: Call Proc_265_112_1B48468()
  loc_136DA4B: Me.LblAddType.Caption = "Residential Address"
  loc_136DA58: Set var_8C = Nothing
  loc_136DA5B: Exit Sub
  loc_136DA5C: ' Referenced from: 136D224
  loc_136DA64: Set var_90 = Err()
  loc_136DA6A: Call 0.Method_arg_2C (var_C8)
  loc_136DA83: MsgBox(CVar(var_C8), &H40, var_E0, var_100, var_120)
  loc_136DA96: Exit Sub
End Sub

Private Sub Form_Resize() '1126F8C
  'Data Table: 5ADDB4
  Dim var_8C As TextBox
  Dim var_A0 As Variant
  Dim var_B4 As DataGrid
  Dim var_B8 As TextBox
  loc_1126C18: Call Proc_265_107_1057E24()
  loc_1126C2B: Set var_88 = Me.Txt
  loc_1126C31: Call 0.Method_Form_Resize0 (CInt(1), var_8C)
  loc_1126C50: Me.DGAcName.Left = CVar(var_8C.Left)
  loc_1126C6C: Set var_B4 = Me.Txt
  loc_1126C72: Call 0.Method_Form_Resize0 (CInt(1), var_B8)
  loc_1126C8D: Set var_88 = Me.Txt
  loc_1126C93: Call 0.Method_Form_Resize0 (CInt(1), var_8C)
  loc_1126CAB: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_1126CBA: Me.DGAcName.Top = CVar(var_8C.Left)
  loc_1126CDA: Set var_88 = Me.Txt
  loc_1126CE0: Call 0.Method_Form_Resize0 (CInt(2), var_8C)
  loc_1126CFF: Me.DGUnderAc.Left = CVar(var_8C.Left)
  loc_1126D1B: Set var_B4 = Me.Txt
  loc_1126D21: Call 0.Method_Form_Resize0 (CInt(2), var_B8)
  loc_1126D3C: Set var_88 = Me.Txt
  loc_1126D42: Call 0.Method_Form_Resize0 (CInt(2), var_8C)
  loc_1126D5A: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_1126D69: Me.DGUnderAc.Top = CVar(var_8C.Left)
  loc_1126D89: Set var_88 = Me.Txt
  loc_1126D8F: Call 0.Method_Form_Resize0 (CInt(&H24), var_8C)
  loc_1126DAE: Me.DGMemMeshAc.Left = CVar(var_8C.Left)
  loc_1126DCA: Set var_B4 = Me.Txt
  loc_1126DD0: Call 0.Method_Form_Resize0 (CInt(&H24), var_B8)
  loc_1126DEB: Set var_88 = Me.Txt
  loc_1126DF1: Call 0.Method_Form_Resize0 (CInt(&H24), var_8C)
  loc_1126E09: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_1126E18: Me.DGMemMeshAc.Top = CVar(var_8C.Left)
  loc_1126E38: Set var_88 = Me.TxtA
  loc_1126E3E: Call 0.Method_Form_Resize0 (CInt(3), var_8C)
  loc_1126E5D: Me.DGCity.Left = CVar(var_8C.Left)
  loc_1126E79: Set var_B4 = Me.TxtA
  loc_1126E7F: Call 0.Method_Form_Resize0 (CInt(3), var_B8)
  loc_1126E9A: Set var_88 = Me.TxtA
  loc_1126EA0: Call 0.Method_Form_Resize0 (CInt(3), var_8C)
  loc_1126EB8: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_1126EC7: Me.DGCity.Top = CVar(var_8C.Left)
  loc_1126EE7: Set var_88 = Me.Txt
  loc_1126EED: Call 0.Method_Form_Resize0 (CInt(7), var_8C)
  loc_1126F0C: Me.DgMemType.Left = CVar(var_8C.Left)
  loc_1126F28: Set var_B4 = Me.Txt
  loc_1126F2E: Call 0.Method_Form_Resize0 (CInt(7), var_B8)
  loc_1126F49: Set var_88 = Me.Txt
  loc_1126F4F: Call 0.Method_Form_Resize0 (CInt(7), var_8C)
  loc_1126F67: var_A0 = CVar(((var_8C.Top + var_B8.Height) + CDbl(&HF))) 'Single
  loc_1126F76: Me.DgMemType.Top = CVar(var_8C.Left)
  loc_1126F88: Exit Sub
  loc_1126F89: ThisVCallI2
End Sub

Private Sub Form_Unload(Cancel As Integer) 'FE8264
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_A0 As TextBox
  Dim var_D0 As Variant
  Dim unk_5ADE1E As Connection15
  loc_FE809F: Set global_164 = Nothing
  loc_FE80B1: Set global_168 = Nothing
  loc_FE80C3: Set global_172 = Nothing
  loc_FE80D5: Set global_180 = Nothing
  loc_FE80E7: Set global_184 = Nothing
  loc_FE80F9: Set global_188 = Nothing
  loc_FE810B: Set global_192 = Nothing
  loc_FE811D: Set global_276 = Nothing
  loc_FE8128: Set var_88 = Me.TopCtrl1
  loc_FE812E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE8136: var_9C = CStr()
  loc_FE8147: If (var_9C = "Add") Then
  loc_FE816A:   Set var_88 = Me.Txt
  loc_FE8170:   Call 0.Method_Form_Unload0 (CInt(0), var_A0, var_9C, "Delete From MemAddRWA where SubCode='")
  loc_FE8178:   var_114 = var_A0.Text
  loc_FE818E:   var_D0 = -1 & Trim(CVar(var_9C)) 
  loc_FE81A5:   unk_5ADE1E.Execute CStr(var_D0 & "'"), var_118, 
  loc_FE81C3: End If
  loc_FE81C7: Set var_88 = Me.TopCtrl1
  loc_FE81CD: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE81D5: var_9C = CStr()
  loc_FE81E6: If (var_9C = "Edit") Then
  loc_FE8209:   Set var_88 = Me.Txt
  loc_FE820F:   Call 0.Method_Form_Unload0 (CInt(0), var_A0, var_9C, "Delete From MemAddRWA where SubCode='")
  loc_FE8217:   var_114 = var_A0.Text
  loc_FE822D:   var_D0 = -1 & Trim(CVar(var_9C)) 
  loc_FE8244:   unk_5ADE1E.Execute CStr(var_D0 & "'And Mark='*'"), var_118, 
  loc_FE8262: End If
  loc_FE8262: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'EB0C74
  'Data Table: 5ADDB4
  loc_EB0BEC: On Error Goto loc_EB0C0C
  loc_EB0C03: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_EB0C0B: Exit Sub
  loc_EB0C0C: ' Referenced from: EB0BEC
  loc_EB0C14: Set var_88 = Err()
  loc_EB0C1A: Call 0.Method_arg_1C (var_8C, Shift)
  loc_EB0C2B: If (var_8C <> 0) Then
  loc_EB0C36:   Set var_88 = Err()
  loc_EB0C3C:   Call 0.Method_arg_2C (var_90)
  loc_EB0C5D:   MsgBox(CVar(var_90), &H40, "Validation", var_E0, var_100)
  loc_EB0C70: End If
  loc_EB0C70: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1B748
  'Data Table: 5ADDB4
  Dim KeyAscii As Integer
  loc_E1B73C: If (KeyAscii = CInt(&HD)) Then
  loc_E1B741:   KeyAscii = 0
  loc_E1B744: End If
  loc_E1B744: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A '108D0EC
  'Data Table: 5ADDB4
  Dim var_8C As String
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_90 As Variant
  Dim var_CC As Field20
  Dim var_88 As Long
  Dim var_EC As Variant
  Dim var_FC As Variant
  Dim var_100 As TextBox
  Dim var_A4 As Variant
  loc_108CE4C: On Error Goto loc_108D085
  loc_108CE4F: Call Proc_265_104_124C664()
  loc_108CE54: Call Proc_265_105_EB0944()
  loc_108CE7C: Call Proc_265_103_10EA5D0(Proc_5_1_100EC1C("ADD", Me))
  loc_108CE8A: var_A4 = Date
  loc_108CEA1: Set var_90 = Me.Txt
  loc_108CEA7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1C), var_A8)
  loc_108CEAF: var_A8.Text = CStr(var_A4)
  loc_108CEC7: var_C8 = 0
  loc_108CEE6: unk_5ADE1E.Execute "Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup Where IsNumeric(substring(SubCode,3,6))=1", var_A4, -1
  loc_108CEEE: var_90 = var_90.Fields
  loc_108CEF6: var_C8 = var_A8.Item(var_A8)
  loc_108CEFE: var_CC = var_CC.Value
  loc_108CF08: var_88 = CLng(var_DC)
  loc_108CF28: var_EC = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2, var_88)) 'String
  loc_108CF53: var_FC = (1 + Format(var_88, "000000"))
  loc_108CF57: var_8C = CStr(var_FC)
  loc_108CF66: Set var_90 = Me.Txt
  loc_108CF6C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_A8, var_8C, 1)
  loc_108CF9C: Set var_90 = Me.Txt
  loc_108CFA2: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_A8, var_8C)
  loc_108CFAA: var_DC = var_EC
  loc_108CFBD: Set var_CC = Me.Txt
  loc_108CFC3: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_100)
  loc_108CFCB: var_100.Tag = var_8C
  loc_108CFE9: Set var_90 = Me.Txt
  loc_108CFEF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(6), var_A8)
  loc_108CFF7: var_A8.SetFocus
  loc_108D012: global_152 = vbNullString
  loc_108D01C: global_116 = "N"
  loc_108D02D: Set var_90 = Me.Txt
  loc_108D033: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1B), var_A8, 0)
  loc_108D03B: var_A8.Enabled = CDbl(0)
  loc_108D053: Me.CmdMCard.Enabled = False
  loc_108D067: Me.CmdVarifyCard.Enabled = False
  loc_108D07C: Me.LblAddType.Caption = "Residential Address"
  loc_108D084: Exit Sub
  loc_108D085: ' Referenced from: 108CE4C
  loc_108D08D: Set var_90 = Err()
  loc_108D093: Call 0.Method_arg_1C (var_104)
  loc_108D0A4: If (var_104 <> 0) Then
  loc_108D0AF:   Set var_90 = Err()
  loc_108D0B5:   Call 0.Method_arg_2C (var_8C)
  loc_108D0D6:   MsgBox(CVar(var_8C), &H40, "Validation", var_EC, var_FC)
  loc_108D0E9: End If
  loc_108D0E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B '10C2994
  'Data Table: 5ADDB4
  Dim var_114 As String
  Dim var_118 As TextBox
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_110 As CommandButton
  loc_10C26BC: On Error Goto loc_10C292F
  loc_10C26BF: Call Proc_265_106_10506D4()
  loc_10C26FB: If (MsgBox("Cancel ?", 4, "Terminate Process", var_EC, var_10C) = 6) Then
  loc_10C2702:   Set var_110 = Me.TopCtrl1
  loc_10C2708:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C2710:   var_114 = CStr()
  loc_10C2721:   If (var_114 = "Add") Then
  loc_10C2744:     Set var_110 = Me.Txt
  loc_10C274A:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(0), var_118, var_114, "Delete From MemAddRWA where SubCode='")
  loc_10C2752:     var_12C = var_118.Text
  loc_10C2768:     var_EC = -1 & Trim(CVar(var_114)) 
  loc_10C277F:     unk_5ADE1E.Execute CStr(var_EC & "'"), var_130, 
  loc_10C279D:   End If
  loc_10C27A1:   Set var_110 = Me.TopCtrl1
  loc_10C27A7:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10C27AF:   var_114 = CStr()
  loc_10C27C0:   If (var_114 = "Edit") Then
  loc_10C27E3:     Set var_110 = Me.Txt
  loc_10C27E9:     Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(0), var_118, var_114, "Delete From MemAddRWA where SubCode='")
  loc_10C27F1:     var_12C = var_118.Text
  loc_10C2807:     var_EC = -1 & Trim(CVar(var_114)) 
  loc_10C2810:     var_10C = var_EC & "'And Mark='*'" 
  loc_10C281E:     unk_5ADE1E.Execute CStr(var_10C), var_130, 
  loc_10C283C:   End If
  loc_10C2851:   var_114 = "INI"
  loc_10C285F:   Call Proc_265_103_10EA5D0(Proc_5_1_100EC1C(var_114, Me))
  loc_10C286A:   Call Proc_265_112_1B48468(global_164)
  loc_10C287D:   Set var_110 = Me.Txt
  loc_10C2883:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_132, var_86)
  loc_10C2893:   For var_136 =  To CByte((var_132 - 1)): CByte(0) = var_136 'Byte
  loc_10C28A2:     If (CInt(var_86) <> 3) Then
  loc_10C28B7:       Set var_110 = Me.Txt
  loc_10C28BD:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_118)
  loc_10C28C5:       var_118.BackColor = -2147483643
  loc_10C28E3:       Set var_110 = Me.Txt
  loc_10C28E9:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_118)
  loc_10C28F1:       var_118.ForeColor = &HC00000
  loc_10C28FD:     End If
  loc_10C2900:   Next var_136 'Byte
  loc_10C2912:   Me.CmdMCard.Enabled = True
  loc_10C2926:   Me.CmdVarifyCard.Enabled = True
  loc_10C292E: End If
  loc_10C292E: Exit Sub
  loc_10C292F: ' Referenced from: 10C26BC
  loc_10C2937: Set var_110 = Err()
  loc_10C293D: Call 0.Method_arg_1C (var_13C)
  loc_10C294E: If (var_13C <> 0) Then
  loc_10C2959:   Set var_110 = Err()
  loc_10C295F:   Call 0.Method_arg_2C (var_114)
  loc_10C2980:   MsgBox(CVar(var_114), &H40, "Validation", var_EC, var_10C)
  loc_10C2993: End If
  loc_10C2993: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '102D340
  'Data Table: 5ADDB4
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_8C As Fields15
  loc_102D137: If (Me.RecordCount > 0) Then
  loc_102D167:   Set var_8C = Me.Txt
  loc_102D16D:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where SubCode= '", var_BC, -1)
  loc_102D18E:   unk_5ADE1E.Execute var_C4 & var_94 & "' AND V_TYPE<>'F_AO'", 0, var_D8
  loc_102D19E:    = var_C4.Item()
  loc_102D1A6:    = var_D8.Value
  loc_102D1D3:   If (var_90.Text.Fields > 0) Then
  loc_102D1F7:     MsgBox("Transactions Exist Can't Delete it", &H40, "Information", var_108, var_128)
  loc_102D207:     Exit Sub
  loc_102D208:   End If
  loc_102D23A:   var_12C = "Smart Card Registration"
  loc_102D282:   If (Proc_6_108_101061C(MemVar_1F95044, "SmartCardRegistration", "MemberCode", CStr(Me.Fields.Item("subcode").Value)) = 0) Then
  loc_102D285:     Exit Sub
  loc_102D286:   End If
  loc_102D2B8:   var_12C = "Member Billing"
  loc_102D300:   If (Proc_6_108_101061C(MemVar_1F95044, "MemBill", "MemCode", CStr(Me.Fields.Item("subcode").Value), 0) = 0) Then
  loc_102D303:     Exit Sub
  loc_102D304:   End If
  loc_102D304:   Call Proc_265_116_129FB38(var_12C, 0, 0)
  loc_102D30C: Else
  loc_102D32D:   MsgBox("There Is No Record To Delete", &H40, "Information", var_108, var_128)
  loc_102D33D: End If
  loc_102D33D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '117839C
  'Data Table: 5ADDB4
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As Variant
  Dim var_D8 As Variant
  Dim var_90 As String
  Dim unk_5ADDE0 As Connection15
  Dim var_11C As Variant
  Dim var_128 As Variant
  Dim var_124 As Fields15
  Dim var_134 As TextBox
  Dim var_B8 As Variant
  loc_1177FE8: On Error Goto loc_1178335
  loc_1177FF4: var_88 = Me.RecordCount
  loc_1178002: If (var_88 > 0) Then
  loc_1178011:   Me.CmdMCard.Enabled = False
  loc_1178025:   Me.CmdVarifyCard.Enabled = False
  loc_1178050:   Call Proc_265_103_10EA5D0(Proc_5_1_100EC1C("EDIT", Me))
  loc_1178068:   Set var_8C = Me.Txt
  loc_117806E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_1178076:   var_98.Enabled = False
  loc_11780AB:   Proc_6_17_EAAE40(var_B8, MemVar_1F95078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1)
  loc_11780C1:   unk_5ADDE0.Execute CStr(var_8C & var_B8), var_98, 0
  loc_11780D1:    = var_98.Item(global_164)
  loc_1178103:   If (Proc_6_38_E69628(CVar(var_8C.Fields)) <> vbNullString) Then
  loc_117812F:     Proc_6_17_EAAE40(var_B8, MemVar_1F95078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1)
  loc_117813B:     var_90 = CStr(var_8C & var_B8)
  loc_1178145:     unk_5ADDE0.Execute var_90, var_98, 0
  loc_1178155:      = var_98.Item()
  loc_117815D:     var_11C = CVar(var_8C.Fields) 'Address
  loc_1178174:     Set var_124 = Me.Txt
  loc_117817A:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_128)
  loc_1178182:     var_128.Tag = Proc_6_38_E69628(var_11C)
  loc_11781D1:     Set var_8C = Me.Txt
  loc_11781D7:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98, var_90, "Select GroupName From Acgroup Where GroupCode='", var_B8, -1)
  loc_11781F8:     unk_5ADDE0.Execute var_124 & var_90 & "'", 0, var_128
  loc_1178208:      = var_124.Item()
  loc_1178210:      = var_128.Value
  loc_1178227:     Set var_130 = Me.Txt
  loc_117822D:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_134)
  loc_1178235:     var_134.Text = CStr(var_98.Tag.Fields)
  loc_117826A:     Set var_8C = Me.Txt
  loc_1178270:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_98)
  loc_1178278:     var_98.Enabled = False
  loc_1178290:     Call Txt_Validate(CInt(2))
  loc_1178295:   End If
  loc_117829D:   Call Proc_265_111_E5B690(CByte(1))
  loc_11782B7:   var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11782BF:   Set var_98 = Me.FGrid
  loc_11782E6:   Set var_8C = Me.Txt
  loc_11782EC:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98, FGrid.DispID_10000)
  loc_11782F4:   var_98.SetFocus
  loc_1178303: Else
  loc_117830E:   var_D8 = "Information"
  loc_1178324:   MsgBox("There Is No Record To Edit.", &H40, var_D8, var_F8, var_11C)
  loc_1178334: End If
  loc_1178334: Exit Sub
  loc_1178335: ' Referenced from: 1177FE8
  loc_117833D: Set var_8C = Err()
  loc_1178343: Call 0.Method_arg_1C (var_88, var_D8)
  loc_1178354: If (var_88 <> 0) Then
  loc_117835F:   Set var_8C = Err()
  loc_1178365:   Call 0.Method_arg_2C (var_90)
  loc_1178386:   MsgBox(CVar(var_90), &H40, "Validation", var_F8, var_11C)
  loc_1178399: End If
  loc_1178399: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1BDCC
  'Data Table: 5ADDB4
  loc_E1BDC1: Me.Global.Unload Me
  loc_E1BDC9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F28A70
  'Data Table: 5ADDB4
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F28970: On Error Goto loc_F28A08
  loc_F2897C: var_88 = Me.RecordCount
  loc_F2898A: If (var_88 <= 0) Then
  loc_F28993:   var_B8 = "Information"
  loc_F289AE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F289BE:   Exit Sub
  loc_F289BF: End If
  loc_F289C6: var_10C = "Select SubCode As SearchCode,AppNo As ApplicationNo,Name,CardNo,G.GroupName As UnderGroup,ConPrefix,RTrim(ConPerson+' '+ConPersonMName+' '+ConPersonLName) ConPerson,FatherName,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,a.areaname,Phone,Mobile,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,GSTIN,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active,CreditLimit,CreditDays,Remark From (((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode)) Left Join AreaMast a on (s.areacode=a.areacode)) Where S.Companytype in (SELECT Code FROM MemCatMast WHERE Corporate='N') AND  (S.LOGSITE_CODE='" & MemVar_1F95078
  loc_F289CD: MemVar_1F950E4 = var_10C & "' OR S.LOGSITE_CODE='HO') Order by Name"
  loc_F289DA: MemVar_1F95120 = Me
  loc_F289E1: var_10C = "1500,2500,900,900,500,2500,2500"
  loc_F289E7: Proc_183_54_F1EA10(var_10C)
  loc_F28A02: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F28A07: Exit Sub
  loc_F28A08: ' Referenced from: F28970
  loc_F28A10: Set var_110 = Err()
  loc_F28A16: Call 0.Method_arg_1C (var_88)
  loc_F28A27: If (var_88 <> 0) Then
  loc_F28A32:   Set var_110 = Err()
  loc_F28A38:   Call 0.Method_arg_2C (var_10C)
  loc_F28A59:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F28A6C: End If
  loc_F28A6C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2D188
  'Data Table: 5ADDB4
  loc_E2D178: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D180: Call Proc_265_112_1B48468(global_164)
  loc_E2D185: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2C768
  'Data Table: 5ADDB4
  loc_E2C758: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2C760: Call Proc_265_112_1B48468(global_164)
  loc_E2C765: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2CA08
  'Data Table: 5ADDB4
  loc_E2C9F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CA00: Call Proc_265_112_1B48468(global_164)
  loc_E2CA05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2BFE8
  'Data Table: 5ADDB4
  loc_E2BFD8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2BFE0: Call Proc_265_112_1B48468(global_164)
  loc_E2BFE5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'F0DE14
  'Data Table: 5ADDB4
  Dim var_8C As Variant
  Dim var_88 As Frame
  loc_F0DD2C: Call Proc_265_93_1016CC4()
  loc_F0DD3C: Set var_88 = Me.Txt
  loc_F0DD42: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H32))
  loc_F0DD5A: If Not(IsDate(CVar(var_8C))) Then
  loc_F0DD94:   Set var_88 = Me.Txt
  loc_F0DD9A:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H32), var_8C, CStr(Format(MemVar_1F950EC, "dd/MMM/yyyy")))
  loc_F0DDA2:   var_8C.Text = 1
  loc_F0DDB8: End If
  loc_F0DDBC: Set var_88 = Me.TopCtrl1
  loc_F0DDC2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_80010006(1)
  loc_F0DDD6: Me.Frame1.Top = CDbl(Me.Frame1)
  loc_F0DDF4: Me.Frame1.Left = CDbl(2900)
  loc_F0DE08: Me.Frame1.Visible = True
  loc_F0DE10: Exit Sub
  loc_F0DE11: StUdtVar
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E64234
  'Data Table: 5ADDB4
  Dim Me As Recordset15
  loc_E641EB: Me.Requery -1
  loc_E641FB: Me.Requery -1
  loc_E6420B: Me.Requery -1
  loc_E6421B: Me.Requery -1
  loc_E6422B: Me.Requery -1
  loc_E64230: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1511644
  'Data Table: 5ADDB4
  Dim var_94 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_104 As Variant
  Dim var_A0 As String
  Dim var_F0 As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_9C As Variant
  Dim var_F4 As Variant
  Dim var_16C As Variant
  Dim var_17C As Variant
  Dim var_180 As String
  Dim var_188 As String
  Dim var_190 As String
  Dim var_90 As Variant
  Dim var_158 As Variant
  Dim var_C0 As Variant
  Dim var_1AC As Variant
  Dim unk_5ADDE0 As Connection15
  Dim var_204 As Field20
  loc_151076C: Set var_90 = Me.TxtGrid
  loc_1510772: Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_94)
  loc_151078C: If (var_94.Visible = &HFF) Then
  loc_1510797:   Call Proc_265_118_170C1C8(0)
  loc_15107A2:   If (var_98 = 0) Then
  loc_15107AE:     Set var_90 = Me.TxtGrid
  loc_15107B4:     Call 0.Method_TopCtrl1_UnknownEvent_160 (1, var_94)
  loc_15107BC:     var_94.SetFocus
  loc_15107C8:     Exit Sub
  loc_15107C9:   End If
  loc_15107C9: End If
  loc_15107D5: Set var_90 = Me.TxtGrid
  loc_15107DB: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_15107E3: var_96 = var_94.Visible
  loc_15107F5: If (var_96 = &HFF) Then
  loc_1510800:   Call Proc_265_118_170C1C8(0, var_98)
  loc_151080B:   If (var_98 = 0) Then
  loc_1510817:     Set var_90 = Me.TxtGrid
  loc_151081D:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_1510825:     var_94.SetFocus
  loc_1510831:     Exit Sub
  loc_1510832:   End If
  loc_1510832: End If
  loc_1510832: Call Proc_265_106_10506D4(var_98)
  loc_1510842: Set var_90 = Me.Txt
  loc_1510848: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5))
  loc_1510871: If (Proc_183_19_E8E68C(var_94, "Application No.") = 0) Then
  loc_1510874:   Exit Sub
  loc_1510875: End If
  loc_1510880: Set var_90 = Me.Txt
  loc_1510886: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_15108AF: If (Proc_183_19_E8E68C(var_94, "A/C Name") = 0) Then
  loc_15108B2:   Exit Sub
  loc_15108B3: End If
  loc_15108B6: Call Proc_265_97_10F8BE4(var_96)
  loc_15108C1: If (var_96 = &HFF) Then
  loc_15108C4:   Exit Sub
  loc_15108C5: End If
  loc_15108C8: Call Proc_265_98_1089BA8(var_96)
  loc_15108D3: If (var_96 = &HFF) Then
  loc_15108D6:   Exit Sub
  loc_15108D7: End If
  loc_15108E2: Set var_90 = Me.Txt
  loc_15108E8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_1510911: If (Proc_183_19_E8E68C(var_94, "Under Group") = 0) Then
  loc_1510914:   Exit Sub
  loc_1510915: End If
  loc_1510920: Set var_90 = Me.Txt
  loc_1510926: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_94)
  loc_151094F: If (Proc_6_27_EA61EC(var_94, "Id. Proof") = 0) Then
  loc_1510959:   Call Txt_GotFocus()
  loc_151095E:   Exit Sub
  loc_151095F: End If
  loc_151096A: Set var_90 = Me.Txt
  loc_1510970: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_94)
  loc_15109A0: Set var_9C = Me.Txt
  loc_15109A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_F4, (Len(Trim(CVar(var_94))) <> 0))
  loc_15109AE: var_104 = CVar(var_F4) 'Address
  loc_15109DF: If CBool(CInt(&H2B) And (Trim(var_104) <> "NA")) Then
  loc_15109ED:   Set var_90 = Me.Txt
  loc_15109F3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_94)
  loc_1510A1C:   If (Proc_6_27_EA61EC(var_94, "Id. Proof No.") = 0) Then
  loc_1510A26:     Call Txt_GotFocus()
  loc_1510A2B:     Exit Sub
  loc_1510A2C:   End If
  loc_1510A2C: End If
  loc_1510A30: Set var_90 = Me.TopCtrl1
  loc_1510A36: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(&H2C))
  loc_1510A3E: var_A0 = CStr(var_94)
  loc_1510A4F: If (var_A0 = "Add") Then
  loc_1510A81:   Set var_90 = Me.Txt
  loc_1510A87:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_A0, "Select Count(*) from memAddRWA where Name='Residential Address'  And Subcode='", var_104, -1)
  loc_1510AA5:   var_D0 = var_F4 & Trim(CVar(var_A0)) 
  loc_1510AAE:   var_F0 = var_D0 & "' And Mark='*'" 
  loc_1510ABC:   unk_5ADE1E.Execute CStr(var_F0), 0, var_16C
  loc_1510ACC:    = var_F4.Item()
  loc_1510AD4:    = var_16C.Value
  loc_1510B03:   If (var_94.Text.Fields <= 0) Then
  loc_1510B27:     MsgBox("Residential Address is required Field", &H10, "Validation Error", var_D0, var_F0)
  loc_1510B37:     Exit Sub
  loc_1510B38:   End If
  loc_1510B38: End If
  loc_1510B3C: Set var_90 = Me.TopCtrl1
  loc_1510B42: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1510B4A: var_A0 = CStr()
  loc_1510B5B: If (var_A0 = "Edit") Then
  loc_1510B8D:   Set var_90 = Me.Txt
  loc_1510B93:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_94, var_A0, "Select Count(*) from memAddRWA where Name='Residential Address'  And Subcode='", var_104, -1)
  loc_1510B9B:   var_9C = var_94.Text
  loc_1510BB1:   var_D0 = var_F4 & Trim(CVar(var_A0)) 
  loc_1510BBA:   var_F0 = var_D0 & "'" 
  loc_1510BC8:   unk_5ADE1E.Execute CStr(var_F0), 0, var_16C
  loc_1510BD8:    = var_F4.Item()
  loc_1510BE0:    = var_16C.Value
  loc_1510C0F:   If (var_9C.Fields <= 0) Then
  loc_1510C33:     MsgBox("Residential Address is required Field", &H10, "Validation Error", var_D0, var_F0)
  loc_1510C43:     Exit Sub
  loc_1510C44:   End If
  loc_1510C44: End If
  loc_1510C48: Set var_90 = Me.TopCtrl1
  loc_1510C4E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1510C56: var_A0 = CStr()
  loc_1510C67: If (var_A0 = "Add") Then
  loc_1510C88:   Set var_90 = Me.Txt
  loc_1510C8E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1510C96:   var_B0 = var_94.Text
  loc_1510CA7:   var_180 = Proc_183_20_FB48CC(var_A0, -1)
  loc_1510CBB:   unk_5ADE1E.Execute var_9C & var_180 & "'", , 
  loc_1510CF4:   If (var_9C.RecordCount > 0) Then
  loc_1510D18:     MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_D0, var_F0)
  loc_1510D33:     Set var_90 = Me.Txt
  loc_1510D39:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1510D41:     var_94.SetFocus
  loc_1510D4D:     Exit Sub
  loc_1510D4E:   End If
  loc_1510D51: Else
  loc_1510D55:   Set var_90 = Me.TopCtrl1
  loc_1510D5B:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1510D63:   var_A0 = CStr()
  loc_1510D74:   If (var_A0 = "Edit") Then
  loc_1510D95:     Set var_90 = Me.Txt
  loc_1510D9B:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1510DA3:     var_B0 = var_94.Text
  loc_1510DB4:     var_180 = Proc_183_20_FB48CC(var_A0, -1)
  loc_1510DBF:     var_188 = var_9C & var_180 & "' and Name<>'"
  loc_1510DD9:     unk_5ADE1E.Execute var_188 & global_136 & "'", , 
  loc_1510E16:     If (var_9C.RecordCount > 0) Then
  loc_1510E3A:       MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_D0, var_F0)
  loc_1510E5B:       Set var_90 = Me.Txt
  loc_1510E61:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1510E69:       var_94.Text = global_136
  loc_1510E80:       Set var_90 = Me.Txt
  loc_1510E86:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1510E8E:       var_94.SetFocus
  loc_1510E9A:       Exit Sub
  loc_1510E9B:     End If
  loc_1510E9B:   End If
  loc_1510E9B: End If
  loc_1510EC0: For var_198 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_198 'Integer
  loc_1510ECA:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_1510ED2:   var_158 = CVar(CLng(3)) 'Long
  loc_1510F02:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1510F09:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1510F11:     var_158 = CVar(CLng(4)) 'Long
  loc_1510F3C:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1510F64:       MsgBox(CVar("Please Specify Cr/Dr in Row No " & CStr(var_86)), &H40, "Validation", var_D0, var_F0)
  loc_1510F8A:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_1510FA4:       Me.FGrid.Col = CVar(CLng(4))
  loc_1510FB0:       Set var_90 = Me.FGrid
  loc_1510FD4:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1510FDC:       Exit Sub
  loc_1510FDD:     End If
  loc_1510FDD:   End If
  loc_1510FE0: Next var_198 'Integer
  loc_151100A: For var_19C = 1 To CInt((CLng(Me.FAGrid.Rows) - 1)): var_86 = var_19C 'Integer
  loc_1511014:   var_E0 = CVar(CLng(var_86)) 'Long
  loc_151101C:   var_158 = CVar(CLng(5)) 'Long
  loc_1511036:   var_A0 = CStr(Me.FAGrid.TextMatrix))
  loc_1511042:   var_17C = CVar(CLng(var_86)) 'Long
  loc_1511082:   If (CVar(CLng(&H1E)) Or (CStr(Me.FAGrid.TextMatrix)) <> vbNullString)) Then
  loc_1511089:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1511091:     var_158 = CVar(CLng(4)) 'Long
  loc_15110BC:     If (CStr(Me.FAGrid.TextMatrix)) = vbNullString) Then
  loc_15110DF:       MsgBox(CVar("Prefix" & " is a required field."), &H10, "Validation Error", var_D0, var_F0)
  loc_1511102:       Me.FAGrid.Row = CVar(CLng(var_86))
  loc_151111C:       Me.FAGrid.Col = CVar(CLng(4))
  loc_1511128:       Set var_90 = Me.FAGrid
  loc_1511139:       Exit Sub
  loc_151113A:     End If
  loc_151113E:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_1511146:     var_158 = CVar(CLng(3)) 'Long
  loc_1511171:     If (CStr(Me.FAGrid.TextMatrix)) = vbNullString) Then
  loc_1511194:       MsgBox(CVar("Relation" & " is a required field."), &H10, "Validation Error", var_D0, var_F0)
  loc_15111B7:       Me.FAGrid.Row = CVar(CLng(var_86))
  loc_15111D1:       Me.FAGrid.Col = CVar(CLng(3))
  loc_15111DD:       Set var_90 = Me.FAGrid
  loc_15111EE:       Exit Sub
  loc_15111EF:     End If
  loc_15111F3:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_15111FB:     var_158 = CVar(CLng(3)) 'Long
  loc_1511215:     var_C0 = CVar(CStr(Me.FAGrid.TextMatrix))) 'String
  loc_151121B:     var_D0 = Ucase(var_C0)
  loc_1511248:     var_104 = Me.FAGrid.TextMatrix)
  loc_1511287:     If CBool(CVar(CLng(3)) Or (Ucase(CVar(CStr(var_104))) = "MOTHER")) Then
  loc_15112A5:       var_B0 = Me.FAGrid.TextMatrix)
  loc_15112BF:       Set var_94 = Me.Txt
  loc_15112C5:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_9C, var_188, var_B0, CVar(CLng(3)), CVar(CLng(var_86)), CVar(CLng(var_86)))
  loc_15112CD:       (var_D0 = "FATHER") = var_9C.Text
  loc_15112D8:       var_1AC = 0
  loc_151130E:       var_190 = "Select Count(*) From MemberFamily Where LogSite_Code='" & MemVar_1F95078 & "' And Relationship='" & CStr(var_B0) & "' And SubCode='"
  loc_1511325:       unk_5ADDE0.Execute var_190 & var_188 & "'", var_C0, -1
  loc_151132D:       var_F4 = var_F4.Fields
  loc_1511335:       var_1AC = var_16C.Item(var_16C)
  loc_151133D:       var_204 = var_204.Value
  loc_1511378:       If (var_D0 > 0) Then
  loc_151137F:         var_E0 = CVar(CLng(var_86)) 'Long
  loc_1511387:         var_158 = CVar(CLng(3)) 'Long
  loc_15113BE:         MsgBox(CVar(CStr(Me.FAGrid.TextMatrix)) & " Detail Already Exists."), &H40, var_D0, var_F0, var_104)
  loc_15113E9:         Me.FAGrid.Row = CVar(CLng(var_86))
  loc_1511403:         Me.FAGrid.Col = CVar(CLng(3))
  loc_151140F:         Set var_90 = Me.FAGrid
  loc_1511420:         Exit Sub
  loc_1511421:       End If
  loc_1511421:     End If
  loc_1511425:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_151142D:     var_158 = CVar(CLng(5)) 'Long
  loc_1511458:     If (CStr(Me.FAGrid.TextMatrix)) = vbNullString) Then
  loc_151147B:       MsgBox(CVar("Name" & " is a required field."), &H10, "Validation Error", var_D0, var_F0)
  loc_151149E:       Me.FAGrid.Row = CVar(CLng(var_86))
  loc_15114B8:       Me.FAGrid.Col = CVar(CLng(5))
  loc_15114C4:       Set var_90 = Me.FAGrid
  loc_15114D5:       Exit Sub
  loc_15114D6:     End If
  loc_15114DA:     var_E0 = CVar(CLng(var_86)) 'Long
  loc_15114E2:     var_158 = CVar(CLng(6)) 'Long
  loc_151150D:     If (CStr(Me.FAGrid.TextMatrix)) = vbNullString) Then
  loc_1511530:       MsgBox(CVar("Gender" & " is a required field."), &H10, "Validation Error", var_D0, var_F0)
  loc_1511553:       Me.FAGrid.Row = CVar(CLng(var_86))
  loc_151156D:       Me.FAGrid.Col = CVar(CLng(6))
  loc_1511579:       Set var_90 = Me.FAGrid
  loc_151158A:       Exit Sub
  loc_151158B:     End If
  loc_151158B:   End If
  loc_151158E: Next var_19C 'Integer
  loc_1511597: Set var_90 = Me.TopCtrl1
  loc_151159D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15115B6: If (CStr() = "Add") Then
  loc_15115B9:   Call Proc_265_114_1772CFC()
  loc_15115C1: Else
  loc_15115C1:   Call Proc_265_115_1A771CC()
  loc_15115D2:   Me.CmdMCard.Enabled = True
  loc_15115E6:   Me.CmdVarifyCard.Enabled = True
  loc_15115EE: End If
  loc_15115FE: Set var_90 = Me.Txt
  loc_1511604: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_94)
  loc_151160C: var_94.BackColor = &HC0FFFF
  loc_1511628: Set var_90 = Me.Txt
  loc_151162E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H23), var_94)
  loc_1511636: var_94.ForeColor = &HFF
  loc_1511642: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_9 'F3A054
  'Data Table: 5ADDB4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F39F4B: Me.DGAcName.Visible = False
  loc_F39F6A: If (Me.RecordCount > 0) Then
  loc_F39FA9:   Set var_B4 = Me.Txt
  loc_F39FAF:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F39FB7:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F39FEA:   var_B0 = Me.Fields.Item("Code")
  loc_F3A009:   Set var_B4 = Me.Txt
  loc_F3A00F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3A017:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3A02D: End If
  loc_F3A038: Set var_A8 = Me.Txt
  loc_F3A03E: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1))
  loc_F3A046: var_B0.SetFocus
  loc_F3A052: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'EA2EA0
  'Data Table: 5ADDB4
  Dim var_A8 As Variant
  loc_EA2E20: Set var_88 = Me.DGAcName
  loc_EA2E4A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2E52: Set var_BC = Me.DGAcName
  loc_EA2E8E: Proc_6_138_106E830(Me.DGAcName, global_168, CInt(1), Me.FGPoint)
  loc_EA2E9C: Exit Sub
  loc_EA2E9D: StAryRecMove
End Sub

Private Sub DGCity_UnknownEvent_9 'FEECA8
  'Data Table: 5ADDB4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FEEAD4: On Error Goto loc_FEEC43
  loc_FEEAE6: Me.DGCity.Visible = False
  loc_FEEAF7: var_AC = Me.RecordCount
  loc_FEEB05: If (var_AC > 0) Then
  loc_FEEB57:   Set var_CC = Me.TxtA
  loc_FEEB5D:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(Me.DGCity.Tag)), var_D0)
  loc_FEEB65:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEEBBD:   Set var_B4 = Me.DGCity
  loc_FEEBD4:   Set var_CC = Me.TxtA
  loc_FEEBDA:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FEEBE2:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FEEC02: End If
  loc_FEEC17: var_C8 = CStr(Me.DGCity.Tag)
  loc_FEEC20: Set var_B0 = Me.TxtA
  loc_FEEC26: Call 0.Method_DGCity_UnknownEvent_90 (CInt(var_C8))
  loc_FEEC2E: var_B4.SetFocus
  loc_FEEC42: Exit Sub
  loc_FEEC43: ' Referenced from: FEEAD4
  loc_FEEC4B: Set var_A8 = Err()
  loc_FEEC51: Call 0.Method_arg_1C (var_AC)
  loc_FEEC62: If (var_AC <> 0) Then
  loc_FEEC6D:   Set var_A8 = Err()
  loc_FEEC73:   Call 0.Method_arg_2C (var_C8)
  loc_FEEC94:   MsgBox(CVar(var_C8), &H40, "Validation", var_F4, var_114)
  loc_FEECA7: End If
  loc_FEECA7: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'EA744C
  'Data Table: 5ADDB4
  Dim var_A8 As Variant
  loc_EA73CC: Set var_88 = Me.DGCity
  loc_EA73F6: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA73FE: Set var_BC = Me.DGCity
  loc_EA743A: Proc_6_138_106E830(Me.DGCity, global_184, CInt(3), Me.FGPoint)
  loc_EA7448: Exit Sub
End Sub

Private Sub Check1_Click() 'F6931C
  'Data Table: 5ADDB4
  Dim var_9C As Variant
  loc_F691FF: If (CLng(Me.Check1.Value) = 0) Then
  loc_F69210:   Me.GridSel.Enabled = True
  loc_F69237:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F6924D:     Me.GridSel.Row = 1
  loc_F69268:     Me.GridSel.Col = 0
  loc_F69270:   End If
  loc_F69273: Else
  loc_F69282:   Me.GridSel.Enabled = False
  loc_F692A9:   If (CLng(Me.GridSel.Rows) > 1) Then
  loc_F692BF:     Me.GridSel.Row = 0
  loc_F692DA:     Me.GridSel.Col = 0
  loc_F692FB:     var_9C = CVar((CLng(Me.GridSel.Rows) - 1)) 'Long
  loc_F6930A:     Me.GridSel.RowSel = 0
  loc_F69319:   End If
  loc_F69319: End If
  loc_F69319: Exit Sub
End Sub

Private Sub Check1_KeyDown(KeyCode As Integer, Shift As Integer) 'E2338C
  'Data Table: 5ADDB4
  loc_E23372: If (KeyCode = &HD) Then
  loc_E23383:   Proc_303_0_FBACC8("	")
  loc_E2338B: End If
  loc_E2338B: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'FAB3F0
  'Data Table: 5ADDB4
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FAB270: On Error Goto loc_FAB38A
  loc_FAB282: Me.DGUnderAc.Visible = False
  loc_FAB293: var_AC = Me.RecordCount
  loc_FAB2A1: If (var_AC > 0) Then
  loc_FAB2E0:   Set var_B4 = Me.Txt
  loc_FAB2E6:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FAB2EE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FAB321:   var_B0 = Me.Fields.Item("Code")
  loc_FAB332:   var_CC = CStr(var_B0.Value)
  loc_FAB340:   Set var_B4 = Me.Txt
  loc_FAB346:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FAB34E:   var_B8.Tag = var_CC
  loc_FAB364: End If
  loc_FAB36F: Set var_A8 = Me.Txt
  loc_FAB375: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2))
  loc_FAB37D: var_B0.SetFocus
  loc_FAB389: Exit Sub
  loc_FAB38A: ' Referenced from: FAB270
  loc_FAB392: Set var_A8 = Err()
  loc_FAB398: Call 0.Method_arg_1C (var_AC)
  loc_FAB3A9: If (var_AC <> 0) Then
  loc_FAB3B4:   Set var_A8 = Err()
  loc_FAB3BA:   Call 0.Method_arg_2C (var_CC)
  loc_FAB3DB:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FAB3EE: End If
  loc_FAB3EE: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_1F 'EA6EF0
  'Data Table: 5ADDB4
  Dim var_A8 As Variant
  loc_EA6E70: Set var_88 = Me.DGUnderAc
  loc_EA6E9A: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA6EA2: Set var_BC = Me.DGUnderAc
  loc_EA6EDE: Proc_6_138_106E830(Me.DGUnderAc, global_180, CInt(2), Me.FGPoint)
  loc_EA6EEC: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_A 'FDB62C
  'Data Table: 5ADDB4
  Dim var_B4 As Variant
  Dim var_D4 As Long
  Dim var_17C As Variant
  Dim var_19C As Long
  Dim var_1BC As Variant
  Dim var_86 As Integer
  loc_FDB47A: If (KeyCode = &HD) Then
  loc_FDB48B:   Proc_303_0_FBACC8("	")
  loc_FDB493: End If
  loc_FDB4B2: If (CLng(Me.GridSel.Rows) < 1) Then
  loc_FDB4B5:   Exit Sub
  loc_FDB4B6: End If
  loc_FDB4E0: If ((CLng(KeyCode) = &H20) And (CLng(Me.GridSel.Col) = 0)) Then
  loc_FDB4F3:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_FDB50D:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_FDB528:   var_B4 = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDB52D:   var_D4 = 0
  loc_FDB55F:   var_17C = CVar(CLng(Me.GridSel.Row)) 'Long
  loc_FDB564:   var_19C = 0
  loc_FDB59F:   var_1BC = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_FDB5A7:   Set var_1D0 = Me.GridSel
  loc_FDB5AD:   LateIdCallSt
  loc_FDB5E7:   var_86 = CInt((UBound(global_64, 1) + 1))
  loc_FDB5F9:   ReDim Preserve global_64(0 To CLng(var_86))
  loc_FDB621:   global_64(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_FDB628: End If
  loc_FDB628: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_E 'E5DE10
  'Data Table: 5ADDB4
  loc_E5DDEB: If (CLng(Me.GridSel.Col) <> 0) Then
  loc_E5DDEE:   Exit Sub
  loc_E5DDEF: End If
  loc_E5DE06: global_60 = CInt(CLng(Me.GridSel.Row))
  loc_E5DE0F: Exit Sub
End Sub

Private Sub GridSel_UnknownEvent_10 '1026CF4
  'Data Table: 5ADDB4
  Dim var_A0 As MSHFlexGrid
  Dim var_CC As Variant
  Dim var_EC As Long
  Dim var_160 As Variant
  Dim var_180 As Long
  Dim var_1A0 As Variant
  Dim var_86 As Integer
  loc_1026AF5: If ((CLng(Me.GridSel.Col) <> 0) Or (global_60 = 0)) Then
  loc_1026AF8:   Exit Sub
  loc_1026AF9: End If
  loc_1026B55: If (((CLng(Me.GridSel.Row) = 0) And (CLng(Me.GridSel.Col) = 0)) And (Me.Check1.Visible = 0)) Then
  loc_1026B58:   Exit Sub
  loc_1026B59: End If
  loc_1026B88: For var_BA = global_60 To CInt(CLng(Me.GridSel.RowSel)): var_88 = var_BA 'Integer
  loc_1026BA1:   Me.GridSel.Row = CVar(CLng(var_88))
  loc_1026BBC:   Me.GridSel.Col = 0
  loc_1026BD4:   Me.GridSel.CellFontName = "WINGDINGS"
  loc_1026BEE:   Me.GridSel.CellFontSize = CVar(CDbl(&HE))
  loc_1026BFA:   var_CC = CVar(CLng(var_88)) 'Long
  loc_1026BFF:   var_EC = 0
  loc_1026C22:   var_160 = CVar(CLng(var_88)) 'Long
  loc_1026C27:   var_180 = 0
  loc_1026C62:   var_1A0 = CVar(CStr(IIf((CStr(Me.GridSel.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_1026C6A:   Set var_A0 = Me.GridSel
  loc_1026C70:   LateIdCallSt
  loc_1026CA2:   var_86 = CInt((UBound(global_64, 1) + 1))
  loc_1026CB4:   ReDim Preserve global_64(0 To CLng(var_86))
  loc_1026CDC:   global_64(CLng(var_86)) = CInt(CLng(Me.GridSel.Row))
  loc_1026CE6: Next var_BA 'Integer
  loc_1026CF0: global_60 = 0
  loc_1026CF3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E5FF44
  'Data Table: 5ADDB4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E5FF0F: Me.FGrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E5FF22: Set var_A8 = Me.TxtGrid
  loc_E5FF28: Call 0.Method_Fgrid1_UnknownEvent_00 (2, var_AC)
  loc_E5FF30: var_AC.Visible = False
  loc_E5FF3C: Call Proc_265_106_10506D4()
  loc_E5FF41: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E6A400
  'Data Table: 5ADDB4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E6A3BC: Set var_88 = Me.TxtGrid
  loc_E6A3C2: Call 0.Method_Fgrid1_UnknownEvent_10 (2, var_8C)
  loc_E6A3DC: If (var_8C.Visible = 0) Then
  loc_E6A3F5:   Me.FGrid1.BackColorSel = CVar(CLng(global_280))
  loc_E6A3FD: End If
  loc_E6A3FD: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E498AC
  'Data Table: 5ADDB4
  loc_E49884: Set var_88 = Me.TopCtrl1
  loc_E4988A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E498A3: If (CStr() <> "Browse") Then
  loc_E498A6:   Call Proc_265_94_E423A4()
  loc_E498AB: End If
  loc_E498AB: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '10D5930
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_A0 As MSHFlexGrid
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10D5630: Set var_88 = Me.TopCtrl1
  loc_10D5636: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10D567B: If ((CStr() = "Browse") And ((((CLng(KeyCode) = &H24) Or (CLng(KeyCode) = &H23)) Or (CLng(KeyCode) = &H21)) Or (CLng(KeyCode) = &H22))) Then
  loc_10D5684:   Call Form_KeyDown(KeyCode, Shift)
  loc_10D5689: End If
  loc_10D568D: Set var_88 = Me.TopCtrl1
  loc_10D5693: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10D56AC: If (CStr() = "Browse") Then
  loc_10D56AF:   Exit Sub
  loc_10D56B0: End If
  loc_10D5724: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - (CLng(Me.FGrid1.Rows) - 1))))) Then
  loc_10D572F:   var_9C = "+{Tab}"
  loc_10D5735:   Proc_303_0_FBACC8(CStr(Me.FGrid1.Tag), 0)
  loc_10D573F:   KeyCode = 0
  loc_10D5745: Else
  loc_10D579C:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid1.Tag))) = CDbl((CLng(Me.FGrid1.Rows) - 1)))) Then
  loc_10D57A1:     KeyCode = 0
  loc_10D57A4:   End If
  loc_10D57A4: End If
  loc_10D57AA: global_112 = KeyCode
  loc_10D57D0: Me.FGrid1.Tag = CVar(CStr(CLng(Me.FGrid1.Row)))
  loc_10D57F4: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10D580A:   var_DC = CLng(Me.FGrid1.Col)
  loc_10D581A:   If (var_DC = CLng(1)) Then
  loc_10D5830:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D5838:     var_FC = CVar(CLng(1)) 'Long
  loc_10D583D:     var_11C = vbNullString
  loc_10D5847:     Set var_A0 = Me.FGrid1
  loc_10D584D:     LateIdCallSt
  loc_10D5872:     var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D587A:     var_FC = CVar(CLng(6)) 'Long
  loc_10D587F:     var_11C = vbNullString
  loc_10D5889:     Set var_A0 = Me.FGrid1
  loc_10D588F:     LateIdCallSt
  loc_10D58A4:   Else
  loc_10D58AB:     If (var_DC = CLng(2)) Then
  loc_10D58C1:       var_D8 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10D58D9:       var_FC = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10D58DE:       var_11C = vbNullString
  loc_10D58E8:       Set var_B4 = Me.FGrid1
  loc_10D58EE:       LateIdCallSt
  loc_10D5906:     End If
  loc_10D5906:   End If
  loc_10D5906: End If
  loc_10D5910: If (CLng(KeyCode) = &HD) Then
  loc_10D591C:   Call Fgrid1_UnknownEvent_C()
  loc_10D5926:   global_110 = 0
  loc_10D5929: End If
  loc_10D592B: KeyCode = 0
  loc_10D592E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E58EAC
  'Data Table: 5ADDB4
  loc_E58E78: Set var_88 = Me.TopCtrl1
  loc_E58E7E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E58E97: If (CStr() = "Browse") Then
  loc_E58E9A:   Exit Sub
  loc_E58E9B: End If
  loc_E58EA4: Call Fgrid1_UnknownEvent_C()
  loc_E58EA9: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C '111B034
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_A8 As Long
  Dim var_CE As Integer
  Dim var_C8 As TextBox
  loc_111ACE4: Set var_88 = Me.TopCtrl1
  loc_111ACEA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_111AD03: If (CStr() = "Browse") Then
  loc_111AD06:   Exit Sub
  loc_111AD07: End If
  loc_111AD1A: var_A0 = CLng(Me.FGrid1.Col)
  loc_111AD2A: If (var_A0 = CLng(1)) Then
  loc_111AD3B:   Set var_88 = Me.TxtGrid
  loc_111AD41:   Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_111AD49:   var_A4.MaxLength = &H32
  loc_111AD58: Else
  loc_111AD5F:   If (var_A0 = CLng(2)) Then
  loc_111AD70:     Set var_88 = Me.TxtGrid
  loc_111AD76:     Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_111AD7E:     var_A4.MaxLength = 8
  loc_111AD8D:   Else
  loc_111AD94:     If (var_A0 = CLng(3)) Then
  loc_111ADA5:       Set var_88 = Me.TxtGrid
  loc_111ADAB:       Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_111ADB3:       var_A4.MaxLength = &HF
  loc_111ADC2:     Else
  loc_111ADC9:       If (var_A0 = CLng(4)) Then
  loc_111ADDA:         Set var_88 = Me.TxtGrid
  loc_111ADE0:         Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_111ADE8:         var_A4.MaxLength = &HB
  loc_111ADF7:       Else
  loc_111ADFE:         If (var_A0 = CLng(5)) Then
  loc_111AE0F:           Set var_88 = Me.TxtGrid
  loc_111AE15:           Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_111AE1D:           var_A4.MaxLength = 3
  loc_111AE29:         End If
  loc_111AE29:       End If
  loc_111AE29:     End If
  loc_111AE29:   End If
  loc_111AE29: End If
  loc_111AE3C: var_A8 = CLng(Me.FGrid1.Col)
  loc_111AE4C: If Not (var_A8 = CLng(1)) Then
  loc_111AE56:   If Not (var_A8 = CLng(3)) Then
  loc_111AE60:     If Not (var_A8 = CLng(5)) Then
  loc_111AE6A:       If (var_A8 = CLng(4)) Then
  loc_111AE6D:       End If
  loc_111AE6D:     End If
  loc_111AE6D:   End If
  loc_111AE71:   Set var_C8 = Me.FGrid1
  loc_111AE95:   var_9C = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_111AEC2:   Set var_A4 = var_C8
  loc_111AED4:   Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 2, 0)
  loc_111AEFC:   Set var_88 = Me.TxtGrid
  loc_111AF02:   Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4, var_9C, Asc(var_9C))
  loc_111AF0A:   0 = var_A4.Text
  loc_111AF23:   If (Len(var_9C) <= 1) Then
  loc_111AF32:     Set var_88 = Me.TxtGrid
  loc_111AF38:     Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4, var_9C)
  loc_111AF40:     var_CE = var_A4.Text
  loc_111AF51:     Set var_BC = Me.TxtGrid
  loc_111AF57:     Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_C8, var_9C)
  loc_111AF5F:     var_C8.Text = var_A8
  loc_111AF72:   End If
  loc_111AF7E:   Set var_88 = Me.TxtGrid
  loc_111AF84:   Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_A4)
  loc_111AF9E:   Set var_BC = Me.TxtGrid
  loc_111AFA4:   Call 0.Method_Fgrid1_UnknownEvent_C0 (2, var_C8)
  loc_111AFAC:   var_C8.SelStart = Len(var_A4.Text)
  loc_111AFC2: Else
  loc_111AFC9:   If (var_A8 = CLng(2)) Then
  loc_111B00A:     Proc_6_63_110B734(Me, Me.FGrid1, Me.TxtGrid, 2)
  loc_111B01C:   End If
  loc_111B01C: End If
  loc_111B026: If (CLng(KeyCode) <> &HD) Then
  loc_111B02E:   global_110 = &HFF
  loc_111B031: End If
  loc_111B031: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FE489C
  'Data Table: 5ADDB4
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_AC As Variant
  loc_FE46CC: Set var_88 = Me.TopCtrl1
  loc_FE46D2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE46EB: If (CStr() = "Browse") Then
  loc_FE46EE:   Exit Sub
  loc_FE46EF: End If
  loc_FE470C: If (CLng(Me.FGrid1.ColSel) = CLng(0)) Then
  loc_FE470F:   Exit Sub
  loc_FE4710: End If
  loc_FE4721: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FE4743:   If (CLng(Me.FGrid1.Row) >= 1) Then
  loc_FE477D:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_EC, var_10C) = 6) Then
  loc_FE479F:       If (CLng(Me.FGrid1.Rows) > 2) Then
  loc_FE47B5:         var_AC = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_FE47BE:         Set var_110 = Me.FGrid1
  loc_FE47D9:       Else
  loc_FE47EC:         Me.FGrid1.Rows = 1
  loc_FE4812:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid1, CInt(0)))) 'String
  loc_FE481A:         Set var_110 = Me.FGrid1
  loc_FE4847:         Me.FGrid1.FixedRows = 1
  loc_FE484F:       End If
  loc_FE484F:     End If
  loc_FE4852:   Else
  loc_FE4873:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_EC, var_10C)
  loc_FE4883:   End If
  loc_FE4887:   Set var_88 = Me.FGrid1
  loc_FE4898: End If
  loc_FE4898: Exit Sub
  loc_FE4899: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_15 'E4240C
  'Data Table: 5ADDB4
  Dim var_8C As TextBox
  loc_E423E0: Call Proc_265_106_10506D4()
  loc_E423F0: Set var_88 = Me.TxtGrid
  loc_E423F6: Call 0.Method_Fgrid1_UnknownEvent_150 (2, var_8C)
  loc_E423FE: var_8C.Visible = False
  loc_E4240A: Exit Sub
End Sub

Private Sub CmdAdd_UnknownEvent_9 '1A9978C
  'Data Table: 5ADDB4
  Dim var_D8 As String
  Dim var_FC As Variant
  Dim var_DC As Variant
  Dim var_D4 As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_130 As String
  Dim unk_5ADE1E As Connection15
  Dim var_A4 As Recordset15
  Dim var_154 As Variant
  Dim var_150 As Variant
  Dim var_140 As String
  Dim var_160 As Fields15
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_A8 As Recordset15
  Dim var_1B8 As Fields15
  Dim var_220 As Fields15
  Dim var_264 As Variant
  Dim var_AC As Recordset15
  Dim var_288 As Fields15
  Dim var_2AC As Variant
  Dim var_2CC As Variant
  Dim var_2EC As Variant
  Dim var_2F0 As Fields15
  Dim var_334 As Variant
  Dim var_37A As Integer
  Dim var_94 As Recordset15
  Dim var_C4 As Variant
  Dim var_15C As TextBox
  Dim var_9C As Recordset15
  Dim var_EC As Variant
  Dim var_A0 As Recordset15
  Dim var_B0 As Recordset15
  Dim var_86 As Integer
  Dim var_164 As TextBox
  Dim var_1CC As TextBox
  Dim var_234 As TextBox
  Dim var_29C As TextBox
  Dim var_304 As TextBox
  Dim var_3A0 As TextBox
  Dim var_3CC As TextBox
  Dim var_408 As TextBox
  Dim var_444 As TextBox
  Dim var_480 As TextBox
  Dim var_4EC As TextBox
  Dim var_1EC As Variant
  Dim var_2BC As Variant
  Dim var_374 As Variant
  Dim var_3F0 As Variant
  Dim var_42C As Variant
  Dim var_510 As Variant
  Dim var_5A0 As Variant
  Dim var_660 As Variant
  Dim var_6A0 As Variant
  Dim var_70C As TextBox
  Dim var_704 As Variant
  Dim var_74C As Variant
  Dim unk_5ADDE0 As Connection15
  loc_1A95BD8: On Error Goto loc_1A9972C
  loc_1A95BDF: Set var_C4 = Me.TopCtrl1
  loc_1A95BE5: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A95BED: var_D8 = CStr()
  loc_1A95BFE: If (var_D8 = "Browse") Then
  loc_1A95C0E:   var_FC = "Select MemAddRWA.*,City.CityName As CityN,State.Name As StateN,Country.Name As CountryN From MemAddRWA Left join City On MemAddRWA.City=City.CityCode Left Join State On MemAddRWA.State=State.Code Left Join Country On MemAddRWA.Country=Country.Code where MemAddRWA.Subcode='"
  loc_1A95C21:   Set var_C4 = Me.Txt
  loc_1A95C27:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, var_FC)
  loc_1A95C2F:   var_150 = var_DC.Text
  loc_1A95C45:   var_10C = -1 & Trim(CVar(var_D8)) 
  loc_1A95C5C:   unk_5ADE1E.Execute CStr(var_10C & "' And Mark=''"), var_154, 
  loc_1A95C67:   Set var_94 = var_154
  loc_1A95C83: End If
  loc_1A95C87: Set var_C4 = Me.TopCtrl1
  loc_1A95C8D: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A95C95: var_D8 = CStr()
  loc_1A95CA6: If (var_D8 = "Add") Then
  loc_1A95CB6:   var_FC = "Select MemAddRWA.*,City.CityName As CityN,State.Name As StateN,Country.Name As CountryN From MemAddRWA Left join City On MemAddRWA.City=City.CityCode Left Join State On MemAddRWA.State=State.Code Left Join Country On MemAddRWA.Country=Country.Code where MemAddRWA.Subcode='"
  loc_1A95CC9:   Set var_C4 = Me.Txt
  loc_1A95CCF:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, var_FC)
  loc_1A95CD7:   var_150 = var_DC.Text
  loc_1A95CE5:   var_EC = Trim(CVar(var_D8))
  loc_1A95CED:   var_10C = -1 & var_EC 
  loc_1A95D04:   unk_5ADE1E.Execute CStr(var_10C & "' And Mark='*'"), var_154, 
  loc_1A95D0F:   Set var_9C = var_154
  loc_1A95D2B: End If
  loc_1A95D2F: Set var_C4 = Me.TopCtrl1
  loc_1A95D35: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A95D3D: var_D8 = CStr()
  loc_1A95D4E: If (var_D8 = "Edit") Then
  loc_1A95D6F:   Set var_C4 = Me.Txt
  loc_1A95D75:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A95D7D:   var_D4 = var_DC.Text
  loc_1A95D86:   var_130 = -1 & var_D8
  loc_1A95D96:   unk_5ADE1E.Execute CStr(var_10C & "' And Mark='*'") & "' And Name='Residential Address'", var_154, 
  loc_1A95DA1:   Set var_A4 = var_154
  loc_1A95DD7:   Set var_C4 = Me.Txt
  loc_1A95DDD:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A95DE5:   var_D4 = var_DC.Text
  loc_1A95DEE:   var_130 = -1 & var_D8
  loc_1A95DFE:   unk_5ADE1E.Execute CStr(var_10C & "' And Mark='*'") & "' And Name='WorkPlace Address'", var_154, 
  loc_1A95E09:   Set var_A8 = var_154
  loc_1A95E3F:   Set var_C4 = Me.Txt
  loc_1A95E45:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A95E4D:   var_D4 = var_DC.Text
  loc_1A95E56:   var_130 = -1 & var_D8
  loc_1A95E66:   unk_5ADE1E.Execute CStr(var_10C & "' And Mark='*'") & "' And Name='Abroad Address'", var_154, 
  loc_1A95E71:   Set var_AC = var_154
  loc_1A95EA7:   Set var_C4 = Me.Txt
  loc_1A95EAD:   Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select MemAddRWA.*,City.CityName As CityN,State.Name As StateN,Country.Name As CountryN From MemAddRWA Left join City On MemAddRWA.City=City.CityCode Left Join State On MemAddRWA.State=State.Code Left Join Country On MemAddRWA.Country=Country.Code where MemAddRWA.subcode ='")
  loc_1A95EB5:   var_374 = var_DC.Text
  loc_1A95EBE:   var_130 = -1 & var_D8
  loc_1A95EDF:   var_15C = var_A4.Fields.Item("SNo")
  loc_1A95EEE:   Proc_183_3_E7DD58(var_EC, CVar(var_15C))
  loc_1A95EFF:   var_150 = CVar(CStr(CVar(CStr(var_10C & "' And Mark='*'") & "' And ((MemAddRWA.SNo=") & "' And Mark='*'") & "' And ((MemAddRWA.SNo=") & var_EC & " And MemAddRWA.Name ='" 
  loc_1A95F06:   var_140 = "Name"
  loc_1A95F12:   var_160 = var_A4.Fields
  loc_1A95F2E:   var_194 = var_378 & CVar(Proc_183_2_E5AE94(CVar(var_160.Item(var_140)), var_150)) 
  loc_1A95F61:   Proc_183_3_E7DD58(var_1EC, CVar(var_A8.Fields.Item("SNo")))
  loc_1A95FA1:   var_264 = var_194 & "')  Or (MemAddRWA.SNo=" & var_1EC & " And MemAddRWA.Name ='" & CVar(Proc_183_2_E5AE94(CVar(var_A8.Fields.Item("Name")))) 
  loc_1A95FD4:   Proc_183_3_E7DD58(var_2BC, CVar(var_AC.Fields.Item("SNo")))
  loc_1A96014:   var_334 = var_264 & "')  Or (MemAddRWA.SNo=" & var_2BC & " And MemAddRWA.Name ='" & CVar(Proc_183_2_E5AE94(CVar(var_AC.Fields.Item("Name")))) 
  loc_1A9602B:   unk_5ADE1E.Execute CStr(var_334 & "'))"), , 
  loc_1A96036:   Set var_94 = var_378
  loc_1A9608E: End If
  loc_1A96091: var_37A = KeyCode
  loc_1A9609C: If (var_37A = CInt(0)) Then
  loc_1A960A9:   Set var_C4 = Me.CmdAdd
  loc_1A960AF:   Call 0.Method_CmdAdd_UnknownEvent_90 (KeyCode, var_DC)
  loc_1A960B7:   Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_37A)
  loc_1A960CC:   Me.LblAddType.Caption = CStr()
  loc_1A960E4:   Set var_C4 = Me.TopCtrl1
  loc_1A960EA:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A960FE:   Set var_DC = Me.TopCtrl1
  loc_1A96104:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Edit"))
  loc_1A9612A:   If ( Or (CStr() = "Browse")) Then
  loc_1A9612D:     Call Proc_265_105_EB0944()
  loc_1A96135:     var_94.MoveFirst
  loc_1A96184:     var_94.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A961AE:     If (var_94.AbsolutePosition > 0) Then
  loc_1A961E7:       Set var_154 = Me.TxtA
  loc_1A961ED:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A961F5:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Add1")))
  loc_1A9623F:       Set var_154 = Me.TxtA
  loc_1A96245:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A9624D:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Add2")))
  loc_1A96297:       Set var_154 = Me.TxtA
  loc_1A9629D:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A962A5:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Add3")))
  loc_1A962EF:       Set var_154 = Me.TxtA
  loc_1A962F5:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A962FD:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("PinCode")))
  loc_1A96347:       Set var_154 = Me.TxtA
  loc_1A9634D:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A96355:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("CityN")))
  loc_1A9639F:       Set var_154 = Me.TxtA
  loc_1A963A5:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A963AD:       var_15C.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("City")))
  loc_1A963F7:       Set var_154 = Me.TxtA
  loc_1A963FD:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A96405:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("StateN")))
  loc_1A9644F:       Set var_154 = Me.TxtA
  loc_1A96455:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A9645D:       var_15C.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("State")))
  loc_1A964A7:       Set var_154 = Me.TxtA
  loc_1A964AD:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A964B5:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("CountryN")))
  loc_1A964FF:       Set var_154 = Me.TxtA
  loc_1A96505:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A9650D:       var_15C.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("Country")))
  loc_1A96557:       Set var_154 = Me.TxtA
  loc_1A9655D:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A96565:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Phone")))
  loc_1A965AF:       Set var_154 = Me.TxtA
  loc_1A965B5:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A965BD:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Mobile")))
  loc_1A96607:       Set var_154 = Me.TxtA
  loc_1A9660D:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A96615:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Mobile1")))
  loc_1A9665F:       Set var_154 = Me.TxtA
  loc_1A96665:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A9666D:       var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Email")))
  loc_1A966E2:       Me.ChkCorresAdd.Value = CInt(IIf((var_94.Fields.Item("CorresYN").Value = "Y"), 1, 0))
  loc_1A96702:       Set var_94 = Nothing
  loc_1A96705:     End If
  loc_1A96705:   End If
  loc_1A96709:   Set var_C4 = Me.TopCtrl1
  loc_1A9670F:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_1A96728:   If (CStr() = "Add") Then
  loc_1A9672B:     Call Proc_265_105_EB0944()
  loc_1A96733:     var_9C.MoveFirst
  loc_1A96782:     var_9C.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A967AC:     If (var_9C.AbsolutePosition > 0) Then
  loc_1A967E5:       Set var_154 = Me.TxtA
  loc_1A967EB:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A967F3:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1")))
  loc_1A9683D:       Set var_154 = Me.TxtA
  loc_1A96843:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A9684B:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2")))
  loc_1A96895:       Set var_154 = Me.TxtA
  loc_1A9689B:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A968A3:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add3")))
  loc_1A968ED:       Set var_154 = Me.TxtA
  loc_1A968F3:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A968FB:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("PinCode")))
  loc_1A96945:       Set var_154 = Me.TxtA
  loc_1A9694B:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A96953:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("CityN")))
  loc_1A9699D:       Set var_154 = Me.TxtA
  loc_1A969A3:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A969AB:       var_15C.Tag = Proc_6_38_E69628(CVar(var_9C.Fields.Item("City")))
  loc_1A969F5:       Set var_154 = Me.TxtA
  loc_1A969FB:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A96A03:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("StateN")))
  loc_1A96A4D:       Set var_154 = Me.TxtA
  loc_1A96A53:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A96A5B:       var_15C.Tag = Proc_6_38_E69628(CVar(var_9C.Fields.Item("State")))
  loc_1A96AA5:       Set var_154 = Me.TxtA
  loc_1A96AAB:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A96AB3:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("CountryN")))
  loc_1A96AFD:       Set var_154 = Me.TxtA
  loc_1A96B03:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A96B0B:       var_15C.Tag = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Country")))
  loc_1A96B55:       Set var_154 = Me.TxtA
  loc_1A96B5B:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A96B63:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Phone")))
  loc_1A96BAD:       Set var_154 = Me.TxtA
  loc_1A96BB3:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A96BBB:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Mobile")))
  loc_1A96C05:       Set var_154 = Me.TxtA
  loc_1A96C0B:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A96C13:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Mobile1")))
  loc_1A96C5D:       Set var_154 = Me.TxtA
  loc_1A96C63:       Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A96C6B:       var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Email")))
  loc_1A96C99:       var_DC = var_9C.Fields.Item("CorresYN")
  loc_1A96CE0:       Me.ChkCorresAdd.Value = CInt(IIf((var_DC.Value = "Y"), 1, 0))
  loc_1A96CFB:     End If
  loc_1A96CFB:   End If
  loc_1A96CFE: Else
  loc_1A96D06:   If (var_37A = CInt(1)) Then
  loc_1A96D13:     Set var_C4 = Me.CmdAdd
  loc_1A96D19:     Call 0.Method_CmdAdd_UnknownEvent_90 (KeyCode, var_DC)
  loc_1A96D21:     Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_140)
  loc_1A96D36:     Me.LblAddType.Caption = CStr()
  loc_1A96D4E:     Set var_C4 = Me.TopCtrl1
  loc_1A96D54:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A96D68:     Set var_DC = Me.TopCtrl1
  loc_1A96D6E:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Edit"))
  loc_1A96D94:     If ( Or (CStr() = "Browse")) Then
  loc_1A96D97:       Call Proc_265_105_EB0944()
  loc_1A96D9F:       var_94.MoveFirst
  loc_1A96DEE:       var_94.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A96E18:       If (var_94.AbsolutePosition > 0) Then
  loc_1A96E51:         Set var_154 = Me.TxtA
  loc_1A96E57:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A96E5F:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Add1")))
  loc_1A96EA9:         Set var_154 = Me.TxtA
  loc_1A96EAF:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A96EB7:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Add2")))
  loc_1A96F01:         Set var_154 = Me.TxtA
  loc_1A96F07:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A96F0F:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Add3")))
  loc_1A96F59:         Set var_154 = Me.TxtA
  loc_1A96F5F:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A96F67:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("PinCode")))
  loc_1A96FB1:         Set var_154 = Me.TxtA
  loc_1A96FB7:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A96FBF:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("CityN")))
  loc_1A97009:         Set var_154 = Me.TxtA
  loc_1A9700F:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A97017:         var_15C.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("City")))
  loc_1A97061:         Set var_154 = Me.TxtA
  loc_1A97067:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A9706F:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("StateN")))
  loc_1A970B9:         Set var_154 = Me.TxtA
  loc_1A970BF:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A970C7:         var_15C.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("State")))
  loc_1A97111:         Set var_154 = Me.TxtA
  loc_1A97117:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A9711F:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("CountryN")))
  loc_1A97169:         Set var_154 = Me.TxtA
  loc_1A9716F:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A97177:         var_15C.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("Country")))
  loc_1A971C1:         Set var_154 = Me.TxtA
  loc_1A971C7:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A971CF:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Phone")))
  loc_1A97219:         Set var_154 = Me.TxtA
  loc_1A9721F:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A97227:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Mobile")))
  loc_1A97271:         Set var_154 = Me.TxtA
  loc_1A97277:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A9727F:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Mobile1")))
  loc_1A972C9:         Set var_154 = Me.TxtA
  loc_1A972CF:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A972D7:         var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Email")))
  loc_1A9734C:         Me.ChkCorresAdd.Value = CInt(IIf((var_94.Fields.Item("CorresYN").Value = "Y"), 1, 0))
  loc_1A9736C:         Set var_94 = Nothing
  loc_1A9736F:       End If
  loc_1A9736F:     End If
  loc_1A97373:     Set var_C4 = Me.TopCtrl1
  loc_1A97379:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_1A97392:     If (CStr() = "Add") Then
  loc_1A97395:       Call Proc_265_105_EB0944()
  loc_1A9739D:       var_9C.MoveFirst
  loc_1A973EC:       var_9C.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A97416:       If (var_9C.AbsolutePosition > 0) Then
  loc_1A9744F:         Set var_154 = Me.TxtA
  loc_1A97455:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A9745D:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1")))
  loc_1A974A7:         Set var_154 = Me.TxtA
  loc_1A974AD:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A974B5:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2")))
  loc_1A974FF:         Set var_154 = Me.TxtA
  loc_1A97505:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A9750D:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add3")))
  loc_1A97557:         Set var_154 = Me.TxtA
  loc_1A9755D:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A97565:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("PinCode")))
  loc_1A975AF:         Set var_154 = Me.TxtA
  loc_1A975B5:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A975BD:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("CityN")))
  loc_1A97607:         Set var_154 = Me.TxtA
  loc_1A9760D:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A97615:         var_15C.Tag = Proc_6_38_E69628(CVar(var_9C.Fields.Item("City")))
  loc_1A9765F:         Set var_154 = Me.TxtA
  loc_1A97665:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A9766D:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("StateN")))
  loc_1A976B7:         Set var_154 = Me.TxtA
  loc_1A976BD:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A976C5:         var_15C.Tag = Proc_6_38_E69628(CVar(var_9C.Fields.Item("State")))
  loc_1A9770F:         Set var_154 = Me.TxtA
  loc_1A97715:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A9771D:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("CountryN")))
  loc_1A97767:         Set var_154 = Me.TxtA
  loc_1A9776D:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A97775:         var_15C.Tag = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Country")))
  loc_1A977BF:         Set var_154 = Me.TxtA
  loc_1A977C5:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A977CD:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Phone")))
  loc_1A97817:         Set var_154 = Me.TxtA
  loc_1A9781D:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A97825:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Mobile")))
  loc_1A9786F:         Set var_154 = Me.TxtA
  loc_1A97875:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A9787D:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Mobile1")))
  loc_1A978C7:         Set var_154 = Me.TxtA
  loc_1A978CD:         Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A978D5:         var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Email")))
  loc_1A97903:         var_DC = var_9C.Fields.Item("CorresYN")
  loc_1A9794A:         Me.ChkCorresAdd.Value = CInt(IIf((var_DC.Value = "Y"), 1, 0))
  loc_1A97965:       End If
  loc_1A97965:     End If
  loc_1A97968:   Else
  loc_1A97970:     If (var_37A = CInt(2)) Then
  loc_1A9797D:       Set var_C4 = Me.CmdAdd
  loc_1A97983:       Call 0.Method_CmdAdd_UnknownEvent_90 (KeyCode, var_DC)
  loc_1A9798B:       Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_FFFFFDFA(var_140)
  loc_1A979A0:       Me.LblAddType.Caption = CStr()
  loc_1A979B8:       Set var_C4 = Me.TopCtrl1
  loc_1A979BE:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1A979D2:       Set var_DC = Me.TopCtrl1
  loc_1A979D8:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() = "Edit"))
  loc_1A979FE:       If ( Or (CStr() = "Browse")) Then
  loc_1A97A01:         Call Proc_265_105_EB0944()
  loc_1A97A09:         var_94.MoveFirst
  loc_1A97A58:         var_94.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A97A82:         If (var_94.AbsolutePosition > 0) Then
  loc_1A97ABB:           Set var_154 = Me.TxtA
  loc_1A97AC1:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A97AC9:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Add1")))
  loc_1A97B13:           Set var_154 = Me.TxtA
  loc_1A97B19:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A97B21:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Add2")))
  loc_1A97B6B:           Set var_154 = Me.TxtA
  loc_1A97B71:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A97B79:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Add3")))
  loc_1A97BC3:           Set var_154 = Me.TxtA
  loc_1A97BC9:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A97BD1:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("PinCode")))
  loc_1A97C1B:           Set var_154 = Me.TxtA
  loc_1A97C21:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A97C29:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("CityN")))
  loc_1A97C73:           Set var_154 = Me.TxtA
  loc_1A97C79:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A97C81:           var_15C.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("City")))
  loc_1A97CCB:           Set var_154 = Me.TxtA
  loc_1A97CD1:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A97CD9:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("StateN")))
  loc_1A97D23:           Set var_154 = Me.TxtA
  loc_1A97D29:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A97D31:           var_15C.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("State")))
  loc_1A97D7B:           Set var_154 = Me.TxtA
  loc_1A97D81:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A97D89:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("CountryN")))
  loc_1A97DD3:           Set var_154 = Me.TxtA
  loc_1A97DD9:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A97DE1:           var_15C.Tag = Proc_6_38_E69628(CVar(var_94.Fields.Item("Country")))
  loc_1A97E2B:           Set var_154 = Me.TxtA
  loc_1A97E31:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A97E39:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Phone")))
  loc_1A97E83:           Set var_154 = Me.TxtA
  loc_1A97E89:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A97E91:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Mobile")))
  loc_1A97EDB:           Set var_154 = Me.TxtA
  loc_1A97EE1:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A97EE9:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Mobile1")))
  loc_1A97F33:           Set var_154 = Me.TxtA
  loc_1A97F39:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A97F41:           var_15C.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Email")))
  loc_1A97FB6:           Me.ChkCorresAdd.Value = CInt(IIf((var_94.Fields.Item("CorresYN").Value = "Y"), 1, 0))
  loc_1A97FD6:           Set var_94 = Nothing
  loc_1A97FD9:         End If
  loc_1A97FD9:       End If
  loc_1A97FDD:       Set var_C4 = Me.TopCtrl1
  loc_1A97FE3:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_1A97FFC:       If (CStr() = "Add") Then
  loc_1A97FFF:         Call Proc_265_105_EB0944()
  loc_1A98007:         var_9C.MoveFirst
  loc_1A98056:         var_9C.Find CStr("Name='" & Trim(CVar(Me.LblAddType.Caption)) & "'"), 0, 1
  loc_1A98080:         If (var_9C.AbsolutePosition > 0) Then
  loc_1A980B9:           Set var_154 = Me.TxtA
  loc_1A980BF:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A980C7:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add1")))
  loc_1A98111:           Set var_154 = Me.TxtA
  loc_1A98117:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_15C)
  loc_1A9811F:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add2")))
  loc_1A98169:           Set var_154 = Me.TxtA
  loc_1A9816F:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_15C)
  loc_1A98177:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Add3")))
  loc_1A981C1:           Set var_154 = Me.TxtA
  loc_1A981C7:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_15C)
  loc_1A981CF:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("PinCode")))
  loc_1A98219:           Set var_154 = Me.TxtA
  loc_1A9821F:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A98227:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("CityN")))
  loc_1A98271:           Set var_154 = Me.TxtA
  loc_1A98277:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_15C)
  loc_1A9827F:           var_15C.Tag = Proc_6_38_E69628(CVar(var_9C.Fields.Item("City")))
  loc_1A982C9:           Set var_154 = Me.TxtA
  loc_1A982CF:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A982D7:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("StateN")))
  loc_1A98321:           Set var_154 = Me.TxtA
  loc_1A98327:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_15C)
  loc_1A9832F:           var_15C.Tag = Proc_6_38_E69628(CVar(var_9C.Fields.Item("State")))
  loc_1A98379:           Set var_154 = Me.TxtA
  loc_1A9837F:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A98387:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("CountryN")))
  loc_1A983D1:           Set var_154 = Me.TxtA
  loc_1A983D7:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_15C)
  loc_1A983DF:           var_15C.Tag = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Country")))
  loc_1A98429:           Set var_154 = Me.TxtA
  loc_1A9842F:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_15C)
  loc_1A98437:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Phone")))
  loc_1A98481:           Set var_154 = Me.TxtA
  loc_1A98487:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_15C)
  loc_1A9848F:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Mobile")))
  loc_1A984D9:           Set var_154 = Me.TxtA
  loc_1A984DF:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_15C)
  loc_1A984E7:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Mobile1")))
  loc_1A98531:           Set var_154 = Me.TxtA
  loc_1A98537:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_15C)
  loc_1A9853F:           var_15C.Text = Proc_6_38_E69628(CVar(var_9C.Fields.Item("Email")))
  loc_1A9856D:           var_DC = var_9C.Fields.Item("CorresYN")
  loc_1A9857A:           var_150 = 0
  loc_1A985AE:           Set var_154 = Me.ChkCorresAdd
  loc_1A985B4:           var_154.Value = CInt(IIf((var_DC.Value = "Y"), 1, var_150))
  loc_1A985CF:         End If
  loc_1A985CF:       End If
  loc_1A985D2:     Else
  loc_1A985DA:       If (var_37A = CInt(3)) Then
  loc_1A985E0:         Call Proc_265_100_FA2398(var_382)
  loc_1A985EB:         If (var_382 = 0) Then
  loc_1A985EE:           Exit Sub
  loc_1A985EF:         End If
  loc_1A985F3:         Set var_C4 = Me.TopCtrl1
  loc_1A985F9:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_140)
  loc_1A98612:         If (CStr() = "Add") Then
  loc_1A98678:           Set var_C4 = Me.Txt
  loc_1A9867E:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, "Select CorresYN,Name from memAddRWA where SubCode='", var_150)
  loc_1A98695:           var_10C = -1 & Trim(CVar(var_DC)) 
  loc_1A9869E:           var_12C = IIf((Me.ChkCorresAdd.Value = 1), 1, 0) & "' And Mark='*' And CorresYN='Y'" 
  loc_1A986AC:           unk_5ADE1E.Execute CStr(var_12C), var_154, CInt(IIf((Me.ChkCorresAdd.Value = 1), 1, 0))
  loc_1A986B7:           Set var_A0 = var_154
  loc_1A986E5:           If (var_A0.RecordCount > 0) Then
  loc_1A98724:             If (var_A0.Fields.Item("CorresYN").Value = "Y") Then
  loc_1A9875E:               If (MsgBox("Would U Like to Change Correspond Address", &H44, "Validation", IIf((Me.ChkCorresAdd.Value = 1), 1, 0), var_12C) = 6) Then
  loc_1A9878D:                 var_DC = var_A0.Fields.Item("Name")
  loc_1A987B5:                 Set var_154 = Me.Txt
  loc_1A987BB:                 Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C, "Update MemAddRWA set CorresYN='N' Where Name ='" & var_DC.Value & "' And SubCode='")
  loc_1A987E9:                 unk_5ADE1E.Execute CStr(var_194 & Trim(CVar(var_15C)) & "' And Mark='*' And CorresYN='Y'"), -1, var_160
  loc_1A9882A:                 If (Me.ChkCorresAdd.Value = 1) Then
  loc_1A98832:                   global_104 = 1
  loc_1A98838:                 Else
  loc_1A9883D:                   global_104 = 0
  loc_1A98840:                 End If
  loc_1A98843:               Else
  loc_1A98848:                 global_104 = 0
  loc_1A9884B:               End If
  loc_1A9884B:             End If
  loc_1A9884B:           End If
  loc_1A9884B:         End If
  loc_1A9884F:         Set var_C4 = Me.TopCtrl1
  loc_1A98855:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(global_104)
  loc_1A9885D:         var_D8 = CStr(global_104)
  loc_1A9886E:         If (var_D8 = "Edit") Then
  loc_1A98883:           var_EC = 0
  loc_1A988A6:           global_104 = CInt(IIf((Me.ChkCorresAdd.Value = 1), 1, var_EC))
  loc_1A988D5:           Set var_C4 = Me.Txt
  loc_1A988DB:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, var_D8, "Select CorresYN,Name from MemAddRWA where subcode ='", var_374)
  loc_1A988E3:           -1 = var_DC.Text
  loc_1A988F3:           var_10C = CVar(var_378 & var_D8 & "' And CorresYN='Y' And ((SNo=") 'String
  loc_1A9890D:           var_15C = var_A4.Fields.Item("SNo")
  loc_1A9891C:           Proc_183_3_E7DD58(var_EC, CVar(var_15C), var_10C)
  loc_1A98924:           var_12C = global_104 & var_EC 
  loc_1A98940:           var_160 = var_A4.Fields
  loc_1A98948:           var_164 = var_160.Item("Name")
  loc_1A9895C:           var_194 = global_104 & CVar(Proc_183_2_E5AE94(CVar(var_164), var_12C & " And Name ='")) 
  loc_1A98965:           var_1B4 = var_194 & "')  Or (SNo=" 
  loc_1A98980:           var_1CC = var_A8.Fields.Item("SNo")
  loc_1A9898F:           Proc_183_3_E7DD58(var_1EC, CVar(var_1CC))
  loc_1A989BB:           var_234 = var_A8.Fields.Item("Name")
  loc_1A989F3:           var_29C = var_AC.Fields.Item("SNo")
  loc_1A98A02:           Proc_183_3_E7DD58(var_2BC, CVar(var_29C))
  loc_1A98A13:           var_2EC = var_1B4 & var_1EC & " And Name ='" & CVar(Proc_183_2_E5AE94(CVar(var_234))) & "')  Or (SNo=" & var_2BC & " And Name ='" 
  loc_1A98A2E:           var_304 = var_AC.Fields.Item("Name")
  loc_1A98A59:           unk_5ADE1E.Execute CStr(var_2EC & CVar(Proc_183_2_E5AE94(CVar(var_304))) & "'))"), , 
  loc_1A98A64:           Set var_B0 = var_378
  loc_1A98AC2:           var_380 = var_B0.RecordCount
  loc_1A98AD0:           If (var_380 > 0) Then
  loc_1A98B0F:             If (var_B0.Fields.Item("CorresYN").Value = "Y") Then
  loc_1A98B49:               If (MsgBox("Would U Like to Change Correspond Address", &H44, "Validation", var_10C, var_12C) = 6) Then
  loc_1A98BA0:                 Set var_154 = Me.Txt
  loc_1A98BA6:                 Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C, "Update MemAddRWA set CorresYN='N' Where Name ='" & var_B0.Fields.Item("Name").Value & "' And SubCode='")
  loc_1A98BD4:                 unk_5ADE1E.Execute CStr(var_194 & Trim(CVar(var_15C)) & "' And CorresYN='Y'"), -1, var_160
  loc_1A98C15:                 If (Me.ChkCorresAdd.Value = 1) Then
  loc_1A98C1D:                   global_104 = 1
  loc_1A98C23:                 Else
  loc_1A98C28:                   global_104 = 0
  loc_1A98C2B:                 End If
  loc_1A98C2E:               Else
  loc_1A98C49:                 If (Me.ChkCorresAdd.Value = 1) Then
  loc_1A98C51:                   global_104 = 1
  loc_1A98C57:                 Else
  loc_1A98C5C:                   global_104 = 0
  loc_1A98C5F:                 End If
  loc_1A98C5F:               End If
  loc_1A98C5F:             End If
  loc_1A98C5F:           End If
  loc_1A98C5F:         End If
  loc_1A98C68:         unk_5ADE1E.BeginTrans var_380
  loc_1A98C76:         Set var_C4 = Me.TopCtrl1
  loc_1A98C7C:         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(&HFF)
  loc_1A98C95:         If (CStr(global_104) = "Add") Then
  loc_1A98CE5:           Set var_DC = Me.Txt
  loc_1A98CEB:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_154, "Delete From MemAddRWA Where Name ='" & Trim(CVar(Me.LblAddType.Caption)) & "' And SubCode='", var_1B4, -1)
  loc_1A98D19:           unk_5ADE1E.Execute CStr(var_15C & Trim(CVar(var_154)) & "' And Mark='*'"), global_104, global_104
  loc_1A98D4D:           Set var_C4 = Me.Txt
  loc_1A98D53:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC)
  loc_1A98D7E:           Set var_154 = Me.TxtA
  loc_1A98D84:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_15C)
  loc_1A98D9F:           Set var_160 = Me.TxtA
  loc_1A98DA5:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_164)
  loc_1A98DC0:           Set var_1B8 = Me.TxtA
  loc_1A98DC6:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_1CC)
  loc_1A98DE1:           Set var_220 = Me.TxtA
  loc_1A98DE7:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_234)
  loc_1A98E02:           Set var_288 = Me.TxtA
  loc_1A98E08:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_29C)
  loc_1A98E23:           Set var_2F0 = Me.TxtA
  loc_1A98E29:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_304)
  loc_1A98E44:           Set var_378 = Me.TxtA
  loc_1A98E4A:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_3A0)
  loc_1A98E65:           Set var_3C8 = Me.Txt
  loc_1A98E6B:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&H11), var_3CC)
  loc_1A98E86:           Set var_404 = Me.TxtA
  loc_1A98E8C:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_408)
  loc_1A98EA7:           Set var_440 = Me.TxtA
  loc_1A98EAD:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_444)
  loc_1A98EC8:           Set var_47C = Me.TxtA
  loc_1A98ECE:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_480)
  loc_1A98EE9:           Set var_4E8 = Me.TxtA
  loc_1A98EEF:           Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_4EC)
  loc_1A98F3B:           var_130 = "Insert Into MemAddRWA(SubCode,Name,SNo,Add1,Add2,Add3,PinCode,City,State,Country,PAN,Phone,Mobile,Mobile1,Email, " & "CorresYN,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) Values ('"
  loc_1A98F74:           var_1B4 = CVar(var_130 & var_DC.Text & "','") & Trim(CVar(Me.LblAddType)) & "',1," & "'" & CVar(var_15C.Text) & "','" 
  loc_1A98FB7:           var_2CC = var_1B4 & CVar(var_164.Text) & "','" & CVar(var_1CC.Text) & "','" & CVar(var_234.Text) & "','" & CVar(var_29C.Tag) 
  loc_1A9900C:           var_42C = var_2CC & "','" & CVar(var_304.Tag) & "','" & CVar(var_3A0.Tag) & "'," & "'" & CVar(var_3CC.Text) & "','" & CVar(var_408.Text) 
  loc_1A9905E:           var_5A0 = var_42C & "','" & CVar(var_444.Text) & "','" & CVar(var_480.Text) & "', " & "'" & CVar(var_4EC.Text) & "','" & IIf((global_104 = 1), "Y", "N") 
  loc_1A990A9:           var_6A0 = var_5A0 & "', '*' ,'" & CVar(MemVar_1F95070) & "', " & "'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "','" 
  loc_1A990CB:           unk_5ADE1E.Execute CStr(var_6A0 & CDate(MemVar_1F950EC) & "','A')"), var_704, -1
  loc_1A99192:         Else
  loc_1A99196:           Set var_C4 = Me.TopCtrl1
  loc_1A9919C:           Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_708)
  loc_1A991B5:           If (CStr(global_104) = "Edit") Then
  loc_1A991F5:             Set var_C4 = Me.Txt
  loc_1A991FB:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC, "Select Max(SNo) As SNo From MemAddRWA Where Name='" & Trim(CVar(Me.LblAddType)) & "' And Subcode='")
  loc_1A99212:             var_184 = var_1B4 & Trim(CVar(var_DC)) 
  loc_1A99229:             unk_5ADE1E.Execute CStr(var_184 & "'"), -1, var_154
  loc_1A99264:             Set var_C4 = Me.Txt
  loc_1A9926A:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_DC)
  loc_1A992A6:             var_174 = CVar(var_154.Fields.Item("SNo")) 'Address
  loc_1A992AD:             Proc_6_39_E7D3A0(var_184)
  loc_1A992C0:             Set var_160 = Me.TxtA
  loc_1A992C6:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(0), var_164)
  loc_1A992E1:             Set var_1B8 = Me.TxtA
  loc_1A992E7:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(1), var_1CC)
  loc_1A99302:             Set var_220 = Me.TxtA
  loc_1A99308:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(2), var_234)
  loc_1A99323:             Set var_288 = Me.TxtA
  loc_1A99329:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(6), var_29C)
  loc_1A99344:             Set var_2F0 = Me.TxtA
  loc_1A9934A:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(3), var_304)
  loc_1A99365:             Set var_378 = Me.TxtA
  loc_1A9936B:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(4), var_3A0)
  loc_1A99386:             Set var_3C8 = Me.TxtA
  loc_1A9938C:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(5), var_3CC)
  loc_1A993A7:             Set var_404 = Me.Txt
  loc_1A993AD:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&H11), var_408)
  loc_1A993C8:             Set var_440 = Me.TxtA
  loc_1A993CE:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(7), var_444)
  loc_1A993E9:             Set var_47C = Me.TxtA
  loc_1A993EF:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(8), var_480)
  loc_1A9940A:             Set var_4E8 = Me.TxtA
  loc_1A99410:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(&HA), var_4EC)
  loc_1A9942B:             Set var_708 = Me.TxtA
  loc_1A99431:             Call 0.Method_CmdAdd_UnknownEvent_90 (CInt(9), var_70C)
  loc_1A9947D:             var_130 = "Insert Into MemAddRWA(SubCode,Name,SNo,Add1,Add2,Add3,PinCode,City,State,Country,PAN,Phone,Mobile,Mobile1,Email, " & "CorresYN,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) Values ('"
  loc_1A9948B:             var_10C = CVar(var_130 & var_DC.Text & "','") 'String
  loc_1A99491:             var_12C = var_10C & Trim(CVar(Me.LblAddType)) 
  loc_1A994A5:             var_140 = " +1 ,"
  loc_1A994E3:             var_2AC = var_12C & "'," & var_184 & "'" & "'" & CVar(var_164.Text) & "','" & CVar(var_1CC.Text) & "','" & CVar(var_234.Text) 
  loc_1A9952F:             var_3F0 = var_2AC & "','" & CVar(var_29C.Text) & "','" & CVar(var_304.Tag) & "','" & CVar(var_3A0.Tag) & "','" & CVar(var_3CC.Tag) 
  loc_1A99584:             var_510 = var_3F0 & "'," & "'" & CVar(var_408.Text) & "','" & CVar(var_444.Text) & "','" & CVar(var_480.Text) & "','" & CVar(var_4EC.Text) 
  loc_1A995C3:             var_660 = var_510 & "', " & "'" & CVar(var_70C.Text) & "','" & IIf((global_104 = 1), "Y", "N") & "','*','" & CVar(MemVar_1F95070) 
  loc_1A9960F:             var_74C = var_660 & "', " & "'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "','" & CDate(MemVar_1F950EC) & "','E')" 
  loc_1A9961D:             unk_5ADE1E.Execute CStr(var_74C), var_76C, -1
  loc_1A9970C:             MsgBox("Record Inserted", &H40, "Information", var_10C, var_12C)
  loc_1A9971C:           End If
  loc_1A9971C:         End If
  loc_1A99722:         unk_5ADE1E.CommitTrans
  loc_1A99729:         var_86 = 0
  loc_1A9972C:         ' Referenced from:       1A95BD8
  loc_1A99732:         If (var_86 = &HFF) Then
  loc_1A9973B:           unk_5ADDE0.RollbackTrans
  loc_1A99740:         End If
  loc_1A99740:       End If
  loc_1A99740:     End If
  loc_1A99740:   End If
  loc_1A99740: End If
  loc_1A99745: Set var_9C = Nothing
  loc_1A9974D: Set var_A4 = Nothing
  loc_1A99755: Set var_A8 = Nothing
  loc_1A9975D: Set var_AC = Nothing
  loc_1A99765: Set var_A0 = Nothing
  loc_1A9976D: Set var_B0 = Nothing
  loc_1A9977B: Set global_92 = Nothing
  loc_1A99787: Set var_B4 = Nothing
  loc_1A9978A: Exit Sub
End Sub

Private Sub ListView1_UnknownEvent_13 'F8978C
  'Data Table: 5ADDB4
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F89648: On Error Goto loc_F89726
  loc_F8964F: Set var_A4 = Me.ListView1
  loc_F89699: Set var_BC = Me.Txt
  loc_F8969F: Call 0.Method_ListView1_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F896A7: var_C0.Text = Me.ListView1.SelectedItem.Text
  loc_F896D3: Me.frmList1.Visible = False
  loc_F896ED: var_A0 = CStr(Me.ListView1.Tag)
  loc_F896F5: var_C8 = Val(var_A0)
  loc_F89703: Set var_9C = Me.Txt
  loc_F89709: Call 0.Method_ListView1_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F89711: var_A4.SetFocus
  loc_F89725: Exit Sub
  loc_F89726: ' Referenced from: F89648
  loc_F8972E: Set var_88 = Err()
  loc_F89734: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F89745: If (var_CC <> 0) Then
  loc_F89750:   Set var_88 = Err()
  loc_F89756:   Call 0.Method_arg_2C (var_A0)
  loc_F89777:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F8978A: End If
  loc_F8978A: Exit Sub
End Sub

Private Sub TxtA_GotFocus(Index As Integer) '10C83A8
  'Data Table: 5ADDB4
  Dim var_92 As Integer
  Dim var_A4 As Variant
  Dim var_88 As DataGrid
  Dim var_8C As TextBox
  Dim var_B4 As Variant
  Dim var_CC As Variant
  Dim var_D0 As TextBox
  Dim Me As Recordset15
  loc_10C80D6: Set var_88 = Me.TxtA
  loc_10C80DC: Call 0.Method_TxtA_GotFocus0 (Index)
  loc_10C80EA: Proc_183_28_E216B0(var_8C)
  loc_10C80F6: Call Proc_265_106_10506D4(var_8C)
  loc_10C80FE: var_92 = Index
  loc_10C8109: If (var_92 = CInt(3)) Then
  loc_10C811F:   Me.DGCity.Tag = CVar(CStr(Index))
  loc_10C8134:   var_A4 = Me.SSTab1.Left
  loc_10C814A:   Set var_88 = Me.TxtA
  loc_10C8150:   Call 0.Method_TxtA_GotFocus0 (Index, var_8C, var_B8)
  loc_10C8166:   var_B4 = CVar((var_B8 + CDbl(var_8C.Left))) 'Single
  loc_10C8175:   Me.DGCity.Left = var_B4
  loc_10C8192:   var_A4 = Me.SSTab1.Top
  loc_10C81A8:   Set var_CC = Me.TxtA
  loc_10C81AE:   Call 0.Method_TxtA_GotFocus0 (Index, var_D0, var_D4)
  loc_10C81C8:   Set var_88 = Me.TxtA
  loc_10C81CE:   Call 0.Method_TxtA_GotFocus0 (Index, var_8C)
  loc_10C81EC:   var_B4 = CVar((((var_8C.Top + CDbl(var_D0.Height)) + var_D4) + CDbl(&HF))) 'Single
  loc_10C81FB:   Me.DGCity.Top = var_B4
  loc_10C8229:   If (Me.RecordCount > 0) Then
  loc_10C8237:     Set var_8C = Me.FGPoint
  loc_10C824F:     Proc_6_137_1192FDC(Me.DGCity, global_184, Index)
  loc_10C825D:   End If
  loc_10C82AB:   Set var_88 = Me.TxtA
  loc_10C82B1:   Call 0.Method_TxtA_GotFocus0 (Index, var_8C, var_E0)
  loc_10C82B9:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_10C82D1:   If (var_8C Or (var_E0 = vbNullString)) Then
  loc_10C82D4:     Exit Sub
  loc_10C82D5:   End If
  loc_10C82E2:   Set var_88 = Me.TxtA
  loc_10C82E8:   Call 0.Method_TxtA_GotFocus0 (Index, var_8C)
  loc_10C82F0:   var_E0 = var_8C.Text
  loc_10C8302:   var_B4 = "Name"
  loc_10C833D:   If CBool(CVar(var_E0) <> Me.Fields.Item(var_B4).Value) Then
  loc_10C8346:     Me.MoveFirst
  loc_10C8369:     Set var_88 = Me.TxtA
  loc_10C836F:     Call 0.Method_TxtA_GotFocus0 (Index, var_8C, var_E0, "Name ='")
  loc_10C8377:     0 = var_8C.Text
  loc_10C8390:     Me.Find 1 & var_E0 & "'", var_B4, var_92
  loc_10C83A5:   End If
  loc_10C83A5: End If
  loc_10C83A5: Exit Sub
End Sub

Private Sub TxtA_KeyDown(KeyCode As Integer, Shift As Integer) '10959CC
  'Data Table: 5ADDB4
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_8C As DataGrid
  Dim var_98 As DataGrid
  Dim var_9C As Frame
  loc_109573A: If (CLng(Shift) = &H1B) Then
  loc_109573D:   Call Proc_265_106_10506D4()
  loc_1095742:   Exit Sub
  loc_1095743: End If
  loc_1095746: var_86 = KeyCode
  loc_1095751: If (var_86 = CInt(3)) Then
  loc_1095771:   Set var_9C = Me.FGPoint
  loc_109577C:   Set var_98 = Nothing
  loc_10957AA:   Proc_6_69_134A630(Me.DGCity, Me.TxtA, KeyCode, global_184, Shift, 0)
  loc_1095819:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_109583F:     Proc_6_138_106E830(Me.DGCity, global_184, KeyCode, Me.FGPoint, 1)
  loc_109584D:   End If
  loc_109584D: End If
  loc_109587E: Set var_98 = Me.DGCity
  loc_1095898: Set var_9C = Me.FrmList
  loc_109590F: If (((((((CBool(Me.DGUnderAc.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) And (CBool(var_98.Visible) = 0)) And (var_9C.Visible = 0)) And (Me.frmList1.Visible = 0)) And (CBool(Me.DgMemType.Visible) = 0)) And (CBool(Me.DGUnderAc.Visible) = 0)) Then
  loc_1095927:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_1095930:     Proc_6_75_E5335C(Shift, arg_14, var_98)
  loc_1095935:   End If
  loc_1095939:   Set var_8C = Me.TopCtrl1
  loc_109593F:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_9C)
  loc_1095958:   If (CStr(0) = "Add") Then
  loc_1095970:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_1095979:       Proc_6_76_E533C8(Shift, arg_14)
  loc_109597E:     End If
  loc_1095981:   Else
  loc_1095985:     Set var_8C = Me.TopCtrl1
  loc_109598B:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_10959A4:     If (CStr() = "Edit") Then
  loc_10959BC:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_10959C5:         Proc_6_76_E533C8(Shift)
  loc_10959CA:       End If
  loc_10959CA:     End If
  loc_10959CA:   End If
  loc_10959CA: End If
  loc_10959CA: Exit Sub
  loc_10959CB: Exit Sub
End Sub

Private Sub TxtA_KeyPress(KeyAscii As Integer) 'EE7858
  'Data Table: 5ADDB4
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE779E: Proc_6_133_E7FB08(var_94)
  loc_EE77B3: If (CInt(var_94) = &H27) Then
  loc_EE77B8:   arg_10 = 0
  loc_EE77BB:   Exit Sub
  loc_EE77BC: End If
  loc_EE77CA: If (KeyAscii = CInt(3)) Then
  loc_EE77E9:   If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EE7816:     Proc_183_41_145A968(Me.TxtA, KeyAscii, global_184, arg_10, "Name")
  loc_EE7848:     Proc_6_138_106E830(Me.DGCity, global_184, KeyAscii, Me.FGPoint, 0)
  loc_EE7856:   End If
  loc_EE7856: End If
  loc_EE7856: Exit Sub
End Sub

Private Sub TxtA_LostFocus(Index As Integer) 'E4ABC4
  'Data Table: 5ADDB4
  loc_E4ABA2: Set var_88 = Me.TxtA
  loc_E4ABA8: Call 0.Method_TxtA_LostFocus0 (Index)
  loc_E4ABB6: Proc_183_27_E23198(var_8C)
  loc_E4ABC2: Exit Sub
End Sub

Private Sub TxtA_Validate(Cancel As Boolean) '1161CC0
  'Data Table: 5ADDB4
  Dim Me As Recordset15
  Dim var_98 As Variant
  Dim var_94 As Fields15
  Dim var_B4 As TextBox
  loc_1161912: If (Cancel = CInt(3)) Then
  loc_1161956:   If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_1161966:     Set var_94 = Me.TxtA
  loc_116196C:     Call 0.Method_TxtA_Validate0 (Cancel, var_98)
  loc_116198B:     If (var_98.Text <> vbNullString) Then
  loc_11619C9:       Set var_B0 = Me.TxtA
  loc_11619CF:       Call 0.Method_TxtA_Validate0 (Cancel, var_B4)
  loc_11619D7:       var_B4.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1161A28:       Set var_B0 = Me.TxtA
  loc_1161A2E:       Call 0.Method_TxtA_Validate0 (Cancel, var_B4)
  loc_1161A36:       var_B4.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1161A88:       Set var_B0 = Me.TxtA
  loc_1161A8E:       Call 0.Method_TxtA_Validate0 (CInt(4), var_B4)
  loc_1161A96:       var_B4.Text = CStr(Me.Fields.Item("SName").Value)
  loc_1161AE8:       Set var_B0 = Me.TxtA
  loc_1161AEE:       Call 0.Method_TxtA_Validate0 (CInt(4), var_B4)
  loc_1161AF6:       var_B4.Tag = CStr(Me.Fields.Item("SCode").Value)
  loc_1161B48:       Set var_B0 = Me.TxtA
  loc_1161B4E:       Call 0.Method_TxtA_Validate0 (CInt(5), var_B4)
  loc_1161B56:       var_B4.Text = CStr(Me.Fields.Item("CName").Value)
  loc_1161B89:       var_98 = Me.Fields.Item("cCode")
  loc_1161BA8:       Set var_B0 = Me.TxtA
  loc_1161BAE:       Call 0.Method_TxtA_Validate0 (CInt(5), var_B4)
  loc_1161BB6:       var_B4.Tag = CStr(var_98.Value)
  loc_1161BCF:     Else
  loc_1161BDC:       Set var_94 = Me.TxtA
  loc_1161BE2:       Call 0.Method_TxtA_Validate0 (Cancel, var_98)
  loc_1161BEA:       var_98.Text = vbNullString
  loc_1161C03:       Set var_94 = Me.TxtA
  loc_1161C09:       Call 0.Method_TxtA_Validate0 (Cancel, var_98)
  loc_1161C11:       var_98.Tag = vbNullString
  loc_1161C2B:       Set var_94 = Me.TxtA
  loc_1161C31:       Call 0.Method_TxtA_Validate0 (CInt(4), var_98)
  loc_1161C39:       var_98.Text = vbNullString
  loc_1161C53:       Set var_94 = Me.TxtA
  loc_1161C59:       Call 0.Method_TxtA_Validate0 (CInt(4), var_98)
  loc_1161C61:       var_98.Tag = vbNullString
  loc_1161C7B:       Set var_94 = Me.TxtA
  loc_1161C81:       Call 0.Method_TxtA_Validate0 (CInt(5), var_98)
  loc_1161C89:       var_98.Text = vbNullString
  loc_1161CA3:       Set var_94 = Me.TxtA
  loc_1161CA9:       Call 0.Method_TxtA_Validate0 (CInt(5), var_98)
  loc_1161CB1:       var_98.Tag = vbNullString
  loc_1161CBD:     End If
  loc_1161CBD:   End If
  loc_1161CBD: End If
  loc_1161CBD: Exit Sub
End Sub

Private Sub CmdProposedMemInf_Click() 'EBBF64
  'Data Table: 5ADDB4
  loc_EBBED8: Set global_92 = New MemberProposedMemInf
  loc_EBBEEE: Set var_88 = Me.Txt
  loc_EBBEF4: Call 0.Method_CmdProposedMemInf_Click0 (CInt(0))
  loc_EBBF12: Me.subcode = Trim(CVar(var_8C))
  loc_EBBF24: Set var_88 = (var_8C)
  loc_EBBF3C: Me.Mode = CVar(CStr(Txt.DispID_68030005))
  loc_EBBF5D: Me.Show 1, var_CC
  loc_EBBF62: Exit Sub
End Sub

Public Sub CmdFind_UnknownEvent_9(Index As Integer) '1906348
  'Data Table: 5ADDB4
  Dim var_AE As Integer
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_CC As String
  Dim var_D0 As Variant
  Dim var_E8 As Variant
  Dim var_F0 As TextBox
  Dim var_FC As TextBox
  Dim var_120 As Variant
  Dim var_130 As Variant
  Dim var_D8 As Variant
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_170 As String
  Dim var_190 As Variant
  Dim var_1A0 As Variant
  Dim var_F4 As String
  Dim var_100 As String
  Dim var_1A8 As String
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_1B4 As String
  Dim var_1B8 As String
  Dim var_1C4 As String
  Dim var_88 As Recordset15
  Dim var_1D0 As Recordset15
  Dim var_D4 As Variant
  Dim var_110 As Variant
  Dim var_1E0 As String
  Dim var_EC As Variant
  Dim var_1A4 As Image
  Dim var_B6 As Integer
  Dim unk_5ADE1E As Connection15
  Dim Me As Recordset15
  loc_1903877: var_AE = Index
  loc_1903882: If (var_AE = 0) Then
  loc_19038A6:   If (CLng(Me.Check1.Value) = 0) Then
  loc_19038C1:     Call Proc_265_101_1202CE8(global_64, CByte(1))
  loc_19038CC:     global_88 = var_CC
  loc_19038DE:     If (global_80 = 0) Then
  loc_19038E3:       Exit Sub
  loc_19038E4:     End If
  loc_19038E4:   End If
  loc_1903905:   If (CLng(Me.Check1.Value) = 0) Then
  loc_1903914:     var_CC = "CompanyType in (" & global_88
  loc_190391B:     var_A0 = var_CC & ")"
  loc_1903924:   Else
  loc_190392E:     global_84 = "All"
  loc_1903937:     var_A0 = "CompanyType in (SELECT Code FROM MemCatMast WHERE Corporate='N')"
  loc_190393A:   End If
  loc_190394C:   Set var_B4 = Me.Txt
  loc_1903952:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H31), var_D0, var_CC)
  loc_1903972:   Set var_D4 = Me.Txt
  loc_1903978:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D8)
  loc_1903998:   Set var_EC = Me.Txt
  loc_190399E:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_F0, var_F4)
  loc_19039A6:   ((var_D0.Text = "Member") And IsDate(CVar(var_D8))) = var_F0.Text
  loc_19039C6:   Set var_F8 = Me.Txt
  loc_19039CC:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_FC, var_100)
  loc_19039D4:   (CDbl(Val(var_F4)) <> CDbl(0)) = var_FC.Text
  loc_1903A05:   If ( And (var_AE Or (CDbl(Val(var_100)) <> CDbl(0)))) Then
  loc_1903A1F:     Set var_B4 = Me.Txt
  loc_1903A25:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D0)
  loc_1903A34:     Proc_6_7_F26918(var_110, CVar(var_D0))
  loc_1903A57:     Set var_D4 = Me.Txt
  loc_1903A5D:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_D8)
  loc_1903A91:     Set var_EC = Me.Txt
  loc_1903A97:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_F0)
  loc_1903AB0:     var_1A0 = CVar(var_A0 & " And DATEDIFF(YY,MF.DOB,") & var_110 & ") Between " & CVar(Val(var_D8.Text)) & " And " & CVar(Val(var_F0.Text)) 
  loc_1903AB5:     var_A0 = CStr(var_1A0)
  loc_1903ADF:   End If
  loc_1903AF1:   Set var_B4 = Me.Txt
  loc_1903AF7:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H31), var_D0)
  loc_1903B17:   Set var_D4 = Me.Txt
  loc_1903B1D:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D8)
  loc_1903B3D:   Set var_EC = Me.Txt
  loc_1903B43:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_F0)
  loc_1903B6B:   Set var_F8 = Me.Txt
  loc_1903B71:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_FC, var_100)
  loc_1903B79:   (CDbl(Val(var_F0.Text)) <> CDbl(0)) = var_FC.Text
  loc_1903BAA:   If ( And (((var_D0.Text = "Membership") And IsDate(CVar(var_D8))) Or (CDbl(Val(var_100)) <> CDbl(0)))) Then
  loc_1903BC4:     Set var_B4 = Me.Txt
  loc_1903BCA:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D0)
  loc_1903BD9:     Proc_6_7_F26918(var_110, CVar(var_D0))
  loc_1903BFC:     Set var_D4 = Me.Txt
  loc_1903C02:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_D8)
  loc_1903C17:     var_150 = CVar(Val(var_D8.Text)) 'Double
  loc_1903C36:     Set var_EC = Me.Txt
  loc_1903C3C:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_F0)
  loc_1903C5A:     var_A0 = CStr(CVar(var_A0 & " And DATEDIFF(YY,S.ValidFrom,") & var_110 & ") Between " & var_150 & " And " & CVar(Val(var_F0.Text)))
  loc_1903C84:   End If
  loc_1903C93:   Set var_B4 = Me.Txt
  loc_1903C99:   Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H22))
  loc_1903CA1:   var_E8 = CVar(var_D0) 'Address
  loc_1903CA8:   var_110 = Trim(var_E8)
  loc_1903CB0:   var_C8 = "Detailed"
  loc_1903CC2:   If (var_110 = var_C8) Then
  loc_1903CD6:     Call Proc_265_102_13E8E10(New, var_B4)
  loc_1903CDE:     Set var_AC = var_B4
  loc_1903CF7:     var_CC = "Select MF.Subcode,MF.SNo,MF.RelationShip,MF.ConPrefix+' '+MF.Name As Name,MF.Gender,MF.MaritalStatus,MF.DOB As Birthday,MF.POB,MF.WedDate As Anniversary," & "MF.Phone,MF.Mobile,MF.Mobile1,MF.Fax,MF.EMail,MF.Nationality,MF.Religion,MF.BloodGroup,MF.ProOcc,MF.EdQuali,MF.TBusiness,MF.TurnOver,MF.Desig,MF.PostedAt,MF.Passport,MF.PAN,"
  loc_1903D05:     var_100 = var_D8.Text & "MF.SpInterest,MF.SigPath,MF.PicPath,MF.CardNo,MF.CardIssDate,MF.CardRegId,MF.CardValidUpto," & "MCat.Name as CompanyType,S.Name As AcName,S.AllowCredit,S.CreditLimit,S.Discount,S.ActiveYN,S.CINNo,S.BlackListed,S.ReasonBlackList,S.BlackListedBy,"
  loc_1903D0C:     var_1A8 = var_100 & "IsNull(RW.AddType,'')AddType,IsNull(RW.Add1,'')Add1,IsNull(RW.Add2,'')Add2,IsNull(RW.Add3,'')Add3,IsNull(RW.City,'')City,IsNull(RW.State,'')State,IsNull(RW.Country,'')Country,IsNull(RW.PinCode,'')PinCode,IsNull(RW.CorresYN,'')CorresYN,SCR.CurrBal,SCR.CurBalType "
  loc_1903D13:     var_1AC = var_1A8 & "From (((Subgroup S Inner Join MemberFamily MF On S.SubCode=MF.Subcode)Inner Join MemCatMast Mcat On S.CompanyType=Mcat.code) "
  loc_1903D1A:     var_1B0 = var_1AC & "Left Join (Select RWA.Subcode,RWA.CorresYN,RWA.Name AddType,Add1,Add2,Add3,C.CityName As City,ST.Name As State,CO.Name As Country,PinCode As PinCode "
  loc_1903D21:     var_1B4 = var_1B0 & "From (((MemADDRWA RWA Left Join City C On RWA.City=C.CityCode) Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) Where RWA.Name In ('Residential Address','WorkPlace Address'))RW On S.Subcode=RW.Subcode And MF.SNo=1) "
  loc_1903D28:     var_1B8 = var_1B4 & "Left Join (SELECT SUBCODE,ABS(ISNULL(SUM(CURR_BAL),0)) AS CurrBal,CASE WHEN ISNULL(SUM(CURR_BAL),0)>0 THEN 'Cr' WHEN ISNULL(SUM(CURR_BAL),0)<0 THEN 'Dr' Else '' END CurBalType "
  loc_1903D3D:     var_1C4 = var_1B8 & "FROM SUBGROUPCURRBAL GROUP BY SUBCODE) SCR On SCR.SubCode=S.SubCode where ActiveYN=1 And " & var_A0 & " Order by "
  loc_1903D54:     Me.Connection15.Execute var_1C4 & var_A8 & " Mcat.Name,S.Name,MF.SNo,RW.AddType", var_E8, -1
  loc_1903D5F:     Set var_88 = var_B4
  loc_1903D85:     ' Referenced from: 1905851
  loc_1903D8D:     var_B6 = var_88.EOF
  loc_1903D96:     If Not(var_B6) Then
  loc_1903D9E:       Set var_1D0 = var_AC 
  loc_1903DAF:       var_1D0.AddNew var_C8, var_150
  loc_1903DDB:       var_1D0.Fields.Item("mLine").Value = vbNullString
  loc_1903E0F:       Proc_6_39_E7D3A0(var_110, CVar(var_88.Fields.Item("SNo")))
  loc_1903E37:       var_1D0.Fields.Item("SNo").Value = var_110
  loc_1903E5D:       var_B4 = var_88.Fields
  loc_1903E99:       var_1D0.Fields.Item("Relation").Value = CVar(Proc_6_38_E69628(CVar(var_B4.Item("RelationShip")), var_B4))
  loc_1903EFB:       var_1D0.Fields.Item("Name").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name"))))
  loc_1903F5D:       var_1D0.Fields.Item("Sex").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Gender"))))
  loc_1903FBF:       var_1D0.Fields.Item("MaritalStatus").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MaritalStatus"))))
  loc_1904019:       var_1D0.Fields.Item("Birthday").Value = CVar(var_88.Fields.Item("Birthday"))
  loc_1904077:       var_1D0.Fields.Item("PlaceOfBirth").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("POB"))))
  loc_19040D1:       var_1D0.Fields.Item("Anniversary").Value = CVar(var_88.Fields.Item("Anniversary"))
  loc_190412F:       var_1D0.Fields.Item("Phone").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Phone"))))
  loc_1904191:       var_1D0.Fields.Item("Mobile").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile"))))
  loc_19041F3:       var_1D0.Fields.Item("Fax").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Fax"))))
  loc_1904255:       var_1D0.Fields.Item("EMail").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Email"))))
  loc_19042B7:       var_1D0.Fields.Item("Nationality").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nationality"))))
  loc_1904319:       var_1D0.Fields.Item("Religion").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Religion"))))
  loc_190437B:       var_1D0.Fields.Item("BloodGroup").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("bloodGroup"))))
  loc_19043DD:       var_1D0.Fields.Item("ProOcc").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ProOcc"))))
  loc_190443F:       var_1D0.Fields.Item("EdQuali").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Edquali"))))
  loc_19044A1:       var_1D0.Fields.Item("TBusiness").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TBusiness"))))
  loc_1904503:       var_1D0.Fields.Item("TurnOver").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Turnover"))))
  loc_1904565:       var_1D0.Fields.Item("Desig").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Desig"))))
  loc_19045C7:       var_1D0.Fields.Item("Passport").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Passport"))))
  loc_1904629:       var_1D0.Fields.Item("PAN").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PAN"))))
  loc_190468B:       var_1D0.Fields.Item("SpInterest").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SpInterest"))))
  loc_19046ED:       var_1D0.Fields.Item("MemberId").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo"))))
  loc_190474F:       var_1D0.Fields.Item("CardRegId").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CardRegId"))))
  loc_19047A9:       var_1D0.Fields.Item("CardIssDate").Value = CVar(var_88.Fields.Item("CardIssDate"))
  loc_19047FF:       var_1D0.Fields.Item("CardValidUpto").Value = CVar(var_88.Fields.Item("CardValidUpto"))
  loc_190485D:       var_1D0.Fields.Item("MemberType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyType"))))
  loc_19048BF:       var_1D0.Fields.Item("AcName").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AcName"))))
  loc_1904911:       var_110 = "Yes"
  loc_1904951:       var_1D0.Fields.Item("AllowCredit").Value = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("AllowCredit"))) = "Y"), var_110, "No")
  loc_190499B:       Proc_6_39_E7D3A0(var_110, CVar(var_88.Fields.Item("CreditLimit")))
  loc_19049C3:       var_1D0.Fields.Item("CreditLimit").Value = var_110
  loc_1904A00:       Proc_6_39_E7D3A0(var_110, CVar(var_88.Fields.Item("Discount")))
  loc_1904A28:       var_1D0.Fields.Item("Discount").Value = var_110
  loc_1904A65:       Proc_6_39_E7D3A0(var_110, CVar(var_88.Fields.Item("ActiveYN")))
  loc_1904ABF:       var_1D0.Fields.Item("ActiveYN").Value = IIf((var_110 = 1), "Yes", "No")
  loc_1904B3D:       var_1E0 = "BlackListed"
  loc_1904B59:       var_1D0.Fields.Item(var_1E0).Value = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("BlackListed"))) = "Y"), "Yes", "No")
  loc_1904BC8:       var_1D0.Fields.Item("ReasonBlackList").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ReasonBlackList"))))
  loc_1904C07:       var_110 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("BlackListedBy")))) 'String
  loc_1904C2A:       var_1D0.Fields.Item("BlackListedBy").Value = var_110
  loc_1904C67:       Proc_6_39_E7D3A0(var_110, CVar(var_88.Fields.Item("CurrBal")))
  loc_1904C8F:       var_1D0.Fields.Item("CurrBal").Value = var_110
  loc_1904CF1:       var_1D0.Fields.Item("CurBalType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CurBalType"))))
  loc_1904D17:       var_B4 = var_88.Fields
  loc_1904D1F:       var_D0 = var_B4.Item("PicPath")
  loc_1904D30:       var_190 = IsNull(CVar(var_D0))
  loc_1904D37:       var_150 = "PicPath"
  loc_1904D6A:       var_170 = vbNullString
  loc_1904D8E:       If CBool(var_D0 Or (Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_150)), var_190))) = var_170)) Then
  loc_1904DB1:         Me.Global.LoadPicture var_C8, var_150, var_170, var_190, var_1E0
  loc_1904DC0:         Set var_D4 = Me.tmpImage
  loc_1904DC6:         var_D4.Picture = var_B4
  loc_1904DD5:       Else
  loc_1904E10:         Call 0.Method_CmdFind_UnknownEvent_94 (Proc_6_38_E69628(CVar(var_88.Fields.Item("PicPath")), var_B6))
  loc_1904E21:         If var_B6 Then
  loc_1904E26:           On Error Resume Next
  loc_1904E4D:           var_B4 = var_88.Fields
  loc_1904E70:           Me.Global.LoadPicture CVar(Proc_6_38_E69628(CVar(var_B4.Item("PicPath")), var_150, var_170, var_190)), var_1E0, var_D4, var_B4, 
  loc_1904E85:           Me.tmpImage.Picture = var_D4
  loc_1904EA0:           Set var_B4 = Me.tmpImage
  loc_1904EA6:           var_B4.Refresh
  loc_1904EB1:         Else
  loc_1904ED3:           Me.Global.LoadPicture var_C8, var_150, var_170, var_190, var_1E0
  loc_1904EE8:           Me.tmpImage.Picture = var_B4
  loc_1904EF4:         End If
  loc_1904EF6:       End If
  loc_1904F0F:       Set var_1A4 = Me.tmpImage.Picture
  loc_1904F34:       If ((var_1A4 Is Nothing) Or (CLng(var_1A4._Default) = 0)) Then
  loc_1904F37:         GoTo loc_1904F7B
  loc_1904F3A:       End If
  loc_1904F48:       var_CC = "Picture"
  loc_1904F51:       Set var_D0 = var_AC 
  loc_1904F61:       Proc_142_0_F977BC(Me.tmpImage, var_D0)
  loc_1904F6C:       Set var_AC = var_D0
  loc_1904F7B:       ' Referenced from: 1904F37
  loc_1904FB8:       If (Proc_6_38_E69628(CVar(var_88.Fields.Item("RelationShip")), var_CC) = "Member") Then
  loc_1904FBB:         ' Referenced from: 19057EE
  loc_1904FCC:         If Not(var_88.EOF) Then
  loc_1904FE0:           var_B4 = var_88.Fields
  loc_190505F:           var_160 = var_B4 And ((Proc_6_38_E69628(CVar(var_B4.Item("RelationShip"))) = "Member") = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AcName")), var_1D0.Fields.Item("AcName").Value)))
  loc_1905080:           If CBool(var_160) Then
  loc_19050BE:             If (Proc_6_38_E69628(CVar(var_88.Fields.Item("AddType"))) = "Residential Address") Then
  loc_190510E:               var_1D0.Fields.Item("AddRType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AddType"))))
  loc_1905170:               var_1D0.Fields.Item("AddR1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1"))))
  loc_19051D2:               var_1D0.Fields.Item("AddR2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2"))))
  loc_1905234:               var_1D0.Fields.Item("AddR3").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add3"))))
  loc_1905296:               var_1D0.Fields.Item("CityR").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("City"))))
  loc_19052F8:               var_1D0.Fields.Item("StateR").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("State"))))
  loc_190535A:               var_1D0.Fields.Item("CountryR").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Country"))))
  loc_19053BC:               var_1D0.Fields.Item("PinCodeR").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PinCode"))))
  loc_19053D4:             Else
  loc_190540F:               If (Proc_6_38_E69628(CVar(var_88.Fields.Item("AddType"))) = "WorkPlace Address") Then
  loc_190545F:                 var_1D0.Fields.Item("AddWType").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AddType"))))
  loc_19054C1:                 var_1D0.Fields.Item("AddW1").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1"))))
  loc_1905523:                 var_1D0.Fields.Item("AddW2").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2"))))
  loc_1905585:                 var_1D0.Fields.Item("AddW3").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Add3"))))
  loc_19055E7:                 var_1D0.Fields.Item("CityW").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("City"))))
  loc_1905649:                 var_1D0.Fields.Item("StateW").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("State"))))
  loc_19056AB:                 var_1D0.Fields.Item("CountryW").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Country"))))
  loc_190570D:                 var_1D0.Fields.Item("PinCodeW").Value = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PinCode"))))
  loc_1905722:               End If
  loc_1905722:             End If
  loc_1905729:             var_88.MoveNext
  loc_1905731:           Else
  loc_19057B9:             var_130 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("AcName")), var_1D0.Fields.Item("AcName").Value)) 'String
  loc_19057E2:             If CBool( Or ((Proc_6_38_E69628(CVar(var_88.Fields.Item("RelationShip"))) <> "Member") <> var_130)) Then
  loc_19057E7:               GoTo loc_19057F1
  loc_19057EA:             End If
  loc_19057EA:           End If
  loc_19057EE:           GoTo loc_1904FBB
  loc_19057F1:           ' Referenced from: 19057E7
  loc_19057F1:         End If
  loc_19057F4:       Else
  loc_19057FB:         var_88.MoveNext
  loc_1905800:       End If
  loc_1905804:       var_150 = "*"
  loc_190580D:       var_C8 = "Mark"
  loc_1905821:       var_D0 = var_1D0.Fields.Item(var_C8)
  loc_1905829:       var_D0.Value = var_150
  loc_1905842:       var_1D0.Update var_C8, var_150
  loc_190584B:       Set var_1D0 = Nothing 
  loc_1905851:       GoTo loc_1903D85
  loc_1905854:     End If
  loc_190586C:     Set var_B4 = var_AC 
  loc_1905878:     var_B6 = CreateFieldDefFile(var_B4, MemVar_1F950B4 & "\MemberList.ttx")
  loc_1905882:     Set var_AC = var_B4
  loc_1905888:     var_C8 = CVar(var_B6) 'Integer
  loc_190588B:     var_98 = var_C8 'Variant
  loc_19058A9:     var_CC = MemVar_1F950B4 & "\MemberList.RPT"
  loc_19058B2:     Call 0.Method_arg_1C (var_CC, var_C8, var_B4)
  loc_19058BD:     MemVar_1F951E8 = var_B4
  loc_19058DA:     Call 0.Method_arg_90 (var_B4, var_1E4, var_9A)
  loc_19058E2:     Call 0.Method_arg_24 (1, var_B6)
  loc_19058EE:     For var_1E8 =  To CInt(var_1E4): &HFF = var_1E8 'Integer
  loc_1905909:       Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1905911:       Call 0.Method_arg_20 (var_D0)
  loc_1905919:       Call 0.Method_arg_30 (var_CC)
  loc_190592F:       var_1F8 = Ucase(CVar(var_CC)) 'Variant
  loc_1905961:       If (var_1F8 = Ucase("Title")) Then
  loc_1905979:         Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1905981:         Call 0.Method_arg_20 (var_D0)
  loc_1905989:         Call 0.Method_arg_38 ("'Member Information'")
  loc_1905998:       Else
  loc_19059BC:         If (var_1F8 = Ucase("MemberType")) Then
  loc_19059C1:           var_150 = "'"
  loc_1905A02:           Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1905A0A:           Call 0.Method_arg_20 (var_D0)
  loc_1905A12:           Call 0.Method_arg_38 (CStr(var_150 & Left(global_84, &HFF) & "'"))
  loc_1905A2D:         Else
  loc_1905A40:           var_110 = Ucase("PrintType")
  loc_1905A51:           If (var_1F8 = var_110) Then
  loc_1905A5B:             var_E8 = "Detailed"
  loc_1905A64:             Proc_6_17_EAAE40(var_110)
  loc_1905A6C:             var_CC = CStr(var_110)
  loc_1905A80:             Call 0.Method_arg_90 (var_B4, CLng(var_9A), var_D0)
  loc_1905A88:             Call 0.Method_arg_20 (var_CC)
  loc_1905A90:             Call 0.Method_arg_38 (var_E8)
  loc_1905AA6:           End If
  loc_1905AA6:         End If
  loc_1905AA6:       End If
  loc_1905AAD:     Next var_1E8 'Integer
  loc_1905ACD:     Call 0.Method_arg_64 (var_B4, CVar(var_AC))
  loc_1905AD5:     Call 0.Method_arg_2C (var_150)
  loc_1905AE5:     Call 0.Method_arg_50 (var_CC)
  loc_1905AEF:     Set var_D0 = Nothing
  loc_1905B09:     Set var_B4 = MemVar_1F951E8 
  loc_1905B15:     Proc_6_99_1484404(var_B4, 0, var_CC)
  loc_1905B20:     MemVar_1F951E8 = var_B4
  loc_1905B3C:     Me.Frame1.Visible = False
  loc_1905B51:     Set var_B4 = Me.LblName
  loc_1905B57:     Call 0.Method_CmdFind_UnknownEvent_90 (0, var_D0, 0)
  loc_1905B5F:     var_D0.Visible = True
  loc_1905B78:     Set var_B4 = Me.LblName
  loc_1905B7E:     Call 0.Method_CmdFind_UnknownEvent_90 (1, var_D0, 0)
  loc_1905B86:     var_D0.Visible = var_D0
  loc_1905BA1:     Set var_B4 = Me.Txt
  loc_1905BA7:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_1905BAF:     var_D0.Visible = False
  loc_1905BCA:     Set var_B4 = Me.Txt
  loc_1905BD0:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_1905BD8:     var_D0.Visible = False
  loc_1905BF4:     Set var_B4 = Me.Txt
  loc_1905BFA:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_1905C02:     var_D0.Text = vbNullString
  loc_1905C1E:     Set var_B4 = Me.Txt
  loc_1905C24:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_1905C2C:     var_D0.Text = vbNullString
  loc_1905C3B:   Else
  loc_1905C53:     var_CC = "Select MF.ConPrefix+' '+MF.Name As Name, S.Name As AcName,MF.CardNo, MCat.Name as CompanyType,MF.DOB As Birthday,MF.WedDate As Anniversary,S.Phone,S.Mobile,(Substring(LTrim(IsNull(S.AddName,'')),1,4)+'.- '+IsNull(S.Add1,'')+IsNull(S.Add2,'')+IsNull(S.Add3,'')) as Address,C.CityName As City,CO.Name As Country,ST.Name As State,S.Pin As PinCode, S.EMail,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Father' And SubCode=S.SubCode),'') Father,IsNull((Select Top 1 ConPrefix+Name from MemberFamily Where RelationShip='Mother' And SubCode=S.SubCode),'') Mother,SCR.CurrBal,SCR.CurBalType,MF.SNo,MF.PicPath,S.GSTIN " & "From (((((Subgroup S Inner Join MemberFamily MF On S.SubCode=MF.Subcode)Inner Join MemCatMast Mcat On S.CompanyType=Mcat.code) Left Join City C On S.CityCode=C.CityCode) Left Join Country CO On C.Country=CO.Code) Left Join State ST On C.State=ST.Code) Left Join (SELECT SUBCODE,ABS(ISNULL(SUM(CURR_BAL),0)) AS CurrBal,CASE WHEN ISNULL(SUM(CURR_BAL),0)>0 THEN 'Cr' WHEN ISNULL(SUM(CURR_BAL),0)<0 THEN 'Dr' Else '' END CurBalType FROM SUBGROUPCURRBAL GROUP BY SUBCODE) SCR On SCR.SubCode=S.SubCode where ActiveYN=1 And "
  loc_1905C78:     unk_5ADE1E.Execute var_CC & var_A0 & " Order by " & var_A8 & " Mcat.Name,S.ConPerson,MF.SNo", var_E8, -1
  loc_1905CAA:     var_F4 = MemVar_1F950B4 & "\MemberListSummerised.ttx"
  loc_1905CB1:     Set var_B4 = var_B4 
  loc_1905CBD:     var_B6 = CreateFieldDefFile(var_B4, var_F4, &HFF)
  loc_1905CC7:     Set var_88 = var_B4
  loc_1905CCD:     var_C8 = CVar(var_B6) 'Integer
  loc_1905CD0:     var_98 = var_C8 'Variant
  loc_1905CEE:     var_CC = MemVar_1F950B4 & "\MemberListSummerised.RPT"
  loc_1905CF7:     Call 0.Method_arg_1C (var_CC, var_C8, var_B4)
  loc_1905D02:     MemVar_1F951E8 = var_B4
  loc_1905D1F:     Call 0.Method_arg_90 (var_B4, var_1E4, var_9A, 1)
  loc_1905D27:     Call 0.Method_arg_24 (var_B6, var_B4)
  loc_1905D33:     For var_1FE =  To CInt(var_1E4):   var_170 = var_1FE 'Integer
  loc_1905D4E:       Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1905D56:       Call 0.Method_arg_20 (var_D0)
  loc_1905D5E:       Call 0.Method_arg_30 (var_CC)
  loc_1905D74:       var_210 = Ucase(CVar(var_CC)) 'Variant
  loc_1905DA6:       If (var_210 = Ucase("Title")) Then
  loc_1905DBE:         Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1905DC6:         Call 0.Method_arg_20 (var_D0)
  loc_1905DCE:         Call 0.Method_arg_38 ("'Member Information'")
  loc_1905DDD:       Else
  loc_1905E01:         If (var_210 = Ucase("MemberType")) Then
  loc_1905E06:           var_150 = "'"
  loc_1905E2F:           var_120 = var_150 & Left(global_84, &HFF) & "'" 
  loc_1905E47:           Call 0.Method_arg_90 (var_B4, CLng(var_9A))
  loc_1905E4F:           Call 0.Method_arg_20 (var_D0)
  loc_1905E57:           Call 0.Method_arg_38 (CStr(var_120))
  loc_1905E72:         Else
  loc_1905E85:           var_110 = Ucase("PrintType")
  loc_1905E96:           If (var_210 = var_110) Then
  loc_1905EA9:             Proc_6_17_EAAE40(var_110)
  loc_1905EB1:             var_CC = CStr(var_110)
  loc_1905EC5:             Call 0.Method_arg_90 (var_B4, CLng(var_9A), var_D0)
  loc_1905ECD:             Call 0.Method_arg_20 (var_CC)
  loc_1905ED5:             Call 0.Method_arg_38 ("Summerised")
  loc_1905EEB:           End If
  loc_1905EEB:         End If
  loc_1905EEB:       End If
  loc_1905EF2:     Next var_1FE 'Integer
  loc_1905F12:     Call 0.Method_arg_64 (var_B4, CVar(var_88))
  loc_1905F1A:     Call 0.Method_arg_2C (var_150)
  loc_1905F2A:     Call 0.Method_arg_50 (var_CC)
  loc_1905F34:     Set var_D0 = Nothing
  loc_1905F4E:     Set var_B4 = MemVar_1F951E8 
  loc_1905F5A:     Proc_6_99_1484404(var_B4, 0, var_CC)
  loc_1905F65:     MemVar_1F951E8 = var_B4
  loc_1905F81:     Me.Frame1.Visible = False
  loc_1905F96:     Set var_B4 = Me.LblName
  loc_1905F9C:     Call 0.Method_CmdFind_UnknownEvent_90 (0, var_D0, 0)
  loc_1905FA4:     var_D0.Visible = True
  loc_1905FBD:     Set var_B4 = Me.LblName
  loc_1905FC3:     Call 0.Method_CmdFind_UnknownEvent_90 (1, var_D0, 0)
  loc_1905FCB:     var_D0.Visible = var_D0
  loc_1905FE6:     Set var_B4 = Me.Txt
  loc_1905FEC:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_1905FF4:     var_D0.Visible = False
  loc_190600F:     Set var_B4 = Me.Txt
  loc_1906015:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_190601D:     var_D0.Visible = False
  loc_1906039:     Set var_B4 = Me.Txt
  loc_190603F:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_1906047:     var_D0.Text = vbNullString
  loc_1906063:     Set var_B4 = Me.Txt
  loc_1906069:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_1906071:     var_D0.Text = vbNullString
  loc_190607D:   End If
  loc_1906082: Else
  loc_190608A:   If (var_AE = 1) Then
  loc_190609A:     Set var_B4 = Me.LblName
  loc_19060A0:     Call 0.Method_CmdFind_UnknownEvent_90 (0, var_D0)
  loc_19060A8:     var_D0.Visible = False
  loc_19060C1:     Set var_B4 = Me.LblName
  loc_19060C7:     Call 0.Method_CmdFind_UnknownEvent_90 (1, var_D0)
  loc_19060CF:     var_D0.Visible = False
  loc_19060EA:     Set var_B4 = Me.Txt
  loc_19060F0:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_19060F8:     var_D0.Visible = False
  loc_1906113:     Set var_B4 = Me.Txt
  loc_1906119:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_1906121:     var_D0.Visible = False
  loc_190613D:     Set var_B4 = Me.Txt
  loc_1906143:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H20), var_D0)
  loc_190614B:     var_D0.Text = vbNullString
  loc_1906167:     Set var_B4 = Me.Txt
  loc_190616D:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H21), var_D0)
  loc_1906175:     var_D0.Text = vbNullString
  loc_1906191:     Set var_B4 = Me.Txt
  loc_1906197:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H22), var_D0)
  loc_190619F:     var_D0.Text = vbNullString
  loc_19061BB:     Set var_B4 = Me.Txt
  loc_19061C1:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H32), var_D0)
  loc_19061C9:     var_D0.Text = vbNullString
  loc_19061E5:     Set var_B4 = Me.Txt
  loc_19061EB:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H33), var_D0)
  loc_19061F3:     var_D0.Text = vbNullString
  loc_190620F:     Set var_B4 = Me.Txt
  loc_1906215:     Call 0.Method_CmdFind_UnknownEvent_90 (CInt(&H34), var_D0)
  loc_190621D:     var_D0.Text = vbNullString
  loc_1906237:     Me.Frame1.Visible = False
  loc_1906242:   Else
  loc_190624A:     If (var_AE = 2) Then
  loc_1906266:       If (Me.RecordCount <= 0) Then
  loc_1906271:         var_150 = "Information"
  loc_190628C:         MsgBox("No Records To Search.", &H40, var_150, var_120, var_130)
  loc_190629E:         Exit Sub
  loc_190629F:       End If
  loc_19062A4:       MemVar_1F950E4 = "Select S.Mobile,S.SUBCODE,(S.ConPrefix+S.ConPerson + Case When IsNull(S.ConPersonMName,'')<>'' Then ' '+S.ConPersonMName Else '' End + Case When IsNull(S.ConPersonLName,'')<>'' Then ' '+S.ConPersonLName Else '' End) As Name,Mcat.Name AS CompanyType,MF.DOB As Birthday,MF.WedDate As AnniversaryDay,S.Phone,S.Mobile,S.AddName,(S.Add1+S.Add2+S.Add3) as Address,S.EMail From ((Subgroup S Left Join MemberFamily MF On S.SubCode=MF.Subcode And )Inner Join MemCat MCat On S.companytype=Mcat.Code)  where ActiveYN=1 AND COMPANYTYPE IN (SELECT Code FROM MemCatMast WHERE Corporate='N' ) Order by S.ConPerson"
  loc_19062B0:       MemVar_1F95120 = Me
  loc_19062B9:       var_CC = "0,2000,1500,1500,1500,1500,1500,1500,1500,1500,1500"
  loc_19062BF:       Proc_6_126_F1C850(var_CC)
  loc_19062DC:       Call 0.Method_arg_2B0 (1, var_150)
  loc_19062E1:     End If
  loc_19062E1:   End If
  loc_19062E1: End If
  loc_19062EA: Set var_88 = Nothing
  loc_19062F4: Set var_AC = Nothing
  loc_19062F9: Exit Sub
  loc_1906304: Set var_B4 = Err()
  loc_190630A: Call 0.Method_arg_2C (var_CC)
  loc_1906315: Call 0.Method_arg_50 (var_F4)
  loc_1906331: MsgBox(CVar(var_CC), &H10, CVar(var_F4), var_120, var_130)
  loc_1906346: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8ACAC
  'Data Table: 5ADDB4
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F8AB68: On Error Goto loc_F8AC46
  loc_F8AB6F: Set var_A4 = Me.ListView
  loc_F8ABB9: Set var_BC = Me.Txt
  loc_F8ABBF: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F8ABC7: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F8ABF3: Me.FrmList.Visible = False
  loc_F8AC0D: var_A0 = CStr(Me.ListView.Tag)
  loc_F8AC15: var_C8 = Val(var_A0)
  loc_F8AC23: Set var_9C = Me.Txt
  loc_F8AC29: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F8AC31: var_A4.SetFocus
  loc_F8AC45: Exit Sub
  loc_F8AC46: ' Referenced from: F8AB68
  loc_F8AC4E: Set var_88 = Err()
  loc_F8AC54: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F8AC65: If (var_CC <> 0) Then
  loc_F8AC70:   Set var_88 = Err()
  loc_F8AC76:   Call 0.Method_arg_2C (var_A0)
  loc_F8AC97:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F8ACAA: End If
  loc_F8ACAA: Exit Sub
End Sub

Private Sub ImgMemPhoto_DblClick() '1039CA8
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_88 As CommonDialog
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim var_BC As String
  loc_1039A88: On Error Goto loc_1039C4A
  loc_1039A8F: Set var_88 = Me.TopCtrl1
  loc_1039A95: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1039AAE: If (CStr() = "Browse") Then
  loc_1039AB1:   Exit Sub
  loc_1039AB2: End If
  loc_1039AC2: Me.CDlg.Filter = "*.*"
  loc_1039ADA: Me.CDlg.Action = 1
  loc_1039AEC: Me.CDlg.FileName = 
  loc_1039AF4: var_CC = CVar(CStr()) 'String
  loc_1039AFA: var_DC = Trim(var_CC)
  loc_1039B03: Set var_110 = Me.CDlg
  loc_1039B09: var_110.FileName = 
  loc_1039B27: var_EC = Right(var_DC, 3)
  loc_1039B62: var_BC = "AVI"
  loc_1039B90: If CBool((Ucase(var_EC) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_BC)) Then
  loc_1039BA1:   var_AC = "Invalid Format"
  loc_1039BAC:   MsgBox(var_AC, &H40, var_CC, var_DC, var_EC)
  loc_1039BBF: Else
  loc_1039BD6:   Set var_88 = Me.CDlg
  loc_1039BDC:   var_88.FileName = var_AC
  loc_1039BE4:   var_CC = CVar(CStr(var_BC)) 'String
  loc_1039BEE:   Me.var_88.LoadPicture var_CC, var_190, var_1A0, var_110, 
  loc_1039C03:   Me.ImgMemPhoto.Picture = var_110
  loc_1039C22:   Me.CDlg.FileName = 
  loc_1039C2A:   var_9C = CStr()
  loc_1039C37:   Me.ImgMemPhoto.Tag = var_9C
  loc_1039C49: End If
  loc_1039C49: Exit Sub
  loc_1039C4A: ' Referenced from: 1039A88
  loc_1039C52: Set var_88 = Err()
  loc_1039C58: Call 0.Method_arg_1C (var_1AC)
  loc_1039C69: If (var_1AC <> 0) Then
  loc_1039C82:   Set var_88 = Err()
  loc_1039C88:   Call 0.Method_arg_2C (var_9C, 0, var_CC)
  loc_1039C93:   MsgBox(CVar(var_9C), var_DC, var_EC, , )
  loc_1039CA6: End If
  loc_1039CA6: Exit Sub
End Sub

Private Sub ImgMemPhoto_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F16400
  'Data Table: 5ADDB4
  Dim var_88 As Variant
  loc_F1630C: Set var_88 = Me.TopCtrl1
  loc_F16312: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F1632B: If (CStr() = "Browse") Then
  loc_F1632E:   Exit Sub
  loc_F1632F: End If
  loc_F1634F: If (Me.ImgMemPhoto.Tag = vbNullString) Then
  loc_F16352:   Exit Sub
  loc_F16353: End If
  loc_F16359: If (Button = 2) Then
  loc_F1637B:   Me.CmdImgDelete.Tag = Me.ImgMemPhoto.Name
  loc_F163AE:   Me.CmdImgDelete.Left = (Me.ImgMemPhoto.Left + X)
  loc_F163DE:   Me.CmdImgDelete.Top = (Me.ImgMemPhoto.Top + Y)
  loc_F163F6:   Me.CmdImgDelete.Visible = True
  loc_F163FE: End If
  loc_F163FE: Exit Sub
End Sub

Private Sub ImgMemSign_DblClick() '103AC38
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_88 As CommonDialog
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim var_BC As String
  loc_103AA18: On Error Goto loc_103ABDA
  loc_103AA1F: Set var_88 = Me.TopCtrl1
  loc_103AA25: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_103AA3E: If (CStr() = "Browse") Then
  loc_103AA41:   Exit Sub
  loc_103AA42: End If
  loc_103AA52: Me.CDlg.Filter = "*.*"
  loc_103AA6A: Me.CDlg.Action = 1
  loc_103AA7C: Me.CDlg.FileName = 
  loc_103AA84: var_CC = CVar(CStr()) 'String
  loc_103AA8A: var_DC = Trim(var_CC)
  loc_103AA93: Set var_110 = Me.CDlg
  loc_103AA99: var_110.FileName = 
  loc_103AAB7: var_EC = Right(var_DC, 3)
  loc_103AAF2: var_BC = "AVI"
  loc_103AB20: If CBool((Ucase(var_EC) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_BC)) Then
  loc_103AB31:   var_AC = "Invalid Format"
  loc_103AB3C:   MsgBox(var_AC, &H40, var_CC, var_DC, var_EC)
  loc_103AB4F: Else
  loc_103AB66:   Set var_88 = Me.CDlg
  loc_103AB6C:   var_88.FileName = var_AC
  loc_103AB74:   var_CC = CVar(CStr(var_BC)) 'String
  loc_103AB7E:   Me.var_88.LoadPicture var_CC, var_190, var_1A0, var_110, 
  loc_103AB93:   Me.ImgMemSign.Picture = var_110
  loc_103ABB2:   Me.CDlg.FileName = 
  loc_103ABBA:   var_9C = CStr()
  loc_103ABC7:   Me.ImgMemSign.Tag = var_9C
  loc_103ABD9: End If
  loc_103ABD9: Exit Sub
  loc_103ABDA: ' Referenced from: 103AA18
  loc_103ABE2: Set var_88 = Err()
  loc_103ABE8: Call 0.Method_arg_1C (var_1AC)
  loc_103ABF9: If (var_1AC <> 0) Then
  loc_103AC12:   Set var_88 = Err()
  loc_103AC18:   Call 0.Method_arg_2C (var_9C, 0, var_CC)
  loc_103AC23:   MsgBox(CVar(var_9C), var_DC, var_EC, , )
  loc_103AC36: End If
  loc_103AC36: Exit Sub
End Sub

Private Sub ImgMemSign_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F16B50
  'Data Table: 5ADDB4
  Dim var_88 As Variant
  loc_F16A5C: Set var_88 = Me.TopCtrl1
  loc_F16A62: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F16A7B: If (CStr() = "Browse") Then
  loc_F16A7E:   Exit Sub
  loc_F16A7F: End If
  loc_F16A9F: If (Me.ImgMemSign.Tag = vbNullString) Then
  loc_F16AA2:   Exit Sub
  loc_F16AA3: End If
  loc_F16AA9: If (Button = 2) Then
  loc_F16ACB:   Me.CmdImgDelete.Tag = Me.ImgMemSign.Name
  loc_F16AFE:   Me.CmdImgDelete.Left = (Me.ImgMemSign.Left + X)
  loc_F16B2E:   Me.CmdImgDelete.Top = (Me.ImgMemSign.Top + Y)
  loc_F16B46:   Me.CmdImgDelete.Visible = True
  loc_F16B4E: End If
  loc_F16B4E: Exit Sub
End Sub

Private Sub ImgFamilyMemPhoto_DblClick() '108C204
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_88 As CommonDialog
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim var_BC As String
  Dim var_190 As Variant
  Dim var_DC As Variant
  loc_108BF88: On Error Goto loc_108C1A4
  loc_108BF8F: Set var_88 = Me.TopCtrl1
  loc_108BF95: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108BFAE: If (CStr() = "Browse") Then
  loc_108BFB1:   Exit Sub
  loc_108BFB2: End If
  loc_108BFC2: Me.CDlg.Filter = "*.*"
  loc_108BFDA: Me.CDlg.Action = 1
  loc_108BFEC: Me.CDlg.FileName = 
  loc_108BFF4: var_CC = CVar(CStr()) 'String
  loc_108BFFA: var_DC = Trim(var_CC)
  loc_108C003: Set var_110 = Me.CDlg
  loc_108C009: var_110.FileName = 
  loc_108C027: var_EC = Right(var_DC, 3)
  loc_108C062: var_BC = "AVI"
  loc_108C090: If CBool((Ucase(var_EC) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_BC)) Then
  loc_108C0A1:   var_AC = "Invalid Picture"
  loc_108C0AC:   MsgBox(var_AC, &H40, var_CC, var_DC, var_EC)
  loc_108C0BF: Else
  loc_108C0D6:   Set var_88 = Me.CDlg
  loc_108C0DC:   var_88.FileName = var_AC
  loc_108C0EE:   Me.var_88.LoadPicture CVar(CStr(var_BC)), var_190, var_1A0, var_110, 
  loc_108C103:   Me.ImgFamilyMemPhoto.Picture = var_110
  loc_108C122:   Me.CDlg.FileName = 
  loc_108C12A:   var_9C = CStr()
  loc_108C137:   Me.ImgFamilyMemPhoto.Tag = var_9C
  loc_108C153:   var_CC = Me.FAGrid.Row
  loc_108C173:   Me.CDlg.FileName = CVar(CLng(&H1B))
  loc_108C17B:   var_DC = CVar(CStr(CVar(CLng(var_CC)))) 'String
  loc_108C183:   Set var_1A4 = Me.FAGrid
  loc_108C189:   LateIdCallSt
  loc_108C1A3: End If
  loc_108C1A3: Exit Sub
  loc_108C1A4: ' Referenced from: 108BF88
  loc_108C1AC: Set var_88 = Err()
  loc_108C1B2: Call 0.Method_arg_1C (var_1BC, var_1A4)
  loc_108C1C3: If (var_1BC <> 0) Then
  loc_108C1DC:   Set var_88 = Err()
  loc_108C1E2:   Call 0.Method_arg_2C (var_9C, 0, var_CC)
  loc_108C1ED:   MsgBox(CVar(var_9C), var_DC, var_EC, var_DC, )
  loc_108C200: End If
  loc_108C200: Exit Sub
  loc_108C201: CExtInstUnk
End Sub

Private Sub ImgFamilyMemPhoto_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F610A4
  'Data Table: 5ADDB4
  Dim var_88 As Variant
  loc_F60F7C: Set var_88 = Me.TopCtrl1
  loc_F60F82: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F60F9B: If (CStr() = "Browse") Then
  loc_F60F9E:   Exit Sub
  loc_F60F9F: End If
  loc_F60FBF: If (Me.ImgFamilyMemPhoto.Tag = vbNullString) Then
  loc_F60FC2:   Exit Sub
  loc_F60FC3: End If
  loc_F60FC9: If (Button = 2) Then
  loc_F60FEB:   Me.CmdImgDelete.Tag = Me.ImgFamilyMemPhoto.Name
  loc_F61032:   Me.CmdImgDelete.Left = ((CDbl(Me.SSTab1.Left) + Me.ImgFamilyMemPhoto.Left) + X)
  loc_F6107B:   Me.CmdImgDelete.Top = ((CDbl(Me.SSTab1.Top) + Me.ImgFamilyMemPhoto.Top) + Y)
  loc_F61098:   Me.CmdImgDelete.Visible = True
  loc_F610A0: End If
  loc_F610A0: Exit Sub
End Sub

Private Sub ImgFamilyMemSign_DblClick() '108C4F8
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_AC As Variant
  Dim var_88 As CommonDialog
  Dim var_CC As Variant
  Dim var_110 As Variant
  Dim var_BC As String
  Dim var_190 As Variant
  Dim var_DC As Variant
  loc_108C27C: On Error Goto loc_108C498
  loc_108C283: Set var_88 = Me.TopCtrl1
  loc_108C289: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_108C2A2: If (CStr() = "Browse") Then
  loc_108C2A5:   Exit Sub
  loc_108C2A6: End If
  loc_108C2B6: Me.CDlg.Filter = "*.*"
  loc_108C2CE: Me.CDlg.Action = 1
  loc_108C2E0: Me.CDlg.FileName = 
  loc_108C2E8: var_CC = CVar(CStr()) 'String
  loc_108C2EE: var_DC = Trim(var_CC)
  loc_108C2F7: Set var_110 = Me.CDlg
  loc_108C2FD: var_110.FileName = 
  loc_108C31B: var_EC = Right(var_DC, 3)
  loc_108C356: var_BC = "AVI"
  loc_108C384: If CBool((Ucase(var_EC) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_BC)) Then
  loc_108C395:   var_AC = "Invalid Format"
  loc_108C3A0:   MsgBox(var_AC, &H40, var_CC, var_DC, var_EC)
  loc_108C3B3: Else
  loc_108C3CA:   Set var_88 = Me.CDlg
  loc_108C3D0:   var_88.FileName = var_AC
  loc_108C3E2:   Me.var_88.LoadPicture CVar(CStr(var_BC)), var_190, var_1A0, var_110, 
  loc_108C3F7:   Me.ImgFamilyMemSign.Picture = var_110
  loc_108C416:   Me.CDlg.FileName = 
  loc_108C41E:   var_9C = CStr()
  loc_108C42B:   Me.ImgFamilyMemSign.Tag = var_9C
  loc_108C447:   var_CC = Me.FAGrid.Row
  loc_108C467:   Me.CDlg.FileName = CVar(CLng(&H1C))
  loc_108C46F:   var_DC = CVar(CStr(CVar(CLng(var_CC)))) 'String
  loc_108C477:   Set var_1A4 = Me.FAGrid
  loc_108C47D:   LateIdCallSt
  loc_108C497: End If
  loc_108C497: Exit Sub
  loc_108C498: ' Referenced from: 108C27C
  loc_108C4A0: Set var_88 = Err()
  loc_108C4A6: Call 0.Method_arg_1C (var_1BC, var_1A4)
  loc_108C4B7: If (var_1BC <> 0) Then
  loc_108C4D0:   Set var_88 = Err()
  loc_108C4D6:   Call 0.Method_arg_2C (var_9C, 0, var_CC)
  loc_108C4E1:   MsgBox(CVar(var_9C), var_DC, var_EC, var_DC, )
  loc_108C4F4: End If
  loc_108C4F4: Exit Sub
End Sub

Private Sub ImgFamilyMemSign_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single) 'F60DC4
  'Data Table: 5ADDB4
  Dim var_88 As Variant
  loc_F60C9C: Set var_88 = Me.TopCtrl1
  loc_F60CA2: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F60CBB: If (CStr() = "Browse") Then
  loc_F60CBE:   Exit Sub
  loc_F60CBF: End If
  loc_F60CDF: If (Me.ImgFamilyMemSign.Tag = vbNullString) Then
  loc_F60CE2:   Exit Sub
  loc_F60CE3: End If
  loc_F60CE9: If (Button = 2) Then
  loc_F60D0B:   Me.CmdImgDelete.Tag = Me.ImgFamilyMemSign.Name
  loc_F60D52:   Me.CmdImgDelete.Left = ((CDbl(Me.SSTab1.Left) + Me.ImgFamilyMemSign.Left) + X)
  loc_F60D9B:   Me.CmdImgDelete.Top = ((CDbl(Me.SSTab1.Top) + Me.ImgFamilyMemSign.Top) + Y)
  loc_F60DB8:   Me.CmdImgDelete.Visible = True
  loc_F60DC0: End If
  loc_F60DC0: Exit Sub
End Sub

Private Sub DGMemType_UnknownEvent_9 '10D69B4
  'Data Table: 5ADDB4
  Dim var_A8 As Variant
  Dim var_AC As TextBox
  Dim Me As Recordset15
  Dim var_CC As String
  Dim var_C8 As TextBox
  Dim var_10C As Boolean
  Dim var_C4 As Label
  loc_10D66BC: On Error Goto loc_10D694C
  loc_10D66CE: Me.DgMemType.Visible = False
  loc_10D66E2: Me.LblMessAc.Visible = False
  loc_10D66F7: Set var_A8 = Me.Txt
  loc_10D66FD: Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H24), var_AC)
  loc_10D6705: var_AC.Visible = False
  loc_10D671A: var_B0 = Me.RecordCount
  loc_10D6728: If (var_B0 > 0) Then
  loc_10D6764:   Set var_C4 = Me.Txt
  loc_10D676A:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(7), var_C8)
  loc_10D6772:   var_C8.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_10D67BF:   Set var_C4 = Me.Txt
  loc_10D67C5:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(7), var_C8)
  loc_10D67CD:   var_C8.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_10D6812:   global_68 = Proc_6_38_E69628(CVar(Me.Fields.Item("Corporate")))
  loc_10D687A:   Me.LblMessAc.Visible = CBool(IIf((Proc_6_38_E69628(CVar(Me.Fields.Item("MessAcYN"))) = "Y"), True, False))
  loc_10D68B4:   var_AC = Me.Fields.Item("MessAcYN")
  loc_10D68C8:   var_10C = False
  loc_10D68D2:   var_CC = Proc_6_38_E69628(CVar(var_AC))
  loc_10D68E1:   var_11C = IIf((var_CC = "Y"), True, var_10C)
  loc_10D68F6:   Set var_C4 = Me.Txt
  loc_10D68FC:   Call 0.Method_DGMemType_UnknownEvent_90 (CInt(&H24), var_C8)
  loc_10D6904:   var_C8.Visible = CBool(var_11C)
  loc_10D6926: End If
  loc_10D6931: Set var_A8 = Me.Txt
  loc_10D6937: Call 0.Method_DGMemType_UnknownEvent_90 (CInt(7))
  loc_10D693F: var_AC.SetFocus
  loc_10D694B: Exit Sub
  loc_10D694C: ' Referenced from: 10D66BC
  loc_10D6954: Set var_A8 = Err()
  loc_10D695A: Call 0.Method_arg_1C (var_B0)
  loc_10D696B: If (var_B0 <> 0) Then
  loc_10D6976:   Set var_A8 = Err()
  loc_10D697C:   Call 0.Method_arg_2C (var_CC)
  loc_10D699D:   MsgBox(CVar(var_CC), &H40, "Validation", var_10C, var_11C)
  loc_10D69B0: End If
  loc_10D69B0: Exit Sub
End Sub

Private Sub DGMemType_UnknownEvent_1F 'EA6438
  'Data Table: 5ADDB4
  Dim var_A8 As Variant
  loc_EA63B8: Set var_88 = Me.DgMemType
  loc_EA63E2: var_A8 = CVar(CInt(Fix(((Y - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA63EA: Set var_BC = Me.DgMemType
  loc_EA6426: Proc_6_138_106E830(Me.DgMemType, global_188, CInt(7), Me.FGPoint)
  loc_EA6434: Exit Sub
  loc_EA6435: DgMemType.DispID_1B = var_A8
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAE494
  'Data Table: 5ADDB4
  loc_EAE41C: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_EAE41F:   Call DGUnderAc_UnknownEvent_9()
  loc_EAE424: End If
  loc_EAE440: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EAE443:   Call DGAcName_UnknownEvent_9()
  loc_EAE448: End If
  loc_EAE464: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EAE467:   Call DGCity_UnknownEvent_9()
  loc_EAE46C: End If
  loc_EAE488: If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_EAE48B:   Call DGMemType_UnknownEvent_9()
  loc_EAE490: End If
  loc_EAE490: Exit Sub
End Sub

Private Sub CmdVarifyCard_Click() 'E01108
  'Data Table: 5ADDB4
  loc_E010FF: var_86 = Varify_Member()
  loc_E01104: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) '1560298
  'Data Table: 5ADDB4
  Dim var_92 As Integer
  Dim var_88 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_90 As Variant
  Dim var_110 As String
  Dim var_10C As Variant
  Dim var_114 As Long
  Dim var_108 As TextBox
  Dim var_120 As Long
  Dim Me As Recordset15
  Dim var_170 As Long
  loc_155F236: Set var_88 = Me.TxtGrid
  loc_155F23C: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_155F24A: Proc_6_74_E23240(var_8C)
  loc_155F256: Call Proc_265_106_10506D4(var_8C)
  loc_155F25E: var_92 = Index
  loc_155F267: If (var_92 = 0) Then
  loc_155F27D:   var_C4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_155F2AF:   var_110 = CStr(Me.FAGrid.TextMatrix))
  loc_155F2BC:   Set var_108 = Me.TxtGrid
  loc_155F2C2:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, var_110)
  loc_155F2CA:   var_10C.Tag = CVar(CLng(Me.FAGrid.Col))
  loc_155F2FB:   var_114 = CLng(Me.FAGrid.Col)
  loc_155F30B:   If (var_114 = CLng(3)) Then
  loc_155F319:     If (global_68 = "Y") Then
  loc_155F329:       ReDim var_118(0 To 0)
  loc_155F340:       var_118(0) = "Corporate"
  loc_155F397:       Set global_244 = Proc_6_66_F0048C(Me.ListView2, Me.TxtGrid, Index, Array(var_118), 1)
  loc_155F3AB:     Else
  loc_155F3B6:       If (global_68 = "N") Then
  loc_155F3C6:         ReDim var_118(0 To 2)
  loc_155F3DD:         var_118(0) = "Spouse"
  loc_155F3EC:         var_118(1) = "Child"
  loc_155F3FB:         var_118(2) = "Other"
  loc_155F412:         global_228 = Array(var_118)
  loc_155F41D:         Set var_108 = Me.ListView2
  loc_155F438:         Set var_8C = Me.TxtGrid
  loc_155F452:         Set global_244 = Proc_6_66_F0048C(var_108, var_8C, Index, global_228, 3)
  loc_155F463:       End If
  loc_155F463:     End If
  loc_155F470:     Set var_88 = Me.TxtGrid
  loc_155F476:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_228)
  loc_155F47E:     global_228 = var_8C.Text
  loc_155F490:     Set var_90 = Me.TxtGrid
  loc_155F496:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155F49E:     var_108.Tag = var_114
  loc_155F4B4:   Else
  loc_155F4BB:     If (var_114 = CLng(4)) Then
  loc_155F4C9:       If (global_68 = "Y") Then
  loc_155F4D9:         ReDim var_118(0 To 2)
  loc_155F4F0:         var_118(0) = "Mr."
  loc_155F4FF:         var_118(1) = "Mrs."
  loc_155F50E:         var_118(2) = "Miss"
  loc_155F565:         Set global_244 = Proc_6_66_F0048C(Me.ListView2, Me.TxtGrid, Index, Array(var_118))
  loc_155F579:       Else
  loc_155F584:         If (global_68 = "N") Then
  loc_155F594:           ReDim var_118(0 To 3)
  loc_155F5AB:           var_118(0) = "Mr."
  loc_155F5BA:           var_118(1) = "Mrs."
  loc_155F5C9:           var_118(2) = "Master"
  loc_155F5D8:           var_118(3) = "Miss"
  loc_155F5EF:           global_228 = Array(var_118)
  loc_155F5FA:           Set var_108 = Me.ListView2
  loc_155F615:           Set var_8C = Me.TxtGrid
  loc_155F62F:           Set global_244 = Proc_6_66_F0048C(var_108, var_8C, Index, global_228, 4)
  loc_155F640:         End If
  loc_155F640:       End If
  loc_155F64D:       Set var_88 = Me.TxtGrid
  loc_155F653:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_228)
  loc_155F65B:       3 = var_8C.Text
  loc_155F66D:       Set var_90 = Me.TxtGrid
  loc_155F673:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155F67B:       var_108.Tag = global_228
  loc_155F691:     Else
  loc_155F698:       If (var_114 = CLng(6)) Then
  loc_155F6A8:         ReDim var_118(0 To 1)
  loc_155F6B2:         var_C4 = "Male"
  loc_155F6BF:         var_118(0) = var_C4
  loc_155F6CE:         var_118(1) = "Female"
  loc_155F6F0:         Set var_108 = Me.ListView2
  loc_155F6F7:         Set var_10C = Me.TxtGrid
  loc_155F70B:         Set var_8C = var_10C
  loc_155F725:         Set global_244 = Proc_6_66_F0048C(var_108, var_8C, Index, Array(var_118))
  loc_155F743:         Set var_88 = Me.TxtGrid
  loc_155F749:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, 2)
  loc_155F751:         global_228 = var_8C.Text
  loc_155F763:         Set var_90 = Me.TxtGrid
  loc_155F769:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155F771:         var_108.Tag = var_C4
  loc_155F784:       End If
  loc_155F784:     End If
  loc_155F784:   End If
  loc_155F787: Else
  loc_155F78D:   If (var_92 = 1) Then
  loc_155F7A3:     var_C4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_155F7D5:     var_110 = CStr(Me.FPGrid.TextMatrix))
  loc_155F7E2:     Set var_108 = Me.TxtGrid
  loc_155F7E8:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, var_110)
  loc_155F7F0:     var_10C.Tag = CVar(CLng(Me.FPGrid.Col))
  loc_155F831:     If (CLng(Me.FPGrid.Col) = CLng(4)) Then
  loc_155F841:       ReDim var_118(0 To 1)
  loc_155F84B:       var_C4 = "Proposed"
  loc_155F858:       var_118(0) = var_C4
  loc_155F867:       var_118(1) = "Seconded"
  loc_155F87E:       global_228 = Array(var_118)
  loc_155F889:       Set var_108 = Me.ListView3
  loc_155F8A4:       Set var_8C = Me.TxtGrid
  loc_155F8BE:       Set global_244 = Proc_6_66_F0048C(var_108, var_8C, Index, global_228, 2)
  loc_155F8DC:       Set var_88 = Me.TxtGrid
  loc_155F8E2:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, global_228)
  loc_155F8EA:       var_120 = var_8C.Text
  loc_155F8FC:       Set var_90 = Me.TxtGrid
  loc_155F902:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_155F90A:       var_108.Tag = var_C4
  loc_155F920:     Else
  loc_155F927:       If (var_120 = CLng(5)) Then
  loc_155F939:         Set var_88 = Me.TxtGrid
  loc_155F93F:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_155F947:         var_8C.MaxLength = &H4B
  loc_155F960:         Set var_90 = Me.TxtGrid
  loc_155F966:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_108)
  loc_155F96E:         var_128 = var_108.Width
  loc_155F980:         Set var_88 = Me.TxtGrid
  loc_155F986:         Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C)
  loc_155F99A:         var_C4 = CVar((var_8C.Left + var_128)) 'Single
  loc_155F9A9:         Me.DGPropMember.Left = var_C4
  loc_155F9BB:         var_C4 = 0
  loc_155F9F8:         var_E4 = CVar(((CDbl(Me.FPGrid.Top) + CDbl(CLng(Me.FPGrid.RowHeight)))) + CDbl(&HF))) 'Single
  loc_155FA07:         Me.DGPropMember.Top = CVar(CLng(Me.FPGrid.Col))
  loc_155FA34:         var_C4 = CVar((CDbl(Me.FPGrid.Height) - CDbl(250))) 'Single
  loc_155FA43:         Me.DGPropMember.Height = var_C4
  loc_155FA5B:         var_124 = Me.RecordCount
  loc_155FA93:         If ((var_124 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_155FA96:           Exit Sub
  loc_155FA97:         End If
  loc_155FAAA:         var_C4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_155FAB2:         var_E4 = CVar(CLng(3)) 'Long
  loc_155FAE5:         If (CStr(Me.FPGrid.TextMatrix)) <> vbNullString) Then
  loc_155FAEE:           Me.MoveFirst
  loc_155FB06:           var_C4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_155FB17:           Set var_8C = Me.FPGrid
  loc_155FB2E:           Proc_6_17_EAAE40(var_13C, CVar(CStr(var_8C.TextMatrix))), CVar(CLng(3)), var_C4, CVar(CLng(3)))
  loc_155FB57:           Me.Find CStr("PMemCode=" & var_13C), 0, 1
  loc_155FB87:           If (Me.EOF = &HFF) Then
  loc_155FB90:             Me.MoveFirst
  loc_155FB95:           End If
  loc_155FB95:         End If
  loc_155FB98:       Else
  loc_155FB9F:         If (var_120 = CLng(7)) Then
  loc_155FBB1:           Set var_88 = Me.TxtGrid
  loc_155FBB7:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, &H4B, var_16C)
  loc_155FBBF:           var_8C.MaxLength = var_C4
  loc_155FBD8:           Set var_90 = Me.TxtGrid
  loc_155FBDE:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_128)
  loc_155FBE6:           var_B4 = var_108.Width
  loc_155FBF8:           Set var_88 = Me.TxtGrid
  loc_155FBFE:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_124)
  loc_155FC06:           var_C4 = var_8C.Left
  loc_155FC12:           var_C4 = CVar((var_124 + var_128)) 'Single
  loc_155FC1B:           Set var_10C = Me.DGPropMember
  loc_155FC21:           var_10C.Left = var_C4
  loc_155FC33:           var_C4 = 0
  loc_155FC70:           var_E4 = CVar(((CDbl(Me.FPGrid.Top) + CDbl(CLng(Me.FPGrid.RowHeight)))) + CDbl(&HF))) 'Single
  loc_155FC7F:           Me.DGPropMember.Top = CVar(CLng(3))
  loc_155FCAC:           var_C4 = CVar((CDbl(Me.FPGrid.Height) - CDbl(250))) 'Single
  loc_155FCBB:           Me.DGPropMember.Height = var_C4
  loc_155FD0B:           If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_155FD0E:             Exit Sub
  loc_155FD0F:           End If
  loc_155FD22:           var_C4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_155FD2A:           var_E4 = CVar(CLng(3)) 'Long
  loc_155FD5D:           If (CStr(Me.FPGrid.TextMatrix)) <> vbNullString) Then
  loc_155FD66:             Me.MoveFirst
  loc_155FDA6:             Proc_6_17_EAAE40(var_13C, CVar(CStr(Me.FPGrid.TextMatrix))), CVar(CLng(3)), CVar(CLng(Me.FPGrid.Row)), CVar(CLng(3)))
  loc_155FDCF:             Me.Find CStr("PMemCode=" & var_13C), 0, 1
  loc_155FDFF:             If (Me.EOF = &HFF) Then
  loc_155FE08:               Me.MoveFirst
  loc_155FE0D:             End If
  loc_155FE0D:           End If
  loc_155FE0D:         End If
  loc_155FE0D:       End If
  loc_155FE0D:     End If
  loc_155FE10:   Else
  loc_155FE16:     If (var_92 = 2) Then
  loc_155FE2F:       Me.FGrid1.CellBackColor = CVar(CLng(global_280))
  loc_155FE89:       Set var_108 = Me.TxtGrid
  loc_155FE8F:       Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid1.TextMatrix)), CVar(CLng(Me.FGrid1.Col)), CVar(CLng(Me.FGrid1.Row)))
  loc_155FE97:       var_10C.Tag = var_16C
  loc_155FEC8:       var_170 = CLng(Me.FGrid1.Col)
  loc_155FED8:       If (var_170 = CLng(1)) Then
  loc_155FF1C:         If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_155FF1F:           Exit Sub
  loc_155FF20:         End If
  loc_155FF43:         Proc_6_137_1192FDC(Me.DGRev, global_56, Index, Me.FGPoint1, var_170)
  loc_155FF64:         var_C4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_155FF6C:         var_E4 = CVar(CLng(1)) 'Long
  loc_155FF9F:         If (CStr(Me.FGrid1.TextMatrix)) <> vbNullString) Then
  loc_155FFA8:           Me.MoveFirst
  loc_155FFD7:           var_B4 = Me.FGrid1.TextMatrix)
  loc_155FFE8:           Proc_6_17_EAAE40(var_13C, CVar(CStr(var_B4)), CVar(CLng(6)), CVar(CLng(Me.FGrid1.Row)), CVar(CLng(6)))
  loc_1560007:           var_110 = CStr("Code=" & var_13C)
  loc_1560011:           Me.Find var_110, 0, 1
  loc_1560041:           If (Me.EOF = &HFF) Then
  loc_156004A:             Me.MoveFirst
  loc_156004F:           End If
  loc_156004F:         End If
  loc_1560052:       Else
  loc_1560059:         If (var_170 = CLng(3)) Then
  loc_1560069:           ReDim var_118(0 To 4)
  loc_1560073:           var_C4 = "Monthly"
  loc_1560080:           var_118(0) = var_C4
  loc_156008F:           var_118(1) = "Bi Monthly"
  loc_156009E:           var_118(2) = "Quarterly"
  loc_15600AD:           var_118(3) = "Half Yearly"
  loc_15600BC:           var_118(4) = "Annual"
  loc_15600DE:           Set var_108 = Me.ListView4
  loc_15600F9:           Set var_8C = Me.TxtGrid
  loc_1560113:           Set global_244 = Proc_6_66_F0048C(var_108, var_8C, Index, Array(var_118), 5, Array(var_118))
  loc_1560131:           Set var_88 = Me.TxtGrid
  loc_1560137:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, var_16C, var_C4)
  loc_156013F:           var_C4 = var_8C.Text
  loc_1560151:           Set var_90 = Me.TxtGrid
  loc_1560157:           Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_156015F:           var_108.Tag = var_B4
  loc_1560175:         Else
  loc_156017C:           If (var_170 = CLng(5)) Then
  loc_156018C:             ReDim var_118(0 To 1)
  loc_1560196:             var_C4 = "Yes"
  loc_15601A3:             var_118(0) = var_C4
  loc_15601B2:             var_118(1) = "No"
  loc_15601D4:             Set var_108 = Me.ListView4
  loc_15601EF:             Set var_8C = Me.TxtGrid
  loc_1560209:             Set global_244 = Proc_6_66_F0048C(var_108, var_8C, Index, Array(var_118))
  loc_1560227:             Set var_88 = Me.TxtGrid
  loc_156022D:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_8C, var_110, 2)
  loc_1560235:             global_228 = var_8C.Text
  loc_1560247:             Set var_90 = Me.TxtGrid
  loc_156024D:             Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, var_110)
  loc_1560255:             var_108.Tag = var_C4
  loc_156026B:           Else
  loc_1560272:             If (var_170 = CLng(2)) Then
  loc_156027E:               If (global_110 = 0) Then
  loc_1560289:                 var_110 = "{Home}+{End}"
  loc_156028F:                 Proc_303_0_FBACC8(var_110, 0)
  loc_1560297:               End If
  loc_1560297:             End If
  loc_1560297:           End If
  loc_1560297:         End If
  loc_1560297:       End If
  loc_1560297:     End If
  loc_1560297:   End If
  loc_1560297: End If
  loc_1560297: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '164CBE4
  'Data Table: 5ADDB4
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_C0 As TextBox
  Dim var_CC As TextBox
  Dim var_F4 As Long
  Dim var_F8 As Long
  Dim var_108 As Variant
  Dim var_98 As DataGrid
  Dim var_BC As DataGrid
  Dim Me As Recordset15
  loc_164B59B: var_86 = Shift
  loc_164B5AA: If (KeyCode = 0) Then
  loc_164B5B7:   If (CLng(Shift) = &H1B) Then
  loc_164B5C7:     Set var_8C = Me.TxtGrid
  loc_164B5CD:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94)
  loc_164B5D5:     var_88 = var_90.Tag
  loc_164B5E7:     Set var_98 = Me.TxtGrid
  loc_164B5ED:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_164B5F5:     var_9C.Text = var_94
  loc_164B611:     Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_164B616:     Call Proc_265_106_10506D4(arg_14)
  loc_164B61F:     Set var_8C = Me.FAGrid
  loc_164B63C:     Set var_8C = Me.TxtGrid
  loc_164B642:     Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_164B64A:     var_90.Visible = FAGrid.DispID_8001
  loc_164B656:     Exit Sub
  loc_164B657:   End If
  loc_164B67A:   If (CLng(Me.FAGrid.Col) = CLng(3)) Then
  loc_164B688:     If (global_68 = "Y") Then
  loc_164B6AD:       Set var_8C = Me.TxtGrid
  loc_164B6B3:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_164B6BB:       var_B0 = var_90.Left
  loc_164B6CD:       Set var_98 = Me.TxtGrid
  loc_164B6D3:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_164B6DB:       var_B8 = var_9C.Top
  loc_164B6ED:       Set var_BC = Me.TxtGrid
  loc_164B6F3:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0)
  loc_164B6FB:       var_C4 = var_C0.Height
  loc_164B70D:       Set var_C8 = Me.TxtGrid
  loc_164B713:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164B71B:       var_D0 = var_CC.Width
  loc_164B763:       Proc_6_65_1194DE4(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164B78A:     Else
  loc_164B795:       If (global_68 = "N") Then
  loc_164B7BA:         Set var_8C = Me.TxtGrid
  loc_164B7C0:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, CInt(var_B4))
  loc_164B7C8:         CInt((var_B8 + var_C4)) = var_90.Left
  loc_164B7DA:         Set var_98 = Me.TxtGrid
  loc_164B7E0:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164B7E8:         CInt(var_D0) = var_9C.Top
  loc_164B7FA:         Set var_BC = Me.TxtGrid
  loc_164B800:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164B808:         215 = var_C0.Height
  loc_164B81A:         Set var_C8 = Me.TxtGrid
  loc_164B820:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164B828:         var_D0 = var_CC.Width
  loc_164B870:         Proc_6_65_1194DE4(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164B894:       End If
  loc_164B894:     End If
  loc_164B89E:     If (CLng(Shift) = &HD) Then
  loc_164B8A7:       Call Proc_265_118_170C1C8(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164B8B2:       If (var_DE = &HFF) Then
  loc_164B8C0:         Set var_9C = Me.TxtGrid
  loc_164B8E9:         Set var_90 = var_9C
  loc_164B8F8:         Proc_6_62_1254E68(Me.FAGrid, var_90, KeyCode, Shift, global_110, &H22)
  loc_164B908:       End If
  loc_164B908:     End If
  loc_164B90B:   Else
  loc_164B912:     If (var_B0 = CLng(4)) Then
  loc_164B920:       If (global_68 = "Y") Then
  loc_164B945:         Set var_8C = Me.TxtGrid
  loc_164B94B:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, 0, 4)
  loc_164B953:         0 = var_90.Left
  loc_164B965:         Set var_98 = Me.TxtGrid
  loc_164B96B:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164B973:         CInt(var_D0) = var_9C.Top
  loc_164B985:         Set var_BC = Me.TxtGrid
  loc_164B98B:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164B993:         645 = var_C0.Height
  loc_164B9A5:         Set var_C8 = Me.TxtGrid
  loc_164B9AB:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164B9B3:         var_D0 = var_CC.Width
  loc_164B9FB:         Proc_6_65_1194DE4(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164BA22:       Else
  loc_164BA2D:         If (global_68 = "N") Then
  loc_164BA52:           Set var_8C = Me.TxtGrid
  loc_164BA58:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, CInt(var_B4))
  loc_164BA60:           CInt((var_B8 + var_C4)) = var_90.Left
  loc_164BA72:           Set var_98 = Me.TxtGrid
  loc_164BA78:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164BA80:           CInt(var_D0) = var_9C.Top
  loc_164BA92:           Set var_BC = Me.TxtGrid
  loc_164BA98:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164BAA0:           645 = var_C0.Height
  loc_164BAB2:           Set var_C8 = Me.TxtGrid
  loc_164BAB8:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164BAC0:           var_D0 = var_CC.Width
  loc_164BB08:           Proc_6_65_1194DE4(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164BB2C:         End If
  loc_164BB2C:       End If
  loc_164BB36:       If (CLng(Shift) = &HD) Then
  loc_164BB3F:         Call Proc_265_118_170C1C8(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164BB4A:         If (var_DE = &HFF) Then
  loc_164BB90:           Proc_6_62_1254E68(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22)
  loc_164BBA0:         End If
  loc_164BBA0:       End If
  loc_164BBA3:     Else
  loc_164BBAA:       If (var_B0 = CLng(5)) Then
  loc_164BBB7:         If (CLng(Shift) = &HD) Then
  loc_164BBC0:           Call Proc_265_118_170C1C8(KeyCode, var_DE, 0, 5)
  loc_164BBCB:           If (var_DE = &HFF) Then
  loc_164BBD9:             Set var_9C = Me.TxtGrid
  loc_164BC02:             Set var_90 = var_9C
  loc_164BC11:             Proc_6_62_1254E68(Me.FAGrid, var_90, KeyCode, Shift, global_110, &H22, 0)
  loc_164BC21:           End If
  loc_164BC21:         End If
  loc_164BC24:       Else
  loc_164BC2B:         If (var_B0 = CLng(6)) Then
  loc_164BC50:           Set var_8C = Me.TxtGrid
  loc_164BC56:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, 6, 0)
  loc_164BC5E:           0 = var_90.Left
  loc_164BC70:           Set var_98 = Me.TxtGrid
  loc_164BC76:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164BC7E:           CInt(var_D0) = var_9C.Top
  loc_164BC90:           Set var_BC = Me.TxtGrid
  loc_164BC96:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164BC9E:           860 = var_C0.Height
  loc_164BCB0:           Set var_C8 = Me.TxtGrid
  loc_164BCB6:           Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164BCBE:           var_D0 = var_CC.Width
  loc_164BD06:           Proc_6_65_1194DE4(Me.FrmList2, Me.ListView2, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164BD34:           If (CLng(Shift) = &HD) Then
  loc_164BD3D:             Call Proc_265_118_170C1C8(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164BD48:             If (var_DE = &HFF) Then
  loc_164BD8E:               Proc_6_62_1254E68(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22)
  loc_164BD9E:             End If
  loc_164BD9E:           End If
  loc_164BDA1:         Else
  loc_164BDA8:           If (var_B0 = CLng(8)) Then
  loc_164BDB5:             If (CLng(Shift) = &HD) Then
  loc_164BDBE:               Call Proc_265_118_170C1C8(KeyCode, var_DE, 0, 8)
  loc_164BDC9:               If (var_DE = &HFF) Then
  loc_164BE0F:                 Proc_6_62_1254E68(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164BE1F:               End If
  loc_164BE1F:             End If
  loc_164BE22:           Else
  loc_164BE29:             If (var_B0 = CLng(&HA)) Then
  loc_164BE36:               If (CLng(Shift) = &HD) Then
  loc_164BE3F:                 Call Proc_265_118_170C1C8(KeyCode, var_DE, &HA, 0)
  loc_164BE4A:                 If (var_DE = &HFF) Then
  loc_164BE90:                   Proc_6_62_1254E68(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164BEA0:                 End If
  loc_164BEA0:               End If
  loc_164BEA3:             Else
  loc_164BEAA:               If (var_B0 = CLng(&HC)) Then
  loc_164BEB7:                 If (CLng(Shift) = &HD) Then
  loc_164BEC0:                   Call Proc_265_118_170C1C8(KeyCode, var_DE, &HC, 0)
  loc_164BECB:                   If (var_DE = &HFF) Then
  loc_164BF11:                     Proc_6_62_1254E68(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164BF21:                   End If
  loc_164BF21:                 End If
  loc_164BF24:               Else
  loc_164BF2B:                 If (var_B0 = CLng(&HE)) Then
  loc_164BF38:                   If (CLng(Shift) = &HD) Then
  loc_164BF41:                     Call Proc_265_118_170C1C8(KeyCode, var_DE, &HE, 0)
  loc_164BF4C:                     If (var_DE = &HFF) Then
  loc_164BF92:                       Proc_6_62_1254E68(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164BFA2:                     End If
  loc_164BFA2:                   End If
  loc_164BFA5:                 Else
  loc_164BFAC:                   If (var_B0 = CLng(&H18)) Then
  loc_164BFB9:                     If (CLng(Shift) = &HD) Then
  loc_164BFC2:                       Call Proc_265_118_170C1C8(KeyCode, var_DE, &H18, 0)
  loc_164BFCD:                       If (var_DE = &HFF) Then
  loc_164C013:                         Proc_6_62_1254E68(Me.FAGrid, Me.TxtGrid, KeyCode, Shift, global_110, &H22, 0)
  loc_164C023:                       End If
  loc_164C023:                     End If
  loc_164C026:                   Else
  loc_164C02D:                     If (var_B0 = CLng(&H1D)) Then
  loc_164C03A:                       If (CLng(Shift) = &HD) Then
  loc_164C043:                         Call Proc_265_118_170C1C8(KeyCode, var_DE, &H1D, 0)
  loc_164C04E:                         If (var_DE = &HFF) Then
  loc_164C05C:                           Set var_9C = Me.TxtGrid
  loc_164C087:                           Set var_90 = var_9C
  loc_164C096:                           Proc_6_62_1254E68(Me.FAGrid, var_90, KeyCode, Shift, global_110, &H22, CByte(4))
  loc_164C0A6:                         End If
  loc_164C0A6:                       End If
  loc_164C0A6:                     End If
  loc_164C0A6:                   End If
  loc_164C0A6:                 End If
  loc_164C0A6:               End If
  loc_164C0A6:             End If
  loc_164C0A6:           End If
  loc_164C0A6:         End If
  loc_164C0A6:       End If
  loc_164C0A6:     End If
  loc_164C0A6:   End If
  loc_164C0A9: Else
  loc_164C0AF:   If (var_88 = 1) Then
  loc_164C0BC:     If (CLng(Shift) = &H1B) Then
  loc_164C0CC:       Set var_8C = Me.TxtGrid
  loc_164C0D2:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 0, 0)
  loc_164C0DA:       0 = var_90.Tag
  loc_164C0EC:       Set var_98 = Me.TxtGrid
  loc_164C0F2:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_164C0FA:       var_9C.Text = CInt(var_D0)
  loc_164C116:       Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_164C11B:       Call Proc_265_106_10506D4(arg_14, 430)
  loc_164C124:       Set var_8C = Me.FPGrid
  loc_164C141:       Set var_8C = Me.TxtGrid
  loc_164C147:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_164C14F:       var_90.Visible = FPGrid.DispID_8001
  loc_164C15B:       Exit Sub
  loc_164C15C:     End If
  loc_164C17F:     If (CLng(Me.FPGrid.Col) = CLng(4)) Then
  loc_164C1A4:       Set var_8C = Me.TxtGrid
  loc_164C1AA:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_164C1B2:       var_F4 = var_90.Left
  loc_164C1C4:       Set var_98 = Me.TxtGrid
  loc_164C1CA:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C)
  loc_164C1D2:       var_B8 = var_9C.Top
  loc_164C1E4:       Set var_BC = Me.TxtGrid
  loc_164C1EA:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0)
  loc_164C1F2:       var_C4 = var_C0.Height
  loc_164C204:       Set var_C8 = Me.TxtGrid
  loc_164C20A:       Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164C212:       var_D0 = var_CC.Width
  loc_164C25A:       Proc_6_65_1194DE4(Me.FrmList3, Me.ListView3, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164C288:       If (CLng(Shift) = &HD) Then
  loc_164C291:         Call Proc_265_118_170C1C8(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164C29C:         If (var_DE = &HFF) Then
  loc_164C2E2:           Proc_6_62_1254E68(Me.FPGrid, Me.TxtGrid, KeyCode, Shift, global_110, &HE)
  loc_164C2F2:         End If
  loc_164C2F2:       End If
  loc_164C2F5:     Else
  loc_164C2FC:       If (var_F4 = CLng(5)) Then
  loc_164C309:         If (CLng(Shift) = &HD) Then
  loc_164C312:           Call Proc_265_118_170C1C8(KeyCode, var_DE, 0, 5)
  loc_164C31D:           If (var_DE = &HFF) Then
  loc_164C363:             Proc_6_62_1254E68(Me.FPGrid, Me.TxtGrid, KeyCode, Shift, global_110, &HE, 0)
  loc_164C373:           End If
  loc_164C373:         End If
  loc_164C376:       Else
  loc_164C37D:         If (var_F4 = CLng(7)) Then
  loc_164C3D1:           Proc_6_69_134A630(Me.DGPropMember, Me.TxtGrid, KeyCode, global_192, Shift, &HFF, 1, Nothing)
  loc_164C3EF:           If (CLng(Shift) = &HD) Then
  loc_164C3F8:             Call Proc_265_118_170C1C8(KeyCode, var_DE, Nothing, 0, 7)
  loc_164C403:             If (var_DE = &HFF) Then
  loc_164C449:               Proc_6_62_1254E68(Me.FPGrid, Me.TxtGrid, KeyCode, Shift, global_110, &HE, 0)
  loc_164C459:             End If
  loc_164C459:           End If
  loc_164C45C:         Else
  loc_164C463:           If (var_F4 = CLng(&HE)) Then
  loc_164C470:             If (CLng(Shift) = &HD) Then
  loc_164C479:               Call Proc_265_118_170C1C8(KeyCode, var_DE, &HE, 0, 0)
  loc_164C484:               If (var_DE = &HFF) Then
  loc_164C492:                 Set var_9C = Me.TxtGrid
  loc_164C4BD:                 Set var_90 = var_9C
  loc_164C4CC:                 Proc_6_62_1254E68(Me.FPGrid, var_90, KeyCode, Shift, global_110, &HE, CByte(4))
  loc_164C4DC:               End If
  loc_164C4DC:             End If
  loc_164C4DC:           End If
  loc_164C4DC:         End If
  loc_164C4DC:       End If
  loc_164C4DC:     End If
  loc_164C4DF:   Else
  loc_164C4E5:     If (var_88 = 2) Then
  loc_164C4F2:       If (CLng(Shift) = &H1B) Then
  loc_164C502:         Set var_8C = Me.TxtGrid
  loc_164C508:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_94, 0, 0)
  loc_164C510:         0 = var_90.Tag
  loc_164C522:         Set var_98 = Me.TxtGrid
  loc_164C528:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_94)
  loc_164C530:         var_9C.Text = CInt(var_D0)
  loc_164C547:         Set var_8C = Me.FGrid1
  loc_164C564:         Set var_8C = Me.TxtGrid
  loc_164C56A:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, 0)
  loc_164C572:         var_90.Visible = FGrid1.DispID_8001
  loc_164C57E:         Exit Sub
  loc_164C57F:       End If
  loc_164C5A2:       If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_164C5B2:         Set var_8C = Me.TxtGrid
  loc_164C5B8:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4)
  loc_164C5C0:         var_F8 = var_90.Left
  loc_164C5D7:         Me.DGRev.Left = CVar(var_B4)
  loc_164C5F2:         Set var_98 = Me.TxtGrid
  loc_164C5F8:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164C600:         430 = var_9C.Height
  loc_164C612:         Set var_8C = Me.TxtGrid
  loc_164C618:         Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90)
  loc_164C62C:         var_108 = CVar((var_90.Top + var_B8)) 'Single
  loc_164C63B:         Me.DGRev.Top = CVar(var_90.Top)
  loc_164C658:         Set var_C0 = Me.TxtGrid
  loc_164C66A:         Set var_9C = Me.FGPoint1
  loc_164C675:         Set var_98 = Nothing
  loc_164C6A3:         Proc_6_69_134A630(Me.DGRev, var_C0, KeyCode, global_56, Shift, &HFF)
  loc_164C6C2:         var_B4 = Me.RecordCount
  loc_164C6D0:         If (var_B4 > 0) Then
  loc_164C6D7:           Set var_98 = Me.DGRev
  loc_164C6F6:           Proc_6_138_106E830(var_98, global_56, KeyCode, Me.FGPoint1, 1)
  loc_164C704:         End If
  loc_164C70E:         If (CLng(Shift) = &HD) Then
  loc_164C717:           Call Proc_265_118_170C1C8(KeyCode, var_DE, var_98)
  loc_164C722:           If (var_DE = &HFF) Then
  loc_164C768:             Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_110, 6)
  loc_164C778:           End If
  loc_164C778:         End If
  loc_164C77B:       Else
  loc_164C782:         If (var_F8 = CLng(2)) Then
  loc_164C7C5:           If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_164C7CE:             Call Proc_265_118_170C1C8(KeyCode, var_DE, 0, 2)
  loc_164C7D9:             If (var_DE = &HFF) Then
  loc_164C7E7:               Set var_9C = Me.TxtGrid
  loc_164C810:               Set var_90 = var_9C
  loc_164C81F:               Proc_6_62_1254E68(Me.FGrid1, var_90, KeyCode, Shift, global_110, 6, 0)
  loc_164C82F:             End If
  loc_164C82F:           End If
  loc_164C832:         Else
  loc_164C839:           If (var_F8 = CLng(3)) Then
  loc_164C85E:             Set var_8C = Me.TxtGrid
  loc_164C864:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, 3, 0)
  loc_164C86C:             0 = var_90.Left
  loc_164C87E:             Set var_98 = Me.TxtGrid
  loc_164C884:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164C88C:             var_9C = var_9C.Top
  loc_164C89E:             Set var_BC = Me.TxtGrid
  loc_164C8A4:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164C8AC:             0 = var_C0.Height
  loc_164C8BE:             Set var_C8 = Me.TxtGrid
  loc_164C8C4:             Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164C8CC:             var_D0 = var_CC.Width
  loc_164C914:             Proc_6_65_1194DE4(Me.FrmList4, Me.ListView4, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164C942:             If (CLng(Shift) = &HD) Then
  loc_164C94B:               Call Proc_265_118_170C1C8(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164C956:               If (var_DE = &HFF) Then
  loc_164C99C:                 Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_110, 6)
  loc_164C9AC:               End If
  loc_164C9AC:             End If
  loc_164C9AF:           Else
  loc_164C9B6:             If (var_F8 = CLng(4)) Then
  loc_164C9F9:               If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_110 = &HFF))) Then
  loc_164CA02:                 Call Proc_265_118_170C1C8(KeyCode, var_DE, 0, 4)
  loc_164CA0D:                 If (var_DE = &HFF) Then
  loc_164CA1B:                   Set var_9C = Me.TxtGrid
  loc_164CA44:                   Set var_90 = var_9C
  loc_164CA53:                   Proc_6_62_1254E68(Me.FGrid1, var_90, KeyCode, Shift, global_110, 6, 0)
  loc_164CA63:                 End If
  loc_164CA63:               End If
  loc_164CA66:             Else
  loc_164CA6D:               If (var_F8 = CLng(5)) Then
  loc_164CA92:                 Set var_8C = Me.TxtGrid
  loc_164CA98:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_90, var_B4, 5, 0)
  loc_164CAA0:                 0 = var_90.Left
  loc_164CAB2:                 Set var_98 = Me.TxtGrid
  loc_164CAB8:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_164CAC0:                 CInt(var_D0) = var_9C.Top
  loc_164CAD2:                 Set var_BC = Me.TxtGrid
  loc_164CAD8:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_C0, var_C4)
  loc_164CAE0:                 1300 = var_C0.Height
  loc_164CAF2:                 Set var_C8 = Me.TxtGrid
  loc_164CAF8:                 Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_CC)
  loc_164CB00:                 var_D0 = var_CC.Width
  loc_164CB48:                 Proc_6_65_1194DE4(Me.FrmList4, Me.ListView4, Me.TxtGrid, KeyCode, Shift, arg_14)
  loc_164CB76:                 If (CLng(Shift) = &HD) Then
  loc_164CB7F:                   Call Proc_265_118_170C1C8(KeyCode, var_DE, CInt(var_B4), CInt((var_B8 + var_C4)))
  loc_164CB8A:                   If (var_DE = &HFF) Then
  loc_164CBD0:                     Proc_6_62_1254E68(Me.FGrid1, Me.TxtGrid, KeyCode, Shift, global_110, 6)
  loc_164CBE0:                   End If
  loc_164CBE0:                 End If
  loc_164CBE0:               End If
  loc_164CBE0:             End If
  loc_164CBE0:           End If
  loc_164CBE0:         End If
  loc_164CBE0:       End If
  loc_164CBE0:     End If
  loc_164CBE0:   End If
  loc_164CBE0: End If
  loc_164CBE0: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) '1031018
  'Data Table: 5ADDB4
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_B0 As Long
  Dim var_B8 As Long
  loc_1030DD7: Proc_6_58_E06050(arg_10)
  loc_1030DDF: var_86 = KeyAscii
  loc_1030DE8: If (var_86 = 0) Then
  loc_1030E0E:   If (CLng(Me.FAGrid.Col) = CLng(&H1D)) Then
  loc_1030E1B:     Set var_8C = Me.TxtGrid
  loc_1030E21:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_1030E3C:     Proc_6_42_129B55C(var_A4, arg_10, 3)
  loc_1030E48:   End If
  loc_1030E4B: Else
  loc_1030E51:   If (var_86 = 1) Then
  loc_1030E67:     var_B0 = CLng(Me.FPGrid.Col)
  loc_1030E77:     If (var_B0 = CLng(7)) Then
  loc_1030E96:       If (CBool(Me.DGPropMember.Visible) = &HFF) Then
  loc_1030E9D:         Set var_A4 = Me.TxtGrid
  loc_1030EC3:         Proc_6_89_1470B00(var_A4, KeyAscii, global_192, arg_10, "Name")
  loc_1030ED2:       End If
  loc_1030ED5:     Else
  loc_1030EDC:       If (var_B0 = CLng(&HE)) Then
  loc_1030EE9:         Set var_8C = Me.TxtGrid
  loc_1030EEF:         Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 0, var_B0)
  loc_1030F0A:         Proc_6_42_129B55C(var_A4, arg_10, 1, 0)
  loc_1030F16:       End If
  loc_1030F16:     End If
  loc_1030F19:   Else
  loc_1030F1F:     If (var_86 = 2) Then
  loc_1030F35:       var_B8 = CLng(Me.FGrid1.Col)
  loc_1030F45:       If (var_B8 = CLng(1)) Then
  loc_1030F64:         If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_1030F91:           Proc_6_89_1470B00(Me.TxtGrid, KeyAscii, global_56, arg_10, "Name")
  loc_1030FAB:           Set var_A4 = Me.FGPoint1
  loc_1030FC3:           Proc_6_138_106E830(Me.DGRev, global_56, KeyAscii, var_A4, 0)
  loc_1030FD1:         End If
  loc_1030FD4:       Else
  loc_1030FDB:         If (var_B8 = CLng(2)) Then
  loc_1030FE8:           Set var_8C = Me.TxtGrid
  loc_1030FEE:           Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, var_B8)
  loc_1031009:           Proc_6_42_129B55C(var_A4, arg_10, 5, 2)
  loc_1031015:         End If
  loc_1031015:       End If
  loc_1031015:     End If
  loc_1031015:   End If
  loc_1031015: End If
  loc_1031015: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10CCEC4
  'Data Table: 5ADDB4
  Dim var_86 As Integer
  Dim var_A0 As Long
  Dim var_B4 As Long
  Dim var_B8 As Long
  loc_10CCBC4: On Error Goto loc_10CCEBC
  loc_10CCBCA: var_86 = KeyCode
  loc_10CCBD3: If (var_86 = 0) Then
  loc_10CCBE9:   var_A0 = CLng(Me.FAGrid.Col)
  loc_10CCBF9:   If Not (var_A0 = CLng(3)) Then
  loc_10CCC03:     If Not (var_A0 = CLng(4)) Then
  loc_10CCC0D:       If (var_A0 = CLng(6)) Then
  loc_10CCC10:       End If
  loc_10CCC10:     End If
  loc_10CCC36:     If ((CLng(Shift) <> &HD) And (Me.FrmList2.Visible = 0)) Then
  loc_10CCC47:       Call TxtGrid_KeyDown(KeyCode, global_112)
  loc_10CCC4C:     End If
  loc_10CCC67:     If (Me.FrmList2.Visible = &HFF) Then
  loc_10CCC96:       Proc_6_64_F299E8(Me.ListView2, Me.TxtGrid, KeyCode, Shift)
  loc_10CCCA6:     End If
  loc_10CCCA6:   End If
  loc_10CCCA9: Else
  loc_10CCCAF:   If (var_86 = 1) Then
  loc_10CCCC5:     var_B4 = CLng(Me.FPGrid.Col)
  loc_10CCCD5:     If (var_B4 = CLng(4)) Then
  loc_10CCCFE:       If ((CLng(Shift) <> &HD) And (Me.FrmList3.Visible = 0)) Then
  loc_10CCD0F:         Call TxtGrid_KeyDown(KeyCode, global_112)
  loc_10CCD14:       End If
  loc_10CCD2F:       If (Me.FrmList3.Visible = &HFF) Then
  loc_10CCD5E:         Proc_6_64_F299E8(Me.ListView3, Me.TxtGrid, KeyCode, Shift, global_244, 0)
  loc_10CCD6E:       End If
  loc_10CCD6E:     End If
  loc_10CCD71:   Else
  loc_10CCD77:     If (var_86 = 2) Then
  loc_10CCD8D:       var_B8 = CLng(Me.FGrid1.Col)
  loc_10CCD9D:       If (var_B8 = CLng(1)) Then
  loc_10CCDC3:         If ((Shift <> &HD) And (CBool(Me.DGRev.Visible) = 0)) Then
  loc_10CCDD4:           Call TxtGrid_KeyDown(KeyCode, global_112)
  loc_10CCE03:           Proc_6_89_1470B00(Me.TxtGrid, KeyCode, global_56, Shift, "Name", &HFF, 0)
  loc_10CCE12:         End If
  loc_10CCE15:       Else
  loc_10CCE1C:         If Not (var_B8 = CLng(3)) Then
  loc_10CCE26:           If (var_B8 = CLng(5)) Then
  loc_10CCE29:           End If
  loc_10CCE4B:           If ((Shift <> &HD) And (Me.FrmList4.Visible = 0)) Then
  loc_10CCE5C:             Call TxtGrid_KeyDown(KeyCode, global_112)
  loc_10CCE61:           End If
  loc_10CCE7C:           If (Me.FrmList4.Visible = &HFF) Then
  loc_10CCEAB:             Proc_6_64_F299E8(Me.ListView4, Me.TxtGrid, KeyCode, Shift, global_244, 0)
  loc_10CCEBB:           End If
  loc_10CCEBB:         End If
  loc_10CCEBB:       End If
  loc_10CCEBB:     End If
  loc_10CCEBB:   End If
  loc_10CCEBB: End If
  loc_10CCEBB: Exit Sub
  loc_10CCEBC: ' Referenced from: 10CCBC4
  loc_10CCEBC: Proc_6_60_E63754(var_B8, var_B4, global_244)
  loc_10CCEC1: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E429F0
  'Data Table: 5ADDB4
  Dim var_86 As Integer
  Dim arg_10 As Integer
  loc_E429BF: var_86 = Cancel
  loc_E429C8: If Not (var_86 = 0) Then
  loc_E429D1:   If Not (var_86 = 1) Then
  loc_E429DA:     If (var_86 = 2) Then
  loc_E429DD:     End If
  loc_E429DD:   End If
  loc_E429E3:   Call Proc_265_118_170C1C8(Cancel, var_88)
  loc_E429EC:   arg_10 = Not(var_88)
  loc_E429EF: End If
  loc_E429EF: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '148AA3C
  'Data Table: 5ADDB4
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_A0 As String
  loc_1489DEA: Set var_88 = Me.Txt
  loc_1489DF0: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1489DFE: Proc_183_28_E216B0(var_8C)
  loc_1489E0A: Call Proc_265_106_10506D4(var_8C)
  loc_1489E12: var_92 = Index
  loc_1489E1D: If (var_92 = CInt(1)) Then
  loc_1489E37:   If (Me.RecordCount > 0) Then
  loc_1489E45:     Set var_8C = Me.FGPoint
  loc_1489E5D:     Proc_6_137_1192FDC(Me.DGAcName, global_168, Index)
  loc_1489E6B:   End If
  loc_1489EB9:   Set var_88 = Me.Txt
  loc_1489EBF:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1489EC7:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1489EDF:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1489EE2:     Exit Sub
  loc_1489EE3:   End If
  loc_1489EF0:   Set var_88 = Me.Txt
  loc_1489EF6:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1489EFE:   var_A0 = var_8C.Text
  loc_1489F10:   var_B0 = "Name"
  loc_1489F4B:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1489F54:     Me.MoveFirst
  loc_1489F77:     Set var_88 = Me.Txt
  loc_1489F7D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1489F85:     0 = var_8C.Text
  loc_1489F9E:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1489FB3:   End If
  loc_1489FB6: Else
  loc_1489FBE:   If (var_92 = CInt(2)) Then
  loc_1489FD8:     If (Me.RecordCount > 0) Then
  loc_1489FE6:       Set var_8C = Me.FGPoint
  loc_1489FFE:       Proc_6_137_1192FDC(Me.DGUnderAc, global_180)
  loc_148A00C:     End If
  loc_148A05A:     Set var_88 = Me.Txt
  loc_148A060:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_148A068:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_148A080:     If (Index Or (var_A0 = vbNullString)) Then
  loc_148A083:       Exit Sub
  loc_148A084:     End If
  loc_148A091:     Set var_88 = Me.Txt
  loc_148A097:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_148A09F:     var_A0 = var_8C.Text
  loc_148A0B1:     var_B0 = "Name"
  loc_148A0EC:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_148A0F5:       Me.MoveFirst
  loc_148A118:       Set var_88 = Me.Txt
  loc_148A11E:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_148A126:       0 = var_8C.Text
  loc_148A13F:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_148A154:     End If
  loc_148A157:   Else
  loc_148A15F:     If (var_92 = CInt(&H24)) Then
  loc_148A179:       If (Me.RecordCount > 0) Then
  loc_148A187:         Set var_8C = Me.FGPoint
  loc_148A19F:         Proc_6_137_1192FDC(Me.DGMemMeshAc, global_176)
  loc_148A1AD:       End If
  loc_148A1FB:       Set var_88 = Me.Txt
  loc_148A201:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_148A209:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_148A221:       If (Index Or (var_A0 = vbNullString)) Then
  loc_148A224:         Exit Sub
  loc_148A225:       End If
  loc_148A232:       Set var_88 = Me.Txt
  loc_148A238:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_148A240:       var_A0 = var_8C.Text
  loc_148A252:       var_B0 = "Name"
  loc_148A28D:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_148A296:         Me.MoveFirst
  loc_148A2B9:         Set var_88 = Me.Txt
  loc_148A2BF:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_148A2C7:         0 = var_8C.Text
  loc_148A2E0:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_148A2F5:       End If
  loc_148A2F8:     Else
  loc_148A300:       If (var_92 = CInt(7)) Then
  loc_148A31A:         If (Me.RecordCount > 0) Then
  loc_148A328:           Set var_8C = Me.FGPoint
  loc_148A340:           Proc_6_137_1192FDC(Me.DgMemType, global_188)
  loc_148A34E:         End If
  loc_148A39C:         Set var_88 = Me.Txt
  loc_148A3A2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_148A3AA:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_148A3C2:         If (Index Or (var_A0 = vbNullString)) Then
  loc_148A3C5:           Exit Sub
  loc_148A3C6:         End If
  loc_148A3D3:         Set var_88 = Me.Txt
  loc_148A3D9:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_148A3E1:         var_A0 = var_8C.Text
  loc_148A3F3:         var_B0 = "Name"
  loc_148A42E:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_148A437:           Me.MoveFirst
  loc_148A45A:           Set var_88 = Me.Txt
  loc_148A460:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_148A468:           0 = var_8C.Text
  loc_148A481:           Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_148A496:         End If
  loc_148A499:       Else
  loc_148A4A1:         If (var_92 = CInt(3)) Then
  loc_148A4B1:           ReDim var_F0(0 To 3)
  loc_148A4C8:           var_F0(0) = "Mr."
  loc_148A4D7:           var_F0(1) = "Mrs."
  loc_148A4E6:           var_F0(2) = "Miss"
  loc_148A4F5:           var_F0(3) = "M/S"
  loc_148A50C:           global_228 = Array(var_F0)
  loc_148A54C:           Set global_244 = Proc_183_37_EFEF78(Me.ListView, Me.Txt, Index)
  loc_148A560:         Else
  loc_148A568:           If (var_92 = CInt(&H22)) Then
  loc_148A578:             ReDim var_F0(0 To 1)
  loc_148A58F:             var_F0(0) = "Detailed"
  loc_148A59E:             var_F0(1) = "Summerised"
  loc_148A5F5:             Set global_264 = Proc_183_37_EFEF78(Me.ListView1, Me.Txt, Index, Array(var_F0), 2)
  loc_148A609:           Else
  loc_148A611:             If (var_92 = CInt(&H31)) Then
  loc_148A621:               ReDim var_F0(0 To 1)
  loc_148A638:               var_F0(0) = "Member"
  loc_148A647:               var_F0(1) = "Membership"
  loc_148A65E:               global_248 = Array(var_F0)
  loc_148A69E:               Set global_264 = Proc_183_37_EFEF78(Me.ListView1, Me.Txt, Index, global_248, 2)
  loc_148A6B2:             Else
  loc_148A6BA:               If (var_92 = CInt(3)) Then
  loc_148A6BD:                 GoTo loc_148AA3B
  loc_148A6C0:               End If
  loc_148A6C8:               If Not (var_92 = CInt(8)) Then
  loc_148A6D3:                 If Not (var_92 = CInt(&H1A)) Then
  loc_148A6DE:                   If (var_92 = CInt(&H1B)) Then
  loc_148A6E1:                   End If
  loc_148A6E1:                 End If
  loc_148A6EE:                 ReDim var_F0(0 To 1)
  loc_148A705:                 var_F0(0) = "Yes"
  loc_148A714:                 var_F0(1) = "No"
  loc_148A76B:                 Set global_244 = Proc_183_37_EFEF78(Me.ListView, Me.Txt, Index, Array(var_F0), 2, Array(var_F0))
  loc_148A77F:               Else
  loc_148A787:                 If (var_92 = CInt(&H13)) Then
  loc_148A797:                   ReDim var_F0(0 To 1)
  loc_148A7AE:                   var_F0(0) = "Male"
  loc_148A7BD:                   var_F0(1) = "Female"
  loc_148A814:                   Set global_244 = Proc_183_37_EFEF78(Me.ListView, Me.Txt, Index, Array(var_F0), 2, Array(var_F0))
  loc_148A828:                 Else
  loc_148A830:                   If (var_92 = CInt(&H16)) Then
  loc_148A840:                     ReDim var_F0(0 To 1)
  loc_148A857:                     var_F0(0) = "Married"
  loc_148A866:                     var_F0(1) = "Single"
  loc_148A8BD:                     Set global_244 = Proc_183_37_EFEF78(Me.ListView, Me.Txt, Index, Array(var_F0), 2, Array(var_F0))
  loc_148A8D1:                   Else
  loc_148A8D9:                     If (var_92 = CInt(&H2B)) Then
  loc_148A8E9:                       ReDim var_F0(0 To 5)
  loc_148A900:                       var_F0(0) = "COMPANY ID"
  loc_148A90F:                       var_F0(1) = "DRIVING LICENCE"
  loc_148A91E:                       var_F0(2) = "GREEN CARD"
  loc_148A92D:                       var_F0(3) = "UIDAI/AADHAR CARD"
  loc_148A93C:                       var_F0(4) = "VOTER ID"
  loc_148A94B:                       var_F0(5) = "NA"
  loc_148A962:                       global_228 = Array(var_F0)
  loc_148A988:                       Set var_8C = Me.Txt
  loc_148A9A2:                       Set global_244 = Proc_6_66_F0048C(Me.ListView, var_8C, Index, global_228, 6, global_228)
  loc_148A9B6:                     Else
  loc_148A9BE:                       If (var_92 = CInt(&H23)) Then
  loc_148A9C5:                         Set var_88 = Me.TopCtrl1
  loc_148A9CB:                         Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(global_248)
  loc_148A9E4:                         If (CStr(global_248) = "Browse") Then
  loc_148A9F7:                           Set var_88 = Me.Txt
  loc_148A9FD:                           Call 0.Method_Txt_GotFocus0 (CInt(&H23), var_8C, &HC0FFFF)
  loc_148AA05:                           var_8C.BackColor = global_228
  loc_148AA21:                           Set var_88 = Me.Txt
  loc_148AA27:                           Call 0.Method_Txt_GotFocus0 (CInt(&H23), var_8C, &HFF)
  loc_148AA2F:                           var_8C.ForeColor = 4
  loc_148AA3B:                         End If
  loc_148AA3B:                       End If
  loc_148AA3B:                     End If
  loc_148AA3B:                   End If
  loc_148AA3B:                   ' Referenced from:               148A6BD
  loc_148AA3B:                 End If
  loc_148AA3B:               End If
  loc_148AA3B:             End If
  loc_148AA3B:           End If
  loc_148AA3B:         End If
  loc_148AA3B:       End If
  loc_148AA3B:     End If
  loc_148AA3B:   End If
  loc_148AA3B: End If
  loc_148AA3B: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '14E59C4
  'Data Table: 5ADDB4
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As Variant
  Dim var_BC As Variant
  Dim var_8C As Variant
  Dim var_98 As DataGrid
  Dim var_10C As Variant
  Dim var_A4 As Frame
  Dim var_11C As Variant
  Dim var_B0 As DataGrid
  Dim var_140 As String
  loc_14E4BF0: On Error Goto loc_14E595C
  loc_14E4BFD: If (CLng(Shift) = &H1B) Then
  loc_14E4C00:   Call Proc_265_106_10506D4()
  loc_14E4C05:   Exit Sub
  loc_14E4C06: End If
  loc_14E4C09: var_86 = KeyCode
  loc_14E4C14: If (var_86 = CInt(1)) Then
  loc_14E4C34:   Set var_98 = Me.FGPoint
  loc_14E4C62:   Proc_6_79_11AD564(Me.DGAcName, Me.Txt, KeyCode, global_168, Shift)
  loc_14E4CCF:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14E4CF5:     Proc_6_138_106E830(Me.DGAcName, global_168, KeyCode, Me.FGPoint, 0)
  loc_14E4D03:   End If
  loc_14E4D06: Else
  loc_14E4D0E:   If (var_86 = CInt(2)) Then
  loc_14E4D39:     Set var_98 = Nothing
  loc_14E4D67:     Proc_6_69_134A630(Me.DGUnderAc, Me.Txt, KeyCode, global_180, Shift, 0, 1)
  loc_14E4DD6:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14E4DDD:       Set var_98 = Me.DGUnderAc
  loc_14E4DFC:       Proc_6_138_106E830(var_98, global_180, KeyCode, Me.FGPoint, var_98, Me.FGPoint)
  loc_14E4E0A:     End If
  loc_14E4E0D:   Else
  loc_14E4E15:     If (var_86 = CInt(&H24)) Then
  loc_14E4E6E:       Proc_6_69_134A630(Me.DGMemMeshAc, Me.Txt, KeyCode, global_176, Shift, 0, 1, Nothing)
  loc_14E4EDD:       If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14E4F03:         Proc_6_138_106E830(Me.DGMemMeshAc, global_176, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_14E4F11:       End If
  loc_14E4F14:     Else
  loc_14E4F1C:       If (var_86 = CInt(7)) Then
  loc_14E4F2A:         Set var_A8 = Me.Txt
  loc_14E4F3C:         Set var_A0 = Me.FGPoint
  loc_14E4F75:         Proc_6_69_134A630(Me.DgMemType, var_A8, KeyCode, global_188, Shift, 0, 1, Nothing)
  loc_14E4F94:         var_AC = Me.RecordCount
  loc_14E4FE4:         If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_14E4FF2:           Set var_90 = Me.FGPoint
  loc_14E500A:           Proc_6_138_106E830(Me.DgMemType, global_188, KeyCode, var_90, var_A0, 0)
  loc_14E5018:         End If
  loc_14E501B:       Else
  loc_14E5023:         If (var_86 = CInt(3)) Then
  loc_14E5048:           Set var_8C = Me.Txt
  loc_14E504E:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_14E5056:           1 = var_90.Left
  loc_14E5068:           Set var_98 = Me.Txt
  loc_14E506E:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E5076:           var_98 = var_A0.Top
  loc_14E5088:           Set var_A4 = Me.Txt
  loc_14E508E:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E5096:           0 = var_A8.Height
  loc_14E50A8:           Set var_B0 = Me.Txt
  loc_14E50AE:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E50B6:           var_C0 = var_BC.Width
  loc_14E50FE:           Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E5125:         Else
  loc_14E512D:           If (var_86 = CInt(&H1E)) Then
  loc_14E513A:             Set var_8C = Me.Txt
  loc_14E5140:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, CInt(var_AC), CInt((var_B4 + var_B8)))
  loc_14E515B:             Proc_183_21_FA21CC(var_90, Shift, 2, 2)
  loc_14E516A:           Else
  loc_14E5172:             If (var_86 = CInt(&H28)) Then
  loc_14E517F:               Set var_8C = Me.Txt
  loc_14E5185:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, CInt(var_C0))
  loc_14E51A0:               Proc_183_21_FA21CC(var_90, Shift, 8)
  loc_14E51AF:             Else
  loc_14E51B7:               If Not (var_86 = CInt(&H33)) Then
  loc_14E51C2:                 If (var_86 = CInt(&H34)) Then
  loc_14E51C5:                 End If
  loc_14E51CF:                 Set var_8C = Me.Txt
  loc_14E51D5:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, 0)
  loc_14E51F0:                 Proc_183_21_FA21CC(var_90, Shift, 3)
  loc_14E51FF:               Else
  loc_14E5207:                 If Not (var_86 = CInt(8)) Then
  loc_14E5212:                   If Not (var_86 = CInt(&H1A)) Then
  loc_14E521D:                     If (var_86 = CInt(&H1B)) Then
  loc_14E5220:                     End If
  loc_14E5220:                   End If
  loc_14E5242:                   Set var_8C = Me.Txt
  loc_14E5248:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC)
  loc_14E5250:                   0 = var_90.Left
  loc_14E5262:                   Set var_98 = Me.Txt
  loc_14E5268:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E5270:                   1200 = var_A0.Top
  loc_14E5282:                   Set var_A4 = Me.Txt
  loc_14E5288:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8)
  loc_14E5290:                   var_B8 = var_A8.Height
  loc_14E52A2:                   Set var_B0 = Me.Txt
  loc_14E52A8:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E52B0:                   var_C0 = var_BC.Width
  loc_14E52F8:                   Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E531F:                 Else
  loc_14E5327:                   If (var_86 = CInt(&H13)) Then
  loc_14E534C:                     Set var_8C = Me.Txt
  loc_14E5352:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_14E535A:                     CInt((var_B4 + var_B8)) = var_90.Left
  loc_14E536C:                     Set var_98 = Me.Txt
  loc_14E5372:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E537A:                     CInt(var_C0) = var_A0.Top
  loc_14E538C:                     Set var_A4 = Me.Txt
  loc_14E5392:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E539A:                     600 = var_A8.Height
  loc_14E53AC:                     Set var_B0 = Me.Txt
  loc_14E53B2:                     Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E53BA:                     var_C0 = var_BC.Width
  loc_14E5402:                     Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E5429:                   Else
  loc_14E5431:                     If (var_86 = CInt(&H16)) Then
  loc_14E5456:                       Set var_8C = Me.Txt
  loc_14E545C:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_14E5464:                       CInt((var_B4 + var_B8)) = var_90.Left
  loc_14E5476:                       Set var_98 = Me.Txt
  loc_14E547C:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E5484:                       CInt(var_C0) = var_A0.Top
  loc_14E5496:                       Set var_A4 = Me.Txt
  loc_14E549C:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E54A4:                       510 = var_A8.Height
  loc_14E54B6:                       Set var_B0 = Me.Txt
  loc_14E54BC:                       Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E54C4:                       var_C0 = var_BC.Width
  loc_14E550C:                       Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E5533:                     Else
  loc_14E553B:                       If (var_86 = CInt(&H2B)) Then
  loc_14E5560:                         Set var_8C = Me.Txt
  loc_14E5566:                         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_14E556E:                         CInt((var_B4 + var_B8)) = var_90.Left
  loc_14E5580:                         Set var_98 = Me.Txt
  loc_14E5586:                         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E558E:                         CInt(var_C0) = var_A0.Top
  loc_14E55A0:                         Set var_A4 = Me.Txt
  loc_14E55A6:                         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E55AE:                         510 = var_A8.Height
  loc_14E55C0:                         Set var_B0 = Me.Txt
  loc_14E55C6:                         Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E55CE:                         var_C0 = var_BC.Width
  loc_14E5616:                         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E563D:                       Else
  loc_14E5645:                         If Not (var_86 = CInt(&H22)) Then
  loc_14E5650:                           If (var_86 = CInt(&H31)) Then
  loc_14E5653:                           End If
  loc_14E5675:                           Set var_8C = Me.Txt
  loc_14E567B:                           Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_14E5683:                           CInt((var_B4 + var_B8)) = var_90.Left
  loc_14E5695:                           Set var_98 = Me.Txt
  loc_14E569B:                           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_14E56A3:                           CInt(var_C0) = var_A0.Top
  loc_14E56B5:                           Set var_A4 = Me.Txt
  loc_14E56BB:                           Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_14E56C3:                           1560 = var_A8.Height
  loc_14E56D5:                           Set var_B0 = Me.Txt
  loc_14E56DB:                           Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_14E56E3:                           var_C0 = var_BC.Width
  loc_14E572B:                           Proc_183_36_114A39C(Me.frmList1, Me.ListView1, Me.Txt, KeyCode, Shift, arg_14)
  loc_14E574F:                         End If
  loc_14E574F:                       End If
  loc_14E574F:                     End If
  loc_14E574F:                   End If
  loc_14E574F:                 End If
  loc_14E574F:               End If
  loc_14E574F:             End If
  loc_14E574F:           End If
  loc_14E574F:         End If
  loc_14E574F:       End If
  loc_14E574F:     End If
  loc_14E574F:   End If
  loc_14E574F: End If
  loc_14E5786: var_10C = Me.DGCity.Visible
  loc_14E57CF: var_11C = Me.DgMemType.Visible
  loc_14E5847: If (((((((((CBool(Me.DGUnderAc.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) And (CBool(var_10C) = 0)) And (Me.FrmList.Visible = 0)) And (Me.frmList1.Visible = 0)) And (CBool(var_11C) = 0)) And (CBool(Me.DGUnderAc.Visible) = 0)) And (CBool(Me.DGMemMeshAc.Visible) = 0)) And (Me.Frame1.Visible = 0)) Then
  loc_14E585F:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14E5868:     Proc_6_75_E5335C(Shift, arg_14, CInt(var_AC), CInt((var_B4 + var_B8)))
  loc_14E586D:   End If
  loc_14E5871:   Set var_8C = Me.TopCtrl1
  loc_14E5877:   Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CInt(var_C0))
  loc_14E5890:   If (CStr(510) = "Add") Then
  loc_14E58A8:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_14E58B1:       Proc_6_76_E533C8(Shift, arg_14)
  loc_14E58B6:     End If
  loc_14E58B9:   Else
  loc_14E58BD:     Set var_8C = Me.TopCtrl1
  loc_14E58C3:     Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_14E58CB:     var_140 = CStr()
  loc_14E58DC:     If (var_140 = "Edit") Then
  loc_14E58F4:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_14E58FD:         Proc_6_76_E533C8(Shift)
  loc_14E5902:       End If
  loc_14E5902:     End If
  loc_14E5902:   End If
  loc_14E591D:   If (Me.Frame1.Visible = &HFF) Then
  loc_14E5935:     If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14E593E:       Proc_6_75_E5335C(Shift, arg_14)
  loc_14E5943:     End If
  loc_14E594D:     If (CLng(Shift) = &H26) Then
  loc_14E5956:       Proc_6_76_E533C8(Shift, arg_14)
  loc_14E595B:     End If
  loc_14E595B:   End If
  loc_14E595B: End If
  loc_14E595B: Exit Sub
  loc_14E595C: ' Referenced from: 14E4BF0
  loc_14E5964: Set var_8C = Err()
  loc_14E596A: Call 0.Method_arg_1C (var_AC)
  loc_14E597B: If (var_AC <> 0) Then
  loc_14E5986:   Set var_8C = Err()
  loc_14E598C:   Call 0.Method_arg_2C (var_140)
  loc_14E59AD:   MsgBox(CVar(var_140), &H40, "Validation", var_10C, var_11C)
  loc_14E59C0: End If
  loc_14E59C0: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '10FFBB0
  'Data Table: 5ADDB4
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_10FF880: On Error Goto loc_10FFB4A
  loc_10FF889: Proc_6_133_E7FB08(var_94)
  loc_10FF89E: If (CInt(var_94) = &H27) Then
  loc_10FF8A3:   arg_10 = 0
  loc_10FF8A6:   Exit Sub
  loc_10FF8A7: End If
  loc_10FF8AA: var_96 = KeyAscii
  loc_10FF8B5: If (var_96 = CInt(2)) Then
  loc_10FF8D4:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_10FF901:     Proc_183_41_145A968(Me.Txt, KeyAscii, global_180, arg_10, "Name")
  loc_10FF933:     Proc_6_138_106E830(Me.DGUnderAc, global_180, KeyAscii, Me.FGPoint, 0)
  loc_10FF941:   End If
  loc_10FF944: Else
  loc_10FF94C:   If (var_96 = CInt(&H24)) Then
  loc_10FF96B:     If (CBool(Me.DGMemMeshAc.Visible) = &HFF) Then
  loc_10FF998:       Proc_183_41_145A968(Me.Txt, KeyAscii, global_176, arg_10, "Name")
  loc_10FF9CA:       Proc_6_138_106E830(Me.DGMemMeshAc, global_176, KeyAscii, Me.FGPoint, 0)
  loc_10FF9D8:     End If
  loc_10FF9DB:   Else
  loc_10FF9E3:     If (var_96 = CInt(7)) Then
  loc_10FFA02:       If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_10FFA14:         var_A0 = "Name"
  loc_10FFA2F:         Proc_183_41_145A968(Me.Txt, KeyAscii, global_188, arg_10, var_A0)
  loc_10FFA49:         Set var_A8 = Me.FGPoint
  loc_10FFA61:         Proc_6_138_106E830(Me.DgMemType, global_188, KeyAscii, var_A8, 0)
  loc_10FFA6F:       End If
  loc_10FFA72:     Else
  loc_10FFA7A:       If (var_96 = CInt(&H1E)) Then
  loc_10FFA87:         Set var_9C = Me.Txt
  loc_10FFA8D:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_10FFAA8:         Proc_183_22_129BBAC(var_A8, arg_10, 2, 2)
  loc_10FFAB7:       Else
  loc_10FFABF:         If (var_96 = CInt(&H28)) Then
  loc_10FFACC:           Set var_9C = Me.Txt
  loc_10FFAD2:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, arg_10)
  loc_10FFAED:           Proc_183_22_129BBAC(var_A8, arg_10, 8)
  loc_10FFAFC:         Else
  loc_10FFB04:           If Not (var_96 = CInt(&H33)) Then
  loc_10FFB0F:             If (var_96 = CInt(&H34)) Then
  loc_10FFB12:             End If
  loc_10FFB1C:             Set var_9C = Me.Txt
  loc_10FFB22:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 0)
  loc_10FFB3D:             Proc_183_22_129BBAC(var_A8, arg_10, 3)
  loc_10FFB49:           End If
  loc_10FFB49:         End If
  loc_10FFB49:       End If
  loc_10FFB49:     End If
  loc_10FFB49:   End If
  loc_10FFB49: End If
  loc_10FFB49: Exit Sub
  loc_10FFB4A: ' Referenced from: 10FF880
  loc_10FFB52: Set var_9C = Err()
  loc_10FFB58: Call 0.Method_arg_1C (var_B4, 0)
  loc_10FFB69: If (var_B4 <> 0) Then
  loc_10FFB74:   Set var_9C = Err()
  loc_10FFB7A:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_10FFB9B:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_10FFBAE: End If
  loc_10FFBAE: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1105E6C
  'Data Table: 5ADDB4
  Dim var_86 As Integer
  Dim var_8C As Variant
  loc_1105B38: On Error Goto loc_1105E05
  loc_1105B3E: var_86 = KeyCode
  loc_1105B49: If (var_86 = CInt(1)) Then
  loc_1105B68:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_1105B75:     var_A0 = "Name"
  loc_1105B90:     Proc_183_32_FE97F0(Me.Txt, KeyCode, global_168)
  loc_1105BC2:     Proc_6_138_106E830(Me.DGAcName, global_168, KeyCode, Me.FGPoint)
  loc_1105BD0:   End If
  loc_1105BD3: Else
  loc_1105BDB:   If (var_86 = CInt(3)) Then
  loc_1105BF9:     If (Me.FrmList.Visible = &HFF) Then
  loc_1105C28:       Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_1105C38:     End If
  loc_1105C3B:   Else
  loc_1105C43:     If Not (var_86 = CInt(8)) Then
  loc_1105C4E:       If Not (var_86 = CInt(&H1A)) Then
  loc_1105C59:         If (var_86 = CInt(&H1B)) Then
  loc_1105C5C:         End If
  loc_1105C5C:       End If
  loc_1105C77:       If (Me.FrmList.Visible = &HFF) Then
  loc_1105CA6:         Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode, Shift, global_244)
  loc_1105CB6:       End If
  loc_1105CB9:     Else
  loc_1105CC1:       If Not (var_86 = CInt(&H13)) Then
  loc_1105CCC:         If (var_86 = CInt(&H16)) Then
  loc_1105CCF:         End If
  loc_1105CEA:         If (Me.FrmList.Visible = &HFF) Then
  loc_1105D19:           Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode, Shift, global_244)
  loc_1105D29:         End If
  loc_1105D2C:       Else
  loc_1105D34:         If (var_86 = CInt(&H2B)) Then
  loc_1105D52:           If (Me.FrmList.Visible = &HFF) Then
  loc_1105D81:             Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_244)
  loc_1105D91:           End If
  loc_1105D94:         Else
  loc_1105D9C:           If Not (var_86 = CInt(&H22)) Then
  loc_1105DA7:             If (var_86 = CInt(&H31)) Then
  loc_1105DAA:             End If
  loc_1105DC5:             If (Me.frmList1.Visible = &HFF) Then
  loc_1105DF4:               Proc_183_35_F2A594(Me.ListView1, Me.Txt, KeyCode, Shift, global_244)
  loc_1105E04:             End If
  loc_1105E04:           End If
  loc_1105E04:         End If
  loc_1105E04:       End If
  loc_1105E04:     End If
  loc_1105E04:   End If
  loc_1105E04: End If
  loc_1105E04: Exit Sub
  loc_1105E05: ' Referenced from: 1105B38
  loc_1105E0D: Set var_8C = Err()
  loc_1105E13: Call 0.Method_arg_1C (var_B4, global_244, Shift)
  loc_1105E24: If (var_B4 <> 0) Then
  loc_1105E2F:   Set var_8C = Err()
  loc_1105E35:   Call 0.Method_arg_2C (var_A0, var_A0)
  loc_1105E56:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_1105E69: End If
  loc_1105E69: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'F13C28
  'Data Table: 5ADDB4
  Dim var_8C As TextBox
  loc_F13B4A: Set var_88 = Me.Txt
  loc_F13B50: Call 0.Method_Txt_LostFocus0 (CInt(5), var_8C)
  loc_F13B70: If ((Index = CInt(5)) And (var_8C.Text = vbNullString)) Then
  loc_F13B7E:   Set var_88 = Me.Txt
  loc_F13B84:   Call 0.Method_Txt_LostFocus0 (CInt(5))
  loc_F13B8C:   var_8C.SetFocus
  loc_F13B9B: Else
  loc_F13BA3:   If (Index = CInt(&H23)) Then
  loc_F13BB6:     Set var_88 = Me.Txt
  loc_F13BBC:     Call 0.Method_Txt_LostFocus0 (CInt(&H23), var_8C)
  loc_F13BC4:     var_8C.BackColor = &HC0FFFF
  loc_F13BE0:     Set var_88 = Me.Txt
  loc_F13BE6:     Call 0.Method_Txt_LostFocus0 (CInt(&H23), var_8C)
  loc_F13BEE:     var_8C.ForeColor = &HFF
  loc_F13BFD:   Else
  loc_F13C07:     Set var_88 = Me.Txt
  loc_F13C0D:     Call 0.Method_Txt_LostFocus0 (Index, var_8C)
  loc_F13C1B:     Proc_183_27_E23198(var_8C)
  loc_F13C27:   End If
  loc_F13C27: End If
  loc_F13C27: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '157B0F0
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_9E As Integer
  Dim var_A4 As Variant
  Dim var_88 As Variant
  Dim var_AC As Variant
  Dim arg_10 As Integer
  Dim var_B0 As Variant
  Dim var_C0 As Integer
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_114 As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_A8 As Variant
  Dim Me As Variant
  Dim var_D4 As Variant
  Dim var_B8 As Recordset15
  Dim var_134 As Variant
  loc_1579FD0: Set var_88 = Me.TopCtrl1
  loc_1579FD6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1579FEF: If (CStr() = "Browse") Then
  loc_1579FF5:   var_9E = Cancel
  loc_157A000:   If Not (var_9E = CInt(&H22)) Then
  loc_157A00B:     If (var_9E = CInt(&H31)) Then
  loc_157A00E:     End If
  loc_157A01B:     Set var_88 = Me.Txt
  loc_157A021:     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A040:     If (var_A4.Text <> vbNullString) Then
  loc_157A05B:       Set var_A4 = Me.ListView1.SelectedItem
  loc_157A073:       Set var_A8 = Me.Txt
  loc_157A079:       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157A081:       var_AC.Text = var_A4.Text
  loc_157A097:     End If
  loc_157A09A:   Else
  loc_157A0A2:     If (var_9E = CInt(&H20)) Then
  loc_157A0B3:       Set var_88 = Me.Txt
  loc_157A0B9:       Call 0.Method_Txt_Validate0 (CInt(&H20), var_A4)
  loc_157A0D8:       If (var_A4.Text <> vbNullString) Then
  loc_157A0E6:         Set var_88 = Me.Txt
  loc_157A0EC:         Call 0.Method_Txt_Validate0 (CInt(&H20), var_A4)
  loc_157A0FF:         Set var_A8 = Me.Txt
  loc_157A105:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_AC)
  loc_157A120:         Set var_B0 = var_A4
  loc_157A140:         If (Proc_6_27_EA61EC(var_B0, var_AC.Text & " From") = 0) Then
  loc_157A145:           arg_10 = &HFF
  loc_157A148:           Exit Sub
  loc_157A149:         End If
  loc_157A14C:       Else
  loc_157A14E:         arg_10 = &HFF
  loc_157A151:       End If
  loc_157A15C:       Set var_88 = Me.Txt
  loc_157A162:       Call 0.Method_Txt_Validate0 (CInt(&H20), var_A4, arg_10)
  loc_157A183:       Set var_AC = Me.Txt
  loc_157A189:       Call 0.Method_Txt_Validate0 (CInt(&H20), var_B0)
  loc_157A191:       var_B0.Text = Proc_6_33_15125B8(var_A4, arg_10)
  loc_157A1A7:     Else
  loc_157A1AF:       If (var_9E = CInt(&H21)) Then
  loc_157A1C0:         Set var_88 = Me.Txt
  loc_157A1C6:         Call 0.Method_Txt_Validate0 (CInt(&H21), var_A4)
  loc_157A1E5:         If (var_A4.Text <> vbNullString) Then
  loc_157A1F3:           Set var_88 = Me.Txt
  loc_157A1F9:           Call 0.Method_Txt_Validate0 (CInt(&H21), var_A4)
  loc_157A20C:           Set var_A8 = Me.Txt
  loc_157A212:           Call 0.Method_Txt_Validate0 (CInt(&H22), var_AC)
  loc_157A22D:           Set var_B0 = var_A4
  loc_157A24D:           If (Proc_183_19_E8E68C(var_B0, var_AC.Text & " From") = 0) Then
  loc_157A252:             arg_10 = &HFF
  loc_157A255:             Exit Sub
  loc_157A256:           End If
  loc_157A259:         Else
  loc_157A25B:           arg_10 = &HFF
  loc_157A25E:         End If
  loc_157A269:         Set var_88 = Me.Txt
  loc_157A26F:         Call 0.Method_Txt_Validate0 (CInt(&H21), var_A4, arg_10)
  loc_157A290:         Set var_AC = Me.Txt
  loc_157A296:         Call 0.Method_Txt_Validate0 (CInt(&H21), var_B0)
  loc_157A29E:         var_B0.Text = Proc_6_33_15125B8(var_A4, arg_10)
  loc_157A2B4:       Else
  loc_157A2BC:         If (var_9E = CInt(&H32)) Then
  loc_157A2CD:           Set var_88 = Me.Txt
  loc_157A2D3:           Call 0.Method_Txt_Validate0 (CInt(&H32), var_A4)
  loc_157A2F2:           If (var_A4.Text <> vbNullString) Then
  loc_157A300:             Set var_88 = Me.Txt
  loc_157A306:             Call 0.Method_Txt_Validate0 (CInt(&H32), var_A4)
  loc_157A319:             Set var_A8 = Me.Txt
  loc_157A31F:             Call 0.Method_Txt_Validate0 (CInt(&H22), var_AC)
  loc_157A33A:             Set var_B0 = var_A4
  loc_157A35A:             If (Proc_183_19_E8E68C(var_B0, var_AC.Text & vbNullString) = 0) Then
  loc_157A35F:               arg_10 = &HFF
  loc_157A362:               Exit Sub
  loc_157A363:             End If
  loc_157A366:           Else
  loc_157A368:             arg_10 = &HFF
  loc_157A36B:           End If
  loc_157A376:           Set var_88 = Me.Txt
  loc_157A37C:           Call 0.Method_Txt_Validate0 (CInt(&H32), var_A4, arg_10)
  loc_157A39D:           Set var_AC = Me.Txt
  loc_157A3A3:           Call 0.Method_Txt_Validate0 (CInt(&H32), var_B0)
  loc_157A3AB:           var_B0.Text = Proc_6_33_15125B8(var_A4, arg_10)
  loc_157A3BE:         End If
  loc_157A3BE:       End If
  loc_157A3BE:     End If
  loc_157A3BE:   End If
  loc_157A3BE:   Exit Sub
  loc_157A3BF: End If
  loc_157A3C2: var_C0 = Cancel
  loc_157A3CD: If (var_C0 = CInt(1)) Then
  loc_157A3D3:   Call Proc_265_97_10F8BE4(var_C2, var_C0)
  loc_157A3DE:   If (var_C2 = &HFF) Then
  loc_157A3E3:     arg_10 = &HFF
  loc_157A3E6:     Exit Sub
  loc_157A3E7:   End If
  loc_157A3EA: Else
  loc_157A3F2:   If (var_C0 = CInt(6)) Then
  loc_157A3F8:     Call Proc_265_98_1089BA8(var_C2, arg_10)
  loc_157A403:     If (var_C2 = &HFF) Then
  loc_157A408:       arg_10 = &HFF
  loc_157A40B:       Exit Sub
  loc_157A40C:     End If
  loc_157A40F:   Else
  loc_157A417:     If (var_C0 = CInt(5)) Then
  loc_157A425:       Set var_88 = Me.Txt
  loc_157A42B:       Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_157A43C:       Set var_A8 = var_A4
  loc_157A454:       If (Proc_183_19_E8E68C(var_A8, "Application No.") = 0) Then
  loc_157A457:         Exit Sub
  loc_157A458:       End If
  loc_157A483:       Set var_88 = Me.Txt
  loc_157A489:       Call 0.Method_Txt_Validate0 (Cancel, var_A4, "Select Count(*) from SubGroup where AppNo='", var_134, -1, var_A8)
  loc_157A4A0:       var_F4 = var_AC & Trim(CVar(var_A4)) 
  loc_157A4A9:       var_114 = var_F4 & "'" 
  loc_157A4B7:       unk_5ADE1E.Execute CStr(var_114), 0, var_B0
  loc_157A4C7:       var_9E = var_AC.Item(arg_10)
  loc_157A4CF:        = var_B0.Value
  loc_157A4FC:       If (var_A8.Fields > 0) Then
  loc_157A50D:         Set var_88 = Me.Txt
  loc_157A513:         Call 0.Method_Txt_Validate0 (CInt(5), var_A4)
  loc_157A51B:         var_A4.Text = vbNullString
  loc_157A548:         MsgBox("Application No. Already Exists", &H40, "Validation", var_F4, var_114)
  loc_157A558:       End If
  loc_157A55B:     Else
  loc_157A563:       If (var_C0 = CInt(2)) Then
  loc_157A573:         Set var_88 = Me.Txt
  loc_157A579:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A598:         If (var_A4.Text = vbNullString) Then
  loc_157A59B:           Exit Sub
  loc_157A59C:         End If
  loc_157A5EA:         Set var_88 = Me.Txt
  loc_157A5F0:         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A610:         If (((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Or (var_A4.Text <> vbNullString)) Then
  loc_157A652:           var_D4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value 
  loc_157A669:           unk_5ADE1E.Execute CStr(var_D4 & "'"), var_114, -1
  loc_157A674:           Set var_B8 = var_A8
  loc_157A6A2:           If (var_B8.RecordCount > 0) Then
  loc_157A6AC:             global_156 = CByte(1)
  loc_157A6FE:             var_AC = var_B8.Fields.Item("GroupNature")
  loc_157A730:             If CBool((var_B8.Fields.Item("GroupNature").Value = "A") Or (var_AC.Value = "L")) Then
  loc_157A73A:               global_156 = CByte(1)
  loc_157A741:             Else
  loc_157A748:               global_156 = CByte(0)
  loc_157A74C:               ' Referenced from:         157A865
  loc_157A74C:             End If
  loc_157A75B:             If Not(var_B8.EOF) Then
  loc_157A79A:               If (var_B8.Fields.Item("AliasYN").Value = "N") Then
  loc_157A7DA:                 Set var_A8 = Me.Txt
  loc_157A7E0:                 Call 0.Method_Txt_Validate0 (CInt(2), var_AC, CStr(Trim(CVar(var_B8.Fields.Item("GroupName")))), global_156)
  loc_157A7E8:                 var_AC.Text = global_156
  loc_157A81A:                 var_A4 = var_B8.Fields.Item("GroupCode")
  loc_157A82B:                 var_9C = CStr(var_A4.Value)
  loc_157A839:                 Set var_A8 = Me.Txt
  loc_157A83F:                 Call 0.Method_Txt_Validate0 (CInt(2), var_AC, var_9C)
  loc_157A847:                 var_AC.Tag = global_156
  loc_157A85D:               End If
  loc_157A860:               var_B8.MoveNext
  loc_157A865:               GoTo loc_157A74C
  loc_157A868:             End If
  loc_157A868:           End If
  loc_157A868:         End If
  loc_157A86B:       Else
  loc_157A873:         If (var_C0 = CInt(&H24)) Then
  loc_157A880:           Set var_88 = Me.Txt
  loc_157A886:           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A8AF:           If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_157A8BF:             Set var_88 = Me.Txt
  loc_157A8C5:             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157A8CD:             var_A4.Tag = vbNullString
  loc_157A8D9:           End If
  loc_157A91A:           var_104 = ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF)))
  loc_157A92B:           Set var_88 = Me.Txt
  loc_157A931:           Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_9C)
  loc_157A939:           var_104 = var_A4.Text
  loc_157A96F:           If CBool(var_A8 Or (Trim(CVar(var_9C)) = vbNullString)) Then
  loc_157A972:             Exit Sub
  loc_157A973:           End If
  loc_157A9AB:           Set var_A8 = Me.Txt
  loc_157A9B1:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157A9B9:           var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_157A9E7:           var_A4 = Me.Fields.Item("Code")
  loc_157AA05:           Set var_A8 = Me.Txt
  loc_157AA0B:           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157AA13:           var_AC.Tag = Proc_6_38_E69628(CVar(var_A4))
  loc_157AA2A:         Else
  loc_157AA32:           If Not (var_C0 = CInt(&H14)) Then
  loc_157AA3D:             If (var_C0 = CInt(&H18)) Then
  loc_157AA40:             End If
  loc_157AA4A:             Set var_88 = Me.Txt
  loc_157AA50:             Call 0.Method_Txt_Validate0 (Cancel)
  loc_157AA70:             Set var_AC = Me.Txt
  loc_157AA76:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_157AA7E:             var_B0.Text = Proc_6_33_15125B8(var_A4)
  loc_157AA94:           Else
  loc_157AA9C:             If (var_C0 = CInt(&H1C)) Then
  loc_157AAA9:               Set var_88 = Me.Txt
  loc_157AAAF:               Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157AACF:               Set var_AC = Me.Txt
  loc_157AAD5:               Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_157AADD:               var_B0.Text = Proc_6_33_15125B8(var_A4)
  loc_157AAF3:             Else
  loc_157AAFB:               If Not (var_C0 = CInt(&H2D)) Then
  loc_157AB06:                 If (var_C0 = CInt(&H30)) Then
  loc_157AB09:                 End If
  loc_157AB13:                 Set var_88 = Me.Txt
  loc_157AB19:                 Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157AB39:                 Set var_AC = Me.Txt
  loc_157AB3F:                 Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_157AB47:                 var_B0.Text = Proc_6_33_15125B8(var_A4)
  loc_157AB5D:               Else
  loc_157AB65:                 If (var_C0 = CInt(3)) Then
  loc_157AB75:                   Set var_88 = Me.Txt
  loc_157AB7B:                   Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157AB9A:                   If (var_A4.Text <> vbNullString) Then
  loc_157ABB5:                     Set var_A4 = Me.ListView.SelectedItem
  loc_157ABCD:                     Set var_A8 = Me.Txt
  loc_157ABD3:                     Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157ABDB:                     var_AC.Text = var_A4.Text
  loc_157ABF1:                   End If
  loc_157ABF4:                 Else
  loc_157ABFC:                   If Not (var_C0 = CInt(8)) Then
  loc_157AC07:                     If (var_C0 = CInt(&H1A)) Then
  loc_157AC0A:                     End If
  loc_157AC17:                     Set var_88 = Me.Txt
  loc_157AC1D:                     Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157AC3C:                     If (var_A4.Text <> vbNullString) Then
  loc_157AC57:                       Set var_A4 = Me.ListView.SelectedItem
  loc_157AC6F:                       Set var_A8 = Me.Txt
  loc_157AC75:                       Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157AC7D:                       var_AC.Text = var_A4.Text
  loc_157AC93:                     End If
  loc_157AC96:                   Else
  loc_157AC9E:                     If (var_C0 = CInt(&H1B)) Then
  loc_157ACAE:                       Set var_88 = Me.Txt
  loc_157ACB4:                       Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157ACD3:                       If (var_A4.Text <> vbNullString) Then
  loc_157ACEE:                         Set var_A4 = Me.ListView.SelectedItem
  loc_157AD06:                         Set var_A8 = Me.Txt
  loc_157AD0C:                         Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157AD14:                         var_AC.Text = var_A4.Text
  loc_157AD2A:                       End If
  loc_157AD38:                       Set var_88 = Me.Txt
  loc_157AD3E:                       Call 0.Method_Txt_Validate0 (CInt(&H1B), var_A4)
  loc_157AD5D:                       If (var_A4.Text = "Yes") Then
  loc_157AD6C:                         Me.FrBlackListed.Visible = True
  loc_157AD7F:                         Set var_88 = Me.Txt
  loc_157AD85:                         Call 0.Method_Txt_Validate0 (CInt(&H1D), var_A4)
  loc_157AD8D:                         var_A4.SetFocus
  loc_157AD9C:                       Else
  loc_157ADA8:                         Me.FrBlackListed.Visible = False
  loc_157ADB0:                       End If
  loc_157ADB3:                     Else
  loc_157ADBB:                       If Not (var_C0 = CInt(&H13)) Then
  loc_157ADC6:                         If (var_C0 = CInt(&H16)) Then
  loc_157ADC9:                         End If
  loc_157ADD6:                         Set var_88 = Me.Txt
  loc_157ADDC:                         Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157ADFB:                         If (var_A4.Text <> vbNullString) Then
  loc_157AE16:                           Set var_A4 = Me.ListView.SelectedItem
  loc_157AE1C:                           var_9C = var_A4.Text
  loc_157AE2E:                           Set var_A8 = Me.Txt
  loc_157AE34:                           Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157AE3C:                           var_AC.Text = var_9C
  loc_157AE52:                         End If
  loc_157AE55:                       Else
  loc_157AE5D:                         If (var_C0 = CInt(7)) Then
  loc_157AE6A:                           Set var_88 = Me.Txt
  loc_157AE70:                           Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157AE99:                           If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_157AEA9:                             Set var_88 = Me.Txt
  loc_157AEAF:                             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157AEB7:                             var_A4.Tag = vbNullString
  loc_157AEC3:                           End If
  loc_157AF04:                           var_104 = ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF)))
  loc_157AF15:                           Set var_88 = Me.Txt
  loc_157AF1B:                           Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_9C)
  loc_157AF23:                           var_104 = var_A4.Text
  loc_157AF59:                           If CBool(var_A4 Or (Trim(CVar(var_9C)) = vbNullString)) Then
  loc_157AF69:                             Set var_88 = Me.Txt
  loc_157AF6F:                             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157AF77:                             var_A4.Text = vbNullString
  loc_157AF90:                             Set var_88 = Me.Txt
  loc_157AF96:                             Call 0.Method_Txt_Validate0 (Cancel, var_A4)
  loc_157AF9E:                             var_A4.Tag = vbNullString
  loc_157AFB0:                             global_68 = vbNullString
  loc_157AFC0:                             Me.LblMessAc.Visible = False
  loc_157AFD5:                             Set var_88 = Me.Txt
  loc_157AFDB:                             Call 0.Method_Txt_Validate0 (CInt(&H24), var_A4)
  loc_157AFE3:                             var_A4.Visible = False
  loc_157AFF2:                           Else
  loc_157B02A:                             Set var_A8 = Me.Txt
  loc_157B030:                             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157B038:                             var_AC.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Name")))
  loc_157B084:                             Set var_A8 = Me.Txt
  loc_157B08A:                             Call 0.Method_Txt_Validate0 (Cancel, var_AC)
  loc_157B092:                             var_AC.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("Code")))
  loc_157B0D7:                             global_68 = Proc_6_38_E69628(CVar(Me.Fields.Item("Corporate")))
  loc_157B0E4:                           End If
  loc_157B0E4:                         End If
  loc_157B0E4:                       End If
  loc_157B0E4:                     End If
  loc_157B0E4:                   End If
  loc_157B0E4:                 End If
  loc_157B0E4:               End If
  loc_157B0E4:             End If
  loc_157B0E4:           End If
  loc_157B0E4:         End If
  loc_157B0E4:       End If
  loc_157B0E4:     End If
  loc_157B0E4:   End If
  loc_157B0E4: End If
  loc_157B0E9: Set var_B8 = Nothing
  loc_157B0EC: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_0 'EAEA24
  'Data Table: 5ADDB4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_EAE9A7: Me.FAGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EAE9BA: Set var_A8 = Me.TxtGrid
  loc_EAE9C0: Call 0.Method_FAGrid_UnknownEvent_00 (0, var_AC)
  loc_EAE9C8: var_AC.Visible = False
  loc_EAE9D4: Call Proc_265_106_10506D4()
  loc_EAE9FA: If (CLng(global_272) <> CLng(Me.FAGrid.Row)) Then
  loc_EAEA1D:   Call Proc_265_121_132A5A4(CInt(CLng(Me.FAGrid.Row)))
  loc_EAEA22: End If
  loc_EAEA22: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_1 'E67BA0
  'Data Table: 5ADDB4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E67B5C: Set var_88 = Me.TxtGrid
  loc_E67B62: Call 0.Method_FAGrid_UnknownEvent_10 (0, var_8C)
  loc_E67B7C: If (var_8C.Visible = 0) Then
  loc_E67B95:   Me.FAGrid.BackColorSel = CVar(CLng(global_280))
  loc_E67B9D: End If
  loc_E67B9D: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_9 'DFEADC
  'Data Table: 5ADDB4
  Dim arg_3CFF As Double
  loc_DFEAD4: Call Proc_265_120_DFE568()
  loc_DFEAD9: Exit Sub
  loc_DFEADA: arg_3CFF = 
End Sub

Private Sub FAGrid_UnknownEvent_A '1051430
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_10511D0: Set var_88 = Me.TopCtrl1
  loc_10511D6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105121B: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1051224:   Call Form_KeyDown(Cancel, arg_10)
  loc_1051229: End If
  loc_105122D: Set var_88 = Me.TopCtrl1
  loc_1051233: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105124C: If (CStr() = "Browse") Then
  loc_105124F:   Exit Sub
  loc_1051250: End If
  loc_10512C4: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FAGrid.Tag))) = CDbl((CLng(Me.FAGrid.Rows) - (CLng(Me.FAGrid.Rows) - 1))))) Then
  loc_10512DD:   Me.FAGrid.CellBackColor = CVar(CLng(global_280))
  loc_10512ED:   var_9C = "+{Tab}"
  loc_10512F3:   Proc_303_0_FBACC8(CStr(Me.FAGrid.Tag), 0)
  loc_10512FD:   Cancel = 0
  loc_1051303: Else
  loc_105130D:   var_B0 = Me.FAGrid.Rows
  loc_105135A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FAGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1051373:     Me.FAGrid.CellBackColor = CVar(CLng(global_280))
  loc_1051389:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_1051393:     Cancel = 0
  loc_1051396:   End If
  loc_1051396: End If
  loc_105139C: global_112 = Cancel
  loc_10513C2: Me.FAGrid.Tag = CVar(CStr(CLng(Me.FAGrid.Row)))
  loc_10513E6: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_10513FC:   var_EC = CLng(Me.FAGrid.Col)
  loc_1051405: End If
  loc_105140F: If (CLng(Cancel) = &HD) Then
  loc_105141B:   Call FAGrid_UnknownEvent_C()
  loc_1051425:   global_110 = 0
  loc_1051428: End If
  loc_105142A: Cancel = 0
  loc_105142D: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_B 'E156B8
  'Data Table: 5ADDB4
  loc_E156A9: Call FAGrid_UnknownEvent_C()
  loc_E156B3: global_110 = 0
  loc_E156B6: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_C '116B62C
  'Data Table: 5ADDB4
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_E0 As Variant
  Dim var_100 As Variant
  Dim Cancel As Integer
  Dim var_134 As Long
  loc_116B278: Set var_88 = Me.TopCtrl1
  loc_116B27E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_116B297: If (CStr() = "Browse") Then
  loc_116B29A:   Exit Sub
  loc_116B29B: End If
  loc_116B2AE: var_AC = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_116B2B6: var_CC = CVar(CLng(3)) 'Long
  loc_116B2BF: Set var_E0 = Me.FAGrid
  loc_116B2D0: var_100 = CVar(CStr(var_E0.TextMatrix))) 'String
  loc_116B2D6: var_110 = Ucase(var_100)
  loc_116B2F8: If (var_110 = "MEMBER") Then
  loc_116B31C:   MsgBox("Can't Change Member Information From Grid.", &H40, "Validation", var_100, var_110)
  loc_116B32E:   Cancel = 0
  loc_116B331: End If
  loc_116B344: var_134 = CLng(Me.FAGrid.Col)
  loc_116B354: If (var_134 = CLng(3)) Then
  loc_116B365:   Set var_88 = Me.TxtGrid
  loc_116B36B:   Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, &HF, var_134)
  loc_116B373:   var_E0.MaxLength = Cancel
  loc_116B3AB:   Set var_E0 = Me.FAGrid
  loc_116B3BD:   Proc_6_63_110B734(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_116B3D2: Else
  loc_116B3D9:   If Not (var_134 = CLng(4)) Then
  loc_116B3E3:     If (var_134 = CLng(6)) Then
  loc_116B3E6:     End If
  loc_116B3F4:     Set var_88 = Me.TxtGrid
  loc_116B3FA:     Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, 6, Cancel)
  loc_116B402:     var_E0.MaxLength = 0
  loc_116B43A:     Set var_E0 = Me.FAGrid
  loc_116B44C:     Proc_6_63_110B734(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_116B461:   Else
  loc_116B468:     If Not (var_134 = CLng(5)) Then
  loc_116B472:       If Not (var_134 = CLng(&HC)) Then
  loc_116B47C:         If Not (var_134 = CLng(&HE)) Then
  loc_116B486:           If (var_134 = CLng(&H18)) Then
  loc_116B489:           End If
  loc_116B489:         End If
  loc_116B489:       End If
  loc_116B497:       Set var_88 = Me.TxtGrid
  loc_116B49D:       Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, &H32, Cancel)
  loc_116B4A5:       var_E0.MaxLength = 0
  loc_116B4DD:       Set var_E0 = Me.FAGrid
  loc_116B4EF:       Proc_6_63_110B734(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_116B504:     Else
  loc_116B50B:       If Not (var_134 = CLng(8)) Then
  loc_116B515:         If (var_134 = CLng(&HA)) Then
  loc_116B518:         End If
  loc_116B526:         Set var_88 = Me.TxtGrid
  loc_116B52C:         Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, &HB, Cancel)
  loc_116B534:         var_E0.MaxLength = 0
  loc_116B56C:         Set var_E0 = Me.FAGrid
  loc_116B57E:         Proc_6_63_110B734(Me, var_E0, Me.TxtGrid, 0, 0)
  loc_116B593:       Else
  loc_116B59A:         If (var_134 = CLng(&H1D)) Then
  loc_116B5AB:           Set var_88 = Me.TxtGrid
  loc_116B5B1:           Call 0.Method_FAGrid_UnknownEvent_C0 (0, var_E0, 3, Cancel)
  loc_116B5B9:           var_E0.MaxLength = 0
  loc_116B603:           Proc_6_63_110B734(Me, Me.FAGrid, Me.TxtGrid, 0, 0)
  loc_116B615:         End If
  loc_116B615:       End If
  loc_116B615:     End If
  loc_116B615:   End If
  loc_116B615: End If
  loc_116B61F: If (CLng(Cancel) <> &HD) Then
  loc_116B627:   global_110 = &HFF
  loc_116B62A: End If
  loc_116B62A: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_D '111F598
  'Data Table: 5ADDB4
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_B0 As Variant
  Dim var_E0 As Variant
  Dim var_114 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim var_110 As Variant
  Dim var_1A8 As Integer
  Dim var_170 As String
  Dim unk_5ADDE0 As Connection15
  Dim var_194 As Recordset15
  Dim var_198 As Fields15
  Dim var_1AC As Field20
  loc_111F270: Set var_88 = Me.TopCtrl1
  loc_111F276: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_111F28F: If (CStr() = "Browse") Then
  loc_111F292:   Exit Sub
  loc_111F293: End If
  loc_111F2B0: If (CLng(Me.FAGrid.ColSel) = CLng(0)) Then
  loc_111F2B3:   Exit Sub
  loc_111F2B4: End If
  loc_111F2C5: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_111F2E7:   If (CLng(Me.FAGrid.Row) >= 1) Then
  loc_111F321:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_111F337:       var_B0 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_111F33F:       var_E0 = CVar(CLng(2)) 'Long
  loc_111F364:       var_F0 = Me.FAGrid.Row
  loc_111F36D:       var_12C = CVar(CLng(var_F0)) 'Long
  loc_111F375:       var_14C = CVar(CLng(1)) 'Long
  loc_111F384:       var_110 = Me.FAGrid.TextMatrix)
  loc_111F3A0:       var_1A8 = 0
  loc_111F3D4:       var_170 = "Select Count(*) From MemberFamily Where HW_ID<>'' And Subcode='" & CStr(Me.FAGrid.TextMatrix)) & "' And SNo=" & CStr(Val(CStr(var_110)))
  loc_111F3DD:       unk_5ADDE0.Execute var_170, var_190, -1
  loc_111F3E5:       var_194 = var_194.Fields
  loc_111F3ED:       var_1A8 = var_198.Item(var_198)
  loc_111F3F5:       var_1AC = var_1AC.Value
  loc_111F434:       If (var_1BC > 0) Then
  loc_111F458:         MsgBox("Can't Delete Information Smart Card Issued.", &H10, "Validation Error", var_F0, var_110)
  loc_111F46C:         Set var_88 = Me.FAGrid
  loc_111F47D:         Exit Sub
  loc_111F47E:       End If
  loc_111F49D:       If (CLng(Me.FAGrid.Rows) > 2) Then
  loc_111F4B3:         var_B0 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_111F4BC:         Set var_114 = Me.FAGrid
  loc_111F4D7:       Else
  loc_111F4D7:         var_B0 = 1
  loc_111F4EA:         Me.FAGrid.Rows = var_B0
  loc_111F510:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FAGrid, CInt(0), FAGrid.DispID_10000, var_B0, FAGrid.DispID_8001, var_1BC))) 'String
  loc_111F518:         Set var_114 = Me.FAGrid
  loc_111F545:         Me.FAGrid.FixedRows = 1
  loc_111F54D:       End If
  loc_111F54D:     End If
  loc_111F550:   Else
  loc_111F571:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_111F581:   End If
  loc_111F585:   Set var_88 = Me.FAGrid
  loc_111F596: End If
  loc_111F596: Exit Sub
  loc_111F597: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_12 'E636D4
  'Data Table: 5ADDB4
  loc_E636A9: If (CLng(global_272) <> CLng(Me.FAGrid.Row)) Then
  loc_E636CC:   Call Proc_265_121_132A5A4(CInt(CLng(Me.FAGrid.Row)))
  loc_E636D1: End If
  loc_E636D1: Exit Sub
End Sub

Private Sub FAGrid_UnknownEvent_15 'E431B8
  'Data Table: 5ADDB4
  Dim var_8C As TextBox
  loc_E4318C: Call Proc_265_106_10506D4()
  loc_E4319C: Set var_88 = Me.TxtGrid
  loc_E431A2: Call 0.Method_FAGrid_UnknownEvent_150 (0, var_8C)
  loc_E431AA: var_8C.Visible = False
  loc_E431B6: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_0 'EADD64
  'Data Table: 5ADDB4
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_EADCE7: Me.FPGrid.BackColorSel = CVar(CLng("14737632"))
  loc_EADCFA: Set var_A8 = Me.TxtGrid
  loc_EADD00: Call 0.Method_FPGrid_UnknownEvent_00 (1, var_AC)
  loc_EADD08: var_AC.Visible = False
  loc_EADD14: Call Proc_265_106_10506D4()
  loc_EADD3A: If (CLng(global_274) <> CLng(Me.FPGrid.Row)) Then
  loc_EADD5D:   Call Proc_265_122_132B58C(CInt(CLng(Me.FPGrid.Row)))
  loc_EADD62: End If
  loc_EADD62: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_1 'E69EB0
  'Data Table: 5ADDB4
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E69E6C: Set var_88 = Me.TxtGrid
  loc_E69E72: Call 0.Method_FPGrid_UnknownEvent_10 (1, var_8C)
  loc_E69E8C: If (var_8C.Visible = 0) Then
  loc_E69EA5:   Me.FPGrid.BackColorSel = CVar(CLng(global_280))
  loc_E69EAD: End If
  loc_E69EAD: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_9 'E00BAC
  'Data Table: 5ADDB4
  loc_E00BA4: Call Proc_265_95_DFDDB0()
  loc_E00BA9: Exit Sub
  loc_E00BAA: CExtInstUnk
End Sub

Private Sub FPGrid_UnknownEvent_A '1050C20
  'Data Table: 5ADDB4
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_EC As Long
  loc_10509C0: Set var_88 = Me.TopCtrl1
  loc_10509C6: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1050A0B: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_1050A14:   Call Form_KeyDown(Cancel, arg_10)
  loc_1050A19: End If
  loc_1050A1D: Set var_88 = Me.TopCtrl1
  loc_1050A23: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1050A3C: If (CStr() = "Browse") Then
  loc_1050A3F:   Exit Sub
  loc_1050A40: End If
  loc_1050AB4: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FPGrid.Tag))) = CDbl((CLng(Me.FPGrid.Rows) - (CLng(Me.FPGrid.Rows) - 1))))) Then
  loc_1050ACD:   Me.FPGrid.CellBackColor = CVar(CLng(global_280))
  loc_1050ADD:   var_9C = "+{Tab}"
  loc_1050AE3:   Proc_303_0_FBACC8(CStr(Me.FPGrid.Tag), 0)
  loc_1050AED:   Cancel = 0
  loc_1050AF3: Else
  loc_1050AFD:   var_B0 = Me.FPGrid.Rows
  loc_1050B4A:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FPGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1050B63:     Me.FPGrid.CellBackColor = CVar(CLng(global_280))
  loc_1050B79:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_1050B83:     Cancel = 0
  loc_1050B86:   End If
  loc_1050B86: End If
  loc_1050B8C: global_112 = Cancel
  loc_1050BB2: Me.FPGrid.Tag = CVar(CStr(CLng(Me.FPGrid.Row)))
  loc_1050BD6: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1050BEC:   var_EC = CLng(Me.FPGrid.Col)
  loc_1050BF5: End If
  loc_1050BFF: If (CLng(Cancel) = &HD) Then
  loc_1050C0B:   Call FPGrid_UnknownEvent_C()
  loc_1050C15:   global_110 = 0
  loc_1050C18: End If
  loc_1050C1A: Cancel = 0
  loc_1050C1D: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_B 'E15790
  'Data Table: 5ADDB4
  loc_E15781: Call FPGrid_UnknownEvent_C()
  loc_E1578B: global_110 = 0
  loc_E1578E: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_C '1055D4C
  'Data Table: 5ADDB4
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  loc_1055AE4: Set var_88 = Me.TopCtrl1
  loc_1055AEA: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1055B03: If (CStr() = "Browse") Then
  loc_1055B06:   Exit Sub
  loc_1055B07: End If
  loc_1055B1A: var_A0 = CLng(Me.FPGrid.Col)
  loc_1055B2A: If (var_A0 = CLng(4)) Then
  loc_1055B3B:   Set var_88 = Me.TxtGrid
  loc_1055B41:   Call 0.Method_FPGrid_UnknownEvent_C0 (1, var_A4)
  loc_1055B49:   var_A4.MaxLength = 8
  loc_1055B81:   Set var_A4 = Me.FPGrid
  loc_1055B93:   Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 1)
  loc_1055BA8: Else
  loc_1055BAF:   If (var_A0 = CLng(5)) Then
  loc_1055BC0:     Set var_88 = Me.TxtGrid
  loc_1055BC6:     Call 0.Method_FPGrid_UnknownEvent_C0 (1, var_A4, &H19, 0)
  loc_1055BCE:     var_A4.MaxLength = Cancel
  loc_1055C06:     Set var_A4 = Me.FPGrid
  loc_1055C18:     Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 1, 0)
  loc_1055C2D:   Else
  loc_1055C34:     If (var_A0 = CLng(7)) Then
  loc_1055C45:       Set var_88 = Me.TxtGrid
  loc_1055C4B:       Call 0.Method_FPGrid_UnknownEvent_C0 (1, var_A4, &H4B, Cancel)
  loc_1055C53:       var_A4.MaxLength = 0
  loc_1055C8B:       Set var_A4 = Me.FPGrid
  loc_1055C9D:       Proc_6_63_110B734(Me, var_A4, Me.TxtGrid, 1, 0)
  loc_1055CB2:     Else
  loc_1055CB9:       If (var_A0 = CLng(&HE)) Then
  loc_1055CCA:         Set var_88 = Me.TxtGrid
  loc_1055CD0:         Call 0.Method_FPGrid_UnknownEvent_C0 (1, var_A4, 3, Cancel)
  loc_1055CD8:         var_A4.MaxLength = 0
  loc_1055D22:         Proc_6_63_110B734(Me, Me.FPGrid, Me.TxtGrid, 1, 0)
  loc_1055D34:       End If
  loc_1055D34:     End If
  loc_1055D34:   End If
  loc_1055D34: End If
  loc_1055D3E: If (CLng(Cancel) <> &HD) Then
  loc_1055D46:   global_110 = &HFF
  loc_1055D49: End If
  loc_1055D49: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_D 'FE3DE8
  'Data Table: 5ADDB4
  Dim var_88 As MSHFlexGrid
  Dim var_98 As Variant
  Dim var_B0 As Variant
  loc_FE3C18: Set var_88 = Me.TopCtrl1
  loc_FE3C1E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE3C37: If (CStr() = "Browse") Then
  loc_FE3C3A:   Exit Sub
  loc_FE3C3B: End If
  loc_FE3C58: If (CLng(Me.FPGrid.ColSel) = CLng(0)) Then
  loc_FE3C5B:   Exit Sub
  loc_FE3C5C: End If
  loc_FE3C6D: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE3C8F:   If (CLng(Me.FPGrid.Row) >= 1) Then
  loc_FE3CC9:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FE3CEB:       If (CLng(Me.FPGrid.Rows) > 2) Then
  loc_FE3D01:         var_B0 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_FE3D0A:         Set var_114 = Me.FPGrid
  loc_FE3D25:       Else
  loc_FE3D38:         Me.FPGrid.Rows = 1
  loc_FE3D5E:         var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FPGrid, CInt(0)))) 'String
  loc_FE3D66:         Set var_114 = Me.FPGrid
  loc_FE3D93:         Me.FPGrid.FixedRows = 1
  loc_FE3D9B:       End If
  loc_FE3D9B:     End If
  loc_FE3D9E:   Else
  loc_FE3DBF:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_FE3DCF:   End If
  loc_FE3DD3:   Set var_88 = Me.FPGrid
  loc_FE3DE4: End If
  loc_FE3DE4: Exit Sub
  loc_FE3DE5: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_12 'E647D8
  'Data Table: 5ADDB4
  loc_E647AD: If (CLng(global_274) <> CLng(Me.FPGrid.Row)) Then
  loc_E647D0:   Call Proc_265_122_132B58C(CInt(CLng(Me.FPGrid.Row)))
  loc_E647D5: End If
  loc_E647D5: Exit Sub
End Sub

Private Sub FPGrid_UnknownEvent_15 'E424D4
  'Data Table: 5ADDB4
  Dim var_8C As TextBox
  loc_E424A8: Call Proc_265_106_10506D4()
  loc_E424B8: Set var_88 = Me.TxtGrid
  loc_E424BE: Call 0.Method_FPGrid_UnknownEvent_150 (1, var_8C)
  loc_E424C6: var_8C.Visible = False
  loc_E424D2: Exit Sub
End Sub

Private Sub CmdImgDelete_Click() 'FACBC8
  'Data Table: 5ADDB4
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_DC As CommandButton
  Dim var_E4 As CommandButton
  Dim var_A8 As String
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim MemVar_66396C As Integer
  loc_FACA46: Set var_88 = Me.CmdImgDelete
  loc_FACA4C: var_88.Visible = False
  loc_FACA72: Me.Global.LoadPicture var_98, var_A8, var_B8, var_C8, var_D8
  loc_FACA86: Set var_DC = Me.CmdImgDelete
  loc_FACA8C: var_E0 = var_DC.Tag
  loc_FACA9E: Call 0.Method_arg_218 (var_E4, CVar(var_E0))
  loc_FACAB0: ).Picture = CVar(var_88)
  loc_FACAD1: Set var_88 = vbNullString(var_E0)
  loc_FACAD7: var_88 = ).CommandButton.Tag
  loc_FACAE9: Call 0.Method_arg_218 (var_DC)
  loc_FACAFB: ).Tag = CVar(var_E0)
  loc_FACB14: Set var_88 = (var_E0)
  loc_FACB1A:  = ).CommandButton.Tag
  loc_FACB22: var_138 = var_E0
  loc_FACB30: If (var_138 = "ImgFamilyMemPhoto") Then
  loc_FACB46:   var_98 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_FACB4E:   var_B8 = CVar(CLng(&H1B)) 'Long
  loc_FACB53:   var_D8 = vbNullString
  loc_FACB5D:   Set var_DC = Me.FAGrid
  loc_FACB63:   LateIdCallSt
  loc_FACB78: Else
  loc_FACB80:   If (var_138 = "ImgFamilyMemSign") Then
  loc_FACB96:     var_98 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_FACB9E:     var_B8 = CVar(CLng(&H1C)) 'Long
  loc_FACBA3:     var_D8 = vbNullString
  loc_FACBAD:     Set var_DC = Me.FAGrid
  loc_FACBB3:     LateIdCallSt
  loc_FACBC5:   End If
  loc_FACBC5: End If
  loc_FACBC5: Exit Sub
  loc_FACBC6: MemVar_66396C = var_DC
End Sub

Public Function Varify_Member() '154D66C
  'Data Table: 5ADDB4
  Dim var_B0 As String
  Dim unk_5ADDE0 As Connection15
  Dim var_98 As Recordset15
  Dim var_D8 As Variant
  Dim var_D4 As Variant
  Dim var_F0 As Variant
  Dim var_A6 As Integer
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_90 As Recordset15
  Dim var_140 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Variant
  Dim var_160 As Variant
  Dim var_1F0 As Variant
  Dim var_268 As Double
  Dim var_258 As String
  Dim var_86 As Integer
  Dim var_210 As Variant
  Dim var_2A8 As String
  loc_154C6F0: unk_5ADDE0.Execute "Select * From MemEnviro Where LogSite_Code='" & MemVar_1F95078 & "'", var_D4, -1
  loc_154C6FB: Set var_98 = var_D8
  loc_154C71F: If (var_98.RecordCount > 0) Then
  loc_154C731:   var_D8 = var_98.Fields
  loc_154C750:   global_268 = Proc_6_38_E69628(CVar(var_D8.Item("Interface")))
  loc_154C760: Else
  loc_154C779:   MsgBox("Member EnvironMent Settings NOT SET!", 0, var_100, var_120, var_140)
  loc_154C789: End If
  loc_154C794: If (global_268 = "SmartCard_ACR") Then
  loc_154C7A5:   If (Proc_275_6_1133A80(var_9C, var_A0) = &HFF) Then
  loc_154C7E5:     var_140 = Left(var_9C, 2)
  loc_154C7F8:     var_150 = Ucase(MemVar_1F95070)
  loc_154C815:     If CBool((Trim(Left(var_9C, 8)) <> vbNullString) And (var_140 = var_150)) Then
  loc_154C836:       var_A4 = CStr(Mid(var_9C, 9, 1))
  loc_154C867:       var_A6 = CInt(Val(CStr(Mid(var_9C, &HA, 2))))
  loc_154C896:       var_F0 = "Select ConPrefix + ' ' + Name As mName,AllowCredit From SubGroup Where Subcode='"
  loc_154C8B5:       unk_5ADDE0.Execute CStr(vbNullString & Left(var_9C, 8) & "'"), var_140, -1
  loc_154C8C0:       Set var_90 = var_D8
  loc_154C8E8:       If (var_90.RecordCount > 0) Then
  loc_154C8FA:         var_D8 = var_90.Fields
  loc_154C913:         var_94 = Proc_6_38_E69628(CVar(var_D8.Item("mName")), var_D8)
  loc_154C92B:         var_D8 = var_90.Fields
  loc_154C944:         var_AC = Proc_6_38_E69628(CVar(var_D8.Item("AllowCredit")), var_A6)
  loc_154C94D:       End If
  loc_154C952:       Set var_90 = Nothing
  loc_154C958:       var_174 = var_A4
  loc_154C963:       If (var_174 = "S") Then
  loc_154C988:         var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From MemSpouseGen Where Subcode='"
  loc_154C9A7:         unk_5ADDE0.Execute CStr(vbNullString & Left(var_9C, 8) & "'"), var_140, -1
  loc_154C9B2:         Set var_8C = var_D8
  loc_154C9C9:       Else
  loc_154C9D1:         If (var_174 = "C") Then
  loc_154C9F6:           var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From MemChildrenGenPic Where Subcode='"
  loc_154CA1F:           unk_5ADDE0.Execute CStr(vbNullString & Left(var_9C, 8) & "' And Sno=" & CVar(var_A6)), var_150, -1
  loc_154CA2A:           Set var_8C = var_D8
  loc_154CA43:         Else
  loc_154CA4B:           If (var_174 = "A") Then
  loc_154CA70:             var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From memFamily Where Subcode='"
  loc_154CA8B:             var_140 = vbNullString & Left(var_9C, 8) & "' And Sno=" & CVar(var_A6) 
  loc_154CA99:             unk_5ADDE0.Execute CStr(var_140), var_150, -1
  loc_154CAA4:             Set var_8C = var_D8
  loc_154CABD:           Else
  loc_154CADF:             var_F0 = "Select ConPrefix + ' ' + Name As mName,CardNo,TinNo From SubGroup Where Subcode='"
  loc_154CAFE:             unk_5ADDE0.Execute CStr(vbNullString & Left(var_9C, 8) & "'"), var_140, -1
  loc_154CB09:             Set var_8C = var_D8
  loc_154CB20:             var_A4 = vbNullString
  loc_154CB25:             var_A6 = 0
  loc_154CB28:           End If
  loc_154CB28:         End If
  loc_154CB28:       End If
  loc_154CB3C:       If (var_8C.RecordCount > 0) Then
  loc_154CB4E:         var_D8 = var_8C.Fields
  loc_154CB67:         var_120 = CVar(Proc_6_38_E69628(CVar(var_D8.Item("TINNo")), var_A6, var_D8, var_D8)) 'String
  loc_154CB8C:         If CBool(var_120 <> Trim(var_A0)) Then
  loc_154CBB0:           MsgBox("Duplicate Card", &H10, "Membership Varification", var_120, var_140)
  loc_154CBC5:           Set var_8C = Nothing
  loc_154CBCD:           Set var_90 = Nothing
  loc_154CBD0:           Varify_Member = var_D8
  loc_154CBD6:         End If
  loc_154CBF7:         MsgBox("Card Varified", &H40, "Membership Varification", var_120, var_140)
  loc_154CC14:         Me.Global.Load Me
  loc_154CC3B:         Call MembershipMast.SEARCHBACK(CStr(Left(var_9C, 8)))
  loc_154CC49:         var_188 = var_A4
  loc_154CC54:         If (var_188 = "S") Then
  loc_154CC66:           var_D8 = var_8C.Fields
  loc_154CCE2:           var_160 = CVar("Card No : " & Proc_6_38_E69628(CVar(var_D8.Item("CardNo")), var_D8) & vbCrLf) & Ucase(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("mName"))))) 
  loc_154CD14:           MsgBox(var_160 & vbCrLf & vbCrLf & "Member : " & vbCrLf & CVar(var_94), &H40, "Spouse Detail", var_230, var_250)
  loc_154CD4B:         Else
  loc_154CD53:           If (var_188 = "C") Then
  loc_154CDE1:             var_160 = CVar("Card No :   " & Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo"))) & vbCrLf) & Ucase(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("mName"))))) 
  loc_154CE13:             MsgBox(var_160 & vbCrLf & vbCrLf & "Member :   " & vbCrLf & CVar(var_94), &H40, "Children Detail", var_230, var_250)
  loc_154CE4A:           Else
  loc_154CE52:             If (var_188 = "A") Then
  loc_154CEE0:               var_160 = CVar("Card No :     " & Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo"))) & vbCrLf) & Ucase(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("mName"))))) 
  loc_154CF12:               MsgBox(var_160 & vbCrLf & vbCrLf & "Member :     " & vbCrLf & CVar(var_94), &H40, "Additional Family Member Detail", var_230, var_250)
  loc_154CF49:             Else
  loc_154CF58:               var_D8 = var_8C.Fields
  loc_154CF71:               var_260 = Proc_6_38_E69628(CVar(var_D8.Item("CardNo")))
  loc_154CFA2:               var_140 = Ucase(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("mName")))))
  loc_154CFC4:               Proc_96_2_100E504(CStr(Left(var_9C, 8)))
  loc_154CFC9:               var_268 = var_D8
  loc_154D035:               var_1F0 = CVar("Card No :       " & var_260 & vbCrLf) & var_140 & IIf((var_AC = "N"), CVar(vbCrLf & "Credit Balance :       " & CStr(var_268)), vbNullString) 
  loc_154D039:               MsgBox(var_1F0, &H40, "Member Detail", var_230, var_250)
  loc_154D075:             End If
  loc_154D075:           End If
  loc_154D075:         End If
  loc_154D077:         var_86 = &HFF
  loc_154D0AD:         var_120 = "Select Validateupto From SubGroup Where validateupto Is Not Null And Subcode='" & Left(var_9C, 8) & "'" 
  loc_154D0BB:         unk_5ADDE0.Execute CStr(var_120), var_140, -1
  loc_154D0C6:         Set var_90 = var_D8
  loc_154D0EE:         If (var_90.RecordCount > 0) Then
  loc_154D10E:           var_D8 = var_90.Fields
  loc_154D136:           If (Date > var_D8.Item("ValidateUpto").Value) Then
  loc_154D15A:             MsgBox("Validity Of Card has been Expired", &H10, "Membership Varification", var_120, var_140)
  loc_154D16A:           End If
  loc_154D16A:         End If
  loc_154D16F:         Set var_90 = Nothing
  loc_154D175:       Else
  loc_154D196:         MsgBox("Record Not Found!", &H10, "Member Varification", var_120, var_140)
  loc_154D1A8:         var_86 = 0
  loc_154D1AB:       End If
  loc_154D1AE:     Else
  loc_154D1EF:       unk_5ADDE0.Execute CStr("Select * From SmartCardRegistration Where code='" & Left(var_9C, 8) & "'"), var_140, -1
  loc_154D1FA:       Set var_8C = var_D8
  loc_154D222:       If (var_8C.RecordCount > 0) Then
  loc_154D234:         var_D8 = var_8C.Fields
  loc_154D24D:         var_258 = Proc_6_38_E69628(CVar(var_D8.Item("Code")), var_D8, var_86)
  loc_154D27E:         var_140 = Ucase(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("CardNo")), var_D8)))
  loc_154D303:         var_210 = CVar("Reg. No :   " & var_258 & vbCrLf & "Card No :   ") & var_140 & vbCrLf & "Holder :   " & Ucase(CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("Name")), var_86))) 
  loc_154D307:         MsgBox(var_210, &H40, "Cash Card Detail", var_250, var_280)
  loc_154D369:         var_120 = CVar(Proc_6_38_E69628(CVar(var_8C.Fields.Item("SerialNo")))) 'String
  loc_154D38E:         If CBool(var_120 <> Trim(var_A0)) Then
  loc_154D3B2:           MsgBox("Duplicate Cash Card", &H10, "Cash Card Verification", var_120, var_140)
  loc_154D3C2:         End If
  loc_154D3FB:         If (Proc_6_38_E69628(CVar(var_8C.Fields.Item("BlockedYN"))) = "Y") Then
  loc_154D41F:           MsgBox("Transations of This Cash Card has been blocked By Administrator.", &H10, "Cash Card Verification", var_120, var_140)
  loc_154D42F:         End If
  loc_154D434:         var_B0 = Proc_6_15_EF37AC(var_268)
  loc_154D477:         If (CDate(CDate(var_B0)) > var_8C.Fields.Item("ValidUpto").Value) Then
  loc_154D49B:           MsgBox("Validity Of This Cash Card has been Expired", &H10, "Cash Card Verification", var_120, var_140)
  loc_154D4AB:         End If
  loc_154D4AE:       Else
  loc_154D4CF:         MsgBox("This Card is not registered Yet!", &H10, "Smart Card Verification", var_120, var_140)
  loc_154D4DF:       End If
  loc_154D4E1:       var_86 = 0
  loc_154D4E4:     End If
  loc_154D4E7:   Else
  loc_154D4E9:     var_86 = 0
  loc_154D4EC:   End If
  loc_154D4EF: Else
  loc_154D4FA:   If (global_268 = "NBSD_Mifare") Then
  loc_154D504:     Call Proc_265_99_FA2734(1, 1, var_B0)
  loc_154D51B:     var_9C = CStr(Trim(CVar(var_B0)))
  loc_154D52D:     If (var_9C <> vbNullString) Then
  loc_154D537:       Call Proc_265_99_FA2734(1, 2, var_258)
  loc_154D543:       Call Proc_265_99_FA2734(1, 3, var_260)
  loc_154D54F:       Call Proc_265_99_FA2734(2, 1, var_28C)
  loc_154D55B:       Call Proc_265_99_FA2734(2, 2, var_294)
  loc_154D567:       Call Proc_265_99_FA2734(2, 3, var_2A0)
  loc_154D5CF:       var_2A8 = "Card Belongs to:" & vbCrLf & vbCrLf & var_9C & vbCrLf & var_258 & var_260 & vbCrLf & var_28C & var_294 & vbCrLf & var_2A0
  loc_154D5D9:       MsgBox(CVar(var_2A8 & vbCrLf), &H40, "Membership Varification", var_120, var_140)
  loc_154D612:       Call MembershipMast.SEARCHBACK(var_9C)
  loc_154D619:       var_86 = &HFF
  loc_154D61F:     Else
  loc_154D640:       MsgBox("Invalid Information!", &H10, "Member Varification", var_120, var_140)
  loc_154D652:       var_86 = 0
  loc_154D655:     End If
  loc_154D655:   End If
  loc_154D655: End If
  loc_154D65A: Set var_8C = Nothing
  loc_154D662: Set var_98 = Nothing
  loc_154D665: Varify_Member = var_86
End Function

Public Sub SEARCHBACK(MyValue) 'F06D64
  'Data Table: 5ADDB4
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_F06C96: On Error Goto loc_F06CFF
  loc_F06C9F: Me.MoveFirst
  loc_F06CB9: var_8C = "SearchCode='" & MyValue
  loc_F06CC9: Me.Find var_8C & "'", 0, 1
  loc_F06CD5: Call Proc_265_112_1B48468(var_A0)
  loc_F06CF6: Proc_5_0_1107AD0(&HFF, Me)
  loc_F06CFE: Exit Sub
  loc_F06CFF: ' Referenced from: F06C96
  loc_F06D07: Set var_A8 = Err()
  loc_F06D0D: Call 0.Method_arg_1C (var_B0, global_164)
  loc_F06D1E: If (var_B0 <> 0) Then
  loc_F06D29:   Set var_A8 = Err()
  loc_F06D2F:   Call 0.Method_arg_2C (var_8C)
  loc_F06D50:   MsgBox(CVar(var_8C), &H40, "Validation", var_F0, var_110)
  loc_F06D63: End If
  loc_F06D63: Exit Sub
End Sub

Public Sub Proc_265_91_154638C
  'Data Table: 5ADDB4
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_1545372: Me.FAGrid.Left = CVar(CDbl(1))
  loc_154538D: Me.FAGrid.Top = CVar(CDbl(400))
  loc_15453A8: Me.FAGrid.Width = CVar(CDbl(14100))
  loc_15453B4: Set var_AC = Me.FAGrid
  loc_15453CB: global_280 = CStr(CLng(var_AC.BackColor))
  loc_15453E1: var_AC.Cols = &H23
  loc_15453E6: var_94 = 0
  loc_15453F2: var_D0 = CVar(CLng(0)) 'Long
  loc_15453F7: var_F0 = "SNo."
  loc_1545400: LateIdCallSt
  loc_154540B: var_94 = CVar(CLng(0)) 'Long
  loc_1545410: var_D0 = &H1C2
  loc_154541C: LateIdCallSt
  loc_1545424: var_94 = 0
  loc_1545430: var_D0 = CVar(CLng(1)) 'Long
  loc_1545435: var_F0 = "SNo1"
  loc_154543E: LateIdCallSt
  loc_1545449: var_94 = CVar(CLng(1)) 'Long
  loc_154544E: var_D0 = 0
  loc_154545A: LateIdCallSt
  loc_1545462: var_94 = 0
  loc_154546E: var_D0 = CVar(CLng(2)) 'Long
  loc_1545473: var_F0 = "Member Code"
  loc_154547C: LateIdCallSt
  loc_1545487: var_94 = CVar(CLng(2)) 'Long
  loc_1545492: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545499: LateIdCallSt
  loc_15454A4: var_94 = CVar(CLng(2)) 'Long
  loc_15454A9: var_D0 = 0
  loc_15454B5: LateIdCallSt
  loc_15454BD: var_94 = 0
  loc_15454C9: var_D0 = CVar(CLng(3)) 'Long
  loc_15454CE: var_F0 = "Relation"
  loc_15454D7: LateIdCallSt
  loc_15454E2: var_94 = CVar(CLng(3)) 'Long
  loc_15454ED: var_D0 = CVar(CInt(1)) 'Integer
  loc_15454F4: LateIdCallSt
  loc_15454FF: var_94 = CVar(CLng(3)) 'Long
  loc_1545504: var_D0 = &H320
  loc_1545510: LateIdCallSt
  loc_1545518: var_94 = 0
  loc_1545524: var_D0 = CVar(CLng(4)) 'Long
  loc_1545529: var_F0 = "Prefix"
  loc_1545532: LateIdCallSt
  loc_154553D: var_94 = CVar(CLng(4)) 'Long
  loc_1545548: var_D0 = CVar(CInt(1)) 'Integer
  loc_154554F: LateIdCallSt
  loc_154555A: var_94 = CVar(CLng(4)) 'Long
  loc_154555F: var_D0 = &H28A
  loc_154556B: LateIdCallSt
  loc_1545573: var_94 = 0
  loc_154557F: var_D0 = CVar(CLng(5)) 'Long
  loc_1545584: var_F0 = "Name"
  loc_154558D: LateIdCallSt
  loc_1545598: var_94 = CVar(CLng(5)) 'Long
  loc_15455A3: var_D0 = CVar(CInt(1)) 'Integer
  loc_15455AA: LateIdCallSt
  loc_15455B5: var_94 = CVar(CLng(5)) 'Long
  loc_15455C0: var_D0 = CVar(CInt(1)) 'Integer
  loc_15455C7: LateIdCallSt
  loc_15455D2: var_94 = CVar(CLng(5)) 'Long
  loc_15455D7: var_D0 = &H9C4
  loc_15455E3: LateIdCallSt
  loc_15455EB: var_94 = 0
  loc_15455F7: var_D0 = CVar(CLng(6)) 'Long
  loc_15455FC: var_F0 = "Gender"
  loc_1545605: LateIdCallSt
  loc_1545610: var_94 = CVar(CLng(6)) 'Long
  loc_154561B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545622: LateIdCallSt
  loc_154562D: var_94 = CVar(CLng(6)) 'Long
  loc_1545638: var_D0 = CVar(CInt(1)) 'Integer
  loc_154563F: LateIdCallSt
  loc_154564A: var_94 = CVar(CLng(6)) 'Long
  loc_154564F: var_D0 = &H2BC
  loc_154565B: LateIdCallSt
  loc_1545663: var_94 = 0
  loc_154566F: var_D0 = CVar(CLng(7)) 'Long
  loc_1545674: var_F0 = "Marital Status"
  loc_154567D: LateIdCallSt
  loc_1545688: var_94 = CVar(CLng(7)) 'Long
  loc_1545693: var_D0 = CVar(CInt(1)) 'Integer
  loc_154569A: LateIdCallSt
  loc_15456A5: var_94 = CVar(CLng(7)) 'Long
  loc_15456B0: var_D0 = CVar(CInt(1)) 'Integer
  loc_15456B7: LateIdCallSt
  loc_15456C2: var_94 = CVar(CLng(7)) 'Long
  loc_15456C7: var_D0 = 0
  loc_15456D3: LateIdCallSt
  loc_15456DB: var_94 = 0
  loc_15456E7: var_D0 = CVar(CLng(8)) 'Long
  loc_15456EC: var_F0 = "DOB"
  loc_15456F5: LateIdCallSt
  loc_1545700: var_94 = CVar(CLng(8)) 'Long
  loc_154570B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545712: LateIdCallSt
  loc_154571D: var_94 = CVar(CLng(8)) 'Long
  loc_1545728: var_D0 = CVar(CInt(1)) 'Integer
  loc_154572F: LateIdCallSt
  loc_154573A: var_94 = CVar(CLng(8)) 'Long
  loc_154573F: var_D0 = &H44C
  loc_154574B: LateIdCallSt
  loc_1545753: var_94 = 0
  loc_154575F: var_D0 = CVar(CLng(9)) 'Long
  loc_1545764: var_F0 = "POB"
  loc_154576D: LateIdCallSt
  loc_1545778: var_94 = CVar(CLng(9)) 'Long
  loc_1545783: var_D0 = CVar(CInt(1)) 'Integer
  loc_154578A: LateIdCallSt
  loc_1545795: var_94 = CVar(CLng(9)) 'Long
  loc_15457A0: var_D0 = CVar(CInt(1)) 'Integer
  loc_15457A7: LateIdCallSt
  loc_15457B2: var_94 = CVar(CLng(9)) 'Long
  loc_15457B7: var_D0 = 0
  loc_15457C3: LateIdCallSt
  loc_15457CB: var_94 = 0
  loc_15457D7: var_D0 = CVar(CLng(&HA)) 'Long
  loc_15457DC: var_F0 = "Anniversary"
  loc_15457E5: LateIdCallSt
  loc_15457F0: var_94 = CVar(CLng(&HA)) 'Long
  loc_15457FB: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545802: LateIdCallSt
  loc_154580D: var_94 = CVar(CLng(&HA)) 'Long
  loc_1545818: var_D0 = CVar(CInt(1)) 'Integer
  loc_154581F: LateIdCallSt
  loc_154582A: var_94 = CVar(CLng(&HA)) 'Long
  loc_154582F: var_D0 = &H44C
  loc_154583B: LateIdCallSt
  loc_1545843: var_94 = 0
  loc_154584F: var_D0 = CVar(CLng(&HB)) 'Long
  loc_1545854: var_F0 = "Phone"
  loc_154585D: LateIdCallSt
  loc_1545868: var_94 = CVar(CLng(&HB)) 'Long
  loc_1545873: var_D0 = CVar(CInt(1)) 'Integer
  loc_154587A: LateIdCallSt
  loc_1545885: var_94 = CVar(CLng(&HB)) 'Long
  loc_1545890: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545897: LateIdCallSt
  loc_15458A2: var_94 = CVar(CLng(&HB)) 'Long
  loc_15458A7: var_D0 = 0
  loc_15458B3: LateIdCallSt
  loc_15458BB: var_94 = 0
  loc_15458C7: var_D0 = CVar(CLng(&HC)) 'Long
  loc_15458CC: var_F0 = "Mobile No."
  loc_15458D5: LateIdCallSt
  loc_15458E0: var_94 = CVar(CLng(&HC)) 'Long
  loc_15458EB: var_D0 = CVar(CInt(1)) 'Integer
  loc_15458F2: LateIdCallSt
  loc_15458FD: var_94 = CVar(CLng(&HC)) 'Long
  loc_1545908: var_D0 = CVar(CInt(1)) 'Integer
  loc_154590F: LateIdCallSt
  loc_154591A: var_94 = CVar(CLng(&HC)) 'Long
  loc_154591F: var_D0 = &H44C
  loc_154592B: LateIdCallSt
  loc_1545933: var_94 = 0
  loc_154593F: var_D0 = CVar(CLng(&HD)) 'Long
  loc_1545944: var_F0 = "Fax"
  loc_154594D: LateIdCallSt
  loc_1545958: var_94 = CVar(CLng(&HD)) 'Long
  loc_1545963: var_D0 = CVar(CInt(1)) 'Integer
  loc_154596A: LateIdCallSt
  loc_1545975: var_94 = CVar(CLng(&HD)) 'Long
  loc_1545980: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545987: LateIdCallSt
  loc_1545992: var_94 = CVar(CLng(&HD)) 'Long
  loc_1545997: var_D0 = 0
  loc_15459A3: LateIdCallSt
  loc_15459AB: var_94 = 0
  loc_15459B7: var_D0 = CVar(CLng(&HE)) 'Long
  loc_15459BC: var_F0 = "Email ID"
  loc_15459C5: LateIdCallSt
  loc_15459D0: var_94 = CVar(CLng(&HE)) 'Long
  loc_15459DB: var_D0 = CVar(CInt(1)) 'Integer
  loc_15459E2: LateIdCallSt
  loc_15459ED: var_94 = CVar(CLng(&HE)) 'Long
  loc_15459F8: var_D0 = CVar(CInt(1)) 'Integer
  loc_15459FF: LateIdCallSt
  loc_1545A0A: var_94 = CVar(CLng(&HE)) 'Long
  loc_1545A0F: var_D0 = &H708
  loc_1545A1B: LateIdCallSt
  loc_1545A23: var_94 = 0
  loc_1545A2F: var_D0 = CVar(CLng(&HF)) 'Long
  loc_1545A34: var_F0 = "Nationality"
  loc_1545A3D: LateIdCallSt
  loc_1545A48: var_94 = CVar(CLng(&HF)) 'Long
  loc_1545A53: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545A5A: LateIdCallSt
  loc_1545A65: var_94 = CVar(CLng(&HF)) 'Long
  loc_1545A70: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545A77: LateIdCallSt
  loc_1545A82: var_94 = CVar(CLng(&HF)) 'Long
  loc_1545A87: var_D0 = 0
  loc_1545A93: LateIdCallSt
  loc_1545A9B: var_94 = 0
  loc_1545AA7: var_D0 = CVar(CLng(&H10)) 'Long
  loc_1545AAC: var_F0 = "Religion"
  loc_1545AB5: LateIdCallSt
  loc_1545AC0: var_94 = CVar(CLng(&H10)) 'Long
  loc_1545ACB: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545AD2: LateIdCallSt
  loc_1545ADD: var_94 = CVar(CLng(&H10)) 'Long
  loc_1545AE8: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545AEF: LateIdCallSt
  loc_1545AFA: var_94 = CVar(CLng(&H10)) 'Long
  loc_1545AFF: var_D0 = 0
  loc_1545B0B: LateIdCallSt
  loc_1545B13: var_94 = 0
  loc_1545B1F: var_D0 = CVar(CLng(&H11)) 'Long
  loc_1545B24: var_F0 = "Blood Group"
  loc_1545B2D: LateIdCallSt
  loc_1545B38: var_94 = CVar(CLng(&H11)) 'Long
  loc_1545B43: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545B4A: LateIdCallSt
  loc_1545B55: var_94 = CVar(CLng(&H11)) 'Long
  loc_1545B60: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545B67: LateIdCallSt
  loc_1545B72: var_94 = CVar(CLng(&H11)) 'Long
  loc_1545B77: var_D0 = 0
  loc_1545B83: LateIdCallSt
  loc_1545B8B: var_94 = 0
  loc_1545B97: var_D0 = CVar(CLng(&H12)) 'Long
  loc_1545B9C: var_F0 = "Pro.Occ."
  loc_1545BA5: LateIdCallSt
  loc_1545BB0: var_94 = CVar(CLng(&H12)) 'Long
  loc_1545BBB: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545BC2: LateIdCallSt
  loc_1545BCD: var_94 = CVar(CLng(&H12)) 'Long
  loc_1545BD8: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545BDF: LateIdCallSt
  loc_1545BEA: var_94 = CVar(CLng(&H12)) 'Long
  loc_1545BEF: var_D0 = 0
  loc_1545BFB: LateIdCallSt
  loc_1545C03: var_94 = 0
  loc_1545C0F: var_D0 = CVar(CLng(&H13)) 'Long
  loc_1545C14: var_F0 = "Ed.Quali."
  loc_1545C1D: LateIdCallSt
  loc_1545C28: var_94 = CVar(CLng(&H13)) 'Long
  loc_1545C33: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545C3A: LateIdCallSt
  loc_1545C45: var_94 = CVar(CLng(&H13)) 'Long
  loc_1545C50: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545C57: LateIdCallSt
  loc_1545C62: var_94 = CVar(CLng(&H13)) 'Long
  loc_1545C67: var_D0 = 0
  loc_1545C73: LateIdCallSt
  loc_1545C7B: var_94 = 0
  loc_1545C87: var_D0 = CVar(CLng(&H14)) 'Long
  loc_1545C8C: var_F0 = "Business"
  loc_1545C95: LateIdCallSt
  loc_1545CA0: var_94 = CVar(CLng(&H14)) 'Long
  loc_1545CAB: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545CB2: LateIdCallSt
  loc_1545CBD: var_94 = CVar(CLng(&H14)) 'Long
  loc_1545CC8: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545CCF: LateIdCallSt
  loc_1545CDA: var_94 = CVar(CLng(&H14)) 'Long
  loc_1545CDF: var_D0 = 0
  loc_1545CEB: LateIdCallSt
  loc_1545CF3: var_94 = 0
  loc_1545CFF: var_D0 = CVar(CLng(&H15)) 'Long
  loc_1545D04: var_F0 = "TurnOver"
  loc_1545D0D: LateIdCallSt
  loc_1545D18: var_94 = CVar(CLng(&H15)) 'Long
  loc_1545D23: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545D2A: LateIdCallSt
  loc_1545D35: var_94 = CVar(CLng(&H15)) 'Long
  loc_1545D40: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545D47: LateIdCallSt
  loc_1545D52: var_94 = CVar(CLng(&H15)) 'Long
  loc_1545D57: var_D0 = 0
  loc_1545D63: LateIdCallSt
  loc_1545D6B: var_94 = 0
  loc_1545D77: var_D0 = CVar(CLng(&H16)) 'Long
  loc_1545D7C: var_F0 = "Passport No."
  loc_1545D85: LateIdCallSt
  loc_1545D90: var_94 = CVar(CLng(&H16)) 'Long
  loc_1545D9B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545DA2: LateIdCallSt
  loc_1545DAD: var_94 = CVar(CLng(&H16)) 'Long
  loc_1545DB8: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545DBF: LateIdCallSt
  loc_1545DCA: var_94 = CVar(CLng(&H16)) 'Long
  loc_1545DCF: var_D0 = 0
  loc_1545DDB: LateIdCallSt
  loc_1545DE3: var_94 = 0
  loc_1545DEF: var_D0 = CVar(CLng(&H17)) 'Long
  loc_1545DF4: var_F0 = "PAN No."
  loc_1545DFD: LateIdCallSt
  loc_1545E08: var_94 = CVar(CLng(&H17)) 'Long
  loc_1545E13: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545E1A: LateIdCallSt
  loc_1545E25: var_94 = CVar(CLng(&H17)) 'Long
  loc_1545E30: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545E37: LateIdCallSt
  loc_1545E42: var_94 = CVar(CLng(&H17)) 'Long
  loc_1545E47: var_D0 = 0
  loc_1545E53: LateIdCallSt
  loc_1545E5B: var_94 = 0
  loc_1545E67: var_D0 = CVar(CLng(&H18)) 'Long
  loc_1545E6C: var_F0 = "Designation"
  loc_1545E75: LateIdCallSt
  loc_1545E80: var_94 = CVar(CLng(&H18)) 'Long
  loc_1545E8B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545E92: LateIdCallSt
  loc_1545E9D: var_94 = CVar(CLng(&H18)) 'Long
  loc_1545EA8: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545EAF: LateIdCallSt
  loc_1545EBA: var_94 = CVar(CLng(&H18)) 'Long
  loc_1545EBF: var_D0 = &H4B0
  loc_1545ECB: LateIdCallSt
  loc_1545ED3: var_94 = 0
  loc_1545EDF: var_D0 = CVar(CLng(&H19)) 'Long
  loc_1545EE4: var_F0 = "In Tax"
  loc_1545EED: LateIdCallSt
  loc_1545EF8: var_94 = CVar(CLng(&H19)) 'Long
  loc_1545F03: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545F0A: LateIdCallSt
  loc_1545F15: var_94 = CVar(CLng(&H19)) 'Long
  loc_1545F20: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545F27: LateIdCallSt
  loc_1545F32: var_94 = CVar(CLng(&H19)) 'Long
  loc_1545F37: var_D0 = 0
  loc_1545F43: LateIdCallSt
  loc_1545F4B: var_94 = 0
  loc_1545F57: var_D0 = CVar(CLng(&H1A)) 'Long
  loc_1545F5C: var_F0 = "Special Interest"
  loc_1545F65: LateIdCallSt
  loc_1545F70: var_94 = CVar(CLng(&H1A)) 'Long
  loc_1545F7B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545F82: LateIdCallSt
  loc_1545F8D: var_94 = CVar(CLng(&H1A)) 'Long
  loc_1545F98: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545F9F: LateIdCallSt
  loc_1545FAA: var_94 = CVar(CLng(&H1A)) 'Long
  loc_1545FAF: var_D0 = 0
  loc_1545FBB: LateIdCallSt
  loc_1545FC3: var_94 = 0
  loc_1545FCF: var_D0 = CVar(CLng(&H1B)) 'Long
  loc_1545FD4: var_F0 = "Pic.Path"
  loc_1545FDD: LateIdCallSt
  loc_1545FE8: var_94 = CVar(CLng(&H1B)) 'Long
  loc_1545FF3: var_D0 = CVar(CInt(1)) 'Integer
  loc_1545FFA: LateIdCallSt
  loc_1546005: var_94 = CVar(CLng(&H1B)) 'Long
  loc_1546010: var_D0 = CVar(CInt(1)) 'Integer
  loc_1546017: LateIdCallSt
  loc_1546022: var_94 = CVar(CLng(&H1B)) 'Long
  loc_1546027: var_D0 = 0
  loc_1546033: LateIdCallSt
  loc_154603B: var_94 = 0
  loc_1546047: var_D0 = CVar(CLng(&H1C)) 'Long
  loc_154604C: var_F0 = "Sig.Path"
  loc_1546055: LateIdCallSt
  loc_1546060: var_94 = CVar(CLng(&H1C)) 'Long
  loc_154606B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1546072: LateIdCallSt
  loc_154607D: var_94 = CVar(CLng(&H1C)) 'Long
  loc_1546088: var_D0 = CVar(CInt(1)) 'Integer
  loc_154608F: LateIdCallSt
  loc_154609A: var_94 = CVar(CLng(&H1C)) 'Long
  loc_154609F: var_D0 = 0
  loc_15460AB: LateIdCallSt
  loc_15460B3: var_94 = 0
  loc_15460BF: var_D0 = CVar(CLng(&H1D)) 'Long
  loc_15460C4: var_F0 = "Lvl"
  loc_15460CD: LateIdCallSt
  loc_15460D8: var_94 = CVar(CLng(&H1D)) 'Long
  loc_15460E3: var_D0 = CVar(CInt(1)) 'Integer
  loc_15460EA: LateIdCallSt
  loc_15460F5: var_94 = CVar(CLng(&H1D)) 'Long
  loc_1546100: var_D0 = CVar(CInt(1)) 'Integer
  loc_1546107: LateIdCallSt
  loc_1546112: var_94 = CVar(CLng(&H1D)) 'Long
  loc_1546117: var_D0 = &H15E
  loc_1546123: LateIdCallSt
  loc_154612B: var_94 = 0
  loc_1546137: var_D0 = CVar(CLng(&H1E)) 'Long
  loc_154613C: var_F0 = "HW_Id"
  loc_1546145: LateIdCallSt
  loc_1546150: var_94 = CVar(CLng(&H1E)) 'Long
  loc_154615B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1546162: LateIdCallSt
  loc_154616D: var_94 = CVar(CLng(&H1E)) 'Long
  loc_1546178: var_D0 = CVar(CInt(1)) 'Integer
  loc_154617F: LateIdCallSt
  loc_154618A: var_94 = CVar(CLng(&H1E)) 'Long
  loc_154618F: var_D0 = 0
  loc_154619B: LateIdCallSt
  loc_15461A3: var_94 = 0
  loc_15461AF: var_D0 = CVar(CLng(&H1F)) 'Long
  loc_15461B4: var_F0 = "Card No."
  loc_15461BD: LateIdCallSt
  loc_15461C8: var_94 = CVar(CLng(&H1F)) 'Long
  loc_15461D3: var_D0 = CVar(CInt(1)) 'Integer
  loc_15461DA: LateIdCallSt
  loc_15461E5: var_94 = CVar(CLng(&H1F)) 'Long
  loc_15461F0: var_D0 = CVar(CInt(1)) 'Integer
  loc_15461F7: LateIdCallSt
  loc_1546202: var_94 = CVar(CLng(&H1F)) 'Long
  loc_1546207: var_D0 = 0
  loc_1546213: LateIdCallSt
  loc_154621B: var_94 = 0
  loc_1546227: var_D0 = CVar(CLng(&H20)) 'Long
  loc_154622C: var_F0 = "Card Issue"
  loc_1546235: LateIdCallSt
  loc_1546240: var_94 = CVar(CLng(&H20)) 'Long
  loc_154624B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1546252: LateIdCallSt
  loc_154625D: var_94 = CVar(CLng(&H20)) 'Long
  loc_1546268: var_D0 = CVar(CInt(1)) 'Integer
  loc_154626F: LateIdCallSt
  loc_154627A: var_94 = CVar(CLng(&H20)) 'Long
  loc_154627F: var_D0 = &H47E
  loc_154628B: LateIdCallSt
  loc_1546293: var_94 = 0
  loc_154629F: var_D0 = CVar(CLng(&H21)) 'Long
  loc_15462A4: var_F0 = "CardRegId"
  loc_15462AD: LateIdCallSt
  loc_15462B8: var_94 = CVar(CLng(&H21)) 'Long
  loc_15462C3: var_D0 = CVar(CInt(1)) 'Integer
  loc_15462CA: LateIdCallSt
  loc_15462D5: var_94 = CVar(CLng(&H21)) 'Long
  loc_15462E0: var_D0 = CVar(CInt(1)) 'Integer
  loc_15462E7: LateIdCallSt
  loc_15462F2: var_94 = CVar(CLng(&H21)) 'Long
  loc_15462F7: var_D0 = 0
  loc_1546303: LateIdCallSt
  loc_154630B: var_94 = 0
  loc_1546317: var_D0 = CVar(CLng(&H22)) 'Long
  loc_154631C: var_F0 = "Card Valid"
  loc_1546325: LateIdCallSt
  loc_1546330: var_94 = CVar(CLng(&H22)) 'Long
  loc_154633B: var_D0 = CVar(CInt(1)) 'Integer
  loc_1546342: LateIdCallSt
  loc_154634D: var_94 = CVar(CLng(&H22)) 'Long
  loc_1546358: var_D0 = CVar(CInt(1)) 'Integer
  loc_154635F: LateIdCallSt
  loc_154636A: var_94 = CVar(CLng(&H22)) 'Long
  loc_154636F: var_D0 = &H47E
  loc_154637B: LateIdCallSt
  loc_1546385: Set var_AC = Nothing 
  loc_1546389: Exit Sub
End Sub

Public Sub Proc_265_92_12D58F4
  'Data Table: 5ADDB4
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_12D5256: Me.FPGrid.Left = CVar(CDbl(1))
  loc_12D5271: Me.FPGrid.Top = CVar(CDbl(400))
  loc_12D528C: Me.FPGrid.Width = CVar(CDbl(13260))
  loc_12D5298: Set var_AC = Me.FPGrid
  loc_12D52AF: global_280 = CStr(CLng(var_AC.BackColor))
  loc_12D52C5: var_AC.Cols = &HF
  loc_12D52CA: var_94 = 0
  loc_12D52D6: var_D0 = CVar(CLng(0)) 'Long
  loc_12D52DB: var_F0 = "SNo."
  loc_12D52E4: LateIdCallSt
  loc_12D52EF: var_94 = CVar(CLng(0)) 'Long
  loc_12D52F4: var_D0 = &H1C2
  loc_12D5300: LateIdCallSt
  loc_12D5308: var_94 = 0
  loc_12D5314: var_D0 = CVar(CLng(1)) 'Long
  loc_12D5319: var_F0 = "SNo1"
  loc_12D5322: LateIdCallSt
  loc_12D532D: var_94 = CVar(CLng(1)) 'Long
  loc_12D5332: var_D0 = 0
  loc_12D533E: LateIdCallSt
  loc_12D5346: var_94 = 0
  loc_12D5352: var_D0 = CVar(CLng(2)) 'Long
  loc_12D5357: var_F0 = "Member Code"
  loc_12D5360: LateIdCallSt
  loc_12D536B: var_94 = CVar(CLng(2)) 'Long
  loc_12D5376: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D537D: LateIdCallSt
  loc_12D5388: var_94 = CVar(CLng(2)) 'Long
  loc_12D538D: var_D0 = 0
  loc_12D5399: LateIdCallSt
  loc_12D53A1: var_94 = 0
  loc_12D53AD: var_D0 = CVar(CLng(3)) 'Long
  loc_12D53B2: var_F0 = "Prop Member Code"
  loc_12D53BB: LateIdCallSt
  loc_12D53C6: var_94 = CVar(CLng(3)) 'Long
  loc_12D53D1: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D53D8: LateIdCallSt
  loc_12D53E3: var_94 = CVar(CLng(3)) 'Long
  loc_12D53E8: var_D0 = 0
  loc_12D53F4: LateIdCallSt
  loc_12D53FC: var_94 = 0
  loc_12D5408: var_D0 = CVar(CLng(4)) 'Long
  loc_12D540D: var_F0 = "Mem. Type"
  loc_12D5416: LateIdCallSt
  loc_12D5421: var_94 = CVar(CLng(4)) 'Long
  loc_12D542C: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D5433: LateIdCallSt
  loc_12D543E: var_94 = CVar(CLng(4)) 'Long
  loc_12D5443: var_D0 = &H44C
  loc_12D544F: LateIdCallSt
  loc_12D5457: var_94 = 0
  loc_12D5463: var_D0 = CVar(CLng(5)) 'Long
  loc_12D5468: var_F0 = "Member Id"
  loc_12D5471: LateIdCallSt
  loc_12D547C: var_94 = CVar(CLng(5)) 'Long
  loc_12D5487: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D548E: LateIdCallSt
  loc_12D5499: var_94 = CVar(CLng(5)) 'Long
  loc_12D54A4: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D54AB: LateIdCallSt
  loc_12D54B6: var_94 = CVar(CLng(5)) 'Long
  loc_12D54BB: var_D0 = &H4B0
  loc_12D54C7: LateIdCallSt
  loc_12D54CF: var_94 = 0
  loc_12D54DB: var_D0 = CVar(CLng(6)) 'Long
  loc_12D54E0: var_F0 = "Prefix"
  loc_12D54E9: LateIdCallSt
  loc_12D54F4: var_94 = CVar(CLng(6)) 'Long
  loc_12D54FF: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D5506: LateIdCallSt
  loc_12D5511: var_94 = CVar(CLng(6)) 'Long
  loc_12D5516: var_D0 = &H28A
  loc_12D5522: LateIdCallSt
  loc_12D552A: var_94 = 0
  loc_12D5536: var_D0 = CVar(CLng(7)) 'Long
  loc_12D553B: var_F0 = "Name"
  loc_12D5544: LateIdCallSt
  loc_12D554F: var_94 = CVar(CLng(7)) 'Long
  loc_12D555A: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D5561: LateIdCallSt
  loc_12D556C: var_94 = CVar(CLng(7)) 'Long
  loc_12D5577: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D557E: LateIdCallSt
  loc_12D5589: var_94 = CVar(CLng(7)) 'Long
  loc_12D558E: var_D0 = &HBB8
  loc_12D559A: LateIdCallSt
  loc_12D55A2: var_94 = 0
  loc_12D55AE: var_D0 = CVar(CLng(8)) 'Long
  loc_12D55B3: var_F0 = "Gender"
  loc_12D55BC: LateIdCallSt
  loc_12D55C7: var_94 = CVar(CLng(8)) 'Long
  loc_12D55D2: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D55D9: LateIdCallSt
  loc_12D55E4: var_94 = CVar(CLng(8)) 'Long
  loc_12D55EF: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D55F6: LateIdCallSt
  loc_12D5601: var_94 = CVar(CLng(8)) 'Long
  loc_12D5606: var_D0 = &H2BC
  loc_12D5612: LateIdCallSt
  loc_12D561A: var_94 = 0
  loc_12D5626: var_D0 = CVar(CLng(9)) 'Long
  loc_12D562B: var_F0 = "Mobile No."
  loc_12D5634: LateIdCallSt
  loc_12D563F: var_94 = CVar(CLng(9)) 'Long
  loc_12D564A: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D5651: LateIdCallSt
  loc_12D565C: var_94 = CVar(CLng(9)) 'Long
  loc_12D5667: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D566E: LateIdCallSt
  loc_12D5679: var_94 = CVar(CLng(9)) 'Long
  loc_12D567E: var_D0 = &H514
  loc_12D568A: LateIdCallSt
  loc_12D5692: var_94 = 0
  loc_12D569E: var_D0 = CVar(CLng(&HA)) 'Long
  loc_12D56A3: var_F0 = "Email ID"
  loc_12D56AC: LateIdCallSt
  loc_12D56B7: var_94 = CVar(CLng(&HA)) 'Long
  loc_12D56C2: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D56C9: LateIdCallSt
  loc_12D56D4: var_94 = CVar(CLng(&HA)) 'Long
  loc_12D56DF: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D56E6: LateIdCallSt
  loc_12D56F1: var_94 = CVar(CLng(&HA)) 'Long
  loc_12D56F6: var_D0 = &H9C4
  loc_12D5702: LateIdCallSt
  loc_12D570A: var_94 = 0
  loc_12D5716: var_D0 = CVar(CLng(&HB)) 'Long
  loc_12D571B: var_F0 = "Designation"
  loc_12D5724: LateIdCallSt
  loc_12D572F: var_94 = CVar(CLng(&HB)) 'Long
  loc_12D573A: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D5741: LateIdCallSt
  loc_12D574C: var_94 = CVar(CLng(&HB)) 'Long
  loc_12D5757: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D575E: LateIdCallSt
  loc_12D5769: var_94 = CVar(CLng(&HB)) 'Long
  loc_12D576E: var_D0 = &H5DC
  loc_12D577A: LateIdCallSt
  loc_12D5782: var_94 = 0
  loc_12D578E: var_D0 = CVar(CLng(&HC)) 'Long
  loc_12D5793: var_F0 = "Pic.Path"
  loc_12D579C: LateIdCallSt
  loc_12D57A7: var_94 = CVar(CLng(&HC)) 'Long
  loc_12D57B2: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D57B9: LateIdCallSt
  loc_12D57C4: var_94 = CVar(CLng(&HC)) 'Long
  loc_12D57CF: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D57D6: LateIdCallSt
  loc_12D57E1: var_94 = CVar(CLng(&HC)) 'Long
  loc_12D57E6: var_D0 = 0
  loc_12D57F2: LateIdCallSt
  loc_12D57FA: var_94 = 0
  loc_12D5806: var_D0 = CVar(CLng(&HD)) 'Long
  loc_12D580B: var_F0 = "Sig.Path"
  loc_12D5814: LateIdCallSt
  loc_12D581F: var_94 = CVar(CLng(&HD)) 'Long
  loc_12D582A: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D5831: LateIdCallSt
  loc_12D583C: var_94 = CVar(CLng(&HD)) 'Long
  loc_12D5847: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D584E: LateIdCallSt
  loc_12D5859: var_94 = CVar(CLng(&HD)) 'Long
  loc_12D585E: var_D0 = 0
  loc_12D586A: LateIdCallSt
  loc_12D5872: var_94 = 0
  loc_12D587E: var_D0 = CVar(CLng(&HE)) 'Long
  loc_12D5883: var_F0 = "Lvl"
  loc_12D588C: LateIdCallSt
  loc_12D5897: var_94 = CVar(CLng(&HE)) 'Long
  loc_12D58A2: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D58A9: LateIdCallSt
  loc_12D58B4: var_94 = CVar(CLng(&HE)) 'Long
  loc_12D58BF: var_D0 = CVar(CInt(1)) 'Integer
  loc_12D58C6: LateIdCallSt
  loc_12D58D1: var_94 = CVar(CLng(&HE)) 'Long
  loc_12D58D6: var_D0 = &H15E
  loc_12D58E2: LateIdCallSt
  loc_12D58EC: Set var_AC = Nothing 
  loc_12D58F0: Exit Sub
End Sub

Public Sub Proc_265_93_1016CC4
  'Data Table: 5ADDB4
  Dim var_A0 As Variant
  Dim var_C8 As MSHFlexGrid
  Dim var_D8 As Long
  Dim var_C4 As Variant
  loc_1016AB6: var_88 = "Select '' as [All],Name As MemberType,Code From MemCatMast Where (Corporate='N') AND Logsite_Code='" & MemVar_1F95078 & "' Order By Name"
  loc_1016ACB: Me.Recordset15.CursorLocation = 3
  loc_1016AF1: New.Open CVar(var_88), CVar(MemVar_1F95044), 3
  loc_1016AFC: CVarUnk
  loc_1016B01: VerifyVarObj
  loc_1016B07: Set var_C4 = Me.GridSel
  loc_1016B0D: LateIdStAd
  loc_1016B2B: ReDim Preserve global_64(0 To 0)
  loc_1016B42: global_64(0) = 0
  loc_1016B47: Set var_C8 = Me.GridSel
  loc_1016B56: var_C8.Height = CVar(CDbl(4000))
  loc_1016B67: var_C8.Width = CVar(CDbl(4500))
  loc_1016B6C: var_A0 = 0
  loc_1016B75: var_D8 = &H258
  loc_1016B81: LateIdCallSt
  loc_1016B89: var_A0 = 1
  loc_1016B92: var_D8 = &HDAC
  loc_1016B9E: LateIdCallSt
  loc_1016BA6: var_A0 = 2
  loc_1016BAF: var_D8 = 0
  loc_1016BBB: LateIdCallSt
  loc_1016BC5: Set var_C8 = Nothing 
  loc_1016BC9: var_A0 = 0
  loc_1016BFA: Me.Check1.Width = CDbl((CLng(Me.GridSel.ColWidth)) - &H32))
  loc_1016C09: var_A0 = 0
  loc_1016C3A: Me.Check1.Height = CDbl((CLng(Me.GridSel.RowHeight)) - &HA))
  loc_1016C6B: Me.Check1.Left = (CDbl(Me.GridSel.Left) + CDbl(&H1E))
  loc_1016C9C: Me.Check1.Top = (CDbl(Me.GridSel.Top) + CDbl(&H1E))
  loc_1016CBB: Me.Check1.Value = CInt(0)
  loc_1016CC3: Exit Sub
End Sub

Public Sub Proc_265_94_E423A4
  'Data Table: 5ADDB4
  loc_E42380: Set var_88 = Me.TopCtrl1
  loc_E42386: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E4239F: If (CStr() = "Browse") Then
  loc_E423A2:   Exit Sub
  loc_E423A3: End If
  loc_E423A3: Exit Sub
End Sub

Public Sub Proc_265_95_DFDDB0
  'Data Table: 5ADDB4
  loc_DFDDAC: Exit Sub
End Sub

Public Sub Proc_265_96_FEF34C(arg_C, arg_10, arg_14) 'FEF34C
  'Data Table: 5ADDB4
  Dim var_86 As Integer
  Dim var_8E As Integer
  Dim var_116 As Integer
  loc_FEF167: var_8C = arg_14
  loc_FEF17D: If Not(((arg_C > 0) And (arg_C < &H10))) Then
  loc_FEF199:   MsgBox("Invalid Sector No!", &H40, var_D4, var_F4, var_114)
  loc_FEF1A9:   Proc_265_96_FEF34C = 0
  loc_FEF1B2: Else
  loc_FEF1C0:   If Not(((arg_10 > 0) And (arg_10 < 4))) Then
  loc_FEF1DC:     MsgBox("Invalid Block No!", &H40, var_D4, var_F4, var_114)
  loc_FEF1EC:     Proc_265_96_FEF34C = 
  loc_FEF1F5:   Else
  loc_FEF200:     If Not((Len(var_8C) <= &H10)) Then
  loc_FEF21C:       MsgBox("Data String Length Greater than 16 Characters!", &H40, var_D4, var_F4, var_114)
  loc_FEF22C:       Proc_265_96_FEF34C = 
  loc_FEF232:     End If
  loc_FEF232:   End If
  loc_FEF232: End If
  loc_FEF23F: var_8E = (((arg_C * 4) + arg_10) - 1)
  loc_FEF245: var_116 = var_8E
  loc_FEF24E: If Not (var_116 = &HFF) Then
  loc_FEF257:   If Not (var_116 = 0) Then
  loc_FEF260:     If Not (var_116 = 1) Then
  loc_FEF269:       If Not (var_116 = 2) Then
  loc_FEF272:         If Not (var_116 = 3) Then
  loc_FEF27B:           If Not (var_116 = 7) Then
  loc_FEF284:             If Not (var_116 = &HB) Then
  loc_FEF28D:               If Not (var_116 = &HF) Then
  loc_FEF296:                 If Not (var_116 = &H13) Then
  loc_FEF29F:                   If Not (var_116 = &H17) Then
  loc_FEF2A8:                     If Not (var_116 = &H1B) Then
  loc_FEF2B1:                       If Not (var_116 = &H1F) Then
  loc_FEF2BA:                         If Not (var_116 = &H23) Then
  loc_FEF2C3:                           If Not (var_116 = &H27) Then
  loc_FEF2CC:                             If Not (var_116 = &H2B) Then
  loc_FEF2D5:                               If Not (var_116 = &H2F) Then
  loc_FEF2DE:                                 If Not (var_116 = &H33) Then
  loc_FEF2E7:                                   If Not (var_116 = &H37) Then
  loc_FEF2F0:                                     If Not (var_116 = &H3B) Then
  loc_FEF2F9:                                       If (var_116 = &H3F) Then
  loc_FEF2FC:                                       End If
  loc_FEF2FC:                                     End If
  loc_FEF2FC:                                   End If
  loc_FEF2FC:                                 End If
  loc_FEF2FC:                               End If
  loc_FEF2FC:                             End If
  loc_FEF2FC:                           End If
  loc_FEF2FC:                         End If
  loc_FEF2FC:                       End If
  loc_FEF2FC:                     End If
  loc_FEF2FC:                   End If
  loc_FEF2FC:                 End If
  loc_FEF2FC:               End If
  loc_FEF2FC:             End If
  loc_FEF2FC:           End If
  loc_FEF2FC:         End If
  loc_FEF2FC:       End If
  loc_FEF2FC:     End If
  loc_FEF2FC:   End If
  loc_FEF315:   MsgBox("Invalid Block No Will Damage the Card!", &H40, var_D4, var_F4, var_114)
  loc_FEF328: Else
  loc_FEF33A:   Call 0.Method_arg_20 (arg_C, var_8E, var_8C)
  loc_FEF342:   var_86 = var_118
  loc_FEF345: End If
  loc_FEF345: Proc_265_96_FEF34C = var_86
End Sub

Public Sub Proc_265_97_10F8BE4
  'Data Table: 5ADDB4
  Dim Me As Recordset15
  Dim var_F4 As Variant
  Dim var_A8 As TextBox
  Dim var_BC As TextBox
  Dim unk_5ADDE0 As Connection15
  Dim var_E4 As Fields15
  Dim var_F8 As Field20
  loc_10F8907: If (Me.RecordCount = 0) Then
  loc_10F890A:   Proc_265_97_10F8BE4 = 
  loc_10F8910: End If
  loc_10F8914: Set var_90 = Me.TopCtrl1
  loc_10F891A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10F8933: If (CStr() = "Add") Then
  loc_10F893C:   var_F4 = 0
  loc_10F8971:   Set var_90 = Me.Txt
  loc_10F8977:   Call 0.Method_Proc_265_97_10F8BE40 (CInt(1), var_A8, var_AC, "Select Count(*) From Subgroup  Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and subcode='", var_A0, -1)
  loc_10F89A0:   Set var_B8 = Me.Txt
  loc_10F89A6:   Call 0.Method_Proc_265_97_10F8BE40 (CInt(1), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F89AE:   var_F4 = var_BC.Text
  loc_10F89C7:   unk_5ADDE0.Execute var_F8 & var_C0 & "'", var_108, 
  loc_10F89CF:    = var_A8.Tag.Fields
  loc_10F89D7:    = var_E4.Item()
  loc_10F89DF:    = var_F8.Value
  loc_10F8A1A:   If (var_108 > 0) Then
  loc_10F8A28:     var_108 = "Information"
  loc_10F8A38:     var_A0 = "Duplicate Name"
  loc_10F8A3E:     MsgBox(var_A0, &H40, var_108, var_128, var_148)
  loc_10F8A59:     Set var_90 = Me.Txt
  loc_10F8A5F:     Call 0.Method_Proc_265_97_10F8BE40 (CInt(1))
  loc_10F8A67:     var_A8.SetFocus
  loc_10F8A78:     Proc_265_97_10F8BE4 = &HFF
  loc_10F8A7E:   End If
  loc_10F8A81: Else
  loc_10F8A87:   var_F4 = 0
  loc_10F8ABC:   Set var_90 = Me.Txt
  loc_10F8AC2:   Call 0.Method_Proc_265_97_10F8BE40 (CInt(1), var_A8, var_AC, "Select Count(*) From SubGroup Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and subcode='", var_A0, -1)
  loc_10F8AEB:   Set var_B8 = Me.Txt
  loc_10F8AF1:   Call 0.Method_Proc_265_97_10F8BE40 (CInt(1), var_BC, var_C0, var_E4 & var_AC & "' and Name='")
  loc_10F8AF9:   var_F4 = var_BC.Text
  loc_10F8B23:   unk_5ADDE0.Execute var_F8 & var_C0 & "' And Name<>'" & global_72 & "'", var_108, var_A8
  loc_10F8B2B:    = var_A8.Tag.Fields
  loc_10F8B33:    = var_E4.Item()
  loc_10F8B3B:    = var_F8.Value
  loc_10F8B7A:   If (var_108 > 0) Then
  loc_10F8B9E:     MsgBox("Duplicate Name", &H40, "Information", var_128, var_148)
  loc_10F8BB9:     Set var_90 = Me.Txt
  loc_10F8BBF:     Call 0.Method_Proc_265_97_10F8BE40 (CInt(1))
  loc_10F8BC7:     var_A8.SetFocus
  loc_10F8BD8:     Proc_265_97_10F8BE4 = &HFF
  loc_10F8BDE:   End If
  loc_10F8BDE: End If
  loc_10F8BDE: Proc_265_97_10F8BE4 = var_A8
End Sub

Public Sub Proc_265_98_1089BA8
  'Data Table: 5ADDB4
  Dim Me As Recordset15
  Dim var_A8 As TextBox
  Dim unk_5ADDE0 As Connection15
  Dim var_D0 As Fields15
  Dim var_E4 As Field20
  loc_108993B: If (Me.RecordCount = 0) Then
  loc_108993E:   Proc_265_98_1089BA8 = 
  loc_1089944: End If
  loc_1089948: Set var_90 = Me.TopCtrl1
  loc_108994E: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1089967: If (CStr() = "Add") Then
  loc_10899A5:   Set var_90 = Me.Txt
  loc_10899AB:   Call 0.Method_Proc_265_98_1089BA80 (CInt(6), var_A8, var_AC, "Select Count(*) From Subgroup  Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and CardNo='", var_A0, -1)
  loc_10899CC:   unk_5ADDE0.Execute var_D0 & var_AC & "'", 0, var_E4
  loc_10899DC:    = var_D0.Item()
  loc_10899E4:    = var_E4.Value
  loc_1089A15:   If (var_A8.Text.Fields > 0) Then
  loc_1089A33:     var_A0 = "Duplicate Card No."
  loc_1089A39:     MsgBox(var_A0, &H40, "Information", var_114, var_134)
  loc_1089A54:     Set var_90 = Me.Txt
  loc_1089A5A:     Call 0.Method_Proc_265_98_1089BA80 (CInt(6))
  loc_1089A62:     var_A8.SetFocus
  loc_1089A73:     Proc_265_98_1089BA8 = &HFF
  loc_1089A79:   End If
  loc_1089A7C: Else
  loc_1089AB7:   Set var_90 = Me.Txt
  loc_1089ABD:   Call 0.Method_Proc_265_98_1089BA80 (CInt(6), var_A8, var_AC, "Select Count(*) From SubGroup Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and CardNo='", var_A0, -1)
  loc_1089AEF:   unk_5ADDE0.Execute var_D0 & var_AC & "' And CardNo<>'" & global_76 & "'", 0, var_E4
  loc_1089AFF:    = var_D0.Item(var_A8)
  loc_1089B07:    = var_E4.Value
  loc_1089B3C:   If (var_A8.Text.Fields > 0) Then
  loc_1089B60:     MsgBox("Duplicate Card No.", &H40, "Information", var_114, var_134)
  loc_1089B7B:     Set var_90 = Me.Txt
  loc_1089B81:     Call 0.Method_Proc_265_98_1089BA80 (CInt(6))
  loc_1089B89:     var_A8.SetFocus
  loc_1089B9A:     Proc_265_98_1089BA8 = &HFF
  loc_1089BA0:   End If
  loc_1089BA0: End If
  loc_1089BA0: Proc_265_98_1089BA8 = var_A8
End Sub

Public Sub Proc_265_99_FA2734(arg_C, arg_10) 'FA2734
  'Data Table: 5ADDB4
  Dim var_8A As Integer
  Dim var_112 As Integer
  loc_FA25CC: If Not(((arg_C > 0) And (arg_C < &H10))) Then
  loc_FA25E8:   MsgBox("Invalid Sector No!", &H40, var_D0, var_F0, var_110)
  loc_FA25F8:   Proc_265_99_FA2734 = 
  loc_FA2601: Else
  loc_FA260F:   If Not(((arg_10 > 0) And (arg_10 < 4))) Then
  loc_FA262B:     MsgBox("Invalid Block No!", &H40, var_D0, var_F0, var_110)
  loc_FA263B:     Proc_265_99_FA2734 = 
  loc_FA2641:   End If
  loc_FA2641: End If
  loc_FA264E: var_8A = (((arg_C * 4) + arg_10) - 1)
  loc_FA2654: var_112 = var_8A
  loc_FA265D: If Not (var_112 = 3) Then
  loc_FA2666:   If Not (var_112 = 7) Then
  loc_FA266F:     If Not (var_112 = &HB) Then
  loc_FA2678:       If Not (var_112 = &HF) Then
  loc_FA2681:         If Not (var_112 = &H13) Then
  loc_FA268A:           If Not (var_112 = &H17) Then
  loc_FA2693:             If Not (var_112 = &H1B) Then
  loc_FA269C:               If Not (var_112 = &H1F) Then
  loc_FA26A5:                 If Not (var_112 = &H23) Then
  loc_FA26AE:                   If Not (var_112 = &H27) Then
  loc_FA26B7:                     If Not (var_112 = &H2B) Then
  loc_FA26C0:                       If Not (var_112 = &H2F) Then
  loc_FA26C9:                         If Not (var_112 = &H33) Then
  loc_FA26D2:                           If Not (var_112 = &H37) Then
  loc_FA26DB:                             If Not (var_112 = &H3B) Then
  loc_FA26E4:                               If (var_112 = &H3F) Then
  loc_FA26E7:                               End If
  loc_FA26E7:                             End If
  loc_FA26E7:                           End If
  loc_FA26E7:                         End If
  loc_FA26E7:                       End If
  loc_FA26E7:                     End If
  loc_FA26E7:                   End If
  loc_FA26E7:                 End If
  loc_FA26E7:               End If
  loc_FA26E7:             End If
  loc_FA26E7:           End If
  loc_FA26E7:         End If
  loc_FA26E7:       End If
  loc_FA26E7:     End If
  loc_FA26E7:   End If
  loc_FA2700:   MsgBox("Invalid Block No Will Damage the Card!", &H40, var_D0, var_F0, var_110)
  loc_FA2713: Else
  loc_FA2722:   Call 0.Method_arg_1C (arg_C, var_8A, var_118)
  loc_FA272A:   var_88 = var_118
  loc_FA272D: End If
  loc_FA272D: Proc_265_99_FA2734 = var_112
End Sub

Public Sub Proc_265_100_FA2398
  'Data Table: 5ADDB4
  Dim var_90 As TextBox
  Dim var_C4 As Variant
  Dim var_10C As Variant
  Dim var_EC As TextBox
  loc_FA2242: Set var_8C = Me.TxtA
  loc_FA2248: Call 0.Method_Proc_265_100_FA23980 (CInt(9), var_90)
  loc_FA2267: If (var_90.Text <> vbNullString) Then
  loc_FA227A:   Set var_8C = Me.TxtA
  loc_FA2280:   Call 0.Method_Proc_265_100_FA23980 (CInt(9), var_90)
  loc_FA2296:   var_C4 = InStr(1, CVar(var_90), "@", 0)
  loc_FA22B4:   Set var_E8 = Me.TxtA
  loc_FA22BA:   Call 0.Method_Proc_265_100_FA23980 (CInt(9), var_EC)
  loc_FA22C2:   var_10C = CVar(var_EC) 'Address
  loc_FA22F6:   If CBool((var_C4 = 0) Or (InStr(1, var_10C, ".", 0) = 0)) Then
  loc_FA2312:     MsgBox("Please fill a Valid EMail Id.", 0, var_C4, var_E4, var_10C)
  loc_FA2327:     Proc_265_100_FA2398 = 0
  loc_FA232D:   End If
  loc_FA2338:   Set var_8C = Me.TxtA
  loc_FA233E:   Call 0.Method_Proc_265_100_FA23980 (CInt(9))
  loc_FA2364:   Set var_E8 = Me.TxtA
  loc_FA236A:   Call 0.Method_Proc_265_100_FA23980 (CInt(9), var_EC)
  loc_FA2372:   var_EC.Text = CStr(LCase(CVar(var_90)))
  loc_FA238A: End If
  loc_FA238F: Proc_265_100_FA2398 = &HFF
End Sub

Public Sub Proc_265_101_1202CE8(arg_C, arg_10) '1202CE8
  'Data Table: 5ADDB4
  Dim var_B4 As Integer
  Dim var_90 As Integer
  Dim var_A4 As Variant
  Dim var_E4 As Long
  Dim var_F8 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_190 As Variant
  Dim var_10C As Variant
  Dim var_170 As Variant
  Dim var_160 As Variant
  Dim var_1A0 As Variant
  Dim var_1A8 As String
  loc_1202852: On Error Goto loc_1202CD5
  loc_120285A: global_80 = &HFF
  loc_1202863: global_84 = vbNullString
  loc_120286A: var_8C = vbNullString
  loc_1202875: CRefVarAry
  loc_120287D: For var_94 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_94 'Integer
  loc_120289E:   If (arg_C(var_8E) = 0) Then
  loc_12028A1:     GoTo loc_1202BB7
  loc_12028A4:   End If
  loc_12028B5:   var_90 = CInt(arg_C(var_8E))
  loc_12028BF:   var_A4 = CVar(CLng(var_90)) 'Long
  loc_12028C4:   var_E4 = 0
  loc_12028F3:   If (CStr(Me.GridSel.TextMatrix)) = "ü") Then
  loc_12028FF:     If (CInt(arg_10) = 0) Then
  loc_1202906:       var_A4 = CVar(CLng(var_90)) 'Long
  loc_120290B:       var_E4 = 2
  loc_120292D:       var_190 = CVar(var_8C) 'String
  loc_120297F:       var_1A0 = (CVar(CLng(var_90)) + IIf((var_8C = vbNullString), CVar(CStr(Me.GridSel.TextMatrix))), CVar(2 & CStr(Me.GridSel.TextMatrix)))))
  loc_1202984:       var_8C = CStr(var_1A0)
  loc_12029A5:     Else
  loc_12029AE:       If (CInt(arg_10) = 1) Then
  loc_12029B5:         var_A4 = CVar(CLng(var_90)) 'Long
  loc_12029BA:         var_E4 = 2
  loc_12029DC:         var_190 = CVar(var_8C) 'String
  loc_12029E6:         var_1A8 = "," & "'"
  loc_1202A42:         var_180 = IIf((var_8C = vbNullString), CVar("'" & CStr(Me.GridSel.TextMatrix)) & "'"), CVar(2 & CStr(Me.GridSel.TextMatrix)) & "'"))
  loc_1202A4A:         var_1A0 = (CVar(CLng(var_90)) + var_180)
  loc_1202A4F:         var_8C = CStr(var_1A0)
  loc_1202A77:       End If
  loc_1202A77:     End If
  loc_1202A81:     var_A4 = CVar(CLng(var_90)) 'Long
  loc_1202ABF:     If (Len(1 & CStr(Me.GridSel.TextMatrix))) < &HFF) Then
  loc_1202AC6:       var_A4 = CVar(CLng(var_90)) 'Long
  loc_1202ACB:       var_E4 = 1
  loc_1202AF0:       var_190 = CVar(global_84) 'String
  loc_1202B21:       var_170 = CVar(1 & CStr(Me.GridSel.TextMatrix))) 'String
  loc_1202B28:       var_160 = CVar(CStr(Me.GridSel.TextMatrix))) 'String
  loc_1202B3D:       var_180 = IIf((global_84 = vbNullString), var_160, var_170)
  loc_1202B45:       var_1A0 = (CVar(CLng(var_90)) + var_180)
  loc_1202B50:       global_84 = CStr(var_1A0)
  loc_1202B73:     End If
  loc_1202B77:     var_A4 = CVar(CLng(var_90)) 'Long
  loc_1202B7C:     var_E4 = 0
  loc_1202B85:     var_10C = vbNullString
  loc_1202B8F:     Set var_F8 = Me.GridSel
  loc_1202B95:     LateIdCallSt
  loc_1202BA3:   Else
  loc_1202BAA:     var_B4 = 0
  loc_1202BB3:     VarIndexSt
  loc_1202BB7:   End If
  loc_1202BB7:   ' Referenced from: 12028A1
  loc_1202BBA: Next var_94 'Integer
  loc_1202BC7: CRefVarAry
  loc_1202BCF: For var_1B4 = 0 To CInt(UBound(arg_C, 1)): var_8E = var_1B4 'Integer
  loc_1202C07:   If CBool(arg_C(var_8E) <> 0) Then
  loc_1202C0E:     var_A4 = CVar(CLng(CInt(arg_C(var_8E)))) 'Long
  loc_1202C13:     var_E4 = 0
  loc_1202C1C:     var_10C = "ü"
  loc_1202C26:     Set var_F8 = Me.GridSel
  loc_1202C2C:     LateIdCallSt
  loc_1202C37:   End If
  loc_1202C3A: Next var_1B4 'Integer
  loc_1202C47: If (var_8C = vbNullString) Then
  loc_1202C4A:   var_A4 = 0
  loc_1202C53:   var_E4 = 1
  loc_1202C66:   var_C4 = Me.GridSel.TextMatrix)
  loc_1202C8E:   MsgBox(CVar("Select " & CStr(var_C4)), &H40, var_160, var_170, var_180)
  loc_1202CAA:   Set var_F8 = Me.GridSel
  loc_1202CC3:   Proc_265_101_1202CE8 = 0
  loc_1202CC9: End If
  loc_1202CCC: var_88 = var_8C
  loc_1202CCF: Proc_265_101_1202CE8 = GridSel.DispID_8001
  loc_1202CD5: ' Referenced from: 1202852
  loc_1202CDD: Proc_6_60_E63754(0, var_C4)
  loc_1202CE2: Proc_265_101_1202CE8 = var_E4
End Sub

Public Sub Proc_265_102_13E8E10(arg_C) '13E8E10
  'Data Table: 5ADDB4
  Dim var_8C As Recordset15
  loc_13E83F1: Set var_8C = arg_C 
  loc_13E8419: var_8C.Fields.Append "mLine", &HC8, 2
  loc_13E8445: var_8C.Fields.Append "SNo", 2, 2
  loc_13E8471: var_8C.Fields.Append "Relation", &HC8, &H14
  loc_13E849D: var_8C.Fields.Append "Name", &HC8, &H4B
  loc_13E84C9: var_8C.Fields.Append "Sex", &HC8, 6
  loc_13E84F5: var_8C.Fields.Append "MaritalStatus", &HC8, 7
  loc_13E8521: var_8C.Fields.Append "Birthday", 7, 0
  loc_13E854D: var_8C.Fields.Append "PlaceOfBirth", &HC8, &H32
  loc_13E8579: var_8C.Fields.Append "Anniversary", 7, 0
  loc_13E85A5: var_8C.Fields.Append "Phone", &HC8, &H32
  loc_13E85D1: var_8C.Fields.Append "Mobile", &HC8, &H32
  loc_13E85FD: var_8C.Fields.Append "Fax", &HC8, &H3C
  loc_13E8629: var_8C.Fields.Append "EMail", &HC8, &H32
  loc_13E8655: var_8C.Fields.Append "Nationality", &HC8, &H1E
  loc_13E8681: var_8C.Fields.Append "Religion", &HC8, &H1E
  loc_13E86AD: var_8C.Fields.Append "BloodGroup", &HC8, 3
  loc_13E86D9: var_8C.Fields.Append "ProOcc", &HC8, &H32
  loc_13E8705: var_8C.Fields.Append "EdQuali", &HC8, &H32
  loc_13E8731: var_8C.Fields.Append "TBusiness", &HC8, &H32
  loc_13E875D: var_8C.Fields.Append "TurnOver", &HC8, &H19
  loc_13E8789: var_8C.Fields.Append "Desig", &HC8, &H32
  loc_13E87B5: var_8C.Fields.Append "Passport", &HC8, &H32
  loc_13E87E1: var_8C.Fields.Append "PAN", &HC8, &H14
  loc_13E880D: var_8C.Fields.Append "SpInterest", &HC8, &H50
  loc_13E8839: var_8C.Fields.Append "MemberId", &HC8, &H19
  loc_13E8865: var_8C.Fields.Append "CardRegId", &HC8, &HB
  loc_13E8891: var_8C.Fields.Append "CardIssDate", 7, 0
  loc_13E88BD: var_8C.Fields.Append "CardValidUpto", 7, 0
  loc_13E88E9: var_8C.Fields.Append "MemberType", &HC8, &H4B
  loc_13E8915: var_8C.Fields.Append "AcName", &HC8, &H4B
  loc_13E8941: var_8C.Fields.Append "AllowCredit", &HC8, 3
  loc_13E896D: var_8C.Fields.Append "CreditLimit", 5, &H13
  loc_13E8999: var_8C.Fields.Append "Discount", 5, &H13
  loc_13E89C5: var_8C.Fields.Append "ActiveYN", &HC8, 3
  loc_13E89F1: var_8C.Fields.Append "BlackListed", &HC8, 3
  loc_13E8A1D: var_8C.Fields.Append "ReasonBlackList", &HC8, &H23
  loc_13E8A49: var_8C.Fields.Append "BlackListedBy", &HC8, &HA
  loc_13E8A75: var_8C.Fields.Append "AddRType", &HC8, &H1E
  loc_13E8AA1: var_8C.Fields.Append "AddR1", &HC8, &H32
  loc_13E8ACD: var_8C.Fields.Append "AddR2", &HC8, &H32
  loc_13E8AF9: var_8C.Fields.Append "AddR3", &HC8, &H32
  loc_13E8B25: var_8C.Fields.Append "CityR", &HC8, &H23
  loc_13E8B51: var_8C.Fields.Append "StateR", &HC8, &H23
  loc_13E8B7D: var_8C.Fields.Append "CountryR", &HC8, &H23
  loc_13E8BA9: var_8C.Fields.Append "PinCodeR", &HC8, &HC
  loc_13E8BD5: var_8C.Fields.Append "AddWType", &HC8, &H1E
  loc_13E8C01: var_8C.Fields.Append "AddW1", &HC8, &H32
  loc_13E8C2D: var_8C.Fields.Append "AddW2", &HC8, &H32
  loc_13E8C59: var_8C.Fields.Append "AddW3", &HC8, &H32
  loc_13E8C85: var_8C.Fields.Append "CityW", &HC8, &H23
  loc_13E8CB1: var_8C.Fields.Append "StateW", &HC8, &H23
  loc_13E8CDD: var_8C.Fields.Append "CountryW", &HC8, &H23
  loc_13E8D09: var_8C.Fields.Append "PinCodeW", &HC8, &HC
  loc_13E8D35: var_8C.Fields.Append "CurrBal", 5, &H13
  loc_13E8D61: var_8C.Fields.Append "CurBalType", &HC8, 2
  loc_13E8D8D: var_8C.Fields.Append "Picture", &HCD, &H3E8
  loc_13E8DB9: var_8C.Fields.Append "Mark", &HC8, 1
  loc_13E8DC9: var_8C.CursorType = 3
  loc_13E8DD6: var_8C.LockType = 3
  loc_13E8DF5: var_8C.Open var_A0, var_B0, -1
  loc_13E8DFC: Set var_8C = Nothing 
  loc_13E8E03: Set var_88 = arg_C 
  loc_13E8E07: Proc_265_102_13E8E10 = -1
End Sub

Public Sub Proc_265_103_10EA5D0(arg_C) '10EA5D0
  'Data Table: 5ADDB4
  Dim var_98 As TextBox
  Dim var_8C As Variant
  loc_10EA2AE: Set var_8C = Me.Txt
  loc_10EA2B4: Call 0.Method_Proc_265_103_10EA5D0C (var_8E, var_86)
  loc_10EA2C4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_10EA2D9:   If ((var_86 = 9) Or (var_86 = &HA)) Then
  loc_10EA2DC:     GoTo loc_10EA341
  loc_10EA2DF:   End If
  loc_10EA2E6:   If (var_86 = &H23) Then
  loc_10EA2FA:     Set var_8C = Me.Txt
  loc_10EA300:     Call 0.Method_Proc_265_103_10EA5D00 (CInt(var_86), var_98)
  loc_10EA308:     var_98.Locked = Not(arg_C)
  loc_10EA317:   Else
  loc_10EA327:     Set var_8C = Me.Txt
  loc_10EA32D:     Call 0.Method_Proc_265_103_10EA5D00 (CInt(var_86), var_98)
  loc_10EA335:     var_98.Enabled = arg_C
  loc_10EA341:   End If
  loc_10EA341:   ' Referenced from: 10EA2DC
  loc_10EA344: Next var_92 'Byte
  loc_10EA358: Set var_8C = Me.TxtA
  loc_10EA35E: Call 0.Method_Proc_265_103_10EA5D08 (var_8E, var_86)
  loc_10EA36B: For var_9C =  To CByte(var_8E): CByte(0) = var_9C 'Byte
  loc_10EA381:   Set var_8C = Me.TxtA
  loc_10EA387:   Call 0.Method_Proc_265_103_10EA5D00 (CInt(var_86), var_98)
  loc_10EA38F:   var_98.Enabled = arg_C
  loc_10EA39E: Next var_9C 'Byte
  loc_10EA3B1: Me.ChkCorresAdd.Enabled = arg_C
  loc_10EA3CB: Set var_8C = Me.CmdAdd
  loc_10EA3D1: Call 0.Method_Proc_265_103_10EA5D00 (CInt(3), var_98)
  loc_10EA3D9: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_8001000D(arg_C)
  loc_10EA3F2: Set var_8C = Me.Txt
  loc_10EA3F8: Call 0.Method_Proc_265_103_10EA5D00 (CInt(0), var_98)
  loc_10EA400: var_98.Enabled = False
  loc_10EA419: Set var_8C = Me.Txt
  loc_10EA41F: Call 0.Method_Proc_265_103_10EA5D00 (CInt(9), var_98)
  loc_10EA427: var_98.Enabled = False
  loc_10EA440: Set var_8C = Me.Txt
  loc_10EA446: Call 0.Method_Proc_265_103_10EA5D00 (CInt(&HA), var_98)
  loc_10EA44E: var_98.Enabled = False
  loc_10EA466: Me.txtCurrBal.Enabled = False
  loc_10EA47B: Set var_8C = Me.TxtA
  loc_10EA481: Call 0.Method_Proc_265_103_10EA5D00 (CInt(4), var_98)
  loc_10EA489: var_98.Enabled = False
  loc_10EA4A2: Set var_8C = Me.TxtA
  loc_10EA4A8: Call 0.Method_Proc_265_103_10EA5D00 (CInt(5), var_98)
  loc_10EA4B0: var_98.Enabled = False
  loc_10EA4C9: Set var_8C = Me.Txt
  loc_10EA4CF: Call 0.Method_Proc_265_103_10EA5D00 (CInt(&H20), var_98)
  loc_10EA4D7: var_98.Enabled = True
  loc_10EA4F0: Set var_8C = Me.Txt
  loc_10EA4F6: Call 0.Method_Proc_265_103_10EA5D00 (CInt(&H21), var_98)
  loc_10EA4FE: var_98.Enabled = True
  loc_10EA517: Set var_8C = Me.Txt
  loc_10EA51D: Call 0.Method_Proc_265_103_10EA5D00 (CInt(&H22), var_98)
  loc_10EA525: var_98.Enabled = True
  loc_10EA53E: Set var_8C = Me.Txt
  loc_10EA544: Call 0.Method_Proc_265_103_10EA5D00 (CInt(&H31), var_98)
  loc_10EA54C: var_98.Enabled = True
  loc_10EA565: Set var_8C = Me.Txt
  loc_10EA56B: Call 0.Method_Proc_265_103_10EA5D00 (CInt(&H32), var_98)
  loc_10EA573: var_98.Enabled = True
  loc_10EA58C: Set var_8C = Me.Txt
  loc_10EA592: Call 0.Method_Proc_265_103_10EA5D00 (CInt(&H33), var_98)
  loc_10EA59A: var_98.Enabled = True
  loc_10EA5B3: Set var_8C = Me.Txt
  loc_10EA5B9: Call 0.Method_Proc_265_103_10EA5D00 (CInt(&H34), var_98)
  loc_10EA5C1: var_98.Enabled = True
  loc_10EA5CD: Exit Sub
  loc_10EA5CE: If  Then Exit Sub
  loc_10EA5CE: End If
End Sub

Public Sub Proc_265_104_124C664
  'Data Table: 5ADDB4
  Dim var_98 As TextBox
  Dim var_A8 As Variant
  Dim var_8C As Variant
  Dim var_10C As Variant
  loc_124C11E: Set var_8C = Me.Txt
  loc_124C124: Call 0.Method_Proc_265_104_124C664C (var_8E, var_86)
  loc_124C134: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_124C14A:   Set var_8C = Me.Txt
  loc_124C150:   Call 0.Method_Proc_265_104_124C6640 (CInt(var_86), var_98)
  loc_124C158:   var_98.Text = vbNullString
  loc_124C174:   Set var_8C = Me.Txt
  loc_124C17A:   Call 0.Method_Proc_265_104_124C6640 (CInt(var_86), var_98)
  loc_124C182:   var_98.Tag = vbNullString
  loc_124C191: Next var_92 'Byte
  loc_124C1B5: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C1CA: Me.ImgMemPhoto.Picture = var_8C
  loc_124C1E3: Me.ImgMemPhoto.Tag = vbNullString
  loc_124C1F1: Set var_8C = Me.ImgMemPhoto
  loc_124C1F7: var_8C.Visible = True
  loc_124C21D: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C232: Me.ImgMemSign.Picture = var_8C
  loc_124C24B: Me.ImgMemSign.Tag = vbNullString
  loc_124C259: Set var_8C = Me.ImgMemSign
  loc_124C25F: var_8C.Visible = True
  loc_124C285: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C29A: Me.ImgFamilyMemPhoto.Picture = var_8C
  loc_124C2B3: Me.ImgFamilyMemPhoto.Tag = vbNullString
  loc_124C2C1: Set var_8C = Me.ImgFamilyMemPhoto
  loc_124C2C7: var_8C.Visible = True
  loc_124C2ED: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C302: Me.ImgFamilyMemSign.Picture = var_8C
  loc_124C31B: Me.ImgFamilyMemSign.Tag = vbNullString
  loc_124C329: Set var_8C = Me.ImgFamilyMemSign
  loc_124C32F: var_8C.Visible = True
  loc_124C355: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C36A: Me.ImgPropMemPhoto.Picture = var_8C
  loc_124C383: Me.ImgPropMemPhoto.Tag = vbNullString
  loc_124C391: Set var_8C = Me.ImgPropMemPhoto
  loc_124C397: var_8C.Visible = True
  loc_124C3BD: Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_E8
  loc_124C3D2: Me.ImgPropMemSign.Picture = var_8C
  loc_124C3EB: Me.ImgPropMemSign.Tag = vbNullString
  loc_124C3FF: Me.ImgPropMemSign.Visible = True
  loc_124C414: Me.LblOpBalType.Caption = vbNullString
  loc_124C429: Me.LblCurBalType.Caption = vbNullString
  loc_124C43E: Me.txtCurrBal.Text = vbNullString
  loc_124C459: Me.FGrid.Rows = 1
  loc_124C476: var_10C = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_124C47E: Set var_98 = Me.FGrid
  loc_124C4AD: Me.FGrid.FixedRows = 1
  loc_124C4C8: Me.FGrid1.Rows = 1
  loc_124C4E5: var_10C = CVar(CStr(CLng(Me.FGrid1.Rows))) 'String
  loc_124C4ED: Set var_98 = Me.FGrid1
  loc_124C51C: Me.FGrid1.FixedRows = 1
  loc_124C537: Me.FAGrid.Rows = 1
  loc_124C554: var_10C = CVar(CStr(CLng(Me.FAGrid.Rows))) 'String
  loc_124C55C: Set var_98 = Me.FAGrid
  loc_124C58B: Me.FAGrid.FixedRows = 1
  loc_124C5A6: Me.FPGrid.Rows = 1
  loc_124C5CB: Set var_98 = Me.FPGrid
  loc_124C5FA: Me.FPGrid.FixedRows = 1
  loc_124C624: Proc_183_1_F5BEA0(Me, CStr(-2147483643), CStr(&HC00000), FPGrid.DispID_10000, CVar(CStr(CLng(Me.FAGrid.Rows))), FAGrid.DispID_10000, CVar(CStr(CLng(Me.FAGrid.Rows))), FGrid1.DispID_10000)
  loc_124C642: Me.txtCurrBal.BackColor = -2147483643
  loc_124C659: Me.txtCurrBal.ForeColor = &HC00000
  loc_124C661: Exit Sub
End Sub

Public Sub Proc_265_105_EB0944
  'Data Table: 5ADDB4
  Dim var_98 As TextBox
  Dim var_8C As CheckBox
  loc_EB08B8: Set var_8C = Me.TxtA
  loc_EB08BE: Call 0.Method_Proc_265_105_EB0944C (var_8E, var_86)
  loc_EB08CC: For var_92 =  To (var_8E - 1): 0 = var_92 'Integer
  loc_EB08DF:   Set var_8C = Me.TxtA
  loc_EB08E5:   Call 0.Method_Proc_265_105_EB09440 (var_86, var_98)
  loc_EB08ED:   var_98.Text = vbNullString
  loc_EB0906:   Set var_8C = Me.TxtA
  loc_EB090C:   Call 0.Method_Proc_265_105_EB09440 (var_86, var_98)
  loc_EB0914:   var_98.Tag = vbNullString
  loc_EB0923: Next var_92 'Integer
  loc_EB0938: Me.ChkCorresAdd.Value = CInt(0)
  loc_EB0940: Exit Sub
End Sub

Public Sub Proc_265_106_10506D4
  'Data Table: 5ADDB4
  Dim var_A8 As Boolean
  loc_1050478: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_105048A:   Me.DGAcName.Visible = False
  loc_1050492: End If
  loc_10504AE: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_10504C0:   Me.DGUnderAc.Visible = False
  loc_10504C8: End If
  loc_10504E4: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_10504F6:   Me.DGCity.Visible = False
  loc_10504FE: End If
  loc_1050519: If (Me.FrmList.Visible = &HFF) Then
  loc_1050528:   Me.FrmList.Visible = False
  loc_1050530: End If
  loc_105054C: If (CBool(Me.DgMemType.Visible) = &HFF) Then
  loc_105055E:   Me.DgMemType.Visible = False
  loc_1050566: End If
  loc_1050582: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_1050594:   Me.FGPoint.Visible = False
  loc_105059C: End If
  loc_10505B8: If (CBool(Me.DGMemMeshAc.Visible) = &HFF) Then
  loc_10505CA:   Me.DGMemMeshAc.Visible = False
  loc_10505D2: End If
  loc_10505ED: If (Me.frmList1.Visible = &HFF) Then
  loc_10505FC:   Me.frmList1.Visible = False
  loc_1050604: End If
  loc_105061F: If (Me.FrmList2.Visible = &HFF) Then
  loc_105062E:   Me.FrmList2.Visible = False
  loc_1050636: End If
  loc_1050651: If (Me.FrmList4.Visible = &HFF) Then
  loc_1050660:   Me.FrmList4.Visible = False
  loc_1050668: End If
  loc_1050683: If (Me.CmdImgDelete.Visible = &HFF) Then
  loc_1050692:   Me.CmdImgDelete.Visible = False
  loc_105069A: End If
  loc_10506B6: If (CBool(Me.DGRev.Visible) = &HFF) Then
  loc_10506C8:   Me.DGRev.Visible = False
  loc_10506D0: End If
  loc_10506D0: Exit Sub
  loc_10506D1: Set var_A8 = 
End Sub

Public Sub Proc_265_107_1057E24
  'Data Table: 5ADDB4
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_1057BA0: Set var_88 = Me.FGrid
  loc_1057BAF: var_88.Height = CVar(CDbl(1380))
  loc_1057BC0: var_88.Left = CVar(CDbl(240))
  loc_1057BD1: var_88.Top = CVar(CDbl(2475))
  loc_1057BE2: var_88.RowHeightMin = &HDC
  loc_1057BF3: var_88.Cols = 6
  loc_1057BF8: var_98 = 0
  loc_1057C04: var_B8 = CVar(CLng(0)) 'Long
  loc_1057C09: var_D8 = "S.No"
  loc_1057C12: LateIdCallSt
  loc_1057C1D: var_98 = CVar(CLng(0)) 'Long
  loc_1057C28: var_B8 = CVar(CInt(1)) 'Integer
  loc_1057C2F: LateIdCallSt
  loc_1057C3A: var_98 = CVar(CLng(0)) 'Long
  loc_1057C3F: var_B8 = &H1C2
  loc_1057C4B: LateIdCallSt
  loc_1057C53: var_98 = 0
  loc_1057C5F: var_B8 = CVar(CLng(5)) 'Long
  loc_1057C64: var_D8 = "Voucher No"
  loc_1057C6D: LateIdCallSt
  loc_1057C78: var_98 = CVar(CLng(5)) 'Long
  loc_1057C83: var_B8 = CVar(CInt(1)) 'Integer
  loc_1057C8A: LateIdCallSt
  loc_1057C95: var_98 = CVar(CLng(5)) 'Long
  loc_1057C9A: var_B8 = 0
  loc_1057CA6: LateIdCallSt
  loc_1057CAE: var_98 = 0
  loc_1057CBA: var_B8 = CVar(CLng(1)) 'Long
  loc_1057CBF: var_D8 = "Ref. Date"
  loc_1057CC8: LateIdCallSt
  loc_1057CD3: var_98 = CVar(CLng(1)) 'Long
  loc_1057CDE: var_B8 = CVar(CInt(1)) 'Integer
  loc_1057CE5: LateIdCallSt
  loc_1057CF0: var_98 = CVar(CLng(1)) 'Long
  loc_1057CF5: var_B8 = &H5DC
  loc_1057D01: LateIdCallSt
  loc_1057D09: var_98 = 0
  loc_1057D15: var_B8 = CVar(CLng(2)) 'Long
  loc_1057D1A: var_D8 = "Narration"
  loc_1057D23: LateIdCallSt
  loc_1057D2E: var_98 = CVar(CLng(2)) 'Long
  loc_1057D39: var_B8 = CVar(CInt(1)) 'Integer
  loc_1057D40: LateIdCallSt
  loc_1057D4B: var_98 = CVar(CLng(2)) 'Long
  loc_1057D50: var_B8 = &H640
  loc_1057D5C: LateIdCallSt
  loc_1057D64: var_98 = 0
  loc_1057D70: var_B8 = CVar(CLng(3)) 'Long
  loc_1057D75: var_D8 = "Amount"
  loc_1057D7E: LateIdCallSt
  loc_1057D89: var_98 = CVar(CLng(3)) 'Long
  loc_1057D94: var_B8 = CVar(CInt(7)) 'Integer
  loc_1057D9B: LateIdCallSt
  loc_1057DA6: var_98 = CVar(CLng(3)) 'Long
  loc_1057DAB: var_B8 = &H4B0
  loc_1057DB7: LateIdCallSt
  loc_1057DBF: var_98 = 0
  loc_1057DCB: var_B8 = CVar(CLng(4)) 'Long
  loc_1057DD0: var_D8 = "Cr/Dr"
  loc_1057DD9: LateIdCallSt
  loc_1057DE4: var_98 = CVar(CLng(4)) 'Long
  loc_1057DEF: var_B8 = CVar(CInt(1)) 'Integer
  loc_1057DF6: LateIdCallSt
  loc_1057E01: var_98 = CVar(CLng(4)) 'Long
  loc_1057E06: var_B8 = &H258
  loc_1057E12: LateIdCallSt
  loc_1057E1C: Set var_88 = Nothing 
  loc_1057E20: Exit Sub
End Sub

Public Sub Proc_265_108_10E24F4
  'Data Table: 5ADDB4
  Dim var_94 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_D0 As Variant
  Dim var_F0 As String
  loc_10E21E7: Me.FGrid1.Left = CVar(CDbl(4250))
  loc_10E2202: Me.FGrid1.Top = CVar(CDbl(400))
  loc_10E220E: Set var_AC = Me.FGrid1
  loc_10E221D: var_AC.Width = CVar(CDbl(7900))
  loc_10E222E: var_AC.Cols = 7
  loc_10E223F: var_AC.Rows = 2
  loc_10E2258: global_280 = CStr(CLng(var_AC.BackColor))
  loc_10E2262: var_94 = 0
  loc_10E226E: var_D0 = CVar(CLng(0)) 'Long
  loc_10E2273: var_F0 = "O"
  loc_10E227C: LateIdCallSt
  loc_10E2287: var_94 = CVar(CLng(0)) 'Long
  loc_10E228C: var_D0 = &H64
  loc_10E2298: LateIdCallSt
  loc_10E22A3: var_94 = CVar(CLng(0)) 'Long
  loc_10E22AE: var_D0 = CVar(CInt(4)) 'Integer
  loc_10E22B5: LateIdCallSt
  loc_10E22BD: var_94 = 0
  loc_10E22C9: var_D0 = CVar(CLng(1)) 'Long
  loc_10E22CE: var_F0 = "Revenue"
  loc_10E22D7: LateIdCallSt
  loc_10E22E2: var_94 = CVar(CLng(1)) 'Long
  loc_10E22E7: var_D0 = &HBB8
  loc_10E22F3: LateIdCallSt
  loc_10E22FE: var_94 = CVar(CLng(1)) 'Long
  loc_10E2309: var_D0 = CVar(CInt(1)) 'Integer
  loc_10E2310: LateIdCallSt
  loc_10E2318: var_94 = 0
  loc_10E2324: var_D0 = CVar(CLng(2)) 'Long
  loc_10E2329: var_F0 = "Amount"
  loc_10E2332: LateIdCallSt
  loc_10E233D: var_94 = CVar(CLng(2)) 'Long
  loc_10E2342: var_D0 = &H4B0
  loc_10E234E: LateIdCallSt
  loc_10E2359: var_94 = CVar(CLng(2)) 'Long
  loc_10E2364: var_D0 = CVar(CInt(7)) 'Integer
  loc_10E236B: LateIdCallSt
  loc_10E2373: var_94 = 0
  loc_10E237F: var_D0 = CVar(CLng(3)) 'Long
  loc_10E2384: var_F0 = "Nature"
  loc_10E238D: LateIdCallSt
  loc_10E2398: var_94 = CVar(CLng(3)) 'Long
  loc_10E239D: var_D0 = &H4B0
  loc_10E23A9: LateIdCallSt
  loc_10E23B4: var_94 = CVar(CLng(3)) 'Long
  loc_10E23BF: var_D0 = CVar(CInt(1)) 'Integer
  loc_10E23C6: LateIdCallSt
  loc_10E23CE: var_94 = 0
  loc_10E23DA: var_D0 = CVar(CLng(4)) 'Long
  loc_10E23DF: var_F0 = "App Date"
  loc_10E23E8: LateIdCallSt
  loc_10E23F3: var_94 = CVar(CLng(4)) 'Long
  loc_10E23F8: var_D0 = &H4B0
  loc_10E2404: LateIdCallSt
  loc_10E240F: var_94 = CVar(CLng(4)) 'Long
  loc_10E241A: var_D0 = CVar(CInt(1)) 'Integer
  loc_10E2421: LateIdCallSt
  loc_10E2429: var_94 = 0
  loc_10E2435: var_D0 = CVar(CLng(5)) 'Long
  loc_10E243A: var_F0 = "Active"
  loc_10E2443: LateIdCallSt
  loc_10E244E: var_94 = CVar(CLng(5)) 'Long
  loc_10E2453: var_D0 = &H320
  loc_10E245F: LateIdCallSt
  loc_10E246A: var_94 = CVar(CLng(5)) 'Long
  loc_10E2475: var_D0 = CVar(CInt(1)) 'Integer
  loc_10E247C: LateIdCallSt
  loc_10E2487: var_94 = CVar(CLng(6)) 'Long
  loc_10E248C: var_D0 = 0
  loc_10E2498: LateIdCallSt
  loc_10E24A3: var_94 = CVar(CLng(6)) 'Long
  loc_10E24AE: var_D0 = CVar(CInt(4)) 'Integer
  loc_10E24B5: LateIdCallSt
  loc_10E24BD: var_94 = 1
  loc_10E24C9: var_D0 = CVar(CLng(6)) 'Long
  loc_10E24CE: var_F0 = "1"
  loc_10E24D7: LateIdCallSt
  loc_10E24E6: var_AC.Enabled = True
  loc_10E24ED: Set var_AC = Nothing 
  loc_10E24F1: Exit Sub
End Sub

Public Sub Proc_265_109_112A77C
  'Data Table: 5ADDB4
  Dim var_90 As Double
  Dim var_98 As Double
  Dim var_A0 As Double
  Dim var_A4 As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_FC As String
  Dim var_104 As Double
  Dim var_128 As TextBox
  Dim var_130 As TextBox
  Dim var_12C As TextBox
  loc_112A41B: var_90 = CDbl(0)
  loc_112A421: var_98 = CDbl(0)
  loc_112A427: var_A0 = CDbl(0)
  loc_112A44F: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_112A459:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_112A461:   var_E8 = CVar(CLng(4)) 'Long
  loc_112A48C:   If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_112A493:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_112A49B:     var_E8 = CVar(CLng(3)) 'Long
  loc_112A4C7:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_112A4D6:   Else
  loc_112A4DA:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_112A4E2:     var_E8 = CVar(CLng(4)) 'Long
  loc_112A50D:     If (CStr(Me.FGrid.TextMatrix)) = "Dr") Then
  loc_112A514:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_112A51C:       var_E8 = CVar(CLng(3)) 'Long
  loc_112A548:       var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_112A554:     End If
  loc_112A554:   End If
  loc_112A557: Next var_B8 'Integer
  loc_112A578: var_B4 = CVar((var_98 - var_90)) 'Double
  loc_112A588: var_A0 = CSng(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_112A5BC: var_FC = CStr(Format(CVar(Abs(var_A0)), "0.00"))
  loc_112A5CB: Set var_A4 = Me.Txt
  loc_112A5D1: Call 0.Method_Proc_265_109_112A77C0 (CInt(9), var_128, var_FC, 1)
  loc_112A5D9: var_128.Text = 1
  loc_112A5F8: If (var_A0 < CDbl(0)) Then
  loc_112A608:   Me.LblOpBalType.Caption = "Cr"
  loc_112A613: Else
  loc_112A620:   Me.LblOpBalType.Caption = "Dr"
  loc_112A628: End If
  loc_112A636: Set var_A4 = Me.Txt
  loc_112A63C: Call 0.Method_Proc_265_109_112A77C0 (CInt(&HA), var_128, var_FC)
  loc_112A644: var_A0 = var_128.Tag
  loc_112A671: var_B4 = CVar(Abs((Val(var_FC) + var_A0))) 'Double
  loc_112A68F: Set var_12C = Me.Txt
  loc_112A695: Call 0.Method_Proc_265_109_112A77C0 (CInt(&HA), var_130, CStr(Format(CVar(Abs(var_A0)), "0.00")), 1)
  loc_112A69D: var_130.Text = 1
  loc_112A6CB: Set var_A4 = Me.Txt
  loc_112A6D1: Call 0.Method_Proc_265_109_112A77C0 (CInt(0), var_128, var_FC)
  loc_112A6D9: var_104 = var_128.Text
  loc_112A6F7: Me.txtCurrBal.Text = Proc_183_42_107DF48(var_FC, 1)
  loc_112A71A: Set var_A4 = Me.Txt
  loc_112A720: Call 0.Method_Proc_265_109_112A77C0 (CInt(&HA), var_128)
  loc_112A748: If (CDbl((Val(var_128.Tag) + var_A0)) < CDbl(0)) Then
  loc_112A758:   Me.LblCurBalType.Caption = "Cr"
  loc_112A763: Else
  loc_112A770:   Me.LblCurBalType.Caption = "Dr"
  loc_112A778: End If
  loc_112A778: Exit Sub
End Sub

Public Sub Proc_265_110_10BECA4(arg_C) '10BECA4
  'Data Table: 5ADDB4
  Dim var_D0 As Variant
  Dim var_98 As String
  Dim var_B4 As String
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_8C As Recordset15
  Dim var_150 As Variant
  Dim var_170 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  loc_10BEA1E: On Error Goto loc_10BEC77
  loc_10BEA24: var_90 = "F_AO"
  loc_10BEA2B: Set var_8C = New 
  loc_10BEA36: Me.Recordset15.CursorLocation = 3
  loc_10BEA3E: var_D0 = arg_C
  loc_10BEA46: Proc_183_7_EB17D4(var_E0)
  loc_10BEA69: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F95070
  loc_10BEA9A: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F95070 & "' AND VP.LOGSITE_CODE='"
  loc_10BEAC5: var_120 = CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BEACD: var_8C.Open var_120, CVar(MemVar_1F951E0), 2
  loc_10BEB0A: If (var_8C.RecordCount > 0) Then
  loc_10BEB3C:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BEB45:   global_120 = CLng(CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BEB81:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BEB9E:   var_98 = Proc_183_15_EAD490(MemVar_1F95070, 2, MemVar_1F9506C, global_120)
  loc_10BEBA8:   var_D0 = var_90
  loc_10BEBB8:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BEBC9:   var_120 = Space((5 - Len(var_90)))
  loc_10BEBD1:   var_150 = (CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BEBE2:   var_160 = Space((5 - Len(var_94)))
  loc_10BEBEA:   var_170 = (var_150 + var_160)
  loc_10BEBF4:   var_180 = (var_170 + CVar(var_94))
  loc_10BEC0D:   var_190 = Space((8 - Len(CStr(global_120))))
  loc_10BEC15:   var_1A0 = (var_180 + var_190)
  loc_10BEC24:   var_1C0 = (var_1A0 + CVar(CStr(global_120)))
  loc_10BEC5D:   var_88 = CStr(var_1C0)
  loc_10BEC63: Else
  loc_10BEC66:   var_88 = vbNullString
  loc_10BEC69: End If
  loc_10BEC6E: Set var_8C = Nothing
  loc_10BEC71: Proc_265_110_10BECA4 = -1
  loc_10BEC77: ' Referenced from: 10BEA1E
  loc_10BEC7D: Call 0.Method_arg_50 (var_98)
  loc_10BEC92: Proc_183_57_104B0BC(var_98, "VoucherNo")
  loc_10BEC9E: Proc_265_110_10BECA4 = var_D0
End Sub

Public Sub Proc_265_111_E5B690(arg_C) 'E5B690
  'Data Table: 5ADDB4
  Dim var_90 As TextBox
  loc_E5B659: If (CInt(arg_C) = 1) Then
  loc_E5B673:   Set var_8C = Me.Txt
  loc_E5B679:   Call 0.Method_Proc_265_111_E5B6900 (CInt(CByte(5)), var_90)
  loc_E5B681:   var_90.Enabled = False
  loc_E5B68D: End If
  loc_E5B68D: Exit Sub
End Sub

Public Sub Proc_265_112_1B48468
  'Data Table: 5ADDB4
  Dim Me As Variant
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_D4 As Variant
  Dim var_F0 As String
  Dim var_DC As Variant
  Dim var_F4 As String
  Dim var_F8 As String
  Dim var_FC As String
  Dim var_104 As String
  Dim var_10C As String
  Dim var_114 As String
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_144 As Variant
  Dim var_154 As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_88 As Recordset15
  Dim var_EC As Variant
  Dim var_D8 As Variant
  Dim var_198 As Variant
  Dim var_188 As Variant
  Dim var_168 As Variant
  Dim var_1DC As Variant
  Dim var_224 As Label
  Dim var_178 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_8C As Recordset15
  Dim var_226 As Integer
  Dim var_1F0 As TextBox
  Dim unk_5ADDE0 As Connection15
  Dim var_23C As Recordset15
  Dim var_AE As Integer
  Dim var_1C8 As Variant
  Dim var_238 As Variant
  Dim var_AA As Integer
  Dim var_A8 As Double
  Dim var_264 As Variant
  Dim var_334 As Variant
  loc_1B43834: On Error Goto loc_1B483FC
  loc_1B43850: If (Me.RecordCount > 0) Then
  loc_1B43897:   Call 0.Method_Proc_265_112_1B484680 (CInt(0), var_DC)
  loc_1B4389F:   var_DC.Text = CStr(Me.Fields.Item("subcode").Value)
  loc_1B438CB:   var_F0 = "Select S.Name,S.ConPrefix,S.ConPerson,S.ConPersonMName,S.ConPersonLName,S.FatherName,S.MotherName,S.PanNo,S.GSTIN,S.GroupCode,S.ApplDate,S.ValidFrom,S.ValidateUpto,S.Discount," & "S.meshAc,S.U_AE,S.U_Name,S.U_EntDt,S.AddName,S.Add1,S.Add2,S.Add3,S.CITYCODE,S.Pin,S.Phone,S.Mobile,S.Mobile1,S.Email,S.AppNo,S.CardNo,S.IdProof,S.IdProofNo,S.Remark,S.subcorresYN,"
  loc_1B438D9:   var_F8 = var_F0 & "S.CompanyType,S.AllowCredit,S.CreditLimit,S.ActiveYN,S.CINNo,S.Blacklisted,S.ReasonBlackList,S.BlackListedBy," & "MF.bloodGroup,MF.ProOcc,MF.Edquali,MF.TBusiness,MF.Turnover,MF.Desig,MF.PostedAt,MF.Passport,MF.SpInterest,MF.Gender,MF.DOB,MF.POB,"
  loc_1B438E0:   var_FC = var_F8 & "MF.MaritalStatus,MF.Nationality,MF.Religion,MF.PicPath,MF.SigPath,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,a.areaname,C.CityName,T.CATEGORY_Desc, "
  loc_1B438EE:   var_104 = var_FC & "TDSCAT.NAME AS TDSNAME,St.Name As StateN,St.Code As StateC,Co.Name As CountryN, Co.Code As CountryC, " & "MM.Name As MeshAcName From ((((((((subGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode "
  loc_1B438FC:   var_10C = var_104 & "Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) " & "left join areamast a on s.areacode=a.areacode) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg) "
  loc_1B4390A:   var_114 = var_10C & "Left Join State St On St.Code=C.State) Left Join Country Co On Co.Code=C.Country) " & "Left Join MemberFamily MF On MF.Subcode= S.Subcode And MF.RelationShip='Member' And MF.SNo=1) left Join SubGroup MM On MM.SubCode=S.MeshAc) "
  loc_1B43958:   unk_5ADE1E.Execute CStr(CVar(var_114 & "Where S.SubCode='") & Me.Fields.Item("subcode").Value & "'"), var_178, -1
  loc_1B43963:   Set var_88 = Me.Txt
  loc_1B439D1:   var_D8 = var_88.Fields
  loc_1B43A3A:   var_1D8 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_D8.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_1B43A7F:   Me.LblUser.Caption = CStr(var_D8 & CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("U_Name")), var_1D8)))
  loc_1B43AFB:   var_DC = var_88.Fields.Item("U_AE")
  loc_1B43B03:   var_124 = CVar(var_DC) 'Address
  loc_1B43B5C:   var_1D8 = IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(var_124) = "E"), "Last Update : ", "entdt : "))
  loc_1B43B7B:   var_1F0 = var_88.Fields.Item("U_EntDt")
  loc_1B43BA1:   Me.LblLDt.Caption = CStr(var_1D8 & CVar(Proc_6_38_E69628(CVar(var_1F0))))
  loc_1B43BEF:   If (var_88.RecordCount > 0) Then
  loc_1B43C33:     If (Me.Fields.Item("Name").Value = "Cash") Then
  loc_1B43C3E:       global_116 = "Y"
  loc_1B43C45:     Else
  loc_1B43C4F:       global_116 = "N"
  loc_1B43C53:     End If
  loc_1B43C71:     var_D4 = var_88.Fields.Item("Name")
  loc_1B43C90:     Set var_D8 = Me.Txt
  loc_1B43C96:     Call 0.Method_Proc_265_112_1B484680 (CInt(1), var_DC)
  loc_1B43C9E:     var_DC.Text = CStr(var_D4.Value)
  loc_1B43CC4:     Set var_C0 = Me.Txt
  loc_1B43CCA:     Call 0.Method_Proc_265_112_1B484680 (CInt(1), var_D4)
  loc_1B43CDD:     global_136 = var_D4.Text
  loc_1B43D23:     Set var_D8 = Me.Txt
  loc_1B43D29:     Call 0.Method_Proc_265_112_1B484680 (CInt(2), var_DC)
  loc_1B43D31:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GroupName")))
  loc_1B43D80:     Set var_D8 = Me.Txt
  loc_1B43D86:     Call 0.Method_Proc_265_112_1B484680 (CInt(2), var_DC)
  loc_1B43D8E:     var_DC.Tag = CStr(var_88.Fields.Item("GroupCode").Value)
  loc_1B43DD1:     var_F0 = CStr(var_88.Fields.Item("MainGrCode").Value)
  loc_1B43DD7:     global_140 = var_F0
  loc_1B43DF0:     var_D0 = "GNature"
  loc_1B43E04:     var_D4 = var_88.Fields.Item(var_D0)
  loc_1B43E0C:     var_EC = var_D4.Value
  loc_1B43E38:     var_DC = var_88.Fields.Item("GNature")
  loc_1B43E6A:     If CBool((var_EC = "A") Or (var_DC.Value = "L")) Then
  loc_1B43E76:       global_156 = CByte(1)
  loc_1B43E7D:     Else
  loc_1B43E88:       global_156 = CByte(0)
  loc_1B43E8C:     End If
  loc_1B43EA7:     If (Me.RecordCount > 0) Then
  loc_1B43EB2:       Me.MoveFirst
  loc_1B43ED8:       Set var_C0 = Me.Txt
  loc_1B43EDE:       Call 0.Method_Proc_265_112_1B484680 (CInt(2), var_D4, var_F0, "Name ='", 0)
  loc_1B43EE6:       1 = var_D4.Text
  loc_1B43EFF:       Me.Find var_D0 & var_F0 & "'", global_156, global_156
  loc_1B43F14:     End If
  loc_1B43F26:     Set var_C0 = Me.Txt
  loc_1B43F2C:     Call 0.Method_Proc_265_112_1B484680 (CInt(0), var_D4)
  loc_1B43F34:     var_F4 = var_D4.Text
  loc_1B43F3F:     var_144 = 0
  loc_1B43F7A:     unk_5ADE1E.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_F4 & "'", var_EC, -1
  loc_1B43F82:     var_D8 = var_D8.Fields
  loc_1B43F8A:     var_144 = var_DC.Item(var_DC)
  loc_1B43F92:     var_1DC = var_1DC.Value
  loc_1B43F9B:     var_94 = CSng(var_124)
  loc_1B43FCF:     Set var_C0 = Me.Txt
  loc_1B43FD5:     Call 0.Method_Proc_265_112_1B484680 (CInt(0), var_D4, var_F4)
  loc_1B43FDD:     var_94 = var_D4.Text
  loc_1B43FE8:     var_144 = 0
  loc_1B44023:     unk_5ADE1E.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_F4 & "'", var_EC, -1
  loc_1B4402B:     var_D8 = var_D8.Fields
  loc_1B44033:     var_144 = var_DC.Item(var_DC)
  loc_1B4403B:     var_1DC = var_1DC.Value
  loc_1B44044:     var_9C = CSng(var_124)
  loc_1B44087:     var_EC = CVar(Abs((var_9C - var_94))) 'Double
  loc_1B440A5:     Set var_C0 = Me.Txt
  loc_1B440AB:     Call 0.Method_Proc_265_112_1B484680 (CInt(9), var_D4, CStr(Format(var_EC, "0.00")), 1)
  loc_1B440B3:     var_D4.Text = 1
  loc_1B440D2:     var_124 = vbNullString
  loc_1B4411A:     var_F0 = CStr(IIf((var_94 > var_9C), "Cr", IIf((var_94 < var_9C), "Dr", var_124)))
  loc_1B44128:     Me.LblOpBalType.Caption = var_F0
  loc_1B44154:     Set var_C0 = Me.Txt
  loc_1B4415A:     Call 0.Method_Proc_265_112_1B484680 (CInt(0), var_D4, var_F0)
  loc_1B44162:     var_9C = var_D4.Text
  loc_1B4417A:     Set var_D8 = Me.txtCurrBal
  loc_1B44180:     var_D8.Text = Proc_183_42_107DF48(var_F0, var_124)
  loc_1B4419F:     If (MemVar_1F95078 = "HO") Then
  loc_1B441C2:       Set var_C0 = Me.Txt
  loc_1B441C8:       Call 0.Method_Proc_265_112_1B484680 (CInt(0), var_D4, var_F0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_1B441D0:       var_EC = var_D4.Text
  loc_1B441D9:       var_F4 = -1 & var_F0
  loc_1B441E9:       unk_5ADE1E.Execute var_F4 & "'", var_D8, var_124
  loc_1B441F4:       Set var_8C = var_D8
  loc_1B4420F:     Else
  loc_1B44231:       Set var_C0 = Me.Txt
  loc_1B44237:       Call 0.Method_Proc_265_112_1B484680 (CInt(0), var_D4, var_F0, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_1B4423F:       var_EC = var_D4.Text
  loc_1B44248:       var_F4 = -1 & var_F0
  loc_1B44266:       unk_5ADE1E.Execute var_F4 & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_D8, 
  loc_1B44271:       Set var_8C = var_D8
  loc_1B4428D:     End If
  loc_1B442A5:     If (var_8C.RecordCount > 0) Then
  loc_1B442D2:       var_226 = IsNull(CVar(var_8C.Fields.Item("CurrBal")))
  loc_1B44350:       Set var_1DC = Me.Txt
  loc_1B44356:       Call 0.Method_Proc_265_112_1B484680 (CInt(&HA), var_1F0, CStr(Format(IIf(var_226, 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00")))
  loc_1B4435E:       var_1F0.Text = 1
  loc_1B443C9:       var_DC = var_8C.Fields.Item("CurrBal")
  loc_1B443E1:       var_198 = "Cr"
  loc_1B44443:       Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_DC.Value < 0), var_198, vbNullString)))
  loc_1B4450F:       global_152 = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", "Cr"))
  loc_1B44546:       var_D4 = var_8C.Fields.Item("CurrBal")
  loc_1B4455D:       var_144 = CVar((var_94 - var_9C)) 'Double
  loc_1B44561:       var_124 = (var_D4.Value + 0)
  loc_1B44574:       Set var_D8 = Me.Txt
  loc_1B4457A:       Call 0.Method_Proc_265_112_1B484680 (CInt(&HA), var_DC, CStr((var_8C.Fields.Item("CurrBal").Value > 0)))
  loc_1B44582:       var_DC.Tag = CSng(var_8C.Fields.Item("CurrBal").Value)
  loc_1B4459F:     Else
  loc_1B445B5:       Set var_C0 = Me.Txt
  loc_1B445BB:       Call 0.Method_Proc_265_112_1B484680 (CInt(&HA), var_D4, CStr(0))
  loc_1B445C3:       var_D4.Text = 1
  loc_1B445E1:       Me.LblCurBalType.Caption = vbNullString
  loc_1B445FC:       global_152 = "Cr"
  loc_1B44614:       Set var_C0 = Me.Txt
  loc_1B4461A:       Call 0.Method_Proc_265_112_1B484680 (CInt(&HA), var_D4, CStr(0))
  loc_1B44622:       var_D4.Tag = CDbl(0)
  loc_1B44631:     End If
  loc_1B4466B:     Set var_D8 = Me.Txt
  loc_1B44671:     Call 0.Method_Proc_265_112_1B484680 (CInt(3), var_DC)
  loc_1B44679:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPrefix")))
  loc_1B446C5:     Set var_D8 = Me.Txt
  loc_1B446CB:     Call 0.Method_Proc_265_112_1B484680 (CInt(4), var_DC)
  loc_1B446D3:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPerson")))
  loc_1B4471F:     Set var_D8 = Me.Txt
  loc_1B44725:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H25), var_DC)
  loc_1B4472D:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_1B44779:     Set var_D8 = Me.Txt
  loc_1B4477F:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H26), var_DC)
  loc_1B44787:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_1B447D3:     Set var_D8 = Me.Txt
  loc_1B447D9:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H29), var_DC)
  loc_1B447E1:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("FatherName")))
  loc_1B4482D:     Set var_D8 = Me.Txt
  loc_1B44833:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H2A), var_DC)
  loc_1B4483B:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MotherName")))
  loc_1B44887:     Set var_D8 = Me.Txt
  loc_1B4488D:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H27), var_DC)
  loc_1B44895:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("bloodGroup")))
  loc_1B448FD:     Set var_D8 = Me.Txt
  loc_1B44903:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H1C), var_DC, CStr(Format(CVar(var_88.Fields.Item("ApplDate")), "DD/MMM/YYYY")))
  loc_1B4490B:     var_DC.Text = 1
  loc_1B44979:     Set var_D8 = Me.Txt
  loc_1B4497F:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H2D), var_DC, CStr(Format(CVar(var_88.Fields.Item("ValidFrom")), "DD/MMM/YYYY")), 1)
  loc_1B44987:     var_DC.Text = 1
  loc_1B449CE:     var_124 = "DD/MMM/YYYY"
  loc_1B449F5:     Set var_D8 = Me.Txt
  loc_1B449FB:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H30), var_DC, CStr(Format(CVar(var_88.Fields.Item("ValidateUpto")), var_124)), 1)
  loc_1B44A03:     var_DC.Text = 1
  loc_1B44A45:     Proc_6_47_EF6560(var_124, CVar(var_88.Fields.Item("Discount")))
  loc_1B44A5C:     Set var_D8 = Me.Txt
  loc_1B44A62:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H1E), var_DC, CStr(var_124))
  loc_1B44A6A:     var_DC.Text = 1
  loc_1B44ABA:     Set var_D8 = Me.Txt
  loc_1B44AC0:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H24), var_DC)
  loc_1B44AC8:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MeshAcName")))
  loc_1B44B14:     Set var_D8 = Me.Txt
  loc_1B44B1A:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H24), var_DC)
  loc_1B44B22:     var_DC.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("meshAc")))
  loc_1B44B6D:     Me.LblAddType.Caption = Proc_6_38_E69628(CVar(var_88.Fields.Item("AddName")))
  loc_1B44BB7:     Set var_D8 = Me.TxtA
  loc_1B44BBD:     Call 0.Method_Proc_265_112_1B484680 (CInt(0), var_DC)
  loc_1B44BC5:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_1B44C11:     Set var_D8 = Me.TxtA
  loc_1B44C17:     Call 0.Method_Proc_265_112_1B484680 (CInt(1), var_DC)
  loc_1B44C1F:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")))
  loc_1B44C6B:     Set var_D8 = Me.TxtA
  loc_1B44C71:     Call 0.Method_Proc_265_112_1B484680 (CInt(2), var_DC)
  loc_1B44C79:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add3")))
  loc_1B44CC5:     Set var_D8 = Me.TxtA
  loc_1B44CCB:     Call 0.Method_Proc_265_112_1B484680 (CInt(3), var_DC)
  loc_1B44CD3:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_1B44D1F:     Set var_D8 = Me.TxtA
  loc_1B44D25:     Call 0.Method_Proc_265_112_1B484680 (CInt(3), var_DC)
  loc_1B44D2D:     var_DC.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CITYCODE")))
  loc_1B44D79:     Set var_D8 = Me.TxtA
  loc_1B44D7F:     Call 0.Method_Proc_265_112_1B484680 (CInt(4), var_DC)
  loc_1B44D87:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateN")))
  loc_1B44DD3:     Set var_D8 = Me.TxtA
  loc_1B44DD9:     Call 0.Method_Proc_265_112_1B484680 (CInt(4), var_DC)
  loc_1B44DE1:     var_DC.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("StateC")))
  loc_1B44E2D:     Set var_D8 = Me.TxtA
  loc_1B44E33:     Call 0.Method_Proc_265_112_1B484680 (CInt(5), var_DC)
  loc_1B44E3B:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CountryN")))
  loc_1B44E87:     Set var_D8 = Me.TxtA
  loc_1B44E8D:     Call 0.Method_Proc_265_112_1B484680 (CInt(5), var_DC)
  loc_1B44E95:     var_DC.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CountryC")))
  loc_1B44EE1:     Set var_D8 = Me.TxtA
  loc_1B44EE7:     Call 0.Method_Proc_265_112_1B484680 (CInt(6), var_DC)
  loc_1B44EEF:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin")))
  loc_1B44F3B:     Set var_D8 = Me.TxtA
  loc_1B44F41:     Call 0.Method_Proc_265_112_1B484680 (CInt(7), var_DC)
  loc_1B44F49:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Phone")))
  loc_1B44F95:     Set var_D8 = Me.TxtA
  loc_1B44F9B:     Call 0.Method_Proc_265_112_1B484680 (CInt(8), var_DC)
  loc_1B44FA3:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile")))
  loc_1B44FEF:     Set var_D8 = Me.TxtA
  loc_1B44FF5:     Call 0.Method_Proc_265_112_1B484680 (CInt(&HA), var_DC)
  loc_1B44FFD:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile1")))
  loc_1B45049:     Set var_D8 = Me.TxtA
  loc_1B4504F:     Call 0.Method_Proc_265_112_1B484680 (CInt(9), var_DC)
  loc_1B45057:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Email")))
  loc_1B450A3:     Set var_D8 = Me.Txt
  loc_1B450A9:     Call 0.Method_Proc_265_112_1B484680 (CInt(5), var_DC)
  loc_1B450B1:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("AppNo")))
  loc_1B450FD:     Set var_D8 = Me.Txt
  loc_1B45103:     Call 0.Method_Proc_265_112_1B484680 (CInt(6), var_DC)
  loc_1B4510B:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))
  loc_1B4514F:     global_76 = Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")))
  loc_1B45194:     Set var_D8 = Me.Txt
  loc_1B4519A:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H11), var_DC)
  loc_1B451A2:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PanNo")))
  loc_1B451EE:     Set var_D8 = Me.Txt
  loc_1B451F4:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H35), var_DC)
  loc_1B451FC:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GSTIN")))
  loc_1B45254:     var_DC = var_88.Fields.Item("IdProof")
  loc_1B45265:     var_154 = CVar(Proc_6_38_E69628(CVar(var_DC))) 'String
  loc_1B4529C:     Set var_1DC = Me.Txt
  loc_1B452A2:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H2B), var_1F0)
  loc_1B452AA:     var_1F0.Text = CStr(IIf((Proc_6_38_E69628(CVar(var_88.Fields.Item("IdProof"))) = vbNullString), "NA", var_154))
  loc_1B4530A:     Set var_D8 = Me.Txt
  loc_1B45310:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H2C), var_DC)
  loc_1B45318:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("IdProofNo")))
  loc_1B45364:     Set var_D8 = Me.Txt
  loc_1B4536A:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H23), var_DC)
  loc_1B45372:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Remark")))
  loc_1B453C1:     If (Proc_6_38_E69628(CVar(var_88.Fields.Item("subcorresYN"))) = "Y") Then
  loc_1B453D6:       Me.ChkCorresAdd.Value = CInt(1)
  loc_1B453E1:     Else
  loc_1B453F5:       Me.ChkCorresAdd.Value = CInt(0)
  loc_1B453FD:     End If
  loc_1B4543D:     var_124 = "select code,Name,Corporate from MemcatMast where code='" & var_88.Fields.Item("CompanyType").Value 
  loc_1B45454:     unk_5ADDE0.Execute CStr(var_124 & "'"), var_154, -1
  loc_1B4545F:     Set var_23C = var_D8
  loc_1B454B1:     Set var_D8 = Me.Txt
  loc_1B454B7:     Call 0.Method_Proc_265_112_1B484680 (CInt(7), var_DC)
  loc_1B454BF:     var_DC.Text = Proc_6_38_E69628(CVar(var_23C.Fields.Item("Name")), var_D8)
  loc_1B4550B:     Set var_D8 = Me.Txt
  loc_1B45511:     Call 0.Method_Proc_265_112_1B484680 (CInt(7), var_DC)
  loc_1B45519:     var_DC.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyType")))
  loc_1B4555D:     global_68 = Proc_6_38_E69628(CVar(var_23C.Fields.Item("Corporate")))
  loc_1B455DB:     Set var_D8 = Me.Txt
  loc_1B455E1:     Call 0.Method_Proc_265_112_1B484680 (CInt(8), var_DC)
  loc_1B455E9:     var_DC.Text = Proc_6_38_E69628(IIf((var_88.Fields.Item("AllowCredit").Value = "Y"), "Yes", "No"))
  loc_1B45631:     Proc_6_47_EF6560(var_124, CVar(var_88.Fields.Item("CreditLimit")))
  loc_1B45648:     Set var_D8 = Me.Txt
  loc_1B4564E:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H28), var_DC)
  loc_1B45656:     var_DC.Text = CStr(var_124)
  loc_1B456A6:     Set var_D8 = Me.Txt
  loc_1B456AC:     Call 0.Method_Proc_265_112_1B484680 (CInt(&HB), var_DC)
  loc_1B456B4:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ProOcc")))
  loc_1B45700:     Set var_D8 = Me.Txt
  loc_1B45706:     Call 0.Method_Proc_265_112_1B484680 (CInt(&HC), var_DC)
  loc_1B4570E:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Edquali")))
  loc_1B4575A:     Set var_D8 = Me.Txt
  loc_1B45760:     Call 0.Method_Proc_265_112_1B484680 (CInt(&HD), var_DC)
  loc_1B45768:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("TBusiness")))
  loc_1B457B4:     Set var_D8 = Me.Txt
  loc_1B457BA:     Call 0.Method_Proc_265_112_1B484680 (CInt(&HE), var_DC)
  loc_1B457C2:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Turnover")))
  loc_1B4580E:     Set var_D8 = Me.Txt
  loc_1B45814:     Call 0.Method_Proc_265_112_1B484680 (CInt(&HF), var_DC)
  loc_1B4581C:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Desig")))
  loc_1B45868:     Set var_D8 = Me.Txt
  loc_1B4586E:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H2F), var_DC)
  loc_1B45876:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PostedAt")))
  loc_1B458C2:     Set var_D8 = Me.Txt
  loc_1B458C8:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H10), var_DC)
  loc_1B458D0:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Passport")))
  loc_1B4591C:     Set var_D8 = Me.Txt
  loc_1B45922:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H12), var_DC)
  loc_1B4592A:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("SpInterest")))
  loc_1B45976:     Set var_D8 = Me.Txt
  loc_1B4597C:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H13), var_DC)
  loc_1B45984:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Gender")))
  loc_1B459EC:     Set var_D8 = Me.Txt
  loc_1B459F2:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H14), var_DC, CStr(Format(CVar(var_88.Fields.Item("DOB")), "DD/MMM/YYYY")))
  loc_1B459FA:     var_DC.Text = 1
  loc_1B45A4C:     Set var_D8 = Me.Txt
  loc_1B45A52:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H15), var_DC)
  loc_1B45A5A:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("POB")), 1)
  loc_1B45AA6:     Set var_D8 = Me.Txt
  loc_1B45AAC:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H16), var_DC)
  loc_1B45AB4:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MaritalStatus")))
  loc_1B45B00:     Set var_D8 = Me.Txt
  loc_1B45B06:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H17), var_DC)
  loc_1B45B0E:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Nationality")))
  loc_1B45B5A:     Set var_D8 = Me.Txt
  loc_1B45B60:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H19), var_DC)
  loc_1B45B68:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Religion")))
  loc_1B45BE9:     Set var_D8 = Me.Txt
  loc_1B45BEF:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H1A), var_DC)
  loc_1B45BF7:     var_DC.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 1), "Yes", "No"))
  loc_1B45C4F:     Set var_D8 = Me.Txt
  loc_1B45C55:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H2E), var_DC)
  loc_1B45C5D:     var_DC.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CINNo")))
  loc_1B45C8D:     var_D4 = var_88.Fields.Item("BlackListed")
  loc_1B45CDE:     Set var_D8 = Me.Txt
  loc_1B45CE4:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H1B), var_DC)
  loc_1B45CEC:     var_DC.Text = CStr(IIf((var_D4.Value = "Y"), "Yes", "No"))
  loc_1B45D1C:     Set var_C0 = Me.Txt
  loc_1B45D22:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H1B), var_D4)
  loc_1B45D41:     If (var_D4.Text = "Yes") Then
  loc_1B45D52:       Me.FrBlackListed.Visible = True
  loc_1B45D5D:     Else
  loc_1B45D6D:       Me.FrBlackListed.Visible = False
  loc_1B45D75:     End If
  loc_1B45DB2:     Set var_D8 = Me.Txt
  loc_1B45DB8:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H1D), var_DC)
  loc_1B45DC0:     var_DC.Text = CStr(var_88.Fields.Item("ReasonBlackList").Value)
  loc_1B45E11:     Set var_D8 = Me.Txt
  loc_1B45E17:     Call 0.Method_Proc_265_112_1B484680 (CInt(&H1F), var_DC)
  loc_1B45E1F:     var_DC.Text = CStr(var_88.Fields.Item("BlackListedBy").Value)
  loc_1B45E65:     If IsDate(CVar(var_88.Fields.Item("DOB"))) Then
  loc_1B45EBB:       var_AE = CInt(DateDiff("yyyy", CDate(CDate(var_88.Fields.Item("DOB").Value)), MemVar_1F950EC, 1, 1))
  loc_1B45EF0:       Me.TxtAgeing.Text = "Member Age: " & CStr(var_AE) & " Yrs."
  loc_1B45F09:       If (var_AE >= &H32) Then
  loc_1B45F1D:         Me.TxtAgeing.BackColor = &HC0FFFF
  loc_1B45F36:         Me.TxtAgeing.ForeColor = &HFF
  loc_1B45F41:       Else
  loc_1B45F54:         Me.TxtAgeing.BackColor = -2147483643
  loc_1B45F6D:         Me.TxtAgeing.ForeColor = &HC00000
  loc_1B45F75:       End If
  loc_1B45F77:     End If
  loc_1B45FA9:     If IsDate(CVar(var_88.Fields.Item("ValidFrom"))) Then
  loc_1B45FB4:       If (var_AE = 0) Then
  loc_1B45FDF:         Me.TxtAgeing.Text = Me.TxtAgeing.Text & "Age Of Membership: "
  loc_1B45FF5:       Else
  loc_1B4601F:         Me.TxtAgeing.Text = Me.TxtAgeing.Text & " & Age Of Membership:   "
  loc_1B46032:       End If
  loc_1B460A7:       var_1C8 = CVar(Me.TxtAgeing.Text) & DateDiff("yyyy", CDate(CDate(var_88.Fields.Item("ValidFrom").Value)), MemVar_1F950EC, 1, 1) & " Yrs." 
  loc_1B460AB:       var_F4 = CStr(var_1C8)
  loc_1B460B9:       Me.TxtAgeing.Text = var_F4
  loc_1B460DB:     End If
  loc_1B460EE:     var_C0 = var_88.Fields
  loc_1B46107:     var_188 = IsNull(CVar(var_C0.Item("PicPath")))
  loc_1B4610E:     var_144 = "PicPath"
  loc_1B46139:     var_168 = vbNullString
  loc_1B4615B:     If CBool(var_188 Or (Trim(CVar(var_88.Fields.Item(var_144))) = var_168)) Then
  loc_1B4617E:       Me.Global.LoadPicture var_D0, var_144, var_168, var_188, var_198
  loc_1B46193:       Me.ImgMemPhoto.Picture = var_C0
  loc_1B461AE:       Me.ImgMemPhoto.Tag = vbNullString
  loc_1B461B9:     Else
  loc_1B461EB:       var_168 = "PicPath"
  loc_1B46231:       var_144 = "DAT"
  loc_1B46259:       var_188 = "AVI"
  loc_1B46263:       var_238 = (Ucase(Right(Trim(CVar(var_88.Fields.Item("PicPath"))), 3)) = var_144) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_168))), 3)) = var_188)
  loc_1B46283:       If CBool(var_238) Then
  loc_1B46294:         Me.ImgMemPhoto.Visible = False
  loc_1B4629F:       Else
  loc_1B462DB:         Me.ImgMemPhoto.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_1B462FA:         var_D0 = "PicPath"
  loc_1B46306:         var_C0 = var_88.Fields
  loc_1B4630E:         var_D4 = var_C0.Item(var_D0)
  loc_1B4632B:         Call 0.Method_Proc_265_112_1B484684 (CStr(var_D4.Value), var_226, var_C0)
  loc_1B46340:         If var_226 Then
  loc_1B46345:           On Error Resume Next
  loc_1B4637C:           Me.Global.LoadPicture CVar(Me.ImgMemPhoto.Tag), var_D0, var_144, var_168, var_188
  loc_1B46391:           Me.ImgMemPhoto.Picture = var_D4
  loc_1B463A8:           Set var_C0 = Me.ImgMemPhoto
  loc_1B463AE:           var_C0.Refresh
  loc_1B463B9:         Else
  loc_1B463DB:           Me.Global.LoadPicture var_D0, var_144, var_168, var_188, var_198
  loc_1B463F0:           Me.ImgMemPhoto.Picture = var_C0
  loc_1B463FC:         End If
  loc_1B463FE:       End If
  loc_1B46400:     End If
  loc_1B46413:     var_C0 = var_88.Fields
  loc_1B4642C:     var_188 = IsNull(CVar(var_C0.Item("SigPath")))
  loc_1B46433:     var_144 = "SigPath"
  loc_1B4645E:     var_168 = vbNullString
  loc_1B46468:     var_178 = var_188 Or (Trim(CVar(var_88.Fields.Item(var_144))) = var_168)
  loc_1B46480:     If CBool(var_178) Then
  loc_1B464A3:       Me.Global.LoadPicture var_D0, var_144, var_168, var_188, var_198
  loc_1B464B8:       Me.ImgMemSign.Picture = var_C0
  loc_1B464D3:       Me.ImgMemSign.Tag = vbNullString
  loc_1B464DE:     Else
  loc_1B46508:       var_124 = Trim(CVar(var_88.Fields.Item("SigPath")))
  loc_1B46510:       var_168 = "SigPath"
  loc_1B46556:       var_144 = "DAT"
  loc_1B4657E:       var_188 = "AVI"
  loc_1B465A8:       If CBool((Ucase(Right(var_124, 3)) = var_144) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_168))), 3)) = var_188)) Then
  loc_1B465B9:         Me.ImgMemSign.Visible = False
  loc_1B465C4:       Else
  loc_1B46600:         Me.ImgMemSign.Tag = CStr(var_88.Fields.Item("SigPath").Value)
  loc_1B4661F:         var_D0 = "SigPath"
  loc_1B4662B:         var_C0 = var_88.Fields
  loc_1B46633:         var_D4 = var_C0.Item(var_D0)
  loc_1B46650:         Call 0.Method_Proc_265_112_1B484684 (CStr(var_D4.Value), var_226, var_C0, var_C0)
  loc_1B46665:         If var_226 Then
  loc_1B4666A:           On Error Resume Next
  loc_1B46697:           var_EC = CVar(Me.ImgMemSign.Tag) 'String
  loc_1B466A1:           Me.Global.LoadPicture var_EC, var_D0, var_144, var_168, var_188
  loc_1B466B6:           Me.ImgMemSign.Picture = var_D4
  loc_1B466CD:           Set var_C0 = Me.ImgMemSign
  loc_1B466D3:           var_C0.Refresh
  loc_1B466DE:         Else
  loc_1B46700:           Me.Global.LoadPicture var_D0, var_144, var_168, var_188, var_198
  loc_1B46715:           Me.ImgMemSign.Picture = var_C0
  loc_1B46721:         End If
  loc_1B46723:       End If
  loc_1B46725:     End If
  loc_1B4673C:     Me.FAGrid.Rows = 1
  loc_1B46778:     Call 0.Method_Proc_265_112_1B484680 (CInt(0), var_D4, var_F4, "Select * From MemberFamily Where LOGSITE_CODE='" & MemVar_1F95078 & "' And SubCode='", var_EC, -1)
  loc_1B46780:     var_D8 = var_D4.Text
  loc_1B46789:     var_FC = Me.Txt & var_F4
  loc_1B46799:     unk_5ADDE0.Execute var_FC & "' And RelationShip<>'Member' Order by SNo", var_D4, var_D4
  loc_1B467A4:     Set var_88 = var_D8
  loc_1B467D6:     If (var_88.RecordCount > 0) Then
  loc_1B467DD:       var_AA = 1
  loc_1B467E0:       ' Referenced from: 1B473E6
  loc_1B467F1:       If Not(var_88.EOF) Then
  loc_1B467FA:         Set var_240 = Me.FAGrid
  loc_1B46804:         var_EC = CVar(CStr(var_AA)) 'String
  loc_1B4684F:         Proc_6_39_E7D3A0(var_124, CVar(var_88.Fields.Item("SNo")), CVar(CLng(1)), CVar(CLng(var_AA)), FAGrid.DispID_10000)
  loc_1B4685F:         LateIdCallSt
  loc_1B468AE:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("subcode")), CVar(CLng(2)), CVar(CLng(var_AA)), var_240, CVar(CStr(var_124)))) 'String
  loc_1B468B5:         LateIdCallSt
  loc_1B46902:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RelationShip")), CVar(CLng(3)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46909:         LateIdCallSt
  loc_1B46956:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPrefix")), CVar(CLng(4)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B4695D:         LateIdCallSt
  loc_1B469AA:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(5)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B469B1:         LateIdCallSt
  loc_1B469FE:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Gender")), CVar(CLng(6)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46A05:         LateIdCallSt
  loc_1B46A52:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MaritalStatus")), CVar(CLng(7)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46A59:         LateIdCallSt
  loc_1B46A8D:         var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B46A95:         var_198 = CVar(CLng(8)) 'Long
  loc_1B46AC9:         LateIdCallSt
  loc_1B46B1A:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("POB")), CVar(CLng(9)), CVar(CLng(var_AA)), var_240, CVar(CStr(Format(CVar(var_88.Fields.Item("DOB")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1B46B21:         LateIdCallSt
  loc_1B46B55:         var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B46B91:         LateIdCallSt
  loc_1B46BE2:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Phone")), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_240, CVar(CStr(Format(CVar(var_88.Fields.Item("WedDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1B46BE9:         LateIdCallSt
  loc_1B46C36:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile")), CVar(CLng(&HC)), CVar(CLng(var_AA)), var_240, var_124, CVar(CLng(&HA)))) 'String
  loc_1B46C3D:         LateIdCallSt
  loc_1B46C8A:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Fax")), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46C91:         LateIdCallSt
  loc_1B46CDE:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Email")), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46CE5:         LateIdCallSt
  loc_1B46D32:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nationality")), CVar(CLng(&HF)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46D39:         LateIdCallSt
  loc_1B46D86:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Religion")), CVar(CLng(&H10)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46D8D:         LateIdCallSt
  loc_1B46DDA:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("bloodGroup")), CVar(CLng(&H11)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46DE1:         LateIdCallSt
  loc_1B46E2E:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ProOcc")), CVar(CLng(&H12)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46E35:         LateIdCallSt
  loc_1B46E82:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Edquali")), CVar(CLng(&H13)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46E89:         LateIdCallSt
  loc_1B46ED6:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TBusiness")), CVar(CLng(&H14)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46EDD:         LateIdCallSt
  loc_1B46F2A:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Turnover")), CVar(CLng(&H15)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46F31:         LateIdCallSt
  loc_1B46F7E:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Passport")), CVar(CLng(&H16)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46F85:         LateIdCallSt
  loc_1B46FD2:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PAN")), CVar(CLng(&H17)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B46FD9:         LateIdCallSt
  loc_1B47026:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Desig")), CVar(CLng(&H18)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B4702D:         LateIdCallSt
  loc_1B4707A:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("InTax")), CVar(CLng(&H19)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B47081:         LateIdCallSt
  loc_1B470CE:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SpInterest")), CVar(CLng(&H1A)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B470D5:         LateIdCallSt
  loc_1B47122:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PicPath")), CVar(CLng(&H1B)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B47129:         LateIdCallSt
  loc_1B47176:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SigPath")), CVar(CLng(&H1C)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B4717D:         LateIdCallSt
  loc_1B471CA:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Label")), CVar(CLng(&H1D)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B471D1:         LateIdCallSt
  loc_1B4721E:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("HW_Id")), CVar(CLng(&H1E)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B47225:         LateIdCallSt
  loc_1B47272:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")), CVar(CLng(&H1F)), CVar(CLng(var_AA)), var_240, var_124)) 'String
  loc_1B47279:         LateIdCallSt
  loc_1B472AD:         var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B472B5:         var_198 = CVar(CLng(&H20)) 'Long
  loc_1B472E9:         LateIdCallSt
  loc_1B4733A:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CardRegId")), CVar(CLng(&H21)), CVar(CLng(var_AA)), var_240, CVar(CStr(Format(CVar(var_88.Fields.Item("CardIssDate")), "dd/MMM/yyyy"))), 1, 1)) 'String
  loc_1B47341:         LateIdCallSt
  loc_1B47375:         var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B4737D:         var_198 = CVar(CLng(&H22)) 'Long
  loc_1B473AA:         var_154 = CVar(CStr(Format(CVar(var_88.Fields.Item("CardValidUpto")), "dd/MMM/yyyy"))) 'String
  loc_1B473B1:         LateIdCallSt
  loc_1B473CB:         Set var_240 = Nothing 
  loc_1B473D7:         var_AA = (var_AA + 1)
  loc_1B473DF:         var_88.MoveNext
  loc_1B473E6:         GoTo loc_1B467E0
  loc_1B473E9:       End If
  loc_1B473EC:     Else
  loc_1B47405:       var_124 = CVar(CStr(CLng(Me.FAGrid.Rows))) 'String
  loc_1B4740D:       Set var_D4 = Me.FAGrid
  loc_1B47429:     End If
  loc_1B47440:     Me.FAGrid.FixedRows = 1
  loc_1B47467:     Me.FAGrid.Row = 1
  loc_1B47471:     Call Proc_265_121_132A5A4(0, FAGrid.DispID_10000, var_124, var_AA, var_240, var_154, 1)
  loc_1B4748B:     Me.FPGrid.Rows = 1
  loc_1B474A9:     var_F0 = "Select *,MPF.Mark From (Select * From MemberFamily Where RelationShip='Member') MF Inner Join MemProposedMemInf MPF On MF.SubCode=MPF.PMemCode Where MPF.LOGSITE_CODE='" & MemVar_1F95078
  loc_1B474B0:     var_124 = CVar(var_F0 & "' And MPF.SubCode='") 'String
  loc_1B474F7:     unk_5ADDE0.Execute CStr(var_124 & Me.Fields.Item("subcode").Value & "' Order By MPF.SNo"), var_178, -1
  loc_1B47502:     Set var_88 = var_D8
  loc_1B47538:     If (var_88.RecordCount > 0) Then
  loc_1B4753F:       var_AA = 1
  loc_1B47542:       ' Referenced from: 1B47A38
  loc_1B47553:       If Not(var_88.EOF) Then
  loc_1B4755C:         Set var_244 = Me.FPGrid
  loc_1B47566:         var_EC = CVar(CStr(var_AA)) 'String
  loc_1B475B1:         Proc_6_39_E7D3A0(var_124, CVar(var_88.Fields.Item("SNo")), CVar(CLng(1)), CVar(CLng(var_AA)), FPGrid.DispID_10000, CVar(var_88.Fields.Item("SNo")), var_AA)
  loc_1B475C1:         LateIdCallSt
  loc_1B47610:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("subcode")), CVar(CLng(2)), CVar(CLng(var_AA)), var_244, CVar(CStr(var_124)), var_D8)) 'String
  loc_1B47617:         LateIdCallSt
  loc_1B47664:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PMemCode")), CVar(CLng(3)), CVar(CLng(var_AA)), var_244, var_124, 1)) 'String
  loc_1B4766B:         LateIdCallSt
  loc_1B476B8:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("MemberType")), CVar(CLng(4)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B476BF:         LateIdCallSt
  loc_1B4770C:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("CardNo")), CVar(CLng(5)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B47713:         LateIdCallSt
  loc_1B47760:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPrefix")), CVar(CLng(6)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B47767:         LateIdCallSt
  loc_1B477B4:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(7)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B477BB:         LateIdCallSt
  loc_1B47808:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Gender")), CVar(CLng(8)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B4780F:         LateIdCallSt
  loc_1B4785C:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile")), CVar(CLng(9)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B47863:         LateIdCallSt
  loc_1B478B0:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Email")), CVar(CLng(&HA)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B478B7:         LateIdCallSt
  loc_1B47904:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Desig")), CVar(CLng(&HB)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B4790B:         LateIdCallSt
  loc_1B47958:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PicPath")), CVar(CLng(&HC)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B4795F:         LateIdCallSt
  loc_1B479AC:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("SigPath")), CVar(CLng(&HD)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B479B3:         LateIdCallSt
  loc_1B47A00:         var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Mark")), CVar(CLng(&HE)), CVar(CLng(var_AA)), var_244, var_124)) 'String
  loc_1B47A07:         LateIdCallSt
  loc_1B47A1D:         Set var_244 = Nothing 
  loc_1B47A29:         var_AA = (var_AA + 1)
  loc_1B47A31:         var_88.MoveNext
  loc_1B47A38:         GoTo loc_1B47542
  loc_1B47A3B:       End If
  loc_1B47A3E:     Else
  loc_1B47A4C:       var_EC = Me.FPGrid.Rows
  loc_1B47A57:       var_124 = CVar(CStr(CLng(var_EC))) 'String
  loc_1B47A5F:       Set var_D4 = Me.FPGrid
  loc_1B47A7B:     End If
  loc_1B47A92:     Me.FPGrid.FixedRows = 1
  loc_1B47AB9:     Me.FPGrid.Row = 1
  loc_1B47AC3:     Call Proc_265_122_132B58C(0, FPGrid.DispID_10000, var_124, var_AA, var_244, var_124)
  loc_1B47ACF:     Set var_88 = Nothing
  loc_1B47AD6:     var_AA = 1
  loc_1B47AEE:     Me.FGrid.Rows = 1
  loc_1B47B0C:     var_F0 = "Select NARRATION,DocID,V_SNo,V_Type,V_No,V_Date,Site_Code,SubCode,AmtCr,AmtDr,Chq_No,Chq_Date From Ledger Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1B47B32:     Set var_C0 = Me.Txt
  loc_1B47B38:     Call 0.Method_Proc_265_112_1B484680 (CInt(0), var_D4, var_FC, var_F0 & "' or LOGSITE_CODE='HO') and V_Type='" & "F_AO" & "' and SubCode='", var_EC, -1, var_D8)
  loc_1B47B40:     var_AA = var_D4.Text
  loc_1B47B59:     unk_5ADE1E.Execute var_198 & var_FC & "' Order by V_SNo", var_168, var_240
  loc_1B47B64:     Set var_88 = var_D8
  loc_1B47B9A:     If (var_88.RecordCount > 0) Then
  loc_1B47BA1:       var_AA = 1
  loc_1B47BD7:       global_132 = CStr(var_88.Fields.Item("DocID").Value)
  loc_1B47C19:       global_120 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_1B47C2F:       global_124 = CByte(1)
  loc_1B47C33:       ' Referenced from: 1B47F1F
  loc_1B47C44:       If Not(var_88.EOF) Then
  loc_1B47C85:         If (var_88.Fields.Item("AmtCr").Value = 0) Then
  loc_1B47C8D:           var_A0 = "Dr"
  loc_1B47CB8:           Proc_183_3_E7DD58(var_124, CVar(var_88.Fields.Item("AmtDr")), global_124, global_120)
  loc_1B47CC1:           var_A8 = CSng(var_124)
  loc_1B47CD1:         Else
  loc_1B47D0F:           If (var_88.Fields.Item("AmtDr").Value = 0) Then
  loc_1B47D17:             var_A0 = "Cr"
  loc_1B47D42:             Proc_183_3_E7DD58(var_124, CVar(var_88.Fields.Item("AmtCr")), var_A8)
  loc_1B47D4B:             var_A8 = CSng(var_124)
  loc_1B47D58:           End If
  loc_1B47D58:         End If
  loc_1B47D83:         Proc_183_3_E7DD58(var_274, var_A8, var_A8)
  loc_1B47DC1:         var_178 = Format(CVar(var_88.Fields.Item("V_DATE")), "dd/MMM/yyyy")
  loc_1B47DF0:         var_D8 = var_88.Fields
  loc_1B47E20:         var_264 = var_AA & CVar(Proc_183_2_E5AE94(CVar(var_D8.Item("Narration")), 1 & var_178 & Chr(9), 1, CVar(var_AA) & Chr(9))) & Chr(9) 
  loc_1B47EA3:         Proc_183_3_E7DD58(var_314, CVar(var_88.Fields.Item("V_NO")), 1 & Format(var_274, "0.00") & Chr(9) & CVar(var_A0) & Chr(9), 1)
  loc_1B47EB0:         var_334 = CVar(CStr(var_264 & var_314)) 'String
  loc_1B47EB8:         Set var_224 = Me.FGrid
  loc_1B47F10:         var_AA = (var_AA + 1)
  loc_1B47F18:         var_88.MoveNext
  loc_1B47F1F:         GoTo loc_1B47C33
  loc_1B47F22:       End If
  loc_1B47F37:       Me.FGrid.FixedRows = 1
  loc_1B47F42:     Else
  loc_1B47F4C:       global_132 = vbNullString
  loc_1B47F5A:       global_120 = 0
  loc_1B47F66:       global_124 = CByte(0)
  loc_1B47F81:       var_124 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1B47F89:       Set var_D4 = Me.FGrid
  loc_1B47FBA:       Me.FGrid.FixedRows = 1
  loc_1B47FC2:     End If
  loc_1B47FCB:     Set var_88 = Nothing
  loc_1B47FCE:   End If
  loc_1B47FE5:   Me.FGrid1.Rows = 1
  loc_1B48003:   var_F0 = "Select MembershipRevMast.Code As RevCode,MembershipRevMast.Description, MR.AppDate , MR.Amount , MR.Nature, MR.ActiveYN From (MemRevWise MR Left Join MembershipRevMast ON MR.RevCode = MembershipRevMast.Code) Where MR.Site_Code='" & MemVar_1F95070
  loc_1B48048:   var_134 = CVar(var_F0 & "' and (MR.LOGSITE_CODE='" & MemVar_1F95078 & "' or MR.LOGSITE_CODE='HO') and MR.MemCode='") & Me.Fields.Item("SearchCode").Value 
  loc_1B4805F:   unk_5ADDE0.Execute CStr(var_134 & "'"), var_178, -1
  loc_1B4806A:   Set var_88 = var_D8
  loc_1B48096:   var_BC = var_88.RecordCount
  loc_1B480A4:   If (var_BC > 0) Then
  loc_1B480AB:     var_AA = 1
  loc_1B480AE:     ' Referenced from: 1B48353
  loc_1B480BF:     If Not(var_88.EOF) Then
  loc_1B480C4:       var_D0 = vbNullString
  loc_1B480CE:       Set var_C0 = Me.FGrid1
  loc_1B480E5:       Set var_348 = Me.FGrid1
  loc_1B480EE:       var_144 = CVar(CLng(var_AA)) 'Long
  loc_1B480F6:       var_188 = CVar(CLng(6)) 'Long
  loc_1B48126:       var_124 = CVar(CStr(var_88.Fields.Item("RevCode").Value)) 'String
  loc_1B4812D:       LateIdCallSt
  loc_1B4817E:       var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Description")), CVar(CLng(1)), CVar(CLng(var_AA)), var_348, var_124, CVar(CLng(1)), CVar(CLng(var_AA)))) 'String
  loc_1B48185:       LateIdCallSt
  loc_1B481BF:       Proc_6_39_E7D3A0(var_124, CVar(var_88.Fields.Item("Amount")), var_348, var_124, FGrid1.DispID_10000)
  loc_1B481C8:       var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B481D0:       var_198 = CVar(CLng(2)) 'Long
  loc_1B48200:       LateIdCallSt
  loc_1B48253:       var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Nature")), CVar(CLng(3)), CVar(CLng(var_AA)), var_348, CVar(CStr(Format(var_124, "0.00"))), 1, 1)) 'String
  loc_1B4825A:       LateIdCallSt
  loc_1B4828E:       var_168 = CVar(CLng(var_AA)) 'Long
  loc_1B48296:       var_198 = CVar(CLng(4)) 'Long
  loc_1B482BA:       var_134 = Format(CVar(var_88.Fields.Item("AppDate")), "dd/mmm/yyyy")
  loc_1B482C3:       var_154 = CVar(CStr(var_134)) 'String
  loc_1B482CA:       LateIdCallSt
  loc_1B4831B:       var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ActiveYN")), CVar(CLng(5)), CVar(CLng(var_AA)), var_348, var_154, 1, 1)) 'String
  loc_1B48322:       LateIdCallSt
  loc_1B48338:       Set var_348 = Nothing 
  loc_1B48344:       var_AA = (var_AA + 1)
  loc_1B4834C:       var_88.MoveNext
  loc_1B48353:       GoTo loc_1B480AE
  loc_1B48356:     End If
  loc_1B48356:   End If
  loc_1B4835A:   var_D0 = 0
  loc_1B48364:   Set var_C0 = Me.FGrid1
  loc_1B48393:   If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_1B48398:     var_D0 = vbNullString
  loc_1B483A2:     Set var_C0 = Me.FGrid1
  loc_1B483B3:   End If
  loc_1B483B5:   var_D0 = 1
  loc_1B483C8:   Me.FGrid1.FixedRows = var_D0
  loc_1B483D3: Else
  loc_1B483D7:   Call Proc_265_104_124C664(FGrid1.DispID_10000, var_D0, FGrid1.DispID_2E, var_D0, var_AA, var_348, var_124)
  loc_1B483DC: End If
  loc_1B483E0: Call Proc_265_106_10506D4(var_198, var_168, var_348)
  loc_1B483EC: Set var_88 = Nothing
  loc_1B483F6: Set var_B8 = Nothing
  loc_1B483FB: Exit Sub
  loc_1B483FC: ' Referenced from: 1B43834
  loc_1B48406: Set var_C0 = Err()
  loc_1B4840C: Call 0.Method_arg_1C (var_BC, var_124)
  loc_1B4841D: If (var_BC <> 0) Then
  loc_1B4842A:   Set var_C0 = Err()
  loc_1B48430:   Call 0.Method_arg_2C (var_F0, var_198)
  loc_1B48451:   MsgBox(CVar(var_F0), &H40, "Validation", var_134, var_154)
  loc_1B48464: End If
  loc_1B48466: Exit Sub
End Sub

Public Sub Proc_265_113_1A47FDC(arg_C, arg_10, arg_14, arg_18, arg_1C) '1A47FDC
  'Data Table: 5ADDB4
  Dim var_D4 As Variant
  Dim var_DC As Variant
  Dim var_E0 As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_88 As Variant
  Dim var_F0 As Variant
  Dim var_D0 As Variant
  Dim var_100 As Variant
  Dim var_12C As Variant
  Dim var_98 As Variant
  Dim var_104 As Variant
  Dim var_15C As Variant
  Dim var_160 As Fields15
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_9C As Variant
  Dim var_1C8 As Fields15
  Dim var_230 As Fields15
  Dim var_274 As Variant
  Dim var_294 As Variant
  Dim var_A0 As Variant
  Dim var_298 As Fields15
  Dim var_2FC As Variant
  Dim var_300 As Fields15
  Dim var_334 As Variant
  Dim var_364 As Variant
  Dim var_94 As Variant
  Dim var_A98 As TextBox
  Dim var_C24 As TextBox
  Dim var_D8 As Variant
  Dim var_38C As String
  Dim var_390 As String
  Dim var_398 As String
  Dim var_174 As TextBox
  Dim var_1FC As Variant
  Dim var_1DC As TextBox
  Dim var_2CC As Variant
  Dim var_3D0 As Variant
  Dim var_3E0 As Variant
  Dim var_474 As Variant
  Dim var_48C As Variant
  Dim var_4CC As Variant
  Dim var_4EC As Variant
  Dim var_54C As Variant
  Dim var_60C As Variant
  Dim var_66C As Variant
  Dim var_6AC As Variant
  Dim var_6EC As Variant
  Dim var_714 As TextBox
  Dim var_758 As Variant
  Dim var_760 As TextBox
  Dim var_7C4 As Variant
  Dim var_7E4 As Variant
  Dim var_814 As Variant
  Dim var_87C As TextBox
  Dim var_890 As Variant
  Dim var_8C0 As Variant
  Dim var_900 As Variant
  Dim var_920 As Variant
  Dim var_928 As TextBox
  Dim var_974 As TextBox
  Dim var_9B8 As Variant
  Dim var_9E4 As Variant
  Dim var_A30 As Variant
  Dim var_A70 As Variant
  Dim var_A90 As Variant
  Dim var_BBC As Variant
  Dim var_C98 As Variant
  Dim var_CB8 As Variant
  Dim var_CC0 As TextBox
  Dim var_D58 As TextBox
  Dim var_DB4 As Variant
  Dim var_E2C As Variant
  Dim var_EAC As TextBox
  Dim var_244 As TextBox
  Dim var_2AC As TextBox
  Dim var_314 As TextBox
  Dim var_384 As Variant
  Dim var_47C As TextBox
  Dim var_3F0 As Variant
  Dim var_B34 As TextBox
  Dim var_B8C As TextBox
  Dim var_7F4 As Variant
  Dim var_804 As Variant
  Dim unk_5ADDE0 As Connection15
  Dim var_F4E As Integer
  Dim var_3AC As String
  Dim var_10C As TextBox
  Dim var_424 As TextBox
  Dim var_BAC As Variant
  Dim var_E54 As TextBox
  Dim var_E1C As Variant
  Dim var_E74 As Variant
  loc_1A44B88: On Error Goto loc_1A47FB2
  loc_1A44BA9: Set var_D0 = Me.Txt
  loc_1A44BAF: Call 0.Method_Proc_265_113_1A47FDC0 (CInt(2), var_D4, var_D8, "SELECT * From AcGroup Where GroupCode='")
  loc_1A44BB7: var_100 = var_D4.Tag
  loc_1A44BC0: var_DC = -1 & var_D8
  loc_1A44BD0: unk_5ADE1E.Execute var_DC & "'", var_104, 
  loc_1A44BDB: Set var_88 = var_104
  loc_1A44C07: If (var_88.RecordCount > 0) Then
  loc_1A44C32:   var_8C = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Nature")))
  loc_1A44C52:   var_D4 = var_88.Fields.Item("GroupNature")
  loc_1A44C63:   var_90 = Proc_183_2_E5AE94(CVar(var_D4))
  loc_1A44C6F: Else
  loc_1A44C72:   var_8C = "Other"
  loc_1A44C78:   var_90 = vbNullString
  loc_1A44C7B: End If
  loc_1A44C99: Set var_D0 = Me.Txt
  loc_1A44C9F: Call 0.Method_Proc_265_113_1A47FDC0 (CInt(0), var_D4, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A44CA7: var_100 = var_D4.Text
  loc_1A44CB0: var_DC = -1 & var_D8
  loc_1A44CC0: unk_5ADE1E.Execute var_DC & "' And Name='Residential Address'", var_104, 
  loc_1A44CCB: Set var_98 = var_104
  loc_1A44D01: Set var_D0 = Me.Txt
  loc_1A44D07: Call 0.Method_Proc_265_113_1A47FDC0 (CInt(0), var_D4, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A44D0F: var_100 = var_D4.Text
  loc_1A44D18: var_DC = -1 & var_D8
  loc_1A44D28: unk_5ADE1E.Execute var_DC & "' And Name='WorkPlace Address'", var_104, 
  loc_1A44D33: Set var_9C = var_104
  loc_1A44D69: Set var_D0 = Me.Txt
  loc_1A44D6F: Call 0.Method_Proc_265_113_1A47FDC0 (CInt(0), var_D4, var_D8, "Select Max(SNo) As SNo,Max(Name) As Name From MemAddRWA Where Subcode= '")
  loc_1A44D77: var_100 = var_D4.Text
  loc_1A44D80: var_DC = -1 & var_D8
  loc_1A44D90: unk_5ADE1E.Execute var_DC & "' And Name='Abroad Address'", var_104, 
  loc_1A44D9B: Set var_A0 = var_104
  loc_1A44DD1: Set var_D0 = Me.Txt
  loc_1A44DD7: Call 0.Method_Proc_265_113_1A47FDC0 (CInt(0), var_D4, var_D8, "Select * from MemAddRWA where subcode ='")
  loc_1A44DDF: var_384 = var_D4.Text
  loc_1A44DE8: var_DC = -1 & var_D8
  loc_1A44E09: var_10C = var_98.Fields.Item("SNo")
  loc_1A44E18: Proc_183_3_E7DD58(var_11C, CVar(var_10C))
  loc_1A44E44: var_174 = var_98.Fields.Item("Name")
  loc_1A44E58: var_1A4 = var_388 & CVar(Proc_183_2_E5AE94(CVar(var_174), CVar(var_DC & "' And ((SNo=") & var_11C & " And Name ='")) 
  loc_1A44E7C: var_1DC = var_9C.Fields.Item("SNo")
  loc_1A44E8B: Proc_183_3_E7DD58(var_1FC, CVar(var_1DC))
  loc_1A44EB7: var_244 = var_9C.Fields.Item("Name")
  loc_1A44EEF: var_2AC = var_A0.Fields.Item("SNo")
  loc_1A44EFE: Proc_183_3_E7DD58(var_2CC, CVar(var_2AC))
  loc_1A44F0F: var_2FC = var_1A4 & "')  Or (SNo=" & var_1FC & " And Name ='" & CVar(Proc_183_2_E5AE94(CVar(var_244))) & "')  Or (SNo=" & var_2CC & " And Name ='" 
  loc_1A44F2A: var_314 = var_A0.Fields.Item("Name")
  loc_1A44F55: unk_5ADE1E.Execute CStr(var_2FC & CVar(Proc_183_2_E5AE94(CVar(var_314))) & "'))"), , 
  loc_1A44F60: Set var_94 = var_388
  loc_1A44FCC: If (var_94.RecordCount > 0) Then
  loc_1A44FD2:   var_94.MoveFirst
  loc_1A44FEB:   var_94.Find "corresYN='Y'", 0, 1
  loc_1A45004:   If (var_94.AbsolutePosition > 0) Then
  loc_1A45032:     var_A4 = CStr(var_94.Fields.Item("Name").Value)
  loc_1A4506A:     var_A8 = CStr(var_94.Fields.Item("Add1").Value)
  loc_1A450A2:     var_AC = CStr(var_94.Fields.Item("Add2").Value)
  loc_1A450DA:     var_B0 = CStr(var_94.Fields.Item("Add3").Value)
  loc_1A45112:     var_B4 = CStr(var_94.Fields.Item("City").Value)
  loc_1A4514A:     var_B8 = CStr(var_94.Fields.Item("PinCode").Value)
  loc_1A45182:     var_BC = CStr(var_94.Fields.Item("Phone").Value)
  loc_1A451BA:     var_C0 = CStr(var_94.Fields.Item("Mobile").Value)
  loc_1A451EF:     var_C4 = Proc_6_38_E69628(CVar(var_94.Fields.Item("Mobile1")))
  loc_1A45223:     var_C8 = CStr(var_94.Fields.Item("Email").Value)
  loc_1A4525B:     var_CC = CStr(var_94.Fields.Item("CorresYN").Value)
  loc_1A4526B:   Else
  loc_1A4526E:     var_94.MoveFirst
  loc_1A45287:     var_94.Find "Name='Residential Address'", 0, 1
  loc_1A452A0:     If (var_94.AbsolutePosition > 0) Then
  loc_1A452CE:       var_A4 = CStr(var_94.Fields.Item("Name").Value)
  loc_1A45306:       var_A8 = CStr(var_94.Fields.Item("Add1").Value)
  loc_1A4533E:       var_AC = CStr(var_94.Fields.Item("Add2").Value)
  loc_1A45376:       var_B0 = CStr(var_94.Fields.Item("Add3").Value)
  loc_1A453AE:       var_B4 = CStr(var_94.Fields.Item("City").Value)
  loc_1A453E6:       var_B8 = CStr(var_94.Fields.Item("PinCode").Value)
  loc_1A4541E:       var_BC = CStr(var_94.Fields.Item("Phone").Value)
  loc_1A45456:       var_C0 = CStr(var_94.Fields.Item("Mobile").Value)
  loc_1A45466:       var_F0 = "Mobile1"
  loc_1A4548B:       var_C4 = Proc_6_38_E69628(CVar(var_94.Fields.Item(var_F0)), var_F0)
  loc_1A4549A:       var_F0 = "Email"
  loc_1A454AE:       var_D4 = var_94.Fields.Item(var_F0)
  loc_1A454BF:       var_C8 = CStr(var_D4.Value)
  loc_1A454CF:       var_CC = "Y"
  loc_1A454D2:     End If
  loc_1A454D2:   End If
  loc_1A454D2: End If
  loc_1A454DA: If (arg_C = "Add") Then
  loc_1A454EB:   Set var_D0 = Me.Txt
  loc_1A454F1:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(8), var_D4)
  loc_1A4550C:   Set var_A94 = Me.Txt
  loc_1A45512:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1A), var_A98)
  loc_1A4552D:   Set var_C20 = Me.Txt
  loc_1A45533:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1B), var_C24)
  loc_1A45547:   var_D8 = "Insert Into " & arg_10
  loc_1A4554E:   var_DC = var_D8 & " (Site_Code,SubCode,Name,NameHelp,AllowCredit,CreditLimit,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,ConPersonMName,ConPersonLName,FatherName,MotherName,Add1,Add2,Add3,CityCode,PIN,Phone,Mobile,Mobile1,EMail,PANNo,GSTIN,U_Name,U_EntDt,U_AE,CompanyType,LOGSITE_CODE,AppNo,CardNo,IdProof,IdProofNo,SubCorresYN,ActiveYN,CINNo,Discount,AddName,blacklisted,reasonblacklist,blacklistedby,bloodGroup,ApplDate,ValidFrom,ValidateUpto,MeshAc,Remark) Values ('"
  loc_1A45555:   var_E0 = var_DC & MemVar_1F95070
  loc_1A45563:   var_390 = var_E0 & "','" & arg_14
  loc_1A455AF:   var_F0 = (var_D4.Text = "Yes")
  loc_1A455D6:   Set var_104 = Me.Txt
  loc_1A455DC:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H28), var_10C)
  loc_1A455EB:   Proc_6_39_E7D3A0(var_1A4, CVar(var_10C))
  loc_1A455F3:   var_1C4 = CVar(var_F0 & Proc_183_20_FB48CC(arg_18, var_390 & "','" & arg_18 & "','") & "','") & IIf(var_F0, "Y", "N") & "'," & var_1A4 
  loc_1A4560E:   Set var_160 = Me.Txt
  loc_1A45614:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(2), var_174)
  loc_1A45668:   Set var_1C8 = Me.Txt
  loc_1A4566E:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(3), var_1DC)
  loc_1A45699:   Set var_230 = Me.Txt
  loc_1A4569F:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(4), var_244)
  loc_1A456B6:   var_334 = var_1C4 & ",'" & CVar(var_174.Tag) & "','" & CVar(var_90) & "','" & CVar(var_8C) & "','" & CVar(var_1DC.Text) & "','" & Trim(CVar(var_244)) 
  loc_1A456CE:   Set var_298 = Me.Txt
  loc_1A456D4:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H25), var_2AC)
  loc_1A456DC:   var_364 = CVar(var_2AC) 'Address
  loc_1A45703:   Set var_300 = Me.Txt
  loc_1A45709:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H26), var_314)
  loc_1A45738:   Set var_388 = Me.Txt
  loc_1A4573E:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H29), var_424)
  loc_1A4576D:   Set var_478 = Me.Txt
  loc_1A45773:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2A), var_47C)
  loc_1A45793:   var_4CC = var_334 & "','" & Trim(var_364) & "','" & Trim(CVar(var_314)) & "','" & Trim(CVar(var_424)) & "','" & Trim(CVar(var_47C)) & "','" 
  loc_1A457F2:   var_60C = var_4CC & CVar(var_A8) & "','" & CVar(var_AC) & "','" & CVar(var_B0) & "','" & CVar(var_B4) & "','" & CVar(var_B8) & "','" 
  loc_1A45850:   Set var_710 = Me.Txt
  loc_1A45856:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H11), var_714)
  loc_1A45872:   var_758 = var_60C & CVar(var_BC) & "','" & CVar(var_C0) & "','" & CVar(var_C4) & "','" & CVar(var_C8) & "','" & CVar(var_714.Text) & "','" 
  loc_1A45884:   Set var_75C = Me.Txt
  loc_1A4588A:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H35), var_760)
  loc_1A458CB:   Proc_183_7_EB17D4(var_804, Now)
  loc_1A45901:   Set var_878 = Me.Txt
  loc_1A45907:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(7), var_87C)
  loc_1A45917:   var_890 = CVar(var_87C.Tag) 'String
  loc_1A45923:   var_8C0 = var_758 & CVar(var_760.Text) & "','" & CVar(MemVar_1F950C8) & "'," & var_804 & ",'" & CVar(arg_1C) & "','" & var_890 & "', " 
  loc_1A45951:   Set var_924 = Me.Txt
  loc_1A45957:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(5), var_928)
  loc_1A45985:   Set var_970 = Me.Txt
  loc_1A4598B:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(6), var_974)
  loc_1A459B9:   Set var_9BC = Me.Txt
  loc_1A459BF:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2B), var_9C0)
  loc_1A459D2:   var_9E4 = var_8C0 & " '" & CVar(MemVar_1F95078) & "','" & CVar(var_928.Text) & "','" & CVar(var_974.Text) & "','" & CVar(var_9C0.Text) 
  loc_1A459ED:   Set var_A08 = Me.Txt
  loc_1A459F3:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2C), var_A0C)
  loc_1A45A06:   var_A30 = var_9E4 & "','" & CVar(var_A0C.Text) 
  loc_1A45A3F:   var_AFC = IIf((var_A98.Text = "Yes"), 1, 0)
  loc_1A45A5F:   Set var_B30 = Me.Txt
  loc_1A45A65:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2E), var_B34)
  loc_1A45A74:   Proc_6_17_EAAE40(var_B54, CVar(var_B34))
  loc_1A45A94:   Set var_B88 = Me.Txt
  loc_1A45A9A:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1E), var_B8C)
  loc_1A45AA9:   Proc_6_39_E7D3A0(var_BAC, CVar(var_B8C))
  loc_1A45AFE:   var_C98 = var_A30 & "','" & CVar(var_CC) & "'," & var_AFC & "," & var_B54 & "," & var_BAC & ",'" & CVar(var_A4) & "','" & IIf((var_C24.Text = "Yes"), "Y", "N") 
  loc_1A45B19:   Set var_CBC = Me.Txt
  loc_1A45B1F:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1D), var_CC0)
  loc_1A45B4D:   Set var_D08 = Me.Txt
  loc_1A45B53:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1F), var_D0C)
  loc_1A45B87:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H27), var_D58)
  loc_1A45BB2:   Set var_DA0 = Me.Txt
  loc_1A45BB8:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1C), var_DA4)
  loc_1A45BC7:   Proc_6_7_F26918(var_DC4, CVar(var_DA4))
  loc_1A45BE7:   Set var_DF8 = Me.Txt
  loc_1A45BED:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2D), var_DFC)
  loc_1A45BFC:   Proc_6_7_F26918(var_E1C, CVar(var_DFC))
  loc_1A45C04:   var_E2C = var_C98 & "','" & CVar(var_CC0.Text) & "','" & CVar(var_D0C.Text) & "','" & CVar(var_D58.Text) & "'," & var_DC4 & "," & var_E1C 
  loc_1A45C1C:   Set var_E50 = Me.Txt
  loc_1A45C22:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H30), var_E54)
  loc_1A45C31:   Proc_6_7_F26918(var_E74, CVar(var_E54))
  loc_1A45C54:   Set var_EA8 = Me.Txt
  loc_1A45C5A:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H24), var_EAC)
  loc_1A45C85:   Set var_EF4 = Me.Txt
  loc_1A45C8B:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H23), var_EF8)
  loc_1A45C9A:   Proc_6_17_EAAE40(var_F18, CVar(var_EF8))
  loc_1A45CB6:   global_224 = CStr(var_E2C & "," & var_E74 & ",'" & CVar(var_EAC.Tag) & "'," & var_F18 & ")")
  loc_1A45E69:   var_D8 = "Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone," & "Mobile,Mobile1,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PostedAt,PassPort,PAN,InTax,SpInterest,PicPath,"
  loc_1A45E96:   Set var_D0 = Me.Txt
  loc_1A45E9C:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(3), var_D4, var_390, var_D8 & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('" & arg_14 & "',1,'")
  loc_1A45EA4:   var_A90 = var_D4.Text
  loc_1A45EAD:   var_398 = -1 & var_390
  loc_1A45EC2:   Set var_104 = Me.Txt
  loc_1A45EC8:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(4), var_10C)
  loc_1A45ED0:   var_100 = CVar(var_10C) 'Address
  loc_1A45EE4:   var_12C = Trim(var_100) & " " 
  loc_1A45EF3:   Set var_160 = Me.Txt
  loc_1A45EF9:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H25), var_174, var_12C)
  loc_1A45F28:   Set var_1C8 = Me.Txt
  loc_1A45F2E:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H26), var_1DC)
  loc_1A45F6F:   Set var_230 = Me.Txt
  loc_1A45F75:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(6), var_244)
  loc_1A45F88:   var_274 = Me.Txt & Trim(CVar(var_390 & "','" & arg_18 & "','") & Trim(CVar(var_174)) & " " & Trim(CVar(var_1DC))) & "','" & CVar(var_244.Text) 
  loc_1A45FA3:   Set var_298 = Me.Txt
  loc_1A45FA9:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H13), var_2AC)
  loc_1A45FD7:   Set var_300 = Me.Txt
  loc_1A45FDD:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H16), var_314)
  loc_1A46008:   Set var_388 = Me.Txt
  loc_1A4600E:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H14), var_424)
  loc_1A4601D:   Proc_183_7_EB17D4(var_364, CVar(var_424))
  loc_1A46040:   Set var_478 = Me.Txt
  loc_1A46046:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H15), var_47C)
  loc_1A46062:   var_3F0 = var_274 & "','Member','" & CVar(var_2AC.Text) & "','" & CVar(var_314.Text) & "'," & var_364 & ",'" & CVar(var_47C.Text) & "',Null,'" 
  loc_1A460C0:   Set var_710 = Me.Txt
  loc_1A460C6:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H17), var_714)
  loc_1A460E2:   var_4EC = var_3F0 & CVar(var_BC) & "','" & CVar(var_C0) & "','" & CVar(var_C4) & "','" & CVar(var_C8) & "','" & CVar(var_714.Text) & "','" 
  loc_1A460F4:   Set var_75C = Me.Txt
  loc_1A460FA:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H19), var_760)
  loc_1A46128:   Set var_878 = Me.Txt
  loc_1A4612E:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H27), var_87C)
  loc_1A4615C:   Set var_924 = Me.Txt
  loc_1A46162:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HB), var_928)
  loc_1A46190:   Set var_970 = Me.Txt
  loc_1A46196:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HC), var_974)
  loc_1A461B2:   var_66C = var_4EC & CVar(var_760.Text) & "','" & CVar(var_87C.Text) & "','" & CVar(var_928.Text) & "','" & CVar(var_974.Text) & "','" 
  loc_1A461C4:   Set var_9BC = Me.Txt
  loc_1A461CA:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HD), var_9C0)
  loc_1A461F8:   Set var_A08 = Me.Txt
  loc_1A461FE:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HE), var_A0C)
  loc_1A4620E:   var_6EC = CVar(var_A0C.Text) 'String
  loc_1A4622C:   Set var_A94 = Me.Txt
  loc_1A46232:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HF), var_A98)
  loc_1A46260:   Set var_B30 = Me.Txt
  loc_1A46266:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2F), var_B34)
  loc_1A46294:   Set var_B88 = Me.Txt
  loc_1A4629A:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H10), var_B8C)
  loc_1A462AD:   var_7F4 = var_66C & CVar(var_9C0.Text) & "','" & var_6EC & "','" & CVar(var_A98.Text) & "','" & CVar(var_B34.Text) & "','" & CVar(var_B8C.Text) 
  loc_1A462C8:   Set var_C20 = Me.Txt
  loc_1A462CE:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H11), var_C24)
  loc_1A462DE:   var_814 = CVar(var_C24.Text) 'String
  loc_1A462F9:   Set var_CBC = Me.Txt
  loc_1A462FF:   Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H12), var_CC0)
  loc_1A4630E:   Proc_6_17_EAAE40(var_890, CVar(var_CC0))
  loc_1A4634F:   Set var_D0C = Me.ImgMemSign
  loc_1A46373:   var_988 = var_7F4 & "','" & var_814 & "',''," & var_890 & ",'" & CVar(Me.ImgMemPhoto.Tag) & "','" & CVar(var_D0C.Tag) & "',1,'" & CVar(MemVar_1F95070) 
  loc_1A463A2:   var_A04 = var_988 & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_1A463B4:   Proc_183_7_EB17D4(var_A30, Now)
  loc_1A463C5:   var_A70 = var_A04 & var_A30 & ",'A')" 
  loc_1A463D3:   unk_5ADE1E.Execute CStr(var_A70), , 
  loc_1A464FC: Else
  loc_1A46504:   If (arg_C = "Edit") Then
  loc_1A46528:     var_DC = -1 & Proc_6_38_E69628(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100)
  loc_1A4652F:     var_E0 = Proc_6_38_E69628(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100) & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "'"
  loc_1A46538:     unk_5ADDE0.Execute var_E0, var_D0, 
  loc_1A46578:     var_D8 = Proc_6_38_E69628(arg_14, "Select Max(SeqNo) From SubgroupLog  Where SUBCODE='", var_100, -1, var_D0)
  loc_1A4658C:     unk_5ADDE0.Execute var_D4 & Proc_6_38_E69628(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100) & "'", 0, var_104
  loc_1A4659C:      = var_D4.Item()
  loc_1A465A4:      = var_104.Value
  loc_1A465AF:     Proc_6_39_E7D3A0(var_12C)
  loc_1A465B8:     var_F4E = CInt(var_12C)
  loc_1A465EE:     var_D8 = CStr((var_F4E + 1))
  loc_1A465F2:     var_DC = "Update SubgroupLog Set SeqNo=" & Proc_6_38_E69628(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100)
  loc_1A46609:     var_38C = Proc_6_38_E69628(arg_14, var_DC & " Where IsNull(SeqNo,0)=0 And SUBCODE='", var_100, -1)
  loc_1A4660D:     var_390 = var_D0 & Proc_6_38_E69628(arg_14, "Insert into SubgroupLog Select * from Subgroup Where SUBCODE='", var_100) & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('" & arg_14
  loc_1A4661D:     unk_5ADDE0.Execute var_390 & "'", var_F4E, var_D0.Fields
  loc_1A4664B:     If (var_94.AbsolutePosition > 0) Then
  loc_1A4665C:       Set var_878 = Me.Txt
  loc_1A46662:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(8), var_87C)
  loc_1A4667D:       Set var_A08 = Me.Txt
  loc_1A46683:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1A), var_A0C)
  loc_1A4669E:       Set var_B30 = Me.Txt
  loc_1A466A4:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1B), var_B34)
  loc_1A466B8:       var_D8 = "Update " & arg_10
  loc_1A466BF:       var_DC = var_D8 & " Set Name='"
  loc_1A466C6:       var_E0 = var_DC & arg_18
  loc_1A466F4:       Set var_D0 = Me.Txt
  loc_1A466FA:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(2), var_D4)
  loc_1A46720:       var_3AC = var_E0 & "',NameHelp='" & Proc_183_20_FB48CC(arg_18) & "',GroupCode='" & var_D4.Tag & "',GroupNature='" & var_90 & "',Nature='"
  loc_1A4673F:       Set var_104 = Me.Txt
  loc_1A46745:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(3), var_10C)
  loc_1A4676B:       Set var_160 = Me.Txt
  loc_1A46771:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(4), var_174)
  loc_1A46791:       var_15C = CVar(var_3AC & var_8C & "',ConPrefix='" & var_10C.Text & "',ConPerson='") & Trim(CVar(var_174)) & "',ConPersonMName='" 
  loc_1A467A0:       Set var_1C8 = Me.Txt
  loc_1A467A6:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H25), var_1DC)
  loc_1A467D5:       Set var_230 = Me.Txt
  loc_1A467DB:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H26), var_244)
  loc_1A4680A:       Set var_298 = Me.Txt
  loc_1A46810:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H29), var_2AC)
  loc_1A46830:       var_294 = var_15C & Trim(CVar(var_1DC)) & "',ConPersonLName='" & Trim(CVar(var_244)) & "',FatherName='" & Trim(CVar(var_2AC)) & "',MotherName='" 
  loc_1A4683F:       Set var_300 = Me.Txt
  loc_1A46845:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2A), var_314)
  loc_1A4688A:       Proc_183_7_EB17D4(var_364, Now)
  loc_1A468A5:       var_3D0 = var_294 & Trim(CVar(var_314)) & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_364 & ",U_AE='" & CVar(arg_1C) 
  loc_1A468C0:       Set var_388 = Me.Txt
  loc_1A468C6:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(7), var_424)
  loc_1A46904:       Set var_478 = Me.Txt
  loc_1A4690A:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(6), var_47C)
  loc_1A46921:       var_48C = var_3D0 & "',CompanyType='" & CVar(var_424.Tag) & "',LOGSITE_CODE='" & CVar(MemVar_1F95078) & "',CardNo='" & Trim(CVar(var_47C)) 
  loc_1A46939:       Set var_710 = Me.Txt
  loc_1A4693F:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2B), var_714)
  loc_1A4696E:       Set var_75C = Me.Txt
  loc_1A46974:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2C), var_760)
  loc_1A469C5:       var_60C = var_48C & "',IdProof='" & Trim(CVar(var_714)) & "',IdProofNo='" & Trim(CVar(var_760)) & "',AllowCredit='" & IIf((var_87C.Text = "Yes"), "Y", "N") 
  loc_1A469DD:       Set var_924 = Me.Txt
  loc_1A469E3:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H28), var_928)
  loc_1A469F2:       Proc_6_39_E7D3A0(var_66C, CVar(var_928))
  loc_1A46A12:       Set var_970 = Me.Txt
  loc_1A46A18:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1E), var_974)
  loc_1A46A27:       Proc_6_39_E7D3A0(var_6EC, CVar(var_974))
  loc_1A46A4A:       Set var_9BC = Me.Txt
  loc_1A46A50:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H24), var_9C0)
  loc_1A46A91:       var_7E4 = var_60C & "',CreditLimit=" & var_66C & ",Discount=" & var_6EC & ",MeshAc='" & CVar(var_9C0.Tag) & "', ActiveYN =" & IIf((var_A0C.Text = "Yes"), 1, 0) 
  loc_1A46AA9:       Set var_A94 = Me.Txt
  loc_1A46AAF:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2E), var_A98)
  loc_1A46ABE:       Proc_6_17_EAAE40(var_814, CVar(var_A98))
  loc_1A46B1B:       Set var_B88 = Me.Txt
  loc_1A46B21:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1D), var_B8C)
  loc_1A46B34:       var_920 = var_7E4 & ",CINNo=" & var_814 & ",BlackListed='" & IIf((var_B34.Text = "Yes"), "Y", "N") & "',ReasonBlackList='" & CVar(var_B8C.Text) 
  loc_1A46B4F:       Set var_C20 = Me.Txt
  loc_1A46B55:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1F), var_C24)
  loc_1A46B83:       Set var_CBC = Me.Txt
  loc_1A46B89:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H27), var_CC0)
  loc_1A46BB4:       Set var_D08 = Me.Txt
  loc_1A46BBA:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1C), var_D0C)
  loc_1A46BC9:       Proc_6_7_F26918(var_A04, CVar(var_D0C))
  loc_1A46BDA:       var_A30 = var_920 & "',BlackListedBy='" & CVar(var_C24.Text) & "', BloodGroup='" & CVar(var_CC0.Text) & "',ApplDate=" & var_A04 & ",ValidFrom=" 
  loc_1A46BE9:       Set var_D54 = Me.Txt
  loc_1A46BEF:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2D), var_D58)
  loc_1A46BFE:       Proc_6_7_F26918(var_A70, CVar(var_D58))
  loc_1A46C1E:       Set var_DA0 = Me.Txt
  loc_1A46C24:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H30), var_DA4)
  loc_1A46C33:       Proc_6_7_F26918(var_AFC, CVar(var_DA4))
  loc_1A46C53:       Set var_DF8 = Me.Txt
  loc_1A46C59:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H23), var_DFC)
  loc_1A46C68:       Proc_6_17_EAAE40(var_B54, CVar(var_DFC))
  loc_1A46C96:       var_BBC = var_A30 & var_A70 & ",ValidateUpto=" & var_AFC & ",Remark=" & var_B54 & ",Add1='" & CVar(var_A8) & "',Add2='" & CVar(var_AC) 
  loc_1A46CE2:       var_CB8 = var_BBC & "',Add3='" & CVar(var_B0) & "',CityCode='" & CVar(var_B4) & "',Pin='" & CVar(var_B8) & "',Phone='" & CVar(var_BC) 
  loc_1A46D3F:       Set var_E50 = Me.Txt
  loc_1A46D45:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H11), var_E54)
  loc_1A46D58:       var_DB4 = var_CB8 & "',Mobile='" & CVar(var_C0) & "',Mobile1='" & CVar(var_C4) & "',EMail='" & CVar(var_C8) & "'," & "PANNo='" & CVar(var_E54.Text) 
  loc_1A46D7C:       Set var_EA8 = Me.Txt
  loc_1A46D82:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H35), var_EAC)
  loc_1A46DC4:       var_E74 = var_DB4 & "'," & "GSTIN='" & CVar(var_EAC.Text) & "',SubCorresYN='" & CVar(var_CC) & "',AddName='" & CVar(var_A4) & "' Where SUBCODE='" 
  loc_1A46DE2:       global_224 = CStr(var_E74 & CVar(arg_14) & "'")
  loc_1A46F78:     Else
  loc_1A46F86:       Set var_878 = Me.Txt
  loc_1A46F8C:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(8), var_87C)
  loc_1A46FA7:       Set var_A08 = Me.Txt
  loc_1A46FAD:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1A), var_A0C)
  loc_1A46FC8:       Set var_B30 = Me.Txt
  loc_1A46FCE:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1B), var_B34)
  loc_1A46FE2:       var_D8 = "Update " & arg_10
  loc_1A46FE9:       var_DC = var_D8 & " Set Name='"
  loc_1A46FF0:       var_E0 = var_DC & arg_18
  loc_1A4701E:       Set var_D0 = Me.Txt
  loc_1A47024:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(2), var_D4)
  loc_1A4704A:       var_3AC = var_E0 & "',NameHelp='" & Proc_183_20_FB48CC(arg_18) & "',GroupCode='" & var_D4.Tag & "',GroupNature='" & var_90 & "',Nature='"
  loc_1A47069:       Set var_104 = Me.Txt
  loc_1A4706F:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(3), var_10C)
  loc_1A47095:       Set var_160 = Me.Txt
  loc_1A4709B:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(4), var_174)
  loc_1A470BB:       var_15C = CVar(var_3AC & var_8C & "',ConPrefix='" & var_10C.Text & "',ConPerson='") & Trim(CVar(var_174)) & "',ConPersonMName='" 
  loc_1A470CA:       Set var_1C8 = Me.Txt
  loc_1A470D0:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H25), var_1DC)
  loc_1A470FF:       Set var_230 = Me.Txt
  loc_1A47105:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H26), var_244)
  loc_1A47134:       Set var_298 = Me.Txt
  loc_1A4713A:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H29), var_2AC)
  loc_1A4715A:       var_294 = var_15C & Trim(CVar(var_1DC)) & "',ConPersonLName='" & Trim(CVar(var_244)) & "',FatherName='" & Trim(CVar(var_2AC)) & "',MotherName='" 
  loc_1A47169:       Set var_300 = Me.Txt
  loc_1A4716F:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2A), var_314)
  loc_1A471B4:       Proc_183_7_EB17D4(var_364, Now)
  loc_1A471CF:       var_3D0 = var_294 & Trim(CVar(var_314)) & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_364 & ",U_AE='" & CVar(arg_1C) 
  loc_1A471EA:       Set var_388 = Me.Txt
  loc_1A471F0:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(7), var_424)
  loc_1A4722E:       Set var_478 = Me.Txt
  loc_1A47234:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(6), var_47C)
  loc_1A4724B:       var_48C = var_3D0 & "',CompanyType='" & CVar(var_424.Tag) & "',LOGSITE_CODE='" & CVar(MemVar_1F95078) & "',CardNo='" & Trim(CVar(var_47C)) 
  loc_1A47263:       Set var_710 = Me.Txt
  loc_1A47269:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2B), var_714)
  loc_1A47298:       Set var_75C = Me.Txt
  loc_1A4729E:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2C), var_760)
  loc_1A472EF:       var_60C = var_48C & "',IdProof='" & Trim(CVar(var_714)) & "',IdProofNo='" & Trim(CVar(var_760)) & "',AllowCredit='" & IIf((var_87C.Text = "Yes"), "Y", "N") 
  loc_1A47307:       Set var_924 = Me.Txt
  loc_1A4730D:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H28), var_928)
  loc_1A4731C:       Proc_6_39_E7D3A0(var_66C, CVar(var_928))
  loc_1A4733C:       Set var_970 = Me.Txt
  loc_1A47342:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1E), var_974)
  loc_1A47351:       Proc_6_39_E7D3A0(var_6EC, CVar(var_974))
  loc_1A47374:       Set var_9BC = Me.Txt
  loc_1A4737A:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H24), var_9C0)
  loc_1A473BB:       var_7E4 = var_60C & "',CreditLimit=" & var_66C & ",Discount=" & var_6EC & ",MeshAc='" & CVar(var_9C0.Tag) & "', ActiveYN =" & IIf((var_A0C.Text = "Yes"), 1, 0) 
  loc_1A473D3:       Set var_A94 = Me.Txt
  loc_1A473D9:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2E), var_A98)
  loc_1A473E8:       Proc_6_17_EAAE40(var_814, CVar(var_A98))
  loc_1A47402:       var_890 = "N"
  loc_1A47445:       Set var_B88 = Me.Txt
  loc_1A4744B:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1D), var_B8C)
  loc_1A4745E:       var_920 = var_7E4 & ",CINNo=" & var_814 & ",BlackListed='" & IIf((var_B34.Text = "Yes"), "Y", var_890) & "',ReasonBlackList='" & CVar(var_B8C.Text) 
  loc_1A47479:       Set var_C20 = Me.Txt
  loc_1A4747F:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1F), var_C24)
  loc_1A474AD:       Set var_CBC = Me.Txt
  loc_1A474B3:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H27), var_CC0)
  loc_1A474DE:       Set var_D08 = Me.Txt
  loc_1A474E4:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H1C), var_D0C)
  loc_1A474F3:       Proc_6_7_F26918(var_A04, CVar(var_D0C))
  loc_1A47504:       var_A30 = var_920 & "',BlackListedBy='" & CVar(var_C24.Text) & "', BloodGroup='" & CVar(var_CC0.Text) & "',ApplDate=" & var_A04 & ",ValidFrom=" 
  loc_1A47513:       Set var_D54 = Me.Txt
  loc_1A47519:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2D), var_D58)
  loc_1A47528:       Proc_6_7_F26918(var_A70, CVar(var_D58))
  loc_1A47548:       Set var_DA0 = Me.Txt
  loc_1A4754E:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H30), var_DA4)
  loc_1A4755D:       Proc_6_7_F26918(var_AFC, CVar(var_DA4))
  loc_1A4757D:       Set var_DF8 = Me.Txt
  loc_1A47583:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H23), var_DFC)
  loc_1A47592:       Proc_6_17_EAAE40(var_B54, CVar(var_DFC))
  loc_1A475C0:       var_BBC = var_A30 & var_A70 & ",ValidateUpto=" & var_AFC & ",Remark=" & var_B54 & ",Add1='" & CVar(var_A8) & "',Add2='" & CVar(var_AC) 
  loc_1A4760C:       var_CB8 = var_BBC & "',Add3='" & CVar(var_B0) & "',CityCode='" & CVar(var_B4) & "',Pin='" & CVar(var_B8) & "',Phone='" & CVar(var_BC) 
  loc_1A47669:       Set var_E50 = Me.Txt
  loc_1A4766F:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H11), var_E54)
  loc_1A47682:       var_DB4 = var_CB8 & "',Mobile='" & CVar(var_C0) & "',Mobile1='" & CVar(var_C4) & "',EMail='" & CVar(var_C8) & "'," & "PANNo='" & CVar(var_E54.Text) 
  loc_1A476A6:       Set var_EA8 = Me.Txt
  loc_1A476AC:       Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H35), var_EAC)
  loc_1A476EE:       var_E74 = var_DB4 & "'," & "GSTIN='" & CVar(var_EAC.Text) & "',SubCorresYN='" & CVar(var_CC) & "',AddName='" & CVar(var_A4) & "' Where SUBCODE='" 
  loc_1A4770C:       global_224 = CStr(var_E74 & CVar(arg_14) & "'")
  loc_1A4789F:     End If
  loc_1A478BD:     Set var_D0 = Me.Txt
  loc_1A478C3:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(3), var_D4, var_D8, "Update MemberFamily Set ConPrefix='")
  loc_1A478CB:     var_A90 = var_D4.Text
  loc_1A478D4:     var_DC = -1 & var_D8
  loc_1A478EF:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(4), var_10C)
  loc_1A4791A:     Set var_160 = Me.Txt
  loc_1A47920:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H25), var_174, Trim(CVar(var_10C)) & " ")
  loc_1A4794F:     Set var_1C8 = Me.Txt
  loc_1A47955:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H26), var_1DC)
  loc_1A47996:     Set var_230 = Me.Txt
  loc_1A4799C:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(6), var_244)
  loc_1A479AF:     var_274 = var_D54 & Trim(CVar(var_DC & "',Name='") & Trim(CVar(var_174)) & " " & Trim(CVar(var_1DC))) & "',CardNo='" & CVar(var_244.Text) 
  loc_1A479CA:     Set var_298 = Me.Txt
  loc_1A479D0:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H13), var_2AC)
  loc_1A479FE:     Set var_300 = Me.Txt
  loc_1A47A04:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H16), var_314)
  loc_1A47A2F:     Set var_388 = Me.Txt
  loc_1A47A35:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H14), var_424)
  loc_1A47A44:     Proc_183_7_EB17D4(var_364, CVar(var_424))
  loc_1A47A67:     Set var_478 = Me.Txt
  loc_1A47A6D:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H15), var_47C)
  loc_1A47A80:     var_3E0 = var_274 & "',Gender='" & CVar(var_2AC.Text) & "',MaritalStatus='" & CVar(var_314.Text) & "',DOB=" & var_364 & ",POB='" & CVar(var_47C.Text) 
  loc_1A47AC2:     var_474 = var_3E0 & "',WedDate=Null,Phone='" & CVar(var_BC) & "',Mobile='" & CVar(var_C0) & "',Mobile1='" & CVar(var_C4) & "',Email='" 
  loc_1A47AE7:     Set var_710 = Me.Txt
  loc_1A47AED:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H17), var_714)
  loc_1A47B1B:     Set var_75C = Me.Txt
  loc_1A47B21:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H19), var_760)
  loc_1A47B3D:     var_54C = var_474 & CVar(var_C8) & "',Nationality='" & CVar(var_714.Text) & "',Religion='" & CVar(var_760.Text) & "',BloodGroup='" 
  loc_1A47B4F:     Set var_878 = Me.Txt
  loc_1A47B55:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H27), var_87C)
  loc_1A47B83:     Set var_924 = Me.Txt
  loc_1A47B89:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HB), var_928)
  loc_1A47BB7:     Set var_970 = Me.Txt
  loc_1A47BBD:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HC), var_974)
  loc_1A47BEB:     Set var_9BC = Me.Txt
  loc_1A47BF1:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HD), var_9C0)
  loc_1A47C04:     var_6AC = var_54C & CVar(var_87C.Text) & "',ProOcc='" & CVar(var_928.Text) & "',EdQuali='" & CVar(var_974.Text) & "',TBusiness='" & CVar(var_9C0.Text) 
  loc_1A47C1F:     Set var_A08 = Me.Txt
  loc_1A47C25:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HE), var_A0C)
  loc_1A47C53:     Set var_A94 = Me.Txt
  loc_1A47C59:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&HF), var_A98)
  loc_1A47C87:     Set var_B30 = Me.Txt
  loc_1A47C8D:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H2F), var_B34)
  loc_1A47CA9:     var_7C4 = var_6AC & "',TurnOver='" & CVar(var_A0C.Text) & "',Desig='" & CVar(var_A98.Text) & "',PostedAt='" & CVar(var_B34.Text) & "',PassPort='" 
  loc_1A47CBB:     Set var_B88 = Me.Txt
  loc_1A47CC1:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H10), var_B8C)
  loc_1A47CEF:     Set var_C20 = Me.Txt
  loc_1A47CF5:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H11), var_C24)
  loc_1A47D20:     Set var_CBC = Me.Txt
  loc_1A47D26:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(&H12), var_CC0)
  loc_1A47D35:     Proc_6_17_EAAE40(var_890, CVar(var_CC0))
  loc_1A47D62:     var_900 = var_7C4 & CVar(var_B8C.Text) & "',PAN='" & CVar(var_C24.Text) & "',SpInterest=" & var_890 & ",PicPath='" & CVar(Me.ImgMemPhoto.Tag) 
  loc_1A47DAD:     var_9B8 = var_900 & "',SigPath='" & CVar(Me.ImgMemSign.Tag) & "',Label=1,LogSite_Code='" & CVar(MemVar_1F95078) & "',U_Name='" & CVar(MemVar_1F950C8) 
  loc_1A47DC8:     Proc_183_7_EB17D4(var_A04, Now)
  loc_1A47DFA:     unk_5ADE1E.Execute CStr(var_9B8 & "',U_EntDt=" & var_A04 & ",U_AE='E' Where SubCode='" & CVar(arg_14) & "' And SNo=1"), , 
  loc_1A47F34:     Set var_D0 = Me.Txt
  loc_1A47F3A:     Call 0.Method_Proc_265_113_1A47FDC0 (CInt(2), var_D4, var_D8, "UPDATE LEDGER SET LEDGER.GROUPCODE='")
  loc_1A47F42:     var_100 = var_D4.Tag
  loc_1A47F4B:     var_DC = -1 & var_D8
  loc_1A47F77:     unk_5ADE1E.Execute var_DC & "',LEDGER.GROUPNATURE='" & var_90 & "' Where LEDGER.SUBCODE='" & arg_14 & "'", Me.Txt, 
  loc_1A47F99:   End If
  loc_1A47F99: End If
  loc_1A47F9E: Set var_98 = Nothing
  loc_1A47FA6: Set var_9C = Nothing
  loc_1A47FAE: Set var_A0 = Nothing
  loc_1A47FB1: Exit Sub
  loc_1A47FB2: ' Referenced from: 1A44B88
  loc_1A47FB8: Call 0.Method_arg_50 (var_D8)
  loc_1A47FC0: var_E0 = "SubGroupUpdate"
  loc_1A47FCD: Proc_183_57_104B0BC(var_D8)
  loc_1A47FD9: Exit Sub
End Sub

Public Sub Proc_265_114_1772CFC
  'Data Table: 5ADDB4
  Dim var_CC As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_98 As Integer
  Dim var_D4 As Variant
  Dim var_DC As Variant
  Dim var_B4 As Integer
  Dim var_B8 As Variant
  Dim var_C8 As Variant
  Dim var_104 As Variant
  Dim var_128 As Variant
  Dim var_D8 As Variant
  Dim var_158 As Variant
  Dim var_198 As Variant
  Dim var_1AC As Variant
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  Dim var_20C As Variant
  Dim var_228 As Variant
  Dim var_26C As Variant
  Dim var_2BC As MSHFlexGrid
  Dim var_2CC As Variant
  Dim var_32C As Variant
  Dim var_3E0 As Variant
  Dim var_484 As Variant
  Dim var_4D4 As Variant
  Dim var_4F4 As Variant
  Dim var_568 As Variant
  Dim var_588 As Variant
  Dim var_5FC As Variant
  Dim var_61C As Variant
  Dim var_690 As Variant
  Dim var_6B0 As Variant
  Dim var_724 As Variant
  Dim var_744 As Variant
  Dim var_768 As Variant
  Dim var_7B8 As Variant
  Dim var_7D8 As Variant
  Dim var_84C As Variant
  Dim var_86C As Variant
  Dim var_8E0 As Variant
  Dim var_900 As Variant
  Dim var_974 As Variant
  Dim var_994 As Variant
  Dim var_A08 As Variant
  Dim var_A28 As Variant
  Dim var_A9C As Variant
  Dim var_ABC As Variant
  Dim var_B30 As Variant
  Dim var_B50 As Variant
  Dim var_BC4 As Variant
  Dim var_BE4 As Variant
  Dim var_C58 As Variant
  Dim var_C78 As Variant
  Dim var_C9C As Variant
  Dim var_D30 As Variant
  Dim var_E24 As Variant
  Dim var_E44 As Variant
  Dim var_EFC As Variant
  Dim var_1114 As Double
  Dim var_E0 As Variant
  Dim var_E8 As Variant
  Dim var_EC As String
  Dim var_F0 As Variant
  Dim var_F4 As String
  Dim var_1B8 As String
  Dim var_278 As String
  Dim var_35C As Variant
  Dim var_3F0 As Variant
  Dim var_420 As Variant
  Dim var_538 As Variant
  Dim var_558 As Variant
  Dim var_5CC As Variant
  Dim var_660 As Variant
  Dim var_788 As Variant
  Dim var_944 As Variant
  Dim var_B00 As Variant
  Dim var_CBC As Variant
  Dim var_F1C As Variant
  Dim var_1074 As Variant
  Dim var_118 As Variant
  Dim var_E4 As String
  Dim var_1A8 As Variant
  Dim var_A8 As Recordset15
  Dim var_1B0 As String
  Dim var_34C As Variant
  Dim unk_5ADDE0 As Connection15
  Dim var_494 As Variant
  Dim Me As Recordset15
  loc_1771128: On Error Goto loc_1772CBD
  loc_177112F: Set var_B8 = Me.TopCtrl1
  loc_1771135: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_177114E: If (CStr() = "Add") Then
  loc_177115A:   unk_5ADE1E.BeginTrans var_D0
  loc_1771161:   var_98 = &HFF
  loc_1771172:   Set var_B8 = Me.Txt
  loc_1771178:   Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4)
  loc_1771180:   var_E4 = var_D4.Text
  loc_1771193:   Set var_D8 = Me.Txt
  loc_1771199:   Call 0.Method_Proc_265_114_1772CFC0 (CInt(1), var_DC)
  loc_17711A9:   var_F4 = "A"
  loc_17711CF:   Call Proc_265_113_1A47FDC("Add", "SubGroup", var_E4, var_DC.Text, var_F4)
  loc_1771205:   unk_5ADE1E.Execute global_224, var_C8, -1
  loc_177123A:   For var_108 = 1 To CInt((CLng(Me.FAGrid.Rows) - 1)): var_9E = var_108 'Integer
  loc_1771277:     If (CStr(Me.FAGrid.TextMatrix)) <> vbNullString) Then
  loc_1771288:       Set var_B8 = Me.Txt
  loc_177128E:       Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_E4, CVar(CLng(5)), CVar(CLng(var_9E)))
  loc_1771296:       1 = var_D4.Text
  loc_177129F:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_17712A7:       var_128 = CVar(CLng(4)) 'Long
  loc_17712B0:       Set var_D8 = Me.FAGrid
  loc_17712B6:       var_C8 = var_D8.TextMatrix)
  loc_17712D7:       Set var_DC = Me.FAGrid
  loc_17712DD:       var_198 = var_DC.TextMatrix)
  loc_17712F7:       Set var_1A8 = Me.Txt
  loc_17712FD:       Call 0.Method_Proc_265_114_1772CFC0 (CInt(6), var_1AC, var_1B0, var_198, CVar(CLng(5)), CVar(CLng(var_9E)))
  loc_1771305:       var_C8 = var_1AC.Text
  loc_177130E:       var_1C8 = CVar(CLng(var_9E)) 'Long
  loc_1771316:       var_1E8 = CVar(CLng(3)) 'Long
  loc_1771325:       var_20C = Me.FAGrid.TextMatrix)
  loc_1771335:       var_228 = CVar(CLng(var_9E)) 'Long
  loc_177134C:       var_26C = Me.FAGrid.TextMatrix)
  loc_1771373:       var_2CC = Me.FAGrid.TextMatrix)
  loc_177139A:       var_32C = Me.FAGrid.TextMatrix)
  loc_17713AB:       Proc_183_7_EB17D4(var_34C, CVar(CStr(var_32C)), CVar(CLng(8)), CVar(CLng(var_9E)), var_2CC, CVar(CLng(7)), CVar(CLng(var_9E)), var_26C)
  loc_17713CB:       var_3E0 = Me.FAGrid.TextMatrix)
  loc_1771403:       Proc_183_7_EB17D4(var_494, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_9E)), var_3E0, CVar(CLng(9)), CVar(CLng(var_9E)), CVar(CLng(6)))
  loc_177140C:       var_4D4 = CVar(CLng(var_9E)) 'Long
  loc_1771414:       var_4F4 = CVar(CLng(&HB)) 'Long
  loc_1771433:       var_568 = CVar(CLng(var_9E)) 'Long
  loc_177143B:       var_588 = CVar(CLng(&HC)) 'Long
  loc_177145A:       var_5FC = CVar(CLng(var_9E)) 'Long
  loc_1771462:       var_61C = CVar(CLng(&HD)) 'Long
  loc_1771481:       var_690 = CVar(CLng(var_9E)) 'Long
  loc_1771489:       var_6B0 = CVar(CLng(&HE)) 'Long
  loc_17714A8:       var_724 = CVar(CLng(var_9E)) 'Long
  loc_17714B0:       var_744 = CVar(CLng(&HF)) 'Long
  loc_17714BF:       var_768 = Me.FAGrid.TextMatrix)
  loc_17714CF:       var_7B8 = CVar(CLng(var_9E)) 'Long
  loc_17714D7:       var_7D8 = CVar(CLng(&H10)) 'Long
  loc_17714F6:       var_84C = CVar(CLng(var_9E)) 'Long
  loc_17714FE:       var_86C = CVar(CLng(&H11)) 'Long
  loc_177151D:       var_8E0 = CVar(CLng(var_9E)) 'Long
  loc_1771525:       var_900 = CVar(CLng(&H12)) 'Long
  loc_1771544:       var_974 = CVar(CLng(var_9E)) 'Long
  loc_177154C:       var_994 = CVar(CLng(&H13)) 'Long
  loc_177156B:       var_A08 = CVar(CLng(var_9E)) 'Long
  loc_1771573:       var_A28 = CVar(CLng(&H14)) 'Long
  loc_1771592:       var_A9C = CVar(CLng(var_9E)) 'Long
  loc_177159A:       var_ABC = CVar(CLng(&H15)) 'Long
  loc_17715B9:       var_B30 = CVar(CLng(var_9E)) 'Long
  loc_17715C1:       var_B50 = CVar(CLng(&H18)) 'Long
  loc_17715E0:       var_BC4 = CVar(CLng(var_9E)) 'Long
  loc_17715E8:       var_BE4 = CVar(CLng(&H16)) 'Long
  loc_1771607:       var_C58 = CVar(CLng(var_9E)) 'Long
  loc_177160F:       var_C78 = CVar(CLng(&H17)) 'Long
  loc_177161E:       var_C9C = Me.FAGrid.TextMatrix)
  loc_1771645:       var_D30 = Me.FAGrid.TextMatrix)
  loc_177167D:       Proc_6_17_EAAE40(var_DE4, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_9E)), var_D30, CVar(CLng(&H19)), CVar(CLng(var_9E)), var_C9C)
  loc_1771686:       var_E24 = CVar(CLng(var_9E)) 'Long
  loc_177168E:       var_E44 = CVar(CLng(&H1B)) 'Long
  loc_17716C4:       var_EFC = Me.FAGrid.TextMatrix)
  loc_17716FE:       var_1114 = Val(CStr(Me.FAGrid.TextMatrix)))
  loc_177170F:       Proc_183_7_EB17D4(var_10B4, Now, var_1114, CVar(CLng(&H1D)), CVar(CLng(var_9E)), var_EFC, CVar(CLng(&H1C)), CVar(CLng(var_9E)))
  loc_1771728:       var_CC = "Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone," & "Mobile,Fax,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PassPort,PAN,InTax,SpInterest,PicPath,  "
  loc_177172F:       var_E0 = var_CC & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) "
  loc_1771736:       var_E8 = var_E0 & "Values ('"
  loc_1771744:       var_F0 = var_E8 & var_E4 & "',"
  loc_17717A6:       var_278 = var_F0 & CStr(2) & ",'" & CStr(var_C8) & "','" & CStr(var_198) & "','" & var_1B0 & "','" & CStr(var_20C) & "','" & CStr(var_26C)
  loc_17717BF:       var_35C = CVar(var_278 & "','" & CStr(var_2CC) & "',") 'String
  loc_1771806:       var_558 = var_35C & var_34C & ",'" & CVar(CStr(var_3E0)) & "'," & var_494 & ",'" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" 
  loc_1771811:       var_5CC = var_558 & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_177184D:       var_788 = var_5CC & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(var_768)) 
  loc_1771889:       var_944 = var_788 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_17718C5:       var_B00 = var_944 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1771901:       var_CBC = var_B00 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(var_C9C)) 
  loc_177194D:       var_F1C = var_CBC & "','" & CVar(CStr(var_D30)) & "'," & var_DE4 & ",'" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(var_EFC)) 
  loc_177199A:       var_1074 = var_F1C & "'," & CVar(var_1114) & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) 
  loc_17719C1:       unk_5ADE1E.Execute CStr(var_1074 & "'," & var_10B4 & ",'A')"), var_1108, -1
  loc_1771B23:       var_B4 = (var_B4 + 1)
  loc_1771B26:     End If
  loc_1771B29:   Next var_108 'Integer
  loc_1771B5B:   Set var_B8 = Me.Txt
  loc_1771B61:   Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_CC, "SELECT IsNull(Max(SNo),0)+1 From MemberFamily Where SubCode= '", var_C8, -1)
  loc_1771B69:   var_D8 = var_D4.Text
  loc_1771B82:   unk_5ADE1E.Execute var_DC & var_CC & "'", 0, var_1A8
  loc_1771B92:    = var_DC.Item()
  loc_1771B9A:    = var_1A8.Value
  loc_1771BA3:   var_B4 = CInt(var_D8.Fields)
  loc_1771BE1:   Set var_B8 = Me.Txt
  loc_1771BE7:   Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemberFamily Where SubCode= '")
  loc_1771BEF:   var_C8 = var_D4.Text
  loc_1771BF8:   var_E0 = -1 & var_CC
  loc_1771C08:   unk_5ADE1E.Execute var_DC & var_CC & "' And SNo<>1 Order By Label,SNo", var_D8, var_B4
  loc_1771C13:   Set var_A8 = var_D8
  loc_1771C2B:   ' Referenced from: 1771D0F
  loc_1771C3A:   If Not(var_A8.EOF) Then
  loc_1771C52:     var_CC = CStr(var_B4)
  loc_1771C77:     var_D4 = var_A8.Fields.Item("subcode")
  loc_1771C7F:     var_C8 = CVar(var_D4) 'Address
  loc_1771C8C:     var_EC = -1 & Proc_6_38_E69628(var_C8, "Update MemberFamily Set SNo=" & var_CC & " where Subcode='", var_32C)
  loc_1771C93:     var_26C = CVar(Proc_6_38_E69628(var_C8, "Update MemberFamily Set SNo=" & var_CC & " where Subcode='", var_32C) & "Update MemberFamily Set SNo=" & var_CC & " where Subcode='" & "' And SNo=") 'String
  loc_1771CA5:     var_D8 = var_A8.Fields
  loc_1771CBC:     Proc_6_39_E7D3A0(var_20C, CVar(var_D8.Item("SNo")))
  loc_1771CD2:     unk_5ADE1E.Execute CStr(var_26C & var_20C), var_1A8, 
  loc_1771D04:     var_B4 = (var_B4 + 1)
  loc_1771D0A:     var_A8.MoveNext
  loc_1771D0F:     GoTo loc_1771C2B
  loc_1771D12:   End If
  loc_1771D14:   var_B4 = 2
  loc_1771D35:   Set var_B8 = Me.Txt
  loc_1771D3B:   Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemberFamily Where SubCode= '", var_C8)
  loc_1771D43:   -1 = var_D4.Text
  loc_1771D5C:   unk_5ADE1E.Execute var_D8 & var_CC & "' And SNo<>1 Order By SNo", var_B4, var_B4
  loc_1771D67:   Set var_A8 = var_D8
  loc_1771D7F:   ' Referenced from: 1771E63
  loc_1771D8E:   If Not(var_A8.EOF) Then
  loc_1771DCB:     var_D4 = var_A8.Fields.Item("subcode")
  loc_1771DE0:     var_EC = -1 & Proc_6_38_E69628(CVar(var_D4), "Update MemberFamily Set SNo=" & CStr(var_B4) & " where Subcode='", var_32C)
  loc_1771DE7:     var_26C = CVar(Proc_6_38_E69628(CVar(var_D4), "Update MemberFamily Set SNo=" & CStr(var_B4) & " where Subcode='", var_32C) & "Update MemberFamily Set SNo=" & CStr(var_B4) & " where Subcode='" & "' And SNo=") 'String
  loc_1771E10:     Proc_6_39_E7D3A0(var_20C, CVar(var_A8.Fields.Item("SNo")))
  loc_1771E18:     var_2CC = var_26C & var_20C 
  loc_1771E26:     unk_5ADE1E.Execute CStr(var_2CC), var_1A8, 
  loc_1771E58:     var_B4 = (var_B4 + 1)
  loc_1771E5E:     var_A8.MoveNext
  loc_1771E63:     GoTo loc_1771D7F
  loc_1771E66:   End If
  loc_1771E90:   For var_111A = 1 To CInt((CLng(Me.FPGrid.Rows) - 1)): var_9E = var_111A 'Integer
  loc_1771E9A:     var_104 = CVar(CLng(var_9E)) 'Long
  loc_1771EBC:     var_CC = CStr(Me.FPGrid.TextMatrix))
  loc_1771ECD:     If (var_CC <> vbNullString) Then
  loc_1771EDE:       Set var_B8 = Me.Txt
  loc_1771EE4:       Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_CC, CVar(CLng(3)))
  loc_1771EEC:       var_104 = var_D4.Text
  loc_1771EF5:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_1771EFD:       var_128 = CVar(CLng(3)) 'Long
  loc_1771F0C:       var_C8 = Me.FPGrid.TextMatrix)
  loc_1771F1C:       var_158 = CVar(CLng(var_9E)) 'Long
  loc_1771F2D:       Set var_DC = Me.FPGrid
  loc_1771F33:       var_198 = var_DC.TextMatrix)
  loc_1771F54:       Set var_1A8 = Me.FPGrid
  loc_1771F5A:       var_20C = var_1A8.TextMatrix)
  loc_1771F74:       Proc_183_7_EB17D4(var_2CC, Now, var_20C, CVar(CLng(&HE)), CVar(CLng(var_9E)), var_198, CVar(CLng(4)))
  loc_1771F8D:       var_E0 = "Insert into MemProposedMemInf(Subcode,SNo,PMemCode,MemberType,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('"
  loc_1771FEB:       var_1B8 = var_E0 & var_CC & "'," & CStr(1) & ",'" & CStr(var_C8) & "','" & CStr(var_198) & "','" & CStr(var_20C) & "','" & MemVar_1F95070
  loc_177200E:       var_32C = CVar(var_1B8 & "','" & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',") 'String
  loc_177202B:       unk_5ADE1E.Execute CStr(var_32C & var_2CC & ",'A')"), var_35C, -1
  loc_1772089:       var_B4 = (var_B4 + 1)
  loc_177208C:     End If
  loc_177208F:   Next var_111A 'Integer
  loc_17720C1:   Set var_B8 = Me.Txt
  loc_17720C7:   Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_CC, "SELECT IsNull(Max(SNo),0)+1 From MemProposedMemInf Where SubCode= '", var_C8, -1)
  loc_17720CF:   var_D8 = var_D4.Text
  loc_17720E8:   unk_5ADE1E.Execute var_DC & var_CC & "'", 0, var_1A8
  loc_17720F8:    = var_DC.Item()
  loc_1772100:    = var_1A8.Value
  loc_1772109:   var_B4 = CInt(var_D8.Fields)
  loc_1772147:   Set var_B8 = Me.Txt
  loc_177214D:   Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '")
  loc_1772155:   var_C8 = var_D4.Text
  loc_177215E:   var_E0 = -1 & var_CC
  loc_177216E:   unk_5ADE1E.Execute var_DC & var_CC & "' Order By Cast(Mark As Integer),SNo", var_D8, var_B4
  loc_1772179:   Set var_A8 = var_D8
  loc_1772191:   ' Referenced from: 1772275
  loc_17721A0:   If Not(var_A8.EOF) Then
  loc_17721B8:     var_CC = CStr(var_B4)
  loc_17721DD:     var_D4 = var_A8.Fields.Item("subcode")
  loc_17721E5:     var_C8 = CVar(var_D4) 'Address
  loc_17721F2:     var_EC = -1 & Proc_6_38_E69628(var_C8, "Update MemProposedMemInf Set SNo=" & var_CC & " where Subcode='", var_32C)
  loc_177220B:     var_D8 = var_A8.Fields
  loc_1772222:     Proc_6_39_E7D3A0(var_20C, CVar(var_D8.Item("SNo")))
  loc_1772238:     unk_5ADE1E.Execute CStr(CVar(CStr(1) & "' And SNo=") & var_20C), var_1A8, 
  loc_177226A:     var_B4 = (var_B4 + 1)
  loc_1772270:     var_A8.MoveNext
  loc_1772275:     GoTo loc_1772191
  loc_1772278:   End If
  loc_177227A:   var_B4 = 1
  loc_177229B:   Set var_B8 = Me.Txt
  loc_17722A1:   Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_CC, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '", var_C8)
  loc_17722A9:   -1 = var_D4.Text
  loc_17722C2:   unk_5ADE1E.Execute var_D8 & var_CC & "' Order By SNo", var_B4, var_B4
  loc_17722CD:   Set var_A8 = var_D8
  loc_17722E5:   ' Referenced from: 17723C9
  loc_17722F4:   If Not(var_A8.EOF) Then
  loc_177230C:     var_CC = CStr(var_B4)
  loc_1772331:     var_D4 = var_A8.Fields.Item("subcode")
  loc_1772346:     var_EC = -1 & Proc_6_38_E69628(CVar(var_D4), "Update MemProposedMemInf Set SNo=" & var_CC & " where Subcode='", var_32C)
  loc_177235F:     var_D8 = var_A8.Fields
  loc_1772367:     var_DC = var_D8.Item("SNo")
  loc_1772376:     Proc_6_39_E7D3A0(var_20C, CVar(var_DC))
  loc_177237E:     var_2CC = CVar(CStr(1) & "' And SNo=") & var_20C 
  loc_177238C:     unk_5ADE1E.Execute CStr(var_2CC), var_1A8, 
  loc_17723BE:     var_B4 = (var_B4 + 1)
  loc_17723C4:     var_A8.MoveNext
  loc_17723C9:     GoTo loc_17722E5
  loc_17723CC:   End If
  loc_17723D2:   unk_5ADE1E.CommitTrans
  loc_17723FC:   Set var_B8 = Me.Txt
  loc_1772402:   Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_CC, "Update memAddRWA set Mark='' where Subcode='", var_2CC)
  loc_177240A:   -1 = var_D4.Text
  loc_1772429:   var_26C = var_D8 & Trim(CVar(var_CC)) & "'" 
  loc_177242D:   var_E0 = CStr(var_26C)
  loc_1772437:   unk_5ADE1E.Execute var_E0, 0, var_B4
  loc_1772455: End If
  loc_1772459: Set var_B8 = Me.TopCtrl1
  loc_177245F: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1772478: If (CStr() = "Add") Then
  loc_17724A0:   For var_111E = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_9E = var_111E 'Integer
  loc_17724D1:     If ((var_9E > 1) And (CLng(var_9E) < (CLng(Me.FGrid1.Rows) - 1))) Then
  loc_17724D8:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_17724E0:       var_128 = CVar(CLng(6)) 'Long
  loc_17724FA:       var_198 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1772500:       var_20C = Trim(var_198)
  loc_177251C:       If (var_20C = vbNullString) Then
  loc_1772538:         MsgBox("Define revenue ", &H40, var_198, var_20C, var_26C)
  loc_1772548:         Exit Sub
  loc_1772549:       End If
  loc_1772549:     End If
  loc_177254D:     var_104 = CVar(CLng(var_9E)) 'Long
  loc_1772555:     var_128 = CVar(CLng(6)) 'Long
  loc_1772575:     var_20C = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1772591:     If CBool(var_20C <> vbNullString) Then
  loc_1772598:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_17725BA:       var_CC = CStr(Me.FGrid1.TextMatrix))
  loc_17725D0:       If (CDbl(Val(var_CC)) <= CDbl(0)) Then
  loc_17725E6:         Me.FGrid1.Row = CVar(CLng(var_9E))
  loc_17725F1:         var_104 = CVar(CLng(2)) 'Long
  loc_1772600:         Me.FGrid1.Col = var_104
  loc_177260C:         Set var_B8 = Me.FGrid1
  loc_177261D:         Call Fgrid1_UnknownEvent_B()
  loc_1772627:         Call TxtGrid_GotFocus(2)
  loc_1772632:         Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, CVar(CLng(2)), var_104, CVar(CLng(2)))
  loc_1772653:         MsgBox("Please Fill Valid Amount.", 0, CVar(var_CC), var_20C, var_26C)
  loc_1772663:         Exit Sub
  loc_1772664:       End If
  loc_1772668:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_177268A:       var_CC = CStr(Me.FGrid1.TextMatrix))
  loc_177269B:       If (var_CC = vbNullString) Then
  loc_17726B1:         Me.FGrid1.Row = CVar(CLng(var_9E))
  loc_17726BC:         var_104 = CVar(CLng(3)) 'Long
  loc_17726CB:         Me.FGrid1.Col = var_104
  loc_17726D7:         Set var_B8 = Me.FGrid1
  loc_17726E8:         Call Fgrid1_UnknownEvent_B()
  loc_17726F2:         Call TxtGrid_GotFocus(2)
  loc_17726FD:         Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, CVar(CLng(3)), var_104)
  loc_177271E:         MsgBox("Please Fill Valid Nature.", 0, CVar(var_CC), var_20C, var_26C)
  loc_177272E:         Exit Sub
  loc_177272F:       End If
  loc_1772733:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_1772768:       If Not(IsDate(CVar(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_177277E:         Me.FGrid1.Row = CVar(CLng(var_9E))
  loc_1772789:         var_104 = CVar(CLng(4)) 'Long
  loc_1772798:         Me.FGrid1.Col = var_104
  loc_17727A4:         Set var_B8 = Me.FGrid1
  loc_17727B5:         Call Fgrid1_UnknownEvent_B()
  loc_17727BF:         Call TxtGrid_GotFocus(2)
  loc_17727CA:         Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, CVar(CLng(4)), var_104)
  loc_17727EB:         MsgBox("Please Fill Valid Applicable.", 0, CVar(var_CC), var_20C, var_26C)
  loc_17727FB:         Exit Sub
  loc_17727FC:       End If
  loc_1772800:       var_104 = CVar(CLng(var_9E)) 'Long
  loc_1772822:       var_CC = CStr(Me.FGrid1.TextMatrix))
  loc_1772833:       If (var_CC = vbNullString) Then
  loc_1772849:         Me.FGrid1.Row = CVar(CLng(var_9E))
  loc_1772854:         var_104 = CVar(CLng(5)) 'Long
  loc_1772863:         Me.FGrid1.Col = var_104
  loc_177286F:         Set var_B8 = Me.FGrid1
  loc_1772880:         Call Fgrid1_UnknownEvent_B()
  loc_177288A:         Call TxtGrid_GotFocus(2)
  loc_1772895:         Call 0.Method_arg_50 (var_CC, FGrid1.DispID_8001, CVar(CLng(5)), var_104)
  loc_17728B6:         MsgBox("Please Fill Valid Status.", 0, CVar(var_CC), var_20C, var_26C)
  loc_17728C6:         Exit Sub
  loc_17728C7:       End If
  loc_17728C7:     End If
  loc_17728CA:   Next var_111E 'Integer
  loc_17728D8:   unk_5ADDE0.BeginTrans var_D0
  loc_17728DF:   var_98 = &HFF
  loc_1772907:   For var_1122 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_9E = var_1122 'Integer
  loc_1772911:     var_104 = CVar(CLng(var_9E)) 'Long
  loc_1772933:     var_198 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1772955:     If CBool(Trim(var_198) <> vbNullString) Then
  loc_1772966:       Set var_B8 = Me.Txt
  loc_177296C:       Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4, var_E0, CVar(CLng(6)))
  loc_1772974:       var_104 = var_D4.Text
  loc_1772984:       Set var_D8 = Me.Txt
  loc_177298A:       Call 0.Method_Proc_265_114_1772CFC0 (CInt(4), var_DC)
  loc_1772999:       Proc_6_7_F26918(var_198, CVar(var_DC))
  loc_17729A2:       var_118 = CVar(CLng(var_9E)) 'Long
  loc_17729B9:       var_32C = Me.FGrid1.TextMatrix)
  loc_17729F3:       var_1114 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1772A11:       var_3F0 = Me.FGrid1.TextMatrix)
  loc_1772A38:       var_484 = Me.FGrid1.TextMatrix)
  loc_1772A49:       var_538 = CVar(Proc_6_15_EF37AC(var_484, CVar(CLng(5)), CVar(CLng(var_9E)), var_3F0, CVar(CLng(3)), CVar(CLng(var_9E)), var_1114)) 'String
  loc_1772A4F:       Proc_6_7_F26918(var_558, var_538, CVar(CLng(2)), CVar(CLng(var_9E)), var_32C)
  loc_1772A58:       Set var_2BC = Me.TopCtrl1
  loc_1772A5E:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(6)))
  loc_1772AA9:       var_CC = "Insert into MemRevWise (MemCode,AppDate,RevCode,Amount,Nature," & "ActiveYN,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_1772AC8:       var_104 = ",'"
  loc_1772B00:       var_420 = CVar(var_CC & " Values ('" & var_E0 & "',") & var_198 & var_104 & CVar(CStr(var_32C)) & "'," & CVar(var_1114) & ",'" & CVar(CStr(var_3F0)) 
  loc_1772B47:       var_660 = var_420 & "','" & CVar(CStr(var_484)) & "','" & CVar(MemVar_1F950C8) & "'," & var_558 & ",'" & IIf((CStr(var_5CC) = "Add"), "A", "E") 
  loc_1772B84:       unk_5ADDE0.Execute CStr(var_660 & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_768, -1
  loc_1772BFE:     End If
  loc_1772C01:   Next var_1122 'Integer
  loc_1772C0C:   unk_5ADDE0.CommitTrans
  loc_1772C13:   var_98 = 0
  loc_1772C16: End If
  loc_1772C21: Me.Requery -1
  loc_1772C34: Set var_B8 = Me.Txt
  loc_1772C3A: Call 0.Method_Proc_265_114_1772CFC0 (CInt(0), var_D4)
  loc_1772C66: Me.Requery -1
  loc_1772C83: var_CC = "SearchCode = '" & var_D4.Text
  loc_1772C93: Me.Find var_CC & "'", 0, 1
  loc_1772C9F: Call TopCtrl1_UnknownEvent_A()
  loc_1772CA9: Set var_9C = Nothing
  loc_1772CB1: Set var_A8 = Nothing
  loc_1772CB9: Set var_B0 = Nothing
  loc_1772CBC: Exit Sub
  loc_1772CBD: ' Referenced from: 1771128
  loc_1772CC3: If (var_98 = &HFF) Then
  loc_1772CCC:   unk_5ADE1E.RollbackTrans
  loc_1772CD1: End If
  loc_1772CD7: Call 0.Method_arg_50 (var_CC, var_104)
  loc_1772CEC: Proc_183_57_104B0BC(var_CC, "UpdateDataBaseAdd")
  loc_1772CF8: Exit Sub
End Sub

Public Sub Proc_265_115_1A771CC
  'Data Table: 5ADDB4
  Dim var_104 As Variant
  Dim var_C0 As Variant
  Dim var_C8 As String
  Dim var_CC As Variant
  Dim unk_5ADE1E As Connection15
  Dim var_F0 As Variant
  Dim var_F4 As Variant
  Dim var_108 As Variant
  Dim var_8A As Variant
  Dim var_C4 As Variant
  Dim var_120 As String
  Dim var_124 As String
  Dim var_94 As Variant
  Dim var_DC As Variant
  Dim var_BC As Variant
  Dim var_138 As Variant
  Dim var_13C As Variant
  Dim var_140 As Variant
  Dim var_154 As Variant
  Dim var_168 As Variant
  Dim var_158 As Variant
  Dim var_B2 As Variant
  Dim var_EC As Variant
  Dim var_174 As Double
  Dim var_1D4 As Variant
  Dim var_118 As Variant
  Dim var_22C As Variant
  Dim var_24C As Variant
  Dim var_184 As Variant
  Dim var_278 As Variant
  Dim var_19C As Variant
  Dim var_1AC As Variant
  Dim var_350 As Variant
  Dim var_360 As Variant
  Dim var_404 As Variant
  Dim var_498 As Variant
  Dim var_4A8 As Variant
  Dim var_4F8 As Variant
  Dim var_518 As Variant
  Dim var_58C As Variant
  Dim var_5AC As Variant
  Dim var_5D0 As Variant
  Dim var_620 As Variant
  Dim var_640 As Variant
  Dim var_6B4 As Variant
  Dim var_6D4 As Variant
  Dim var_748 As Variant
  Dim var_768 As Variant
  Dim var_7DC As Variant
  Dim var_7FC As Variant
  Dim var_870 As Variant
  Dim var_890 As Variant
  Dim var_904 As Variant
  Dim var_924 As Variant
  Dim var_998 As Variant
  Dim var_9B8 As Variant
  Dim var_A2C As Variant
  Dim var_A4C As Variant
  Dim var_AC0 As Variant
  Dim var_AE0 As Variant
  Dim var_B54 As Variant
  Dim var_B74 As Variant
  Dim var_BE8 As Variant
  Dim var_C7C As Variant
  Dim var_C9C As Variant
  Dim var_D54 As Variant
  Dim var_E48 As Variant
  Dim var_E68 As Variant
  Dim var_E8C As Variant
  Dim var_F10 As MSHFlexGrid
  Dim var_F20 As Variant
  Dim var_FA4 As Variant
  Dim var_1E8 As String
  Dim var_1EC As String
  Dim var_21C As String
  Dim var_2B0 As String
  Dim var_2B4 As String
  Dim var_380 As Variant
  Dim var_414 As Variant
  Dim var_424 As Variant
  Dim var_54C As Variant
  Dim var_55C As Variant
  Dim var_57C As Variant
  Dim var_610 As Variant
  Dim var_674 As Variant
  Dim var_6A4 As Variant
  Dim var_718 As Variant
  Dim var_79C As Variant
  Dim var_7AC As Variant
  Dim var_8D4 As Variant
  Dim var_8F4 As Variant
  Dim var_A90 As Variant
  Dim var_BD8 As Variant
  Dim var_D94 As Variant
  Dim var_EAC As Variant
  Dim var_FD8 As Variant
  Dim var_1058 As Variant
  Dim var_10B8 As Variant
  Dim var_10F8 As Variant
  Dim var_1140 As Variant
  Dim var_214 As String
  Dim var_10D8 As Variant
  Dim var_112C As Variant
  Dim var_370 As Variant
  Dim var_B0 As Recordset15
  Dim unk_5ADDE0 As Connection15
  Dim var_4B8 As Variant
  Dim Me As Recordset15
  loc_1A739A0: On Error Goto loc_1A7718F
  loc_1A739D0: Set var_BC = Me.Txt
  loc_1A739D6: Call 0.Method_Proc_265_115_1A771CC0 (CInt(2), var_C0, var_C4, "Select MainGrCode From AcGroup Where GroupCode='", var_EC, -1)
  loc_1A739DE: var_F0 = var_C0.Tag
  loc_1A739E7: var_C8 = var_F4 & var_C4
  loc_1A739F7: unk_5ADE1E.Execute var_C8 & "'", 0, var_108
  loc_1A73A07:  = var_F4.Item()
  loc_1A73A0F:  = var_108.Value
  loc_1A73A18: var_A4 = CStr(var_F0.Fields)
  loc_1A73A41: unk_5ADE1E.BeginTrans var_11C
  loc_1A73A48: var_8A = &HFF
  loc_1A73A66: var_CC = "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '"
  loc_1A73A77: Set var_BC = Me.Txt
  loc_1A73A7D: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C8, var_CC)
  loc_1A73A85: var_EC = var_C0.Text
  loc_1A73A8E: var_120 = -1 & var_C8
  loc_1A73A95: var_124 = var_120 & "'"
  loc_1A73A9E: unk_5ADE1E.Execute var_124, var_F0, var_8A
  loc_1A73AA9: Set var_94 = var_F0
  loc_1A73AC5: ' Referenced from: 1A73BFE
  loc_1A73AD4: If Not(var_94.EOF) Then
  loc_1A73AF1:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A73B04:   var_104 = "AmtCr"
  loc_1A73B18:   var_F4 = var_94.Fields.Item(var_104)
  loc_1A73B20:   var_118 = var_F4.Value
  loc_1A73B37:   var_108 = var_94.Fields
  loc_1A73B47:   var_184 = var_108.Item("AmtDr").Value
  loc_1A73B6E:   var_19C = var_94.Fields.Item("GroupCode").Value
  loc_1A73B95:   var_1AC = var_94.Fields.Item("V_DATE").Value
  loc_1A73BC6:   Proc_183_0_127A384(MemVar_1F951E0, CStr(var_C0.Value), CSng(var_118))
  loc_1A73BF9:   var_94.MoveNext
  loc_1A73BFE:   GoTo loc_1A73AC5
  loc_1A73C01: End If
  loc_1A73C0F: Set var_BC = Me.Txt
  loc_1A73C15: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_CC)
  loc_1A73C1D: CSng(var_184) = var_C0.Text
  loc_1A73C30: Set var_F0 = Me.Txt
  loc_1A73C36: Call 0.Method_Proc_265_115_1A771CC0 (CInt(1), var_F4, var_124)
  loc_1A73C3E: CStr(var_19C) = var_F4.Text
  loc_1A73C66: var_C4 = "Edit"
  loc_1A73C6C: Call Proc_265_113_1A47FDC(var_C4, "SubGroup", var_CC, var_124, "E")
  loc_1A73CA7: Set var_BC = Me.Txt
  loc_1A73CAD: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "UPdate MemAddRWA  Set Mark='' Where SubCode= '")
  loc_1A73CB5: var_EC = var_C0.Text
  loc_1A73CBE: var_C8 = -1 & var_C4
  loc_1A73CCE: unk_5ADE1E.Execute "SubGroup" & "' And Sno=1", var_F0, CDate(var_1AC)
  loc_1A73D06: Set var_BC = Me.Txt
  loc_1A73D0C: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "UPdate MemAddRWA  Set Mark='*' Where SubCode= '")
  loc_1A73D1D: var_C8 = -1 & var_C4
  loc_1A73D2D: unk_5ADE1E.Execute "SubGroup" & "' And Sno<>1", var_F0, 
  loc_1A73D60: unk_5ADE1E.Execute global_224, var_C0.Text, -1
  loc_1A73D98: For var_1C0 = CByte(1) To CByte((CLng(Me.FAGrid.Rows) - 1)): var_8C = var_1C0 'Byte
  loc_1A73DA3:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73DAB:   var_138 = CVar(CLng(1)) 'Long
  loc_1A73DE2:   If (CDbl(2) = CDbl(Val(CStr(Me.FAGrid.TextMatrix))))) Then
  loc_1A73DEB:     var_B2 = (var_B2 + 1)
  loc_1A73DEE:     ' Referenced from: 1A73EAD
  loc_1A73DEE:   End If
  loc_1A73E0A:   var_EC = Me.FAGrid.TextMatrix)
  loc_1A73E15:   var_C4 = CStr(var_EC)
  loc_1A73E32:   If (CDbl(2) < CDbl(Val(var_C4))) Then
  loc_1A73E53:     Set var_BC = Me.Txt
  loc_1A73E59:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "Delete From MemberFamily Where Subcode='", var_EC, -1, var_F0)
  loc_1A73E61:     var_174 = var_C0.Text
  loc_1A73E86:     unk_5ADE1E.Execute CVar(CLng(1)) & var_C4 & "' And SNo=" & CStr(2), CVar(CLng(var_8C)), 2
  loc_1A73EAA:     var_B2 = (var_B2 + 1)
  loc_1A73EAD:     GoTo loc_1A73DEE
  loc_1A73EB0:   End If
  loc_1A73EB3: Next var_1C0 'Byte
  loc_1A73EBF: If (2 = 2) Then
  loc_1A73EE0:   Set var_BC = Me.Txt
  loc_1A73EE6:   Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "Delete From MemberFamily Where Subcode='")
  loc_1A73EEE:   var_EC = var_C0.Text
  loc_1A73EF7:   var_C8 = -1 & var_C4
  loc_1A73F07:   unk_5ADE1E.Execute CVar(CLng(1)) & var_C4 & "' And SNo<>1", var_F0, 
  loc_1A73F21: End If
  loc_1A73F23: var_B2 = 2
  loc_1A73F4E: For var_1C4 = CByte(1) To CByte((CLng(Me.FAGrid.Rows) - 1)): var_8C = var_1C4 'Byte
  loc_1A73F59:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73F7B:   var_C4 = CStr(Me.FAGrid.TextMatrix))
  loc_1A73F8C:   If (var_C4 <> vbNullString) Then
  loc_1A73F9D:     Set var_BC = Me.Txt
  loc_1A73FA3:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, CVar(CLng(5)))
  loc_1A73FAB:     var_DC = var_C0.Text
  loc_1A73FB5:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A73FBD:     var_138 = CVar(CLng(1)) 'Long
  loc_1A73FD7:     var_CC = CStr(Me.FAGrid.TextMatrix))
  loc_1A73FDF:     var_174 = Val(var_CC)
  loc_1A73FE8:     var_1D4 = 0
  loc_1A74021:     unk_5ADE1E.Execute "Select Count(*) From MemberFamily where Subcode='" & var_C4 & "' And SNo=" & CStr(var_174), var_118, -1
  loc_1A74029:     var_F4 = var_F4.Fields
  loc_1A74031:     var_1D4 = var_108.Item(var_108)
  loc_1A74039:     var_13C = var_13C.Value
  loc_1A74070:     If (var_184 = 0) Then
  loc_1A74081:       Set var_BC = Me.Txt
  loc_1A74087:       Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_CC, var_184, var_174)
  loc_1A7408F:       var_138 = var_C0.Text
  loc_1A74099:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A740A1:       var_138 = CVar(CLng(4)) 'Long
  loc_1A740B0:       var_EC = Me.FAGrid.TextMatrix)
  loc_1A740D2:       Set var_F4 = Me.FAGrid
  loc_1A740D8:       var_118 = var_F4.TextMatrix)
  loc_1A740F2:       Set var_108 = Me.Txt
  loc_1A740F8:       Call 0.Method_Proc_265_115_1A771CC0 (CInt(6), var_13C, var_214, var_118, CVar(CLng(5)), CVar(CLng(var_8C)))
  loc_1A74100:       var_EC = var_13C.Text
  loc_1A7410A:       var_22C = CVar(CLng(var_8C)) 'Long
  loc_1A74112:       var_24C = CVar(CLng(3)) 'Long
  loc_1A74132:       var_278 = CVar(CLng(var_8C)) 'Long
  loc_1A74149:       var_19C = Me.FAGrid.TextMatrix)
  loc_1A74171:       var_1AC = Me.FAGrid.TextMatrix)
  loc_1A741AA:       Proc_183_7_EB17D4(var_370, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(8)), CVar(CLng(var_8C)), var_1AC, CVar(CLng(7)), CVar(CLng(var_8C)), var_19C)
  loc_1A741CB:       var_404 = Me.FAGrid.TextMatrix)
  loc_1A74204:       Proc_183_7_EB17D4(var_4B8, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_8C)), var_404, CVar(CLng(9)), CVar(CLng(var_8C)), CVar(CLng(6)))
  loc_1A7420E:       var_4F8 = CVar(CLng(var_8C)) 'Long
  loc_1A74216:       var_518 = CVar(CLng(&HB)) 'Long
  loc_1A74236:       var_58C = CVar(CLng(var_8C)) 'Long
  loc_1A7423E:       var_5AC = CVar(CLng(&HC)) 'Long
  loc_1A7425E:       var_620 = CVar(CLng(var_8C)) 'Long
  loc_1A74266:       var_640 = CVar(CLng(&HD)) 'Long
  loc_1A74286:       var_6B4 = CVar(CLng(var_8C)) 'Long
  loc_1A7428E:       var_6D4 = CVar(CLng(&HE)) 'Long
  loc_1A742AE:       var_748 = CVar(CLng(var_8C)) 'Long
  loc_1A742B6:       var_768 = CVar(CLng(&HF)) 'Long
  loc_1A742D6:       var_7DC = CVar(CLng(var_8C)) 'Long
  loc_1A742DE:       var_7FC = CVar(CLng(&H10)) 'Long
  loc_1A742FE:       var_870 = CVar(CLng(var_8C)) 'Long
  loc_1A74306:       var_890 = CVar(CLng(&H11)) 'Long
  loc_1A74326:       var_904 = CVar(CLng(var_8C)) 'Long
  loc_1A7432E:       var_924 = CVar(CLng(&H12)) 'Long
  loc_1A7434E:       var_998 = CVar(CLng(var_8C)) 'Long
  loc_1A74356:       var_9B8 = CVar(CLng(&H13)) 'Long
  loc_1A74376:       var_A2C = CVar(CLng(var_8C)) 'Long
  loc_1A7437E:       var_A4C = CVar(CLng(&H14)) 'Long
  loc_1A7439E:       var_AC0 = CVar(CLng(var_8C)) 'Long
  loc_1A743A6:       var_AE0 = CVar(CLng(&H15)) 'Long
  loc_1A743C6:       var_B54 = CVar(CLng(var_8C)) 'Long
  loc_1A743CE:       var_B74 = CVar(CLng(&H18)) 'Long
  loc_1A743EE:       var_BE8 = CVar(CLng(var_8C)) 'Long
  loc_1A743F6:       var_C08 = CVar(CLng(&H16)) 'Long
  loc_1A74416:       var_C7C = CVar(CLng(var_8C)) 'Long
  loc_1A7441E:       var_C9C = CVar(CLng(&H17)) 'Long
  loc_1A7442D:       var_CC0 = Me.FAGrid.TextMatrix)
  loc_1A74455:       var_D54 = Me.FAGrid.TextMatrix)
  loc_1A7448E:       Proc_6_17_EAAE40(var_E08, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_8C)), var_D54, CVar(CLng(&H19)), CVar(CLng(var_8C)), var_CC0)
  loc_1A74498:       var_E48 = CVar(CLng(var_8C)) 'Long
  loc_1A744A0:       var_E68 = CVar(CLng(&H1B)) 'Long
  loc_1A744D7:       var_F20 = Me.FAGrid.TextMatrix)
  loc_1A744F9:       Set var_FA4 = Me.FAGrid
  loc_1A74512:       var_174 = Val(CStr(var_FA4.TextMatrix)))
  loc_1A74523:       Proc_183_7_EB17D4(var_10D8, Now, var_174, CVar(CLng(&H1D)), CVar(CLng(var_8C)), var_F20, CVar(CLng(&H1C)), CVar(CLng(var_8C)))
  loc_1A7453C:       var_C4 = "Insert Into MemberFamily (Subcode,SNo,ConPrefix,Name,CardNo,Relationship,Gender,MaritalStatus,DOB,POB,WedDate,Phone," & "Mobile,Fax,Email,Nationality,Religion,BloodGroup,ProOcc,EdQuali,TBusiness,TurnOver,Desig,PassPort,PAN,InTax,SpInterest,PicPath,"
  loc_1A7456B:       var_1EC = var_C4 & "SigPath,Label,Site_code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('" & var_CC & "'," & CStr(var_B2) & ",'"
  loc_1A745B6:       var_2B0 = CStr(var_19C)
  loc_1A745BA:       var_2B4 = var_1EC & CStr(var_EC) & "','" & CStr(var_118) & "','" & var_214 & "','" & CStr(Me.FAGrid.TextMatrix)) & "','" & var_2B0
  loc_1A74611:       var_55C = CVar(var_2B4 & "','" & CStr(var_1AC) & "',") & var_370 & ",'" & CVar(CStr(var_404)) & "'," & var_4B8 & ",'" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A7464D:       var_718 = var_55C & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A74689:       var_8D4 = var_718 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A746C5:       var_A90 = var_8D4 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A74701:       var_C4C = var_A90 & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) & "','" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A7474D:       var_EAC = var_C4C & "','" & CVar(CStr(var_CC0)) & "','" & CVar(CStr(var_D54)) & "'," & var_E08 & ",'" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A7479B:       var_1058 = var_EAC & "','" & CVar(CStr(var_F20)) & "'," & CVar(var_174) & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) 
  loc_1A747B7:       var_10B8 = var_1058 & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_1A747D5:       unk_5ADE1E.Execute CStr(var_10B8 & var_10D8 & ",'A')"), var_112C, -1
  loc_1A74934:     Else
  loc_1A74939:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A74941:       var_138 = CVar(CLng(4)) 'Long
  loc_1A7494A:       Set var_BC = Me.FAGrid
  loc_1A74950:       var_EC = var_BC.TextMatrix)
  loc_1A74972:       Set var_C0 = Me.FAGrid
  loc_1A74978:       var_118 = var_C0.TextMatrix)
  loc_1A74992:       Set var_F0 = Me.Txt
  loc_1A74998:       Call 0.Method_Proc_265_115_1A771CC0 (CInt(6), var_F4, var_1EC, var_118, CVar(CLng(5)), CVar(CLng(var_8C)), var_EC)
  loc_1A749A0:       var_138 = var_F4.Text
  loc_1A749AA:       var_22C = CVar(CLng(var_8C)) 'Long
  loc_1A749B2:       var_24C = CVar(CLng(3)) 'Long
  loc_1A749BB:       Set var_108 = Me.FAGrid
  loc_1A749C1:       var_184 = var_108.TextMatrix)
  loc_1A749D2:       var_278 = CVar(CLng(var_8C)) 'Long
  loc_1A749E9:       var_19C = Me.FAGrid.TextMatrix)
  loc_1A74A11:       var_1AC = Me.FAGrid.TextMatrix)
  loc_1A74A39:       var_350 = Me.FAGrid.TextMatrix)
  loc_1A74A4A:       Proc_183_7_EB17D4(var_370, CVar(CStr(var_350)), CVar(CLng(8)), CVar(CLng(var_8C)), var_1AC, CVar(CLng(7)), CVar(CLng(var_8C)), var_19C)
  loc_1A74A65:       Set var_158 = Me.FAGrid
  loc_1A74A6B:       var_404 = var_158.TextMatrix)
  loc_1A74AA4:       Proc_183_7_EB17D4(var_4B8, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&HA)), CVar(CLng(var_8C)), var_404, CVar(CLng(9)), CVar(CLng(var_8C)), CVar(CLng(6)))
  loc_1A74AAE:       var_4F8 = CVar(CLng(var_8C)) 'Long
  loc_1A74AB6:       var_518 = CVar(CLng(&HB)) 'Long
  loc_1A74AD6:       var_58C = CVar(CLng(var_8C)) 'Long
  loc_1A74ADE:       var_5AC = CVar(CLng(&HC)) 'Long
  loc_1A74AED:       var_5D0 = Me.FAGrid.TextMatrix)
  loc_1A74AFE:       var_620 = CVar(CLng(var_8C)) 'Long
  loc_1A74B06:       var_640 = CVar(CLng(&HD)) 'Long
  loc_1A74B26:       var_6B4 = CVar(CLng(var_8C)) 'Long
  loc_1A74B2E:       var_6D4 = CVar(CLng(&HE)) 'Long
  loc_1A74B4E:       var_748 = CVar(CLng(var_8C)) 'Long
  loc_1A74B56:       var_768 = CVar(CLng(&HF)) 'Long
  loc_1A74B76:       var_7DC = CVar(CLng(var_8C)) 'Long
  loc_1A74B7E:       var_7FC = CVar(CLng(&H10)) 'Long
  loc_1A74B9E:       var_870 = CVar(CLng(var_8C)) 'Long
  loc_1A74BA6:       var_890 = CVar(CLng(&H11)) 'Long
  loc_1A74BC6:       var_904 = CVar(CLng(var_8C)) 'Long
  loc_1A74BCE:       var_924 = CVar(CLng(&H12)) 'Long
  loc_1A74BEE:       var_998 = CVar(CLng(var_8C)) 'Long
  loc_1A74BF6:       var_9B8 = CVar(CLng(&H13)) 'Long
  loc_1A74C16:       var_A2C = CVar(CLng(var_8C)) 'Long
  loc_1A74C1E:       var_A4C = CVar(CLng(&H14)) 'Long
  loc_1A74C3E:       var_AC0 = CVar(CLng(var_8C)) 'Long
  loc_1A74C46:       var_AE0 = CVar(CLng(&H15)) 'Long
  loc_1A74C66:       var_B54 = CVar(CLng(var_8C)) 'Long
  loc_1A74C6E:       var_B74 = CVar(CLng(&H18)) 'Long
  loc_1A74C8E:       var_BE8 = CVar(CLng(var_8C)) 'Long
  loc_1A74C96:       var_C08 = CVar(CLng(&H16)) 'Long
  loc_1A74CB6:       var_C7C = CVar(CLng(var_8C)) 'Long
  loc_1A74CBE:       var_C9C = CVar(CLng(&H17)) 'Long
  loc_1A74CCD:       var_CC0 = Me.FAGrid.TextMatrix)
  loc_1A74CF5:       var_D54 = Me.FAGrid.TextMatrix)
  loc_1A74D2E:       Proc_6_17_EAAE40(var_E08, CVar(CStr(Me.FAGrid.TextMatrix))), CVar(CLng(&H1A)), CVar(CLng(var_8C)), var_D54, CVar(CLng(&H19)), CVar(CLng(var_8C)), var_CC0)
  loc_1A74D4F:       var_E8C = Me.FAGrid.TextMatrix)
  loc_1A74D77:       var_F20 = Me.FAGrid.TextMatrix)
  loc_1A74DB2:       var_174 = Val(CStr(Me.FAGrid.TextMatrix)))
  loc_1A74DC3:       Proc_183_7_EB17D4(var_10B8, Now, var_174, CVar(CLng(&H1D)), CVar(CLng(var_8C)), var_F20, CVar(CLng(&H1C)), CVar(CLng(var_8C)))
  loc_1A74DD6:       Set var_F10 = Me.Txt
  loc_1A74DDC:       Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_FA4, var_2B0, var_E8C, CVar(CLng(&H1B)), CVar(CLng(var_8C)))
  loc_1A74DE4:       var_C9C = var_FA4.Text
  loc_1A74DEE:       var_10F8 = CVar(CLng(var_8C)) 'Long
  loc_1A74DF6:       var_1140 = CVar(CLng(1)) 'Long
  loc_1A74E30:       var_C4 = CStr(var_B2)
  loc_1A74E3B:       var_CC = "Update MemberFamily Set SNo=" & var_C4 & ",ConPrefix='"
  loc_1A74E7F:       var_214 = var_CC & CStr(var_EC) & "',Name='" & CStr(var_118) & "',CardNo='" & var_1EC & "',Relationship='" & CStr(var_184) & "',Gender='"
  loc_1A74EA3:       var_380 = CVar(var_214 & CStr(var_19C) & "',MaritalStatus='" & CStr(var_1AC) & "',DOB=") 'String
  loc_1A74EE1:       var_55C = var_380 & var_370 & ",POB='" & CVar(CStr(var_404)) & "',WedDate=" & var_4B8 & ",Phone='" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A74EFE:       var_610 = var_55C & "',Mobile='" & CVar(CStr(var_5D0)) & "',Fax='" 
  loc_1A74F2E:       var_79C = CVar(CStr(Me.FAGrid.TextMatrix))) 'String
  loc_1A74F31:       var_7AC = var_610 & CVar(CStr(Me.FAGrid.TextMatrix))) & "',Email='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',Nationality='" & var_79C 
  loc_1A74F62:       var_8F4 = var_7AC & "',Religion='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',BloodGroup='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',ProOcc='" 
  loc_1A74F95:       var_A90 = var_8F4 & CVar(CStr(Me.FAGrid.TextMatrix))) & "',EdQuali='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',TBusiness='" & CVar(CStr(Me.FAGrid.TextMatrix))) 
  loc_1A74FC6:       var_BD8 = var_A90 & "',TurnOver='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',Desig='" & CVar(CStr(Me.FAGrid.TextMatrix))) & "',PassPort='" 
  loc_1A75002:       var_D94 = var_BD8 & CVar(CStr(Me.FAGrid.TextMatrix))) & "',PAN='" & CVar(CStr(var_CC0)) & "',InTax='" & CVar(CStr(var_D54)) & "',SpInterest=" 
  loc_1A75045:       var_FD8 = var_D94 & var_E08 & ",PicPath='" & CVar(CStr(var_E8C)) & "',SigPath='" & CVar(CStr(var_F20)) & "',Label=" & CVar(var_174) 
  loc_1A75084:       var_10D8 = var_FD8 & ",LogSite_Code='" & CVar(MemVar_1F95078) & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_10B8 & ",U_AE='E' where Subcode='" 
  loc_1A750B0:       unk_5ADE1E.Execute CStr(var_10D8 & CVar(var_2B0) & "' And SNo=" & CVar(Val(CStr(Me.FAGrid.TextMatrix))))), var_11A0, -1
  loc_1A7520A:     End If
  loc_1A75210:     var_B2 = (var_B2 + 1)
  loc_1A75213:   End If
  loc_1A75216: Next var_1C4 'Byte
  loc_1A75249: Set var_BC = Me.Txt
  loc_1A7524F: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "SELECT IsNull(Max(SNo),0)+1 From MemberFamily Where SubCode= '", var_EC, -1)
  loc_1A75257: var_F0 = var_C0.Text
  loc_1A75270: unk_5ADE1E.Execute var_F4 & var_C4 & "'", 0, var_108
  loc_1A75280:  = var_F4.Item()
  loc_1A75288:  = var_108.Value
  loc_1A75291: var_B2 = CInt(var_F0.Fields)
  loc_1A752CF: Set var_BC = Me.Txt
  loc_1A752D5: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemberFamily Where SubCode= '")
  loc_1A752DD: var_EC = var_C0.Text
  loc_1A752E6: var_C8 = -1 & var_C4
  loc_1A752F6: unk_5ADE1E.Execute var_F4 & var_C4 & "' And SNo<>1 Order By Label,SNo", var_F0, var_B2
  loc_1A75301: Set var_94 = var_F0
  loc_1A75319: ' Referenced from: 1A753FD
  loc_1A75328: If Not(var_94.EOF) Then
  loc_1A75340:   var_C4 = CStr(var_B2)
  loc_1A75365:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A7536D:   var_EC = CVar(var_C0) 'Address
  loc_1A7537A:   var_124 = -1 & Proc_6_38_E69628(var_EC, "Update MemberFamily Set SNo=" & var_C4 & " where Subcode='", var_350)
  loc_1A75393:   var_F0 = var_94.Fields
  loc_1A753AA:   Proc_6_39_E7D3A0(var_184, CVar(var_F0.Item("SNo")))
  loc_1A753C0:   unk_5ADE1E.Execute CStr(CVar("Update MemberFamily Set SNo=" & var_C4 & " where Subcode='" & CStr(var_EC) & "' And SNo=") & var_184), var_108, 
  loc_1A753F2:   var_B2 = (var_B2 + 1)
  loc_1A753F8:   var_94.MoveNext
  loc_1A753FD:   GoTo loc_1A75319
  loc_1A75400: End If
  loc_1A75402: var_B2 = 2
  loc_1A75423: Set var_BC = Me.Txt
  loc_1A75429: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemberFamily Where SubCode= '", var_EC)
  loc_1A75431: -1 = var_C0.Text
  loc_1A7544A: unk_5ADE1E.Execute var_F0 & var_C4 & "' And SNo<>1 Order By SNo", var_B2, var_B2
  loc_1A75455: Set var_94 = var_F0
  loc_1A7546D: ' Referenced from: 1A75551
  loc_1A7547C: If Not(var_94.EOF) Then
  loc_1A75494:   var_C4 = CStr(var_B2)
  loc_1A754B9:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A754CE:   var_124 = -1 & Proc_6_38_E69628(CVar(var_C0), "Update MemberFamily Set SNo=" & var_C4 & " where Subcode='", var_350)
  loc_1A754E7:   var_F0 = var_94.Fields
  loc_1A754FE:   Proc_6_39_E7D3A0(var_184, CVar(var_F0.Item("SNo")))
  loc_1A75506:   var_1AC = CVar("Update MemberFamily Set SNo=" & var_C4 & " where Subcode='" & CStr(CVar(var_C0)) & "' And SNo=") & var_184 
  loc_1A75514:   unk_5ADE1E.Execute CStr(var_1AC), var_108, 
  loc_1A75546:   var_B2 = (var_B2 + 1)
  loc_1A7554C:   var_94.MoveNext
  loc_1A75551:   GoTo loc_1A7546D
  loc_1A75554: End If
  loc_1A75572: Set var_BC = Me.Txt
  loc_1A75578: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "Delete From MemProposedMemInf Where subcode='")
  loc_1A75580: var_EC = var_C0.Text
  loc_1A75589: var_C8 = -1 & var_C4
  loc_1A75599: unk_5ADE1E.Execute "Update MemberFamily Set SNo=" & var_C4 & "'", var_F0, var_B2
  loc_1A755E0: For var_11A8 = CByte(1) To CByte((CLng(Me.FPGrid.Rows) - 1)): var_8C = var_11A8 'Byte
  loc_1A755EB:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A7560D:   var_C4 = CStr(Me.FPGrid.TextMatrix))
  loc_1A7561E:   If (var_C4 <> vbNullString) Then
  loc_1A7562F:     Set var_BC = Me.Txt
  loc_1A75635:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, CVar(CLng(3)))
  loc_1A7563D:     var_DC = var_C0.Text
  loc_1A75647:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A7564F:     var_138 = CVar(CLng(3)) 'Long
  loc_1A7565E:     var_EC = Me.FPGrid.TextMatrix)
  loc_1A7566F:     var_168 = CVar(CLng(var_8C)) 'Long
  loc_1A75680:     Set var_F4 = Me.FPGrid
  loc_1A75686:     var_118 = var_F4.TextMatrix)
  loc_1A756A8:     Set var_108 = Me.FPGrid
  loc_1A756AE:     var_184 = var_108.TextMatrix)
  loc_1A756C8:     Proc_183_7_EB17D4(var_1AC, Now, var_184, CVar(CLng(&HE)), CVar(CLng(var_8C)), var_118, CVar(CLng(4)))
  loc_1A756E1:     var_C8 = "Insert into MemProposedMemInf(Subcode,SNo,PMemCode,MemberType,Mark,Site_Code,LogSite_Code,U_Name,U_EntDt,U_AE) " & "Values ('"
  loc_1A7573F:     var_21C = var_C8 & var_C4 & "'," & CStr(1) & ",'" & CStr(var_EC) & "','" & CStr(var_118) & "','" & CStr(var_184) & "','" & MemVar_1F95070
  loc_1A75762:     var_350 = CVar(var_21C & "','" & MemVar_1F95078 & "','" & MemVar_1F950C8 & "',") 'String
  loc_1A75768:     var_360 = var_350 & var_1AC 
  loc_1A7577F:     unk_5ADE1E.Execute CStr(var_360 & ",'E')"), var_380, -1
  loc_1A757DD:     var_B2 = (var_B2 + 1)
  loc_1A757E0:   End If
  loc_1A757E3: Next var_11A8 'Byte
  loc_1A75816: Set var_BC = Me.Txt
  loc_1A7581C: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "SELECT IsNull(Max(SNo),0)+1 From MemProposedMemInf Where SubCode= '", var_EC, -1)
  loc_1A75824: var_F0 = var_C0.Text
  loc_1A7583D: unk_5ADE1E.Execute var_F4 & var_C4 & "'", 0, var_108
  loc_1A7584D:  = var_F4.Item()
  loc_1A75855:  = var_108.Value
  loc_1A7585E: var_B2 = CInt(var_F0.Fields)
  loc_1A7589C: Set var_BC = Me.Txt
  loc_1A758A2: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '")
  loc_1A758AA: var_EC = var_C0.Text
  loc_1A758B3: var_C8 = -1 & var_C4
  loc_1A758C3: unk_5ADE1E.Execute var_F4 & var_C4 & "' Order By Cast(Mark As Integer),SNo", var_F0, var_B2
  loc_1A758CE: Set var_94 = var_F0
  loc_1A758E6: ' Referenced from: 1A759CA
  loc_1A758F5: If Not(var_94.EOF) Then
  loc_1A7590D:   var_C4 = CStr(var_B2)
  loc_1A75932:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A7593A:   var_EC = CVar(var_C0) 'Address
  loc_1A75947:   var_124 = -1 & Proc_6_38_E69628(var_EC, "Update MemProposedMemInf Set SNo=" & var_C4 & " where Subcode='", var_350)
  loc_1A75960:   var_F0 = var_94.Fields
  loc_1A75977:   Proc_6_39_E7D3A0(var_184, CVar(var_F0.Item("SNo")))
  loc_1A7598D:   unk_5ADE1E.Execute CStr(CVar(CStr(1) & "' And SNo=") & var_184), var_108, 
  loc_1A759BF:   var_B2 = (var_B2 + 1)
  loc_1A759C5:   var_94.MoveNext
  loc_1A759CA:   GoTo loc_1A758E6
  loc_1A759CD: End If
  loc_1A759CF: var_B2 = 1
  loc_1A759F0: Set var_BC = Me.Txt
  loc_1A759F6: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "SELECT SubCode,SNo From MemProposedMemInf Where SubCode= '", var_EC)
  loc_1A759FE: -1 = var_C0.Text
  loc_1A75A17: unk_5ADE1E.Execute var_F0 & var_C4 & "' Order By SNo", var_B2, var_B2
  loc_1A75A22: Set var_94 = var_F0
  loc_1A75A3A: ' Referenced from: 1A75B1E
  loc_1A75A49: If Not(var_94.EOF) Then
  loc_1A75A61:   var_C4 = CStr(var_B2)
  loc_1A75A86:   var_C0 = var_94.Fields.Item("subcode")
  loc_1A75A9B:   var_124 = -1 & Proc_6_38_E69628(CVar(var_C0), "Update MemProposedMemInf Set SNo=" & var_C4 & " where Subcode='", var_350)
  loc_1A75AB4:   var_F0 = var_94.Fields
  loc_1A75ACB:   Proc_6_39_E7D3A0(var_184, CVar(var_F0.Item("SNo")))
  loc_1A75AD3:   var_1AC = CVar(CStr(1) & "' And SNo=") & var_184 
  loc_1A75AE1:   unk_5ADE1E.Execute CStr(var_1AC), var_108, 
  loc_1A75B13:   var_B2 = (var_B2 + 1)
  loc_1A75B19:   var_94.MoveNext
  loc_1A75B1E:   GoTo loc_1A75A3A
  loc_1A75B21: End If
  loc_1A75B3F: Set var_BC = Me.Txt
  loc_1A75B45: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "SELECT SubCode,CardRegId,ConPrefix + ' ' + Name As Name,CardNo From MemberFamily Where SubCode= '")
  loc_1A75B4D: var_EC = var_C0.Text
  loc_1A75B56: var_C8 = -1 & var_C4
  loc_1A75B66: unk_5ADE1E.Execute "Update MemProposedMemInf Set SNo=" & var_C4 & "' And IsNull(HW_Id,'')<>'' And IsNull(CardRegId,'')<>'' Order By SNo", var_F0, var_B2
  loc_1A75B71: Set var_94 = var_F0
  loc_1A75B89: ' Referenced from: 1A75CCB
  loc_1A75B98: If Not(var_94.EOF) Then
  loc_1A75BC2:   var_C0 = var_94.Fields.Item("Name")
  loc_1A75BD7:   var_C8 = -1 & Proc_6_38_E69628(CVar(var_C0), "Update SmartCardRegistration Set Name='", var_1AC)
  loc_1A75BDE:   var_CC = "Update MemProposedMemInf Set SNo=" & Proc_6_38_E69628(CVar(var_C0), "Update SmartCardRegistration Set Name='", var_1AC) & "',CardNo='"
  loc_1A75BF0:   var_F0 = var_94.Fields
  loc_1A75BF8:   var_F4 = var_F0.Item("CardNo")
  loc_1A75C43:   var_1E8 = var_158 & Proc_6_38_E69628(CVar(var_F4), var_CC) & "' where MemberCode='" & Proc_6_38_E69628(CVar(var_94.Fields.Item("subcode")))
  loc_1A75C89:   unk_5ADE1E.Execute var_1E8 & "' And Code='" & Proc_6_38_E69628(CVar(var_94.Fields.Item("CardRegId"))) & "'", , 
  loc_1A75CC6:   var_94.MoveNext
  loc_1A75CCB:   GoTo loc_1A75B89
  loc_1A75CCE: End If
  loc_1A75CD4: unk_5ADE1E.CommitTrans
  loc_1A75CFB: Set var_BC = Me.Txt
  loc_1A75D01: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, "Select max(SNo) As SNo From MemAddRWA Where SubCode='", var_1AC)
  loc_1A75D10: var_118 = Trim(CVar(var_C0))
  loc_1A75D18: var_184 = -1 & var_118 
  loc_1A75D2F: unk_5ADE1E.Execute CStr(CVar(var_94.Fields.Item("subcode")) & "' And Name ='Residential Address' And Mark ='*'"), var_F0, 0
  loc_1A75D3A: Set var_B0 = var_F0
  loc_1A75D56: var_B2 = 0
  loc_1A75D6D: If (var_B0.RecordCount > 0) Then
  loc_1A75D87:   var_C0 = var_B0.Fields.Item("SNo")
  loc_1A75D96:   Proc_6_39_E7D3A0(var_118, CVar(var_C0))
  loc_1A75D9F:   var_B2 = CInt(var_118)
  loc_1A75DB2:   If (var_B2 <> 0) Then
  loc_1A75DCD:     var_C4 = CStr((var_B2 + 1))
  loc_1A75DD1:     var_C8 = "Update MemAddRWA Set SNo=" & CStr(CVar(var_94.Fields.Item("subcode")) & "' And Name ='Residential Address' And Mark ='*'")
  loc_1A75DE6:     Set var_BC = Me.Txt
  loc_1A75DEC:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, CVar(var_C8 & " , Mark='*' Where Subcode='"), var_350)
  loc_1A75E03:     var_19C = -1 & Trim(CVar(var_C0)) 
  loc_1A75E0C:     var_1AC = CVar(var_94.Fields.Item("subcode")) & "' And Name ='Residential Address' And Mark ='*'" & "' And Name='Residential Address' And SNo=1 And Mark=''" 
  loc_1A75E1A:     unk_5ADE1E.Execute CStr(var_1AC), var_F0, var_B2
  loc_1A75E5B:     Set var_BC = Me.Txt
  loc_1A75E61:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, "Update MemAddRWA Set SNo=1 , Mark='' Where Subcode='", var_360)
  loc_1A75E78:     var_184 = -1 & Trim(CVar(var_C0)) 
  loc_1A75E8B:     var_1AC = CVar(var_C8 & " , Mark='*' Where Subcode='") & "' And Name='Residential Address' And SNo=" & CVar(var_B2) 
  loc_1A75E94:     var_350 = var_1AC & " And Mark='*'" 
  loc_1A75EA2:     unk_5ADE1E.Execute CStr(var_350), var_F0, var_B2
  loc_1A75EDF:     Set var_BC = Me.Txt
  loc_1A75EE5:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, "Delete From MemAddRWA Where Subcode='")
  loc_1A75F13:     unk_5ADE1E.Execute CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name='Residential Address' And SNo<>1 And Mark='*'"), -1, var_F0
  loc_1A75F2F:   End If
  loc_1A75F2F: End If
  loc_1A75F34: Set var_B0 = Nothing
  loc_1A75F59: Set var_BC = Me.Txt
  loc_1A75F5F: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, "Select max(SNo) As SNo From MemAddRWA Where SubCode='", var_1AC)
  loc_1A75F6E: var_118 = Trim(CVar(var_C0))
  loc_1A75F76: var_184 = -1 & var_118 
  loc_1A75F8D: unk_5ADE1E.Execute CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='WorkPlace Address' And Mark ='*'"), var_F0, 0
  loc_1A75F98: Set var_B0 = var_F0
  loc_1A75FC6: If (var_B0.RecordCount > 0) Then
  loc_1A75FE0:   var_C0 = var_B0.Fields.Item("SNo")
  loc_1A75FE8:   var_EC = CVar(var_C0) 'Address
  loc_1A75FEF:   Proc_6_39_E7D3A0(var_118)
  loc_1A75FF8:   var_B2 = CInt(var_118)
  loc_1A7600B:   If (var_B2 <> 0) Then
  loc_1A76026:     var_C4 = CStr((var_B2 + 1))
  loc_1A76031:     var_184 = CVar("Update MemAddRWA Set SNo=" & CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='WorkPlace Address' And Mark ='*'") & " , Mark='*' Where Subcode='") 'String
  loc_1A7603F:     Set var_BC = Me.Txt
  loc_1A76045:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_184, var_350)
  loc_1A7605C:     var_19C = -1 & Trim(CVar(var_C0)) 
  loc_1A76065:     var_1AC = var_1AC & Trim(CVar(var_C0)) & "' And Name ='WorkPlace Address' And Mark ='*'" & "' And Name='WorkPlace Address' And SNo=1 And Mark=''" 
  loc_1A76073:     unk_5ADE1E.Execute CStr(var_1AC), var_F0, var_B2
  loc_1A760B4:     Set var_BC = Me.Txt
  loc_1A760BA:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, "Update MemAddRWA Set SNo=1 , Mark='' Where Subcode='", var_360)
  loc_1A760C2:     var_EC = CVar(var_C0) 'Address
  loc_1A760D1:     var_184 = -1 & Trim(var_EC) 
  loc_1A760E4:     var_1AC = var_184 & "' And Name='WorkPlace Address' And SNo=" & CVar(var_B2) 
  loc_1A760ED:     var_350 = var_1AC & " And Mark='*'" 
  loc_1A760FB:     unk_5ADE1E.Execute CStr(var_350), var_F0, var_EC
  loc_1A76138:     Set var_BC = Me.Txt
  loc_1A7613E:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, "Delete From MemAddRWA Where Subcode='")
  loc_1A7616C:     unk_5ADE1E.Execute CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name='WorkPlace Address' And SNo<>1 And Mark='*'"), -1, var_F0
  loc_1A76188:   End If
  loc_1A76188: End If
  loc_1A7618D: Set var_B0 = Nothing
  loc_1A761B2: Set var_BC = Me.Txt
  loc_1A761B8: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, "Select max(SNo) As SNo From MemAddRWA Where SubCode='", var_1AC)
  loc_1A761C7: var_118 = Trim(CVar(var_C0))
  loc_1A761CF: var_184 = -1 & var_118 
  loc_1A761E6: unk_5ADE1E.Execute CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'"), var_F0, 0
  loc_1A761F1: Set var_B0 = var_F0
  loc_1A76211: var_11C = var_B0.RecordCount
  loc_1A7621F: If (var_11C > 0) Then
  loc_1A76239:   var_C0 = var_B0.Fields.Item("SNo")
  loc_1A76241:   var_EC = CVar(var_C0) 'Address
  loc_1A76248:   Proc_6_39_E7D3A0(var_118)
  loc_1A76251:   var_B2 = CInt(var_118)
  loc_1A76264:   If (var_B2 <> 0) Then
  loc_1A7627F:     var_C4 = CStr((var_B2 + 1))
  loc_1A7628A:     var_184 = CVar("Update MemAddRWA Set SNo=" & CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'") & " , Mark='*' Where Subcode='") 'String
  loc_1A76298:     Set var_BC = Me.Txt
  loc_1A7629E:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_184, var_350)
  loc_1A762B5:     var_19C = -1 & Trim(CVar(var_C0)) 
  loc_1A762BE:     var_1AC = var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'" & "' And Name='Abroad Address' And SNo=1 And Mark=''" 
  loc_1A762CC:     unk_5ADE1E.Execute CStr(var_1AC), var_F0, var_B2
  loc_1A7630D:     Set var_BC = Me.Txt
  loc_1A76313:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, "Update MemAddRWA Set SNo=1 , Mark='' Where Subcode='", var_360)
  loc_1A7631B:     var_EC = CVar(var_C0) 'Address
  loc_1A7632A:     var_184 = -1 & Trim(var_EC) 
  loc_1A7633D:     var_1AC = var_184 & "' And Name='Abroad Address' And SNo=" & CVar(var_B2) 
  loc_1A76354:     unk_5ADE1E.Execute CStr(var_1AC & "  And Mark='*'"), var_F0, var_EC
  loc_1A76391:     Set var_BC = Me.Txt
  loc_1A76397:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, "Delete From MemAddRWA Where Subcode='")
  loc_1A763B7:     var_19C = var_1AC & Trim(CVar(var_C0)) & "' And Name='Abroad Address' And SNo<>1 And Mark='*'" 
  loc_1A763C5:     unk_5ADE1E.Execute CStr(var_19C), -1, var_F0
  loc_1A763E1:   End If
  loc_1A763E1: End If
  loc_1A76409: For var_11AC = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8C = var_11AC 'Byte
  loc_1A7643E:   If ((CInt(var_8C) > 1) And (CLng(var_8C) < (CLng(Me.FGrid1.Rows) - 1))) Then
  loc_1A76446:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A7644E:     var_138 = CVar(CLng(6)) 'Long
  loc_1A76468:     var_118 = CVar(CStr(Me.FGrid1.TextMatrix))) 'String
  loc_1A7646E:     var_184 = Trim(var_118)
  loc_1A7648A:     If (var_184 = vbNullString) Then
  loc_1A764A6:       MsgBox("Define revenue ", &H40, var_118, var_184, var_19C)
  loc_1A764B6:       Exit Sub
  loc_1A764B7:     End If
  loc_1A764B7:   End If
  loc_1A764BC:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A764C4:   var_138 = CVar(CLng(6)) 'Long
  loc_1A764E4:   var_184 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1A76500:   If CBool(var_184 <> vbNullString) Then
  loc_1A76508:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A7652A:     var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_1A76540:     If (CDbl(Val(var_C4)) <= CDbl(0)) Then
  loc_1A76557:       Me.FGrid1.Row = CVar(CLng(var_8C))
  loc_1A76562:       var_DC = CVar(CLng(2)) 'Long
  loc_1A76571:       Me.FGrid1.Col = var_DC
  loc_1A7657D:       Set var_BC = Me.FGrid1
  loc_1A7658E:       Call Fgrid1_UnknownEvent_B()
  loc_1A76598:       Call TxtGrid_GotFocus(2)
  loc_1A765A3:       Call 0.Method_arg_50 (var_C4, FGrid1.DispID_8001, CVar(CLng(2)), var_DC, CVar(CLng(2)))
  loc_1A765C4:       MsgBox("Please Fill Valid Amount.", 0, CVar(var_C4), var_184, var_19C)
  loc_1A765D4:       Exit Sub
  loc_1A765D5:     End If
  loc_1A765DA:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A765FC:     var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_1A7660D:     If (var_C4 = vbNullString) Then
  loc_1A76624:       Me.FGrid1.Row = CVar(CLng(var_8C))
  loc_1A7662F:       var_DC = CVar(CLng(3)) 'Long
  loc_1A7663E:       Me.FGrid1.Col = var_DC
  loc_1A7664A:       Set var_BC = Me.FGrid1
  loc_1A7665B:       Call Fgrid1_UnknownEvent_B()
  loc_1A76665:       Call TxtGrid_GotFocus(2)
  loc_1A76670:       Call 0.Method_arg_50 (var_C4, FGrid1.DispID_8001, CVar(CLng(3)), var_DC)
  loc_1A76691:       MsgBox("Please Fill Valid Nature.", 0, CVar(var_C4), var_184, var_19C)
  loc_1A766A1:       Exit Sub
  loc_1A766A2:     End If
  loc_1A766A7:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A766DC:     If Not(IsDate(CVar(CStr(Me.FGrid1.TextMatrix))))) Then
  loc_1A766F3:       Me.FGrid1.Row = CVar(CLng(var_8C))
  loc_1A766FE:       var_DC = CVar(CLng(4)) 'Long
  loc_1A7670D:       Me.FGrid1.Col = var_DC
  loc_1A76719:       Set var_BC = Me.FGrid1
  loc_1A7672A:       Call Fgrid1_UnknownEvent_B()
  loc_1A76734:       Call TxtGrid_GotFocus(2)
  loc_1A7673F:       Call 0.Method_arg_50 (var_C4, FGrid1.DispID_8001, CVar(CLng(4)), var_DC)
  loc_1A76760:       MsgBox("Please Fill Valid Applicable.", 0, CVar(var_C4), var_184, var_19C)
  loc_1A76770:       Exit Sub
  loc_1A76771:     End If
  loc_1A76776:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A76798:     var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_1A767A9:     If (var_C4 = vbNullString) Then
  loc_1A767C0:       Me.FGrid1.Row = CVar(CLng(var_8C))
  loc_1A767CB:       var_DC = CVar(CLng(5)) 'Long
  loc_1A767DA:       Me.FGrid1.Col = var_DC
  loc_1A767E6:       Set var_BC = Me.FGrid1
  loc_1A767F7:       Call Fgrid1_UnknownEvent_B()
  loc_1A76801:       Call TxtGrid_GotFocus(2)
  loc_1A7680C:       Call 0.Method_arg_50 (var_C4, FGrid1.DispID_8001, CVar(CLng(5)), var_DC)
  loc_1A7682D:       MsgBox("Please Fill Valid Status.", 0, CVar(var_C4), var_184, var_19C)
  loc_1A7683D:       Exit Sub
  loc_1A7683E:     End If
  loc_1A7683E:   End If
  loc_1A76841: Next var_11AC 'Byte
  loc_1A76850: unk_5ADDE0.BeginTrans var_11C
  loc_1A76857: var_8A = &HFF
  loc_1A76882: For var_11B4 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8C = var_11B4 'Byte
  loc_1A7688D:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A76895:   var_138 = CVar(CLng(6)) 'Long
  loc_1A768D1:   If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1A768DC:     If (var_11B0 = vbNullString) Then
  loc_1A768E4:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A768EC:       var_138 = CVar(CLng(6)) 'Long
  loc_1A76915:       var_11B0 = CStr(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1A76927:     Else
  loc_1A7692E:       var_19C = CVar(var_11B0 & "','") 'String
  loc_1A76936:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A76966:       var_1AC = (CVar(CLng(6)) + Trim(CVar(CStr(Me.FGrid1.TextMatrix)))))
  loc_1A7696B:       var_11B0 = CStr(var_1AC)
  loc_1A7697E:     End If
  loc_1A7697E:   End If
  loc_1A76981: Next var_11B4 'Byte
  loc_1A769A5: Set var_BC = Me.Txt
  loc_1A769AB: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4, "Delete From MemRevWise Where MemCode='")
  loc_1A769B3: var_EC = var_C0.Text
  loc_1A769BC: var_C8 = -1 & var_C4
  loc_1A769C3: var_CC = "Update MemAddRWA Set SNo=" & CStr(var_1AC & Trim(CVar(var_C0)) & "' And Name ='Abroad Address' And Mark ='*'") & "' And RevCode Not In('"
  loc_1A769DA: unk_5ADE1E.Execute var_CC & var_11B0 & "')", var_F0, 
  loc_1A76A20: For var_11B8 = CByte(1) To CByte((CLng(Me.FGrid1.Rows) - 1)): var_8C = var_11B8 'Byte
  loc_1A76A2B:   var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A76A33:   var_138 = CVar(CLng(6)) 'Long
  loc_1A76A6F:   If CBool(Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) <> vbNullString) Then
  loc_1A76A80:     Set var_BC = Me.Txt
  loc_1A76A86:     Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4)
  loc_1A76A8E:     var_138 = var_C0.Text
  loc_1A76A98:     var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A76AA0:     var_138 = CVar(CLng(6)) 'Long
  loc_1A76AC0:     var_184 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_1A76AD9:     var_C8 = "Select * from MemRevWise where MemCode='" & var_C4
  loc_1A76AFD:     unk_5ADDE0.Execute CStr(CVar(var_C8 & "' And RevCode='") & var_184 & "'"), var_360, -1
  loc_1A76B44:     If (var_F4.RecordCount = 0) Then
  loc_1A76B55:       Set var_BC = Me.Txt
  loc_1A76B5B:       Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C8, var_F4)
  loc_1A76B63:       var_138 = var_C0.Text
  loc_1A76B95:       Proc_6_7_F26918(var_184, CVar(CStr(Me.FGrid1.TextMatrix))), CVar(CLng(4)), CVar(CLng(var_8C)))
  loc_1A76BB6:       var_360 = Me.FGrid1.TextMatrix)
  loc_1A76BF1:       var_174 = Val(CStr(Me.FGrid1.TextMatrix)))
  loc_1A76C10:       var_424 = Me.FGrid1.TextMatrix)
  loc_1A76C32:       Set var_140 = Me.FGrid1
  loc_1A76C38:       var_4B8 = var_140.TextMatrix)
  loc_1A76C49:       var_57C = CVar(Proc_6_15_EF37AC(var_4B8, CVar(CLng(5)), CVar(CLng(var_8C)), var_424, CVar(CLng(3)), CVar(CLng(var_8C)), var_174, CVar(CLng(2)))) 'String
  loc_1A76C4F:       Proc_6_7_F26918(var_5D0, var_57C, CVar(CLng(var_8C)), var_360, CVar(CLng(6)))
  loc_1A76C58:       Set var_154 = Me.TopCtrl1
  loc_1A76C5E:       Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005(CVar(CLng(var_8C)))
  loc_1A76CA9:       var_C4 = "Insert into MemRevWise (MemCode,AppDate,RevCode,Amount,Nature," & "ActiveYN,U_Name,U_EntDt,U_AE,Site_Code,LogSite_Code) "
  loc_1A76D00:       var_498 = CVar(var_C4 & " Values ('" & var_C8 & "',") & var_184 & ",'" & CVar(CStr(var_360)) & "'," & CVar(var_174) & ",'" & CVar(CStr(var_424)) 
  loc_1A76D47:       var_6A4 = var_498 & "','" & CVar(CStr(var_4B8)) & "','" & CVar(MemVar_1F950C8) & "'," & var_5D0 & ",'" & IIf((CStr(var_610) = "Add"), "A", "E") 
  loc_1A76D84:       unk_5ADDE0.Execute CStr(var_6A4 & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F95078) & "')"), var_79C, -1
  loc_1A76E03:     Else
  loc_1A76E08:       var_DC = CVar(CLng(var_8C)) 'Long
  loc_1A76E30:       Proc_6_7_F26918(var_184, CVar(CStr(Me.FGrid1.TextMatrix))), CVar(CLng(4)), var_DC)
  loc_1A76E4B:       Set var_C0 = Me.FGrid1
  loc_1A76E51:       var_350 = var_C0.TextMatrix)
  loc_1A76E84:       var_C4 = CStr(Me.FGrid1.TextMatrix))
  loc_1A76E8C:       var_174 = Val(var_C4)
  loc_1A76EAB:       var_414 = Me.FGrid1.TextMatrix)
  loc_1A76ED3:       var_4A8 = Me.FGrid1.TextMatrix)
  loc_1A76EE4:       var_55C = CVar(Proc_6_15_EF37AC(var_4A8, CVar(CLng(5)), CVar(CLng(var_8C)), var_414, CVar(CLng(3)), CVar(CLng(var_8C)), var_174, CVar(CLng(2)))) 'String
  loc_1A76EEA:       Proc_6_7_F26918(var_57C, var_55C, CVar(CLng(var_8C)), var_350, CVar(CLng(6)))
  loc_1A76EFD:       Set var_13C = Me.Txt
  loc_1A76F03:       Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_140, var_C8, CVar(CLng(var_8C)))
  loc_1A76F0B:       var_158 = var_140.Text
  loc_1A76F15:       var_4F8 = CVar(CLng(var_8C)) 'Long
  loc_1A76F1D:       var_518 = CVar(CLng(6)) 'Long
  loc_1A76F88:       var_404 = "Update MemRevWise Set Appdate=" & var_184 & ",RevCode='" & CVar(CStr(var_350)) & "',Amount=" & CVar(var_174) & ",Nature='" 
  loc_1A76FC3:       var_54C = var_404 & CVar(CStr(var_414)) & "',ActiveYN='" & CVar(CStr(var_4A8)) & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" 
  loc_1A76FF9:       var_674 = var_54C & var_57C & ",U_AE='E',Site_Code='" & CVar(MemVar_1F95070) & "',LogSite_Code='" & CVar(MemVar_1F95078) & "' where MemCode='" 
  loc_1A7702A:       unk_5ADDE0.Execute CStr(var_674 & CVar(var_C8) & "' And RevCode='" & Trim(CVar(CStr(Me.FGrid1.TextMatrix)))) & "'"), var_7AC, -1
  loc_1A7709C:     End If
  loc_1A7709C:   End If
  loc_1A7709F: Next var_11B8 'Byte
  loc_1A770AB: unk_5ADDE0.CommitTrans
  loc_1A770B2: var_8A = 0
  loc_1A770BA: Set var_B0 = Nothing
  loc_1A770C8: Me.Requery -1
  loc_1A770CF: var_8A = 0
  loc_1A770E0: Set var_BC = Me.Txt
  loc_1A770E6: Call 0.Method_Proc_265_115_1A771CC0 (CInt(0), var_C0, var_C4)
  loc_1A770EE: var_8A = var_C0.Text
  loc_1A77112: Me.Requery -1
  loc_1A7713F: Me.Find "SearchCode = '" & var_C4 & "'", 0, 1
  loc_1A77160: var_C4 = "INI"
  loc_1A7716E: Call Proc_265_103_10EA5D0(Proc_5_1_100EC1C(var_C4, Me, global_164))
  loc_1A77179: Call Proc_265_112_1B48468(var_DC)
  loc_1A77183: Set var_88 = Nothing
  loc_1A7718B: Set var_98 = Nothing
  loc_1A7718E: Exit Sub
  loc_1A7718F: ' Referenced from: 1A739A0
  loc_1A77195: If (var_8A = &HFF) Then
  loc_1A7719E:   unk_5ADE1E.RollbackTrans
  loc_1A771A3: End If
  loc_1A771A9: Call 0.Method_arg_50 (var_C4)
  loc_1A771BE: Proc_183_57_104B0BC(var_C4, "UpdateDataBaseEdit")
  loc_1A771CA: Exit Sub
End Sub

Public Sub Proc_265_116_129FB38
  'Data Table: 5ADDB4
  Dim Me As Recordset15
  Dim unk_5ADE1E As Connection15
  Dim var_96 As Integer
  Dim var_124 As String
  Dim var_12C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_140 As Fields15
  Dim var_FC As Variant
  Dim var_BC As Variant
  Dim var_11C As Variant
  Dim var_190 As Variant
  Dim var_130 As String
  loc_129F564: On Error Goto loc_129FAFA
  loc_129F572: If (global_116 = "Y") Then
  loc_129F596:   MsgBox("You Can not Delete this A/c", &H40, "Validation Check", var_FC, var_11C)
  loc_129F5A6:   Exit Sub
  loc_129F5A7: End If
  loc_129F5DE: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_129F5EA:   var_120 = Me.AbsolutePosition
  loc_129F5F6:   var_94 = CVar(var_120) 'Variant
  loc_129F603:   unk_5ADE1E.BeginTrans var_120
  loc_129F639:   Set var_128 = Me.Txt
  loc_129F63F:   Call 0.Method_Proc_265_116_129FB380 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_129F647:   var_BC = var_12C.Text
  loc_129F650:   var_138 = -1 & var_130
  loc_129F660:   unk_5ADE1E.Execute var_138 & "'", var_140, &HFF
  loc_129F66B:   Set var_9C = var_140
  loc_129F687:   ' Referenced from: 129F7C0
  loc_129F696:   If Not(var_9C.EOF) Then
  loc_129F6B3:     var_12C = var_9C.Fields.Item("subcode")
  loc_129F6D2:     var_140 = var_9C.Fields
  loc_129F709:     var_FC = var_9C.Fields.Item("AmtDr").Value
  loc_129F730:     var_11C = var_9C.Fields.Item("GroupCode").Value
  loc_129F757:     var_190 = var_9C.Fields.Item("V_DATE").Value
  loc_129F788:     Proc_183_0_127A384(MemVar_1F951E0, CStr(var_12C.Value), CSng(var_140.Item("AmtCr").Value))
  loc_129F7BB:     var_9C.MoveNext
  loc_129F7C0:     GoTo loc_129F687
  loc_129F7C3:   End If
  loc_129F7DE:   var_FC = CVar("Delete From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '") 'String
  loc_129F7EC:   Set var_128 = Me.Txt
  loc_129F7F2:   Call 0.Method_Proc_265_116_129FB380 (CInt(0), var_12C, var_FC, var_1A8, -1)
  loc_129F809:   var_11C = var_140 & Trim(CVar(var_12C)) 
  loc_129F812:   var_190 = var_11C & "'" 
  loc_129F820:   unk_5ADE1E.Execute CStr(var_190), CSng(var_FC), CStr(var_11C)
  loc_129F85F:   Set var_128 = Me.Txt
  loc_129F865:   Call 0.Method_Proc_265_116_129FB380 (CInt(0), var_12C, "Delete From SubGroup Where SUBCode='", var_190)
  loc_129F87C:   var_FC = -1 & Trim(CVar(var_12C)) 
  loc_129F893:   unk_5ADE1E.Execute CStr(var_FC & "'"), var_140, CDate(var_190)
  loc_129F8CC:   Set var_128 = Me.Txt
  loc_129F8D2:   Call 0.Method_Proc_265_116_129FB380 (CInt(0), var_12C, "Delete From MemberFamily Where subcode='")
  loc_129F900:   unk_5ADE1E.Execute CStr(var_190 & Trim(CVar(var_12C)) & "'"), -1, var_140
  loc_129F939:   Set var_128 = Me.Txt
  loc_129F93F:   Call 0.Method_Proc_265_116_129FB380 (CInt(0), var_12C, "Delete From MemProposedMemInf Where subcode='")
  loc_129F96D:   unk_5ADE1E.Execute CStr(var_190 & Trim(CVar(var_12C)) & "'"), -1, var_140
  loc_129F9A6:   Set var_128 = Me.Txt
  loc_129F9AC:   Call 0.Method_Proc_265_116_129FB380 (CInt(0), var_12C, "Delete From MemAddRWA Where subcode='")
  loc_129F9DA:   unk_5ADE1E.Execute CStr(var_190 & Trim(CVar(var_12C)) & "'"), -1, var_140
  loc_129FA13:   Set var_128 = Me.Txt
  loc_129FA19:   Call 0.Method_Proc_265_116_129FB380 (CInt(0), var_12C, "Delete From MemRevWise Where Memcode='")
  loc_129FA3D:   var_124 = CStr(var_190 & Trim(CVar(var_12C)) & "'")
  loc_129FA47:   unk_5ADE1E.Execute var_124, -1, var_140
  loc_129FA69:   unk_5ADE1E.CommitTrans
  loc_129FA70:   var_96 = 0
  loc_129FA7E:   Me.Requery -1
  loc_129FA9A:   If (Me.RecordCount > 0) Then
  loc_129FAB4:     If (Me.AbsolutePosition > 1) Then
  loc_129FABF:       var_BC = (var_94 - 1)
  loc_129FACB:       Me.AbsolutePosition = CLng(CVar(var_12C))
  loc_129FAD0:     End If
  loc_129FAD0:   End If
  loc_129FAEC:   Proc_5_0_1107AD0(&HFF, Me, global_164)
  loc_129FAF4:   Call Proc_265_112_1B48468(0)
  loc_129FAF9: End If
  loc_129FAF9: Exit Sub
  loc_129FAFA: ' Referenced from: 129F564
  loc_129FB00: If (var_96 = &HFF) Then
  loc_129FB09:   unk_5ADE1E.RollbackTrans
  loc_129FB0E: End If
  loc_129FB14: Call 0.Method_arg_50 (var_124)
  loc_129FB29: Proc_183_57_104B0BC(var_124, "UpdateDataBaseDelete")
  loc_129FB35: Exit Sub
End Sub

Public Sub Proc_265_117_E06290
  'Data Table: 5ADDB4
  loc_E06280: Call Proc_265_106_10506D4()
  loc_E06288: Call Me.SetFocus
  loc_E0628E: Exit Sub
  loc_E0628F: Exit Sub
End Sub

Public Sub Proc_265_118_170C1C8(arg_C) '170C1C8
  'Data Table: 5ADDB4
  Dim var_9A As Integer
  Dim var_A0 As Variant
  Dim var_B4 As Long
  Dim var_B8 As Variant
  Dim var_C4 As Variant
  Dim var_C0 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_D4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_BC As String
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_134 As Variant
  Dim var_1C0 As Long
  Dim Me As Recordset15
  Dim var_1DC As Long
  Dim var_168 As Variant
  loc_170A607: var_9A = arg_C
  loc_170A610: If (var_9A = 0) Then
  loc_170A626:   var_B4 = CLng(Me.FAGrid.Col)
  loc_170A636:   If Not (var_B4 = CLng(3)) Then
  loc_170A640:     If Not (var_B4 = CLng(4)) Then
  loc_170A64A:       If (var_B4 = CLng(6)) Then
  loc_170A64D:       End If
  loc_170A64D:     End If
  loc_170A65A:     Set var_A0 = Me.TxtGrid
  loc_170A660:     Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC)
  loc_170A668:     var_B4 = var_B8.Text
  loc_170A67F:     If (var_BC <> vbNullString) Then
  loc_170A69A:       Set var_B8 = Me.ListView2.SelectedItem
  loc_170A6A0:       var_BC = var_B8.Text
  loc_170A6B2:       Set var_C0 = Me.TxtGrid
  loc_170A6B8:       Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_C4)
  loc_170A6C0:       var_C4.Text = var_BC
  loc_170A6D6:     End If
  loc_170A6E9:     var_E4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_170A701:     var_104 = CVar(CLng(Me.FAGrid.Col)) 'Long
  loc_170A713:     Set var_A0 = Me.TxtGrid
  loc_170A719:     Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC)
  loc_170A721:     var_104 = var_B8.Text
  loc_170A729:     var_124 = CVar(var_BC) 'String
  loc_170A731:     Set var_138 = Me.FAGrid
  loc_170A737:     LateIdCallSt
  loc_170A758:   Else
  loc_170A75F:     If Not (var_B4 = CLng(8)) Then
  loc_170A769:       If (var_B4 = CLng(&HA)) Then
  loc_170A76C:       End If
  loc_170A776:       Set var_A0 = Me.TxtGrid
  loc_170A77C:       Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_138)
  loc_170A78F:       var_BC = Proc_6_33_15125B8(var_B8, var_124)
  loc_170A79C:       Set var_C4 = Me.TxtGrid
  loc_170A7A2:       Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_138, var_BC)
  loc_170A7AA:       var_138.Text = var_E4
  loc_170A7D0:       var_E4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_170A7D9:       Set var_C4 = Me.FAGrid
  loc_170A7E8:       var_104 = CVar(CLng(var_C4.Col)) 'Long
  loc_170A7FA:       Set var_A0 = Me.TxtGrid
  loc_170A800:       Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC)
  loc_170A808:       var_104 = var_B8.Text
  loc_170A810:       var_124 = CVar(var_BC) 'String
  loc_170A818:       Set var_138 = Me.FAGrid
  loc_170A81E:       LateIdCallSt
  loc_170A83F:     Else
  loc_170A846:       If (var_B4 = CLng(&HE)) Then
  loc_170A853:         Set var_A0 = Me.TxtGrid
  loc_170A859:         Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_138)
  loc_170A870:         var_E4 = vbNullString
  loc_170A889:         Set var_C0 = Me.TxtGrid
  loc_170A88F:         Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_C4, 1, (Trim(CVar(var_B8)) <> var_E4))
  loc_170A897:         var_148 = CVar(var_C4) 'Address
  loc_170A89B:         var_F4 = "@"
  loc_170A8C2:         Set var_138 = Me.TxtGrid
  loc_170A8C8:         Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_16C, 1)
  loc_170A90E:         If CBool(var_9A And var_E4 Or (InStr((InStr(var_124, var_148, var_F4, 0) = 0), CVar(var_16C), ".", 0) = 0)) Then
  loc_170A917:           Call 0.Method_arg_50 (var_BC)
  loc_170A94E:           If (MsgBox("InValid Email ID!", &H141, CVar(var_BC), var_124, var_148) = 2) Then
  loc_170A956:             Proc_265_118_170C1C8 = 0
  loc_170A95C:           End If
  loc_170A95C:         End If
  loc_170A96F:         var_E4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_170A987:         var_104 = CVar(CLng(Me.FAGrid.Col)) 'Long
  loc_170A999:         Set var_A0 = Me.TxtGrid
  loc_170A99F:         Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC)
  loc_170A9A7:         var_104 = var_B8.Text
  loc_170A9AF:         var_124 = CVar(var_BC) 'String
  loc_170A9B7:         Set var_138 = Me.FAGrid
  loc_170A9BD:         LateIdCallSt
  loc_170A9DE:       Else
  loc_170A9E5:         If (var_B4 = CLng(&H1D)) Then
  loc_170A9F2:           Set var_A0 = Me.TxtGrid
  loc_170A9F8:           Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_138)
  loc_170AA21:           If (Trim(CVar(var_B8)) = vbNullString) Then
  loc_170AA31:             Set var_A0 = Me.TxtGrid
  loc_170AA37:             Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, "0")
  loc_170AA3F:             var_B8.Text = var_124
  loc_170AA4B:           End If
  loc_170AA5E:           var_E4 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_170AA76:           var_104 = CVar(CLng(Me.FAGrid.Col)) 'Long
  loc_170AA88:           Set var_A0 = Me.TxtGrid
  loc_170AA8E:           Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC)
  loc_170AA96:           var_104 = var_B8.Text
  loc_170AA9E:           var_124 = CVar(var_BC) 'String
  loc_170AAA6:           Set var_138 = Me.FAGrid
  loc_170AAAC:           LateIdCallSt
  loc_170AACD:         Else
  loc_170AAE9:           Set var_C4 = Me.FAGrid
  loc_170AB0A:           Set var_A0 = Me.TxtGrid
  loc_170AB10:           Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, CVar(CLng(var_C4.Col)), CVar(CLng(Me.FAGrid.Row)))
  loc_170AB18:           var_138 = var_B8.Text
  loc_170AB20:           var_124 = CVar(var_BC) 'String
  loc_170AB28:           Set var_138 = Me.FAGrid
  loc_170AB2E:           LateIdCallSt
  loc_170AB4C:         End If
  loc_170AB4C:       End If
  loc_170AB4C:     End If
  loc_170AB4C:   End If
  loc_170AB4F: Else
  loc_170AB55:   If (var_9A = 1) Then
  loc_170AB6B:     var_1C0 = CLng(Me.FPGrid.Col)
  loc_170AB7B:     If (var_1C0 = CLng(4)) Then
  loc_170AB8B:       Set var_A0 = Me.TxtGrid
  loc_170AB91:       Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, var_1C0, var_138)
  loc_170ABB0:       If (var_BC <> vbNullString) Then
  loc_170ABCB:         Set var_B8 = Me.ListView3.SelectedItem
  loc_170ABD1:         var_BC = var_B8.Text
  loc_170ABE3:         Set var_C0 = Me.TxtGrid
  loc_170ABE9:         Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_C4, var_BC)
  loc_170ABF1:         var_C4.Text = var_B8.Text
  loc_170AC07:       End If
  loc_170AC1A:       var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170AC29:       var_D4 = Me.FPGrid.Col
  loc_170AC44:       Set var_A0 = Me.TxtGrid
  loc_170AC4A:       Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, CVar(CLng(var_D4)))
  loc_170AC52:       var_E4 = var_B8.Text
  loc_170AC5A:       var_124 = CVar(var_BC) 'String
  loc_170AC62:       Set var_138 = Me.FPGrid
  loc_170AC68:       LateIdCallSt
  loc_170AC89:     Else
  loc_170AC90:       If (var_1C0 = CLng(5)) Then
  loc_170ACAA:         If (Me.RecordCount > 0) Then
  loc_170ACBA:           Set var_A0 = Me.TxtGrid
  loc_170ACC0:           Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, var_138)
  loc_170ACC8:           var_124 = var_B8.Text
  loc_170ACDF:           If (var_BC <> vbNullString) Then
  loc_170ACE8:             Me.MoveFirst
  loc_170ACFB:             var_E4 = "CardNo="
  loc_170AD0A:             Set var_A0 = Me.TxtGrid
  loc_170AD10:             Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_E4, 0)
  loc_170AD1F:             Proc_6_17_EAAE40(var_D4, CVar(var_B8), 1)
  loc_170AD35:             Me.Find CStr(var_F4 & var_D4), var_E4, var_E4
  loc_170AD49:           End If
  loc_170AD49:         End If
  loc_170AD97:         Set var_A0 = Me.TxtGrid
  loc_170AD9D:         Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8)
  loc_170ADA5:         var_BC = var_B8.Text
  loc_170ADBD:         If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_BC = vbNullString)) Then
  loc_170ADC5:           Proc_265_118_170C1C8 = 0
  loc_170ADCE:         Else
  loc_170ADE1:           var_F4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170AE19:           var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PMemCode")), CVar(CLng(3)))) 'String
  loc_170AE21:           Set var_C4 = Me.FPGrid
  loc_170AE27:           LateIdCallSt
  loc_170AE8C:           var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("CardNo")), CVar(CLng(5)), CVar(CLng(Me.FPGrid.Row)))) 'String
  loc_170AE9A:           LateIdCallSt
  loc_170AEFF:           var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ConPrefix")), CVar(CLng(6)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid)) 'String
  loc_170AF0D:           LateIdCallSt
  loc_170AF72:           var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Name")), CVar(CLng(7)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170AF80:           LateIdCallSt
  loc_170AFE5:           var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Gender")), CVar(CLng(8)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170AFF3:           LateIdCallSt
  loc_170B058:           var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Mobile")), CVar(CLng(9)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B066:           LateIdCallSt
  loc_170B0CB:           var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Email")), CVar(CLng(&HA)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B0D9:           LateIdCallSt
  loc_170B13E:           var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Desig")), CVar(CLng(&HB)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B14C:           LateIdCallSt
  loc_170B1B1:           var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PicPath")), CVar(CLng(&HC)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B1BF:           LateIdCallSt
  loc_170B213:           var_B8 = Me.Fields.Item("SigPath")
  loc_170B224:           var_124 = CVar(Proc_6_38_E69628(CVar(var_B8), CVar(CLng(&HD)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B22C:           Set var_C4 = Me.FPGrid
  loc_170B232:           LateIdCallSt
  loc_170B24C:         End If
  loc_170B24F:       Else
  loc_170B256:         If (var_1C0 = CLng(7)) Then
  loc_170B2A7:           Set var_A0 = Me.TxtGrid
  loc_170B2AD:           Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))), var_C4)
  loc_170B2CD:           If (var_B8.Text Or (var_BC = vbNullString)) Then
  loc_170B2E3:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B2EB:             var_104 = CVar(CLng(3)) 'Long
  loc_170B2F0:             var_134 = vbNullString
  loc_170B2FA:             Set var_B8 = Me.FPGrid
  loc_170B300:             LateIdCallSt
  loc_170B325:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B32D:             var_104 = CVar(CLng(5)) 'Long
  loc_170B332:             var_134 = vbNullString
  loc_170B33C:             Set var_B8 = Me.FPGrid
  loc_170B342:             LateIdCallSt
  loc_170B367:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B36F:             var_104 = CVar(CLng(6)) 'Long
  loc_170B374:             var_134 = vbNullString
  loc_170B37E:             Set var_B8 = Me.FPGrid
  loc_170B384:             LateIdCallSt
  loc_170B3A9:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B3B1:             var_104 = CVar(CLng(7)) 'Long
  loc_170B3B6:             var_134 = vbNullString
  loc_170B3C0:             Set var_B8 = Me.FPGrid
  loc_170B3C6:             LateIdCallSt
  loc_170B3EB:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B3F3:             var_104 = CVar(CLng(8)) 'Long
  loc_170B3F8:             var_134 = vbNullString
  loc_170B402:             Set var_B8 = Me.FPGrid
  loc_170B408:             LateIdCallSt
  loc_170B42D:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B435:             var_104 = CVar(CLng(9)) 'Long
  loc_170B43A:             var_134 = vbNullString
  loc_170B444:             Set var_B8 = Me.FPGrid
  loc_170B44A:             LateIdCallSt
  loc_170B46F:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B477:             var_104 = CVar(CLng(&HA)) 'Long
  loc_170B47C:             var_134 = vbNullString
  loc_170B486:             Set var_B8 = Me.FPGrid
  loc_170B48C:             LateIdCallSt
  loc_170B4B1:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B4B9:             var_104 = CVar(CLng(&HB)) 'Long
  loc_170B4BE:             var_134 = vbNullString
  loc_170B4C8:             Set var_B8 = Me.FPGrid
  loc_170B4CE:             LateIdCallSt
  loc_170B4F3:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B4FB:             var_104 = CVar(CLng(&HC)) 'Long
  loc_170B500:             var_134 = vbNullString
  loc_170B50A:             Set var_B8 = Me.FPGrid
  loc_170B510:             LateIdCallSt
  loc_170B535:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170B53D:             var_104 = CVar(CLng(&HD)) 'Long
  loc_170B542:             var_134 = vbNullString
  loc_170B54C:             Set var_B8 = Me.FPGrid
  loc_170B552:             LateIdCallSt
  loc_170B567:           Else
  loc_170B58A:             var_E4 = "PMemCode"
  loc_170B5A1:             var_B8 = Me.Fields.Item(var_E4)
  loc_170B5B2:             var_124 = CVar(Proc_6_38_E69628(CVar(var_B8), CVar(CLng(3)), CVar(CLng(Me.FPGrid.Row)), var_B8, var_134, var_104, var_E4)) 'String
  loc_170B5C0:             LateIdCallSt
  loc_170B614:             var_B8 = Me.Fields.Item("CardNo")
  loc_170B625:             var_124 = CVar(Proc_6_38_E69628(CVar(var_B8), CVar(CLng(5)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124, var_B8)) 'String
  loc_170B633:             LateIdCallSt
  loc_170B698:             var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ConPrefix")), CVar(CLng(6)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B6A6:             LateIdCallSt
  loc_170B70B:             var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Name")), CVar(CLng(7)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B719:             LateIdCallSt
  loc_170B77E:             var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Gender")), CVar(CLng(8)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B78C:             LateIdCallSt
  loc_170B7F1:             var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Mobile")), CVar(CLng(9)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B7FF:             LateIdCallSt
  loc_170B864:             var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Email")), CVar(CLng(&HA)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B872:             LateIdCallSt
  loc_170B8D7:             var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("Desig")), CVar(CLng(&HB)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B8E5:             LateIdCallSt
  loc_170B94A:             var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("PicPath")), CVar(CLng(&HC)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B958:             LateIdCallSt
  loc_170B9BD:             var_124 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("SigPath")), CVar(CLng(&HD)), CVar(CLng(Me.FPGrid.Row)), Me.FPGrid, var_124)) 'String
  loc_170B9C5:             Set var_C4 = Me.FPGrid
  loc_170B9CB:             LateIdCallSt
  loc_170B9E5:           End If
  loc_170B9F8:           var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170BA00:           var_104 = CVar(CLng(3)) 'Long
  loc_170BA09:           Set var_B8 = Me.FPGrid
  loc_170BA1A:           var_124 = CVar(CStr(var_B8.TextMatrix))) 'String
  loc_170BA28:           var_134 = vbNullString
  loc_170BA42:           If (Trim(var_124) = var_134) Then
  loc_170BA4A:             Proc_265_118_170C1C8 = 0
  loc_170BA50:           End If
  loc_170BA53:         Else
  loc_170BA5A:           If (var_1C0 = CLng(&HE)) Then
  loc_170BA67:             Set var_A0 = Me.TxtGrid
  loc_170BA6D:             Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_104, var_E4, var_C4, var_124)
  loc_170BA96:             If (Trim(CVar(var_B8)) = vbNullString) Then
  loc_170BAA6:               Set var_A0 = Me.TxtGrid
  loc_170BAAC:               Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, "0", var_134)
  loc_170BAB4:               var_B8.Text = var_104
  loc_170BAC0:             End If
  loc_170BAD3:             var_E4 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_170BAFD:             Set var_A0 = Me.TxtGrid
  loc_170BB03:             Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, CVar(CLng(Me.FPGrid.Col)))
  loc_170BB0B:             var_E4 = var_B8.Text
  loc_170BB13:             var_124 = CVar(var_BC) 'String
  loc_170BB1B:             Set var_138 = Me.FPGrid
  loc_170BB21:             LateIdCallSt
  loc_170BB42:           Else
  loc_170BB7F:             Set var_A0 = Me.TxtGrid
  loc_170BB85:             Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, CVar(CLng(Me.FPGrid.Col)), CVar(CLng(Me.FPGrid.Row)))
  loc_170BB8D:             var_138 = var_B8.Text
  loc_170BB95:             var_124 = CVar(var_BC) 'String
  loc_170BB9D:             Set var_138 = Me.FPGrid
  loc_170BBA3:             LateIdCallSt
  loc_170BBC1:           End If
  loc_170BBC1:         End If
  loc_170BBC1:       End If
  loc_170BBC1:     End If
  loc_170BBC4:   Else
  loc_170BBCA:     If (var_9A = 2) Then
  loc_170BBE0:       var_1DC = CLng(Me.FGrid1.Col)
  loc_170BBF0:       If (var_1DC = CLng(1)) Then
  loc_170BC13:         var_1C6 = Me.EOF
  loc_170BC41:         Set var_A0 = Me.TxtGrid
  loc_170BC47:         Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, ((Me.RecordCount = 0) Or ((var_1C6 = &HFF) Or (Me.BOF = &HFF))), var_1DC, var_138)
  loc_170BC67:         If (var_B8.Text Or (var_BC = vbNullString)) Then
  loc_170BC7D:           var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170BC85:           var_104 = CVar(CLng(1)) 'Long
  loc_170BC8A:           var_134 = vbNullString
  loc_170BC94:           Set var_B8 = Me.FGrid1
  loc_170BC9A:           LateIdCallSt
  loc_170BCBF:           var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170BCC7:           var_104 = CVar(CLng(6)) 'Long
  loc_170BCCC:           var_134 = vbNullString
  loc_170BCD6:           Set var_B8 = Me.FGrid1
  loc_170BCDC:           LateIdCallSt
  loc_170BCF1:         Else
  loc_170BCF4:           Call Proc_265_119_FC27D0(var_1C6, var_B8, var_134, var_104, var_E4, var_B8)
  loc_170BCFF:           If (var_1C6 = 0) Then
  loc_170BD07:             Proc_265_118_170C1C8 = 0
  loc_170BD0D:           End If
  loc_170BD20:           var_F4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170BD28:           var_114 = CVar(CLng(1)) 'Long
  loc_170BD5B:           var_124 = CVar(CStr(Me.Fields.Item("Name").Value)) 'String
  loc_170BD63:           Set var_C4 = Me.FGrid1
  loc_170BD69:           LateIdCallSt
  loc_170BD98:           var_F4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170BDA0:           var_114 = CVar(CLng(6)) 'Long
  loc_170BDD3:           var_124 = CVar(CStr(Me.Fields.Item("Code").Value)) 'String
  loc_170BDDB:           Set var_C4 = Me.FGrid1
  loc_170BDE1:           LateIdCallSt
  loc_170BDFD:         End If
  loc_170BE16:         var_E4 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_170BE1E:         var_104 = CVar(CLng(6)) 'Long
  loc_170BE27:         Set var_B8 = Me.FGrid1
  loc_170BE38:         var_BC = CStr(var_B8.TextMatrix))
  loc_170BE51:         If (var_BC <> vbNullString) Then
  loc_170BE54:           var_E4 = vbNullString
  loc_170BE5E:           Set var_A0 = Me.FGrid1
  loc_170BE6F:         End If
  loc_170BE72:       Else
  loc_170BE79:         If (var_1DC = CLng(2)) Then
  loc_170BE86:           Set var_A0 = Me.TxtGrid
  loc_170BE8C:           Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, FGrid1.DispID_10000, var_E4, var_104, var_E4, var_C4)
  loc_170BEAB:           Set var_C0 = Me.TxtGrid
  loc_170BEB1:           Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_C4, var_BC, Not(IsNumeric(CVar(var_B8))), var_124, var_114)
  loc_170BEB9:           var_F4 = var_C4.Text
  loc_170BEDB:           If (var_C4 Or (CDbl(Val(var_BC)) <= CDbl(0))) Then
  loc_170BEE2:             var_BC = CStr(0)
  loc_170BEEF:             Set var_A0 = Me.TxtGrid
  loc_170BEF5:             Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC)
  loc_170BEFD:             var_B8.Text = var_124
  loc_170BF11:             Proc_265_118_170C1C8 = 0
  loc_170BF17:           End If
  loc_170BF24:           Set var_A0 = Me.TxtGrid
  loc_170BF2A:           Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC)
  loc_170BF32:           var_114 = var_B8.Text
  loc_170BF4A:           var_F4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170BF53:           Set var_C4 = Me.FGrid1
  loc_170BF62:           var_114 = CVar(CLng(var_C4.Col)) 'Long
  loc_170BF8E:           var_168 = CVar(CStr(Format(CVar(var_BC), "0.00"))) 'String
  loc_170BF96:           Set var_138 = Me.FGrid1
  loc_170BF9C:           LateIdCallSt
  loc_170BFC3:         Else
  loc_170BFCA:           If Not (var_1DC = CLng(3)) Then
  loc_170BFD4:             If (var_1DC = CLng(5)) Then
  loc_170BFD7:             End If
  loc_170BFE4:             Set var_A0 = Me.TxtGrid
  loc_170BFEA:             Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, var_138, var_168)
  loc_170BFF2:             1 = var_B8.Text
  loc_170C009:             If (var_BC <> vbNullString) Then
  loc_170C024:               Set var_B8 = Me.ListView4.SelectedItem
  loc_170C02A:               var_BC = var_B8.Text
  loc_170C03C:               Set var_C0 = Me.TxtGrid
  loc_170C042:               Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_C4, var_BC, 1)
  loc_170C04A:               var_C4.Text = var_114
  loc_170C060:             End If
  loc_170C073:             var_E4 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_170C09D:             Set var_A0 = Me.TxtGrid
  loc_170C0A3:             Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_BC, CVar(CLng(Me.FGrid1.Col)))
  loc_170C0AB:             var_E4 = var_B8.Text
  loc_170C0B3:             var_124 = CVar(var_BC) 'String
  loc_170C0BB:             Set var_138 = Me.FGrid1
  loc_170C0C1:             LateIdCallSt
  loc_170C0E2:           Else
  loc_170C0E9:             If (var_1DC = CLng(4)) Then
  loc_170C0F6:               Set var_A0 = Me.TxtGrid
  loc_170C0FC:               Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, var_138)
  loc_170C11C:               Set var_C4 = Me.TxtGrid
  loc_170C122:               Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_138, Proc_6_33_15125B8(var_B8, var_124))
  loc_170C12A:               var_138.Text = var_F4
  loc_170C177:               Set var_A0 = Me.TxtGrid
  loc_170C17D:               Call 0.Method_Proc_265_118_170C1C80 (arg_C, var_B8, CVar(CLng(Me.FGrid1.Col)))
  loc_170C190:               var_124 = CVar(Proc_6_33_15125B8(var_B8, CVar(CLng(Me.FGrid1.Row)))) 'String
  loc_170C198:               Set var_16C = Me.FGrid1
  loc_170C19E:               LateIdCallSt
  loc_170C1BC:             End If
  loc_170C1BC:           End If
  loc_170C1BC:         End If
  loc_170C1BC:       End If
  loc_170C1BC:     End If
  loc_170C1BC:   End If
  loc_170C1BC: End If
  loc_170C1C1: Proc_265_118_170C1C8 = &HFF
End Sub

Public Sub Proc_265_119_FC27D0
  'Data Table: 5ADDB4
  Dim var_98 As MSHFlexGrid
  Dim var_E4 As Variant
  Dim var_124 As Variant
  Dim var_B0 As TextBox
  loc_FC2653: If (CLng(Me.FGrid1.Col) = CLng(1)) Then
  loc_FC2658:   var_92 = 1 'Byte
  loc_FC265C: End If
  loc_FC2665: Set var_98 = Me.TxtGrid
  loc_FC266B: Call 0.Method_Proc_265_119_FC27D00 (2, var_B0)
  loc_FC268E: var_8C = CStr(Ucase(Trim(CVar(var_B0))))
  loc_FC26C2: For var_D4 = 1 To CInt((CLng(Me.FGrid1.Rows) - 1)): var_88 = var_D4 'Integer
  loc_FC26E6:   If (CLng(var_88) = CLng(Me.FGrid1.Row)) Then
  loc_FC26E9:     GoTo loc_FC27BB
  loc_FC26EC:   End If
  loc_FC26F0:   var_E4 = CVar(CLng(var_88)) 'Long
  loc_FC271A:   var_D0 = Trim(CVar(CStr(Me.FGrid1.TextMatrix))))
  loc_FC2724:   var_124 = CVar(CStr(var_D0)) 'String
  loc_FC2759:   If ((var_8C = CStr(Ucase(var_124))) And (CStr(Ucase(var_124)) <> vbNullString)) Then
  loc_FC277D:     MsgBox("Duplicate Revenue Name Not Allowed", &H40, "Validation", var_D0, var_124)
  loc_FC2796:     Set var_98 = Me.TxtGrid
  loc_FC279C:     Call 0.Method_Proc_265_119_FC27D00 (2, var_B0, CVar(CLng(var_92)))
  loc_FC27A4:     var_B0.SetFocus
  loc_FC27B5:     Proc_265_119_FC27D0 = 0
  loc_FC27BB:     ' Referenced from: FC26E9
  loc_FC27BB:   End If
  loc_FC27BE: Next var_D4 'Integer
  loc_FC27C8: Proc_265_119_FC27D0 = &HFF
End Sub

Public Sub Proc_265_120_DFE568
  'Data Table: 5ADDB4
  loc_DFE564: Exit Sub
End Sub

Public Sub Proc_265_121_132A5A4
  'Data Table: 5ADDB4
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_1B4 As Variant
  Dim var_120 As Variant
  Dim var_164 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_224 As Variant
  loc_1329E40: Set var_88 = Me.FAGrid
  loc_1329E4F: var_A8 = CVar(CLng(var_88.Row)) 'Long
  loc_1329E79: var_1B4 = IsNull(CVar(CStr(Me.FAGrid.TextMatrix))))
  loc_1329EA7: var_164 = Me.FAGrid.TextMatrix)
  loc_1329EEE: If CBool(CVar(CLng(&H1B)) Or (Trim(CVar(CStr(var_164))) = vbNullString)) Then
  loc_1329F11:   Me.var_164.LoadPicture var_A8, var_B8, CVar(CLng(&H1B)), var_D8, CVar(CLng(Me.FAGrid.Row))
  loc_1329F26:   Me.ImgFamilyMemPhoto.Picture = var_88
  loc_1329F41:   Me.ImgFamilyMemPhoto.Tag = vbNullString
  loc_1329F4C: Else
  loc_1329F63:   var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329F6B:   var_C8 = CVar(CLng(&H1B)) 'Long
  loc_1329FA3:   var_130 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_1329FAB:   var_150 = CVar(CLng(&H1B)) 'Long
  loc_1329FEE:   var_120 = "DAT"
  loc_132A020:   var_224 = (Ucase(Right(Trim(CVar(CStr(Me.FAGrid.TextMatrix)))), 3)) = var_120) Or (Ucase(Right(Trim(CVar(CStr(Me.FAGrid.TextMatrix)))), 3)) = "AVI")
  loc_132A04C:   If CBool(var_224) Then
  loc_132A05D:     Me.ImgFamilyMemPhoto.Visible = False
  loc_132A068:   Else
  loc_132A07F:     var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_132A087:     var_C8 = CVar(CLng(&H1B)) 'Long
  loc_132A0AE:     Me.ImgFamilyMemPhoto.Tag = CStr(Me.FAGrid.TextMatrix))
  loc_132A0DB:     var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_132A0E3:     var_C8 = CVar(CLng(&H1B)) 'Long
  loc_132A0EC:     Set var_DC = Me.FAGrid
  loc_132A0F2:     var_EC = var_DC.TextMatrix)
  loc_132A111:     Call 0.Method_Proc_265_121_132A5A44 (CStr(var_EC), var_22A, var_EC, var_C8, var_A8, var_C8, var_A8, var_150)
  loc_132A12A:     If var_22A Then
  loc_132A12F:       On Error Resume Next
  loc_132A166:       Me.Global.LoadPicture CVar(Me.ImgFamilyMemPhoto.Tag), var_A8, var_B8, var_C8, var_D8
  loc_132A17B:       Me.ImgFamilyMemPhoto.Picture = var_DC
  loc_132A192:       Set var_88 = Me.ImgFamilyMemPhoto
  loc_132A198:       var_88.Refresh
  loc_132A1A3:     Else
  loc_132A1C5:       Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_120
  loc_132A1DA:       Me.ImgFamilyMemPhoto.Picture = var_88
  loc_132A1E6:     End If
  loc_132A1E8:   End If
  loc_132A1EA: End If
  loc_132A1F2: Set var_88 = Me.FAGrid
  loc_132A201: var_A8 = CVar(CLng(var_88.Row)) 'Long
  loc_132A22B: var_1B4 = IsNull(CVar(CStr(Me.FAGrid.TextMatrix))))
  loc_132A259: var_164 = Me.FAGrid.TextMatrix)
  loc_132A2A0: If CBool(CVar(CLng(&H1C)) Or (Trim(CVar(CStr(var_164))) = vbNullString)) Then
  loc_132A2C3:   Me.var_164.LoadPicture var_A8, var_B8, CVar(CLng(&H1C)), var_D8, CVar(CLng(Me.FAGrid.Row))
  loc_132A2D8:   Me.ImgFamilyMemSign.Picture = var_88
  loc_132A2F3:   Me.ImgFamilyMemSign.Tag = vbNullString
  loc_132A2FE: Else
  loc_132A315:   var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_132A31D:   var_C8 = CVar(CLng(&H1C)) 'Long
  loc_132A355:   var_130 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_132A35D:   var_150 = CVar(CLng(&H1C)) 'Long
  loc_132A3A0:   var_120 = "DAT"
  loc_132A3D2:   var_224 = (Ucase(Right(Trim(CVar(CStr(Me.FAGrid.TextMatrix)))), 3)) = var_120) Or (Ucase(Right(Trim(CVar(CStr(Me.FAGrid.TextMatrix)))), 3)) = "AVI")
  loc_132A3FE:   If CBool(var_224) Then
  loc_132A40F:     Me.ImgFamilyMemSign.Visible = False
  loc_132A41A:   Else
  loc_132A431:     var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_132A439:     var_C8 = CVar(CLng(&H1C)) 'Long
  loc_132A460:     Me.ImgFamilyMemSign.Tag = CStr(Me.FAGrid.TextMatrix))
  loc_132A48D:     var_A8 = CVar(CLng(Me.FAGrid.Row)) 'Long
  loc_132A495:     var_C8 = CVar(CLng(&H1C)) 'Long
  loc_132A49E:     Set var_DC = Me.FAGrid
  loc_132A4A4:     var_EC = var_DC.TextMatrix)
  loc_132A4C3:     Call 0.Method_Proc_265_121_132A5A44 (CStr(var_EC), var_22A, var_EC, var_C8, var_A8, var_C8, var_A8, var_150)
  loc_132A4DC:     If var_22A Then
  loc_132A4E1:       On Error Resume Next
  loc_132A518:       Me.Global.LoadPicture CVar(Me.ImgFamilyMemSign.Tag), var_A8, var_B8, var_C8, var_D8
  loc_132A52D:       Me.ImgFamilyMemSign.Picture = var_DC
  loc_132A544:       Set var_88 = Me.ImgFamilyMemSign
  loc_132A54A:       var_88.Refresh
  loc_132A555:     Else
  loc_132A577:       Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_120
  loc_132A58C:       Me.ImgFamilyMemSign.Picture = var_88
  loc_132A598:     End If
  loc_132A59A:   End If
  loc_132A59C: End If
  loc_132A5A0: Exit Sub
End Sub

Public Sub Proc_265_122_132B58C
  'Data Table: 5ADDB4
  Dim var_88 As Variant
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_1B4 As Variant
  Dim var_120 As Variant
  Dim var_164 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_224 As Variant
  loc_132AE28: Set var_88 = Me.FPGrid
  loc_132AE37: var_A8 = CVar(CLng(var_88.Row)) 'Long
  loc_132AE61: var_1B4 = IsNull(CVar(CStr(Me.FPGrid.TextMatrix))))
  loc_132AE8F: var_164 = Me.FPGrid.TextMatrix)
  loc_132AED6: If CBool(CVar(CLng(&HC)) Or (Trim(CVar(CStr(var_164))) = vbNullString)) Then
  loc_132AEF9:   Me.var_164.LoadPicture var_A8, var_B8, CVar(CLng(&HC)), var_D8, CVar(CLng(Me.FPGrid.Row))
  loc_132AF0E:   Me.ImgPropMemPhoto.Picture = var_88
  loc_132AF29:   Me.ImgPropMemPhoto.Tag = vbNullString
  loc_132AF34: Else
  loc_132AF4B:   var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132AF53:   var_C8 = CVar(CLng(&HC)) 'Long
  loc_132AF8B:   var_130 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132AF93:   var_150 = CVar(CLng(&HC)) 'Long
  loc_132AFD6:   var_120 = "DAT"
  loc_132B008:   var_224 = (Ucase(Right(Trim(CVar(CStr(Me.FPGrid.TextMatrix)))), 3)) = var_120) Or (Ucase(Right(Trim(CVar(CStr(Me.FPGrid.TextMatrix)))), 3)) = "AVI")
  loc_132B034:   If CBool(var_224) Then
  loc_132B045:     Me.ImgPropMemPhoto.Visible = False
  loc_132B050:   Else
  loc_132B067:     var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132B06F:     var_C8 = CVar(CLng(&HC)) 'Long
  loc_132B096:     Me.ImgPropMemPhoto.Tag = CStr(Me.FPGrid.TextMatrix))
  loc_132B0C3:     var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132B0CB:     var_C8 = CVar(CLng(&HC)) 'Long
  loc_132B0D4:     Set var_DC = Me.FPGrid
  loc_132B0DA:     var_EC = var_DC.TextMatrix)
  loc_132B0F9:     Call 0.Method_Proc_265_122_132B58C4 (CStr(var_EC), var_22A, var_EC, var_C8, var_A8, var_C8, var_A8, var_150)
  loc_132B112:     If var_22A Then
  loc_132B117:       On Error Resume Next
  loc_132B14E:       Me.Global.LoadPicture CVar(Me.ImgPropMemPhoto.Tag), var_A8, var_B8, var_C8, var_D8
  loc_132B163:       Me.ImgPropMemPhoto.Picture = var_DC
  loc_132B17A:       Set var_88 = Me.ImgPropMemPhoto
  loc_132B180:       var_88.Refresh
  loc_132B18B:     Else
  loc_132B1AD:       Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_120
  loc_132B1C2:       Me.ImgPropMemPhoto.Picture = var_88
  loc_132B1CE:     End If
  loc_132B1D0:   End If
  loc_132B1D2: End If
  loc_132B1DA: Set var_88 = Me.FPGrid
  loc_132B1E9: var_A8 = CVar(CLng(var_88.Row)) 'Long
  loc_132B213: var_1B4 = IsNull(CVar(CStr(Me.FPGrid.TextMatrix))))
  loc_132B241: var_164 = Me.FPGrid.TextMatrix)
  loc_132B288: If CBool(CVar(CLng(&HD)) Or (Trim(CVar(CStr(var_164))) = vbNullString)) Then
  loc_132B2AB:   Me.var_164.LoadPicture var_A8, var_B8, CVar(CLng(&HD)), var_D8, CVar(CLng(Me.FPGrid.Row))
  loc_132B2C0:   Me.ImgPropMemSign.Picture = var_88
  loc_132B2DB:   Me.ImgPropMemSign.Tag = vbNullString
  loc_132B2E6: Else
  loc_132B2FD:   var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132B305:   var_C8 = CVar(CLng(&HD)) 'Long
  loc_132B33D:   var_130 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132B345:   var_150 = CVar(CLng(&HD)) 'Long
  loc_132B388:   var_120 = "DAT"
  loc_132B3BA:   var_224 = (Ucase(Right(Trim(CVar(CStr(Me.FPGrid.TextMatrix)))), 3)) = var_120) Or (Ucase(Right(Trim(CVar(CStr(Me.FPGrid.TextMatrix)))), 3)) = "AVI")
  loc_132B3E6:   If CBool(var_224) Then
  loc_132B3F7:     Me.ImgPropMemSign.Visible = False
  loc_132B402:   Else
  loc_132B419:     var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132B421:     var_C8 = CVar(CLng(&HD)) 'Long
  loc_132B448:     Me.ImgPropMemSign.Tag = CStr(Me.FPGrid.TextMatrix))
  loc_132B475:     var_A8 = CVar(CLng(Me.FPGrid.Row)) 'Long
  loc_132B47D:     var_C8 = CVar(CLng(&HD)) 'Long
  loc_132B486:     Set var_DC = Me.FPGrid
  loc_132B48C:     var_EC = var_DC.TextMatrix)
  loc_132B4AB:     Call 0.Method_Proc_265_122_132B58C4 (CStr(var_EC), var_22A, var_EC, var_C8, var_A8, var_C8, var_A8, var_150)
  loc_132B4C4:     If var_22A Then
  loc_132B4C9:       On Error Resume Next
  loc_132B500:       Me.Global.LoadPicture CVar(Me.ImgPropMemSign.Tag), var_A8, var_B8, var_C8, var_D8
  loc_132B515:       Me.ImgPropMemSign.Picture = var_DC
  loc_132B52C:       Set var_88 = Me.ImgPropMemSign
  loc_132B532:       var_88.Refresh
  loc_132B53D:     Else
  loc_132B55F:       Me.Global.LoadPicture var_A8, var_B8, var_C8, var_D8, var_120
  loc_132B574:       Me.ImgPropMemSign.Picture = var_88
  loc_132B580:     End If
  loc_132B582:   End If
  loc_132B584: End If
  loc_132B588: Exit Sub
End Sub
