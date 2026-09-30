VERSION 5.00
Begin VB.Form fdRoomChange
  Caption = "Room Change"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdRoomChange.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 120
  ClientTop = 1215
  ClientWidth = 12270
  ClientHeight = 8595
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 8.25
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin DataGrid DGPackage
    Left = 3180
    Top = 1005
    Width = 4230
    Height = 1920
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 13
  End
  Begin Frame FrPackage
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 1005
    Top = 570
    Width = 10125
    Height = 4980
    Visible = 0   'False
    TabIndex = 50
    Appearance = 0 'Flat
    Begin TextBox Txt
      Index = 31
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4890
      Top = 435
      Width = 900
      Height = 270
      TabIndex = 53
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 42
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 6000
      Top = 435
      Width = 900
      Height = 270
      TabIndex = 54
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 45
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 6000
      Top = 720
      Width = 900
      Height = 270
      TabIndex = 57
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 44
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 4890
      Top = 720
      Width = 900
      Height = 270
      TabIndex = 56
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 47
      BackColor = &HFFFFFF&
      Left = 8100
      Top = 150
      Width = 1605
      Height = 270
      Enabled = 0   'False
      Visible = 0   'False
      TabIndex = 63
      BorderStyle = 0 'None
      MaxLength = 30
      Locked = -1  'True
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
      Index = 48
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 7335
      Top = 3825
      Width = 1290
      Height = 270
      TabIndex = 59
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      Locked = -1  'True
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
      Index = 46
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2175
      Top = 1005
      Width = 1035
      Height = 270
      TabIndex = 58
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin TextBox Txt
      Index = 43
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2175
      Top = 720
      Width = 345
      Height = 270
      Text = "Yes"
      TabIndex = 55
      BorderStyle = 0 'None
      Alignment = 2 'Center
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
    Begin TextBox TxtGrid
      Index = 0
      BackColor = &HE0E0E0&
      ForeColor = &H80000012&
      Left = 60
      Top = 1650
      Width = 975
      Height = 240
      Visible = 0   'False
      TabIndex = 62
      BorderStyle = 0 'None
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
      Index = 24
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2175
      Top = 150
      Width = 4230
      Height = 270
      TabIndex = 51
      BorderStyle = 0 'None
      MaxLength = 30
      Locked = -1  'True
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin CommandButton CmdOk
      Caption = "&Ok"
      Left = 3615
      Top = 4125
      Width = 1740
      Height = 465
      TabIndex = 60
      BeginProperty Font
        Name = "Tahoma"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin TextBox Txt
      Index = 25
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 2175
      Top = 435
      Width = 1080
      Height = 270
      TabIndex = 52
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
      MaxLength = 30
      BeginProperty Font
        Name = "Arial"
        Size = 9
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Appearance = 0 'Flat
    End
    Begin MSHFlexGrid FGrid3
      Left = 45
      Top = 1410
      Width = 9510
      Height = 2415
      TabIndex = 61
    End
    Begin Label Lbl
      Caption = "Extra Person"
      Index = 69
      ForeColor = &HC00000&
      Left = 3375
      Top = 435
      Width = 1110
      Height = 225
      TabIndex = 77
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
      Caption = "@"
      Index = 68
      ForeColor = &HC00000&
      Left = 5820
      Top = 450
      Width = 180
      Height = 225
      TabIndex = 76
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
    Begin Label LblDiscAppOn
      Caption = "-"
      ForeColor = &H0&
      Left = 7005
      Top = 720
      Width = 75
      Height = 240
      TabIndex = 75
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
      Caption = "%"
      Index = 67
      ForeColor = &HC00000&
      Left = 5790
      Top = 735
      Width = 135
      Height = 225
      TabIndex = 74
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
      Caption = "Package Discount "
      Index = 66
      ForeColor = &HC00000&
      Left = 3345
      Top = 720
      Width = 1590
      Height = 225
      TabIndex = 73
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
    Begin Label lblLTDet
      ForeColor = &HC0&
      Left = 75
      Top = 3780
      Width = 5835
      Height = 240
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
      Caption = " Calculation Mode"
      Index = 65
      ForeColor = &H0&
      Left = 6540
      Top = 150
      Width = 1515
      Height = 240
      Visible = 0   'False
      TabIndex = 71
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
      Caption = "Total Package Amount"
      Index = 64
      ForeColor = &HC00000&
      Left = 5295
      Top = 3840
      Width = 1920
      Height = 225
      TabIndex = 70
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
      Caption = "-"
      Index = 63
      ForeColor = &H0&
      Left = 3300
      Top = 1035
      Width = 90
      Height = 240
      TabIndex = 69
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
      Caption = "Room Rate"
      Index = 62
      ForeColor = &HC00000&
      Left = 60
      Top = 1005
      Width = 930
      Height = 225
      TabIndex = 68
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
      Caption = "&Yes/&No"
      Index = 61
      ForeColor = &HC00000&
      Left = 2550
      Top = 720
      Width = 585
      Height = 225
      TabIndex = 67
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
      Caption = "Inc. in Room Rate"
      Index = 60
      ForeColor = &HC00000&
      Left = 60
      Top = 720
      Width = 1470
      Height = 225
      TabIndex = 66
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
      Caption = "Plan/Package"
      Index = 44
      ForeColor = &HC00000&
      Left = 60
      Top = 150
      Width = 1170
      Height = 225
      TabIndex = 65
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
      Caption = "Plan/Package Amount"
      Index = 35
      ForeColor = &HC00000&
      Left = 60
      Top = 435
      Width = 1875
      Height = 225
      TabIndex = 64
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
  Begin TextBox Txt
    Index = 50
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11205
    Top = 4125
    Width = 1125
    Height = 285
    Visible = 0   'False
    TabIndex = 89
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8130
    Width = 12270
    Height = 465
    Visible = 0   'False
    TabIndex = 88
  End
  Begin Frame Frame1
    Caption = "Frame1"
    Left = 14160
    Top = 6840
    Width = 1230
    Height = 1245
    Visible = 0   'False
    TabIndex = 84
  End
  Begin TextBox Txt
    Index = 30
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 6015
    Width = 4350
    Height = 285
    TabIndex = 41
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin TextBox Txt
    Index = 40
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7770
    Top = 5385
    Width = 1125
    Height = 285
    TabIndex = 37
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
    Index = 49
    BackColor = &HFFFFFF&
    Left = 13935
    Top = 2370
    Width = 480
    Height = 285
    Visible = 0   'False
    TabIndex = 49
    BorderStyle = 0 'None
    MaxLength = 2
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 15765
    Top = 4095
    Width = 525
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 16320
    Top = 4095
    Width = 510
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 14010
    Top = 4095
    Width = 1725
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 22
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 4125
    Width = 4350
    Height = 285
    TabIndex = 25
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 4755
    Width = 1140
    Height = 285
    TabIndex = 27
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
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8355
    Top = 4755
    Width = 540
    Height = 285
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 2
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
    Left = 7755
    Top = 4755
    Width = 570
    Height = 285
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 2
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
    Left = 4545
    Top = 5070
    Width = 1140
    Height = 285
    TabIndex = 32
    BorderStyle = 0 'None
    MaxLength = 1
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
    ForeColor = &HC00000&
    Left = 7755
    Top = 5070
    Width = 1140
    Height = 285
    TabIndex = 34
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
    Picture = "fdRoomChange.frx":442
    Left = 14145
    Top = 3315
    Width = 300
    Height = 285
    Visible = 0   'False
    TabIndex = 21
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 4440
    Width = 4350
    Height = 285
    TabIndex = 26
    BorderStyle = 0 'None
    MaxLength = 100
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
  Begin PictureBox Picture4
    Picture = "fdRoomChange.frx":790
    Left = 18300
    Top = 4080
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 20
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 38
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 5700
    Width = 510
    Height = 285
    Text = "No"
    TabIndex = 38
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
    Index = 39
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4545
    Top = 5385
    Width = 1140
    Height = 285
    TabIndex = 36
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
    Index = 41
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7770
    Top = 5700
    Width = 540
    Height = 285
    Text = "No"
    TabIndex = 40
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 13770
    Top = 1725
    Width = 480
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin PictureBox Picture2
    Picture = "fdRoomChange.frx":ADE
    Left = 15060
    Top = 330
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 8
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Frame Frmrate
    BackColor = &HFF0000&
    Left = 14190
    Top = 180
    Width = 4830
    Height = 795
    Visible = 0   'False
    TabIndex = 2
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 22
      BackColor = &HFFFFFF&
      Left = 1440
      Top = 120
      Width = 3285
      Height = 270
      TabIndex = 0
      BorderStyle = 0 'None
      MaxLength = 30
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
    Begin TextBox Txt
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1440
      Top = 420
      Width = 3285
      Height = 270
      TabIndex = 1
      BorderStyle = 0 'None
      MaxLength = 30
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
    Begin Label Lbl
      Caption = "Remarks"
      Index = 47
      ForeColor = &HFFFFFF&
      Left = 120
      Top = 45
      Width = 750
      Height = 240
      TabIndex = 6
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
      Caption = "Authorization"
      Index = 48
      ForeColor = &HFFFFFF&
      Left = 45
      Top = 405
      Width = 1125
      Height = 240
      TabIndex = 5
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
    Begin Label Label4
      Caption = "*"
      ForeColor = &HFF&
      Left = 930
      Top = 105
      Width = 120
      Height = 210
      TabIndex = 4
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
    Begin Label Label5
      Caption = "*"
      ForeColor = &HFF&
      Left = 1215
      Top = 405
      Width = 120
      Height = 210
      TabIndex = 3
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
  End
  Begin DataGrid DGPlanPkg
    Left = 165
    Top = 5370
    Width = 3285
    Height = 1650
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 9
  End
  Begin DataGrid DGNewRoomNo
    Left = 14805
    Top = 1815
    Width = 2805
    Height = 1875
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 10
  End
  Begin DataGrid DGRoomNo
    Left = 14700
    Top = 1410
    Width = 2685
    Height = 1695
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 11
  End
End

Attribute VB_Name = "fdRoomChange"

Private global_110 As Integer
Private MasterFormExit As Integer
Private global_108 As Integer
Private global_68 As Integer

Private Sub DGRoomType_UnknownEvent_9 'F61C20
  'Data Table: 52DB34
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F61B07: (False).Visible = 
  loc_F61B26: If (Me.RecordCount > 0) Then
  loc_F61B65:   Set var_B4 = Me.Txt
  loc_F61B6B:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F61B73:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F61BA6:   var_B0 = Me.Fields.Item("Name")
  loc_F61BC5:   Set var_B4 = Me.Txt
  loc_F61BCB:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F61BD3:   var_B8.Text = CStr(var_B0.Value)
  loc_F61BF5:   Call Txt_Validate(CInt(&HB))
  loc_F61BFA: End If
  loc_F61C05: Set var_A8 = Me.Txt
  loc_F61C0B: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(&HB), var_B0)
  loc_F61C13: var_B0.SetFocus
  loc_F61C1F: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '14C0068
  'Data Table: 52DB34
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_B4 As String
  Dim var_D8 As Variant
  Dim var_C4 As Variant
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  Dim var_E8 As Variant
  Dim var_114 As String
  Dim unk_52DB53 As Connection15
  Dim var_154 As Double
  Dim var_A0 As String
  loc_14BF356: Set var_88 = Me.Txt
  loc_14BF35C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_14BF36A: Proc_6_74_E23240(var_8C)
  loc_14BF379: var_92 = Index
  loc_14BF384: If (var_92 = CInt(0)) Then
  loc_14BF39E:   If (Me.RecordCount > 0) Then
  loc_14BF3AC:     Set var_8C = var_8C(var_92)
  loc_14BF3C4:     Proc_6_137_1192FDC(Me.DGRoomNo, global_88)
  loc_14BF3D2:   End If
  loc_14BF420:   Set var_88 = Me.Txt
  loc_14BF426:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14BF42E:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14BF454:   If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_14BF457:     Exit Sub
  loc_14BF458:   End If
  loc_14BF465:   Set var_88 = Me.Txt
  loc_14BF46B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BF473:   var_A0 = var_8C.Text
  loc_14BF485:   var_C4 = "RoomNo"
  loc_14BF4C0:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_14BF4C9:     Me.MoveFirst
  loc_14BF4EC:     Set var_88 = Me.Txt
  loc_14BF4F2:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_14BF4FA:     0 = var_8C.Text
  loc_14BF513:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_14BF528:   End If
  loc_14BF52B: Else
  loc_14BF533:   If (var_92 = CInt(&HB)) Then
  loc_14BF54D:     If (Me.RecordCount > 0) Then
  loc_14BF55B:       Set var_8C = ()
  loc_14BF573:       Proc_6_137_1192FDC((), global_92)
  loc_14BF581:     End If
  loc_14BF5CF:     Set var_88 = Me.Txt
  loc_14BF5D5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14BF5DD:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14BF603:     If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_14BF606:       Exit Sub
  loc_14BF607:     End If
  loc_14BF614:     Set var_88 = Me.Txt
  loc_14BF61A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BF622:     var_A0 = var_8C.Text
  loc_14BF634:     var_C4 = "Name"
  loc_14BF66F:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_14BF678:       Me.MoveFirst
  loc_14BF69B:       Set var_88 = Me.Txt
  loc_14BF6A1:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14BF6A9:       0 = var_8C.Text
  loc_14BF6C2:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_14BF6D7:     End If
  loc_14BF6DA:   Else
  loc_14BF6E2:     If (var_92 = CInt(&HC)) Then
  loc_14BF6FC:       If (Me.RecordCount > 0) Then
  loc_14BF70A:         Set var_8C = ()
  loc_14BF722:         Proc_6_137_1192FDC(Me.DGNewRoomNo, global_96)
  loc_14BF730:       End If
  loc_14BF77E:       Set var_88 = Me.Txt
  loc_14BF784:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14BF78C:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14BF7B2:       If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_14BF7B5:         Exit Sub
  loc_14BF7B6:       End If
  loc_14BF7C3:       Set var_88 = Me.Txt
  loc_14BF7C9:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BF7D1:       var_A0 = var_8C.Text
  loc_14BF7E3:       var_C4 = "RoomNo"
  loc_14BF81E:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_14BF827:         Me.MoveFirst
  loc_14BF84A:         Set var_88 = Me.Txt
  loc_14BF850:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_14BF858:         0 = var_8C.Text
  loc_14BF871:         Me.Find 1 & var_A0 & "'", var_C4, 
  loc_14BF886:       End If
  loc_14BF889:     Else
  loc_14BF891:       If (var_92 = CInt(&H18)) Then
  loc_14BF8AB:         If (Me.RecordCount > 0) Then
  loc_14BF8B9:           Set var_8C = ()
  loc_14BF8D1:           Proc_6_137_1192FDC(Me.DGPackage, global_100)
  loc_14BF8DF:         End If
  loc_14BF92D:         Set var_88 = Me.Txt
  loc_14BF933:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14BF93B:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_14BF953:         If (Index Or (var_A0 = vbNullString)) Then
  loc_14BF956:           Exit Sub
  loc_14BF957:         End If
  loc_14BF964:         Set var_88 = Me.Txt
  loc_14BF96A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BF972:         var_A0 = var_8C.Text
  loc_14BF984:         var_C4 = "Name"
  loc_14BF993:         var_90 = Me.Fields
  loc_14BF99B:         var_C8 = var_90.Item(var_C4)
  loc_14BF9BF:         If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_14BF9C8:           Me.MoveFirst
  loc_14BF9EB:           Set var_88 = Me.Txt
  loc_14BF9F1:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14BF9F9:           0 = var_8C.Text
  loc_14BFA12:           Me.Find 1 & var_A0 & "'", var_C4, var_8C
  loc_14BFA27:         End If
  loc_14BFA2A:       Else
  loc_14BFA32:         If (var_92 = CInt(&H1E)) Then
  loc_14BFA43:           Set var_88 = Me.Txt
  loc_14BFA49:           Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_8C)
  loc_14BFA51:           var_A0 = var_8C.Tag
  loc_14BFA59:           var_B0 = CVar(var_A0) 'String
  loc_14BFA7D:           If CBool(Trim(var_B0) <> vbNullString) Then
  loc_14BFA8B:             If (global_116 = "Room Category") Then
  loc_14BFAAC:               Set var_88 = Me.Txt
  loc_14BFAB2:               Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_8C, var_A0, "Select Code, Name,total,App_Date,RoomTaxStru From PlanMast where ROOMCAT='")
  loc_14BFABA:               var_134 = var_8C.Tag
  loc_14BFAC3:               var_B4 = -1 & var_A0
  loc_14BFAD8:               var_D8 = CVar(1 & var_A0 & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<=") 'String
  loc_14BFAE6:               Proc_6_7_F26918(var_B0, MemVar_1F950EC)
  loc_14BFB05:               unk_52DB53.Execute CStr(var_D8 & var_B0 & " Order by Name"), var_90, 
  loc_14BFB16:               Set global_100 = var_90
  loc_14BFB42:             Else
  loc_14BFB50:               Set var_88 = Me.Txt
  loc_14BFB56:               Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_14BFB7A:               If (CDbl(Val(var_8C.Text)) <> CDbl(0)) Then
  loc_14BFB8B:                 Set var_88 = Me.Txt
  loc_14BFB91:                 Call 0.Method_Txt_GotFocus0 (CInt(&HD), var_8C)
  loc_14BFBA6:                 var_154 = Val(var_8C.Text)
  loc_14BFBB7:                 Set var_90 = Me.Txt
  loc_14BFBBD:                 Call 0.Method_Txt_GotFocus0 (CInt(&HB), var_C8)
  loc_14BFBD5:                 Proc_6_7_F26918(var_B0, MemVar_1F950EC)
  loc_14BFBFA:                 var_114 = "Select Code, Name,total,App_Date,RoomTaxStru From PlanMast where ADULTS=" & CStr(var_154) & " AND ROOMCAT='"
  loc_14BFC16:                 var_D8 = CVar(var_114 & var_C8.Tag & "' AND (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<=") 'String
  loc_14BFC33:                 unk_52DB53.Execute CStr(var_D8 & var_B0 & " Order by Name"), var_134, -1
  loc_14BFC44:                 Set global_100 = var_148
  loc_14BFC7C:               Else
  loc_14BFC97:                 var_D8 = CVar("Select Code, Name,total,App_Date,RoomTaxStru From PlanMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<=") 'String
  loc_14BFCA5:                 Proc_6_7_F26918(var_B0, MemVar_1F950EC, var_D8, var_134)
  loc_14BFCAD:                 var_E8 = -1 & var_B0 
  loc_14BFCC4:                 unk_52DB53.Execute CStr(var_D8 & var_B0 & " Order by Name"), var_88, var_148
  loc_14BFCD5:                 Set global_100 = var_88
  loc_14BFCF4:               End If
  loc_14BFCF4:             End If
  loc_14BFCF7:           Else
  loc_14BFD0B:             var_A0 = "Select Code, Name,total,App_Date,RoomTaxStru From PlanMast where (LOGSITE_CODE='" & MemVar_1F95078
  loc_14BFD20:             Proc_6_7_F26918(var_B0, MemVar_1F950EC, CVar(var_A0 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<="), var_134)
  loc_14BFD28:             var_E8 = -1 & var_B0 
  loc_14BFD3F:             unk_52DB53.Execute CStr(CVar(var_A0 & "' or LOGSITE_CODE='HO') and ActiveYn='Yes' and App_date<=") & var_B0 & " Order by Name"), var_88, var_154
  loc_14BFD50:             Set global_100 = var_88
  loc_14BFD6F:           End If
  loc_14BFD78:           CVarUnk
  loc_14BFD7D:           VerifyVarObj
  loc_14BFD83:           Set var_88 = Me.DGPlanPkg
  loc_14BFD89:           LateIdStAd
  loc_14BFDA0:           CVarUnk
  loc_14BFDA5:           VerifyVarObj
  loc_14BFDB1:           LateIdStAd
  loc_14BFDD6:           If (Me.RecordCount > 0) Then
  loc_14BFDE4:             Set var_8C = global_100(Me.DGPackage)
  loc_14BFDFC:             Proc_6_137_1192FDC(Me.DGPlanPkg, global_100, Index)
  loc_14BFE0A:           End If
  loc_14BFE5E:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_14BFE66:           var_8C = var_8C.Text
  loc_14BFE7E:           If (Me.Txt Or (var_A0 = vbNullString)) Then
  loc_14BFE8E:             Set var_88 = Me.Txt
  loc_14BFE94:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BFE9C:             var_8C.Text = vbNullString
  loc_14BFEB5:             Set var_88 = Me.Txt
  loc_14BFEBB:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BFEC3:             var_8C.Tag = vbNullString
  loc_14BFECF:             Exit Sub
  loc_14BFED0:           End If
  loc_14BFEDD:           Set var_88 = Me.Txt
  loc_14BFEE3:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14BFEEB:           var_A0 = var_8C.Text
  loc_14BFEFD:           var_C4 = "Name"
  loc_14BFF14:           var_C8 = Me.Fields.Item(var_C4)
  loc_14BFF38:           If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_14BFF41:             Me.MoveFirst
  loc_14BFF64:             Set var_88 = Me.Txt
  loc_14BFF6A:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14BFF72:             0 = var_8C.Text
  loc_14BFF8B:             Me.Find 1 & var_A0 & "'", var_C4, global_100
  loc_14BFFA0:           End If
  loc_14BFFA3:         Else
  loc_14BFFAB:           If (var_92 = CInt(&H10)) Then
  loc_14BFFBC:             Set var_88 = Me.Txt
  loc_14BFFC2:             Call 0.Method_Txt_GotFocus0 (CInt(&H10), var_8C)
  loc_14BFFDA:             global_72 = Val(var_8C.Text)
  loc_14BFFE7:           End If
  loc_14BFFE7:         End If
  loc_14BFFE7:       End If
  loc_14BFFE7:     End If
  loc_14BFFE7:   End If
  loc_14BFFE7: End If
  loc_14BFFF6: Set var_88 = Me.Txt
  loc_14BFFFC: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14C0004: var_8C.SelStart = 0
  loc_14C001D: Set var_88 = Me.Txt
  loc_14C0023: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_14C003E: Set var_90 = Me.Txt
  loc_14C0044: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_14C004C: var_C8.SelLength = Len(var_8C.Text)
  loc_14C005F: Call Proc_59_42_F6EAAC(global_72)
  loc_14C0064: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '14DA0A4
  'Data Table: 52DB34
  Dim var_8E As Integer
  Dim var_94 As Variant
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_D0 As Variant
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_A0 As Variant
  Dim var_AC As Variant
  Dim var_F0 As Variant
  Dim var_B4 As DataGrid
  Dim var_100 As Variant
  Dim var_B8 As Variant
  Dim var_110 As Variant
  Dim var_120 As Variant
  Dim var_134 As String
  Dim unk_52DB53 As Connection15
  Dim var_158 As String
  Dim var_15C As String
  Dim var_160 As String
  Dim var_16C As String
  Dim var_8C As Recordset15
  loc_14D9307: var_8E = Shift
  loc_14D9314: If (CLng(Shift) = &H1B) Then
  loc_14D9317:   Call Proc_59_42_F6EAAC(var_8E)
  loc_14D9329:   Me.Global.Unload Me
  loc_14D9331:   Exit Sub
  loc_14D9332: End If
  loc_14D9335: var_96 = KeyCode
  loc_14D9340: If Not (var_96 = CInt(&H27)) Then
  loc_14D934B:   If (var_96 = CInt(&H28)) Then
  loc_14D934E:   End If
  loc_14D9358:   Set var_94 = Me.Txt
  loc_14D935E:   Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C)
  loc_14D9379:   Proc_6_41_FA1734(var_9C, Shift, 2)
  loc_14D9388: Else
  loc_14D9390:   If (var_96 = CInt(0)) Then
  loc_14D93B0:     Set var_AC = var_96(2)
  loc_14D93BB:     Set var_A0 = Nothing
  loc_14D93ED:     Proc_6_69_134A630(Me.DGRoomNo, Me.Txt, CInt(0), global_88, Shift)
  loc_14D945C:     If ((Me.RecordCount > 0) And ((((((CLng(var_8E) = &H28) Or (CLng(var_8E) = &H26)) Or (CLng(var_8E) = &H25)) Or (CLng(var_8E) = &H27)) Or (CLng(var_8E) = &H21)) Or (CLng(var_8E) = &H22))) Then
  loc_14D9463:       Set var_A0 = Me.DGRoomNo
  loc_14D9482:       Proc_6_138_106E830(var_A0, global_88, KeyCode, 1(0))
  loc_14D9490:     End If
  loc_14D9493:   Else
  loc_14D949B:     If (var_96 = CInt(&HB)) Then
  loc_14D94C6:       Set var_A0 = Nothing
  loc_14D94F8:       Proc_6_69_134A630((0)(var_A0), Me.Txt, CInt(&HB), global_92, Shift)
  loc_14D9567:       If ((Me.RecordCount > 0) And ((((((CLng(var_8E) = &H28) Or (CLng(var_8E) = &H26)) Or (CLng(var_8E) = &H25)) Or (CLng(var_8E) = &H27)) Or (CLng(var_8E) = &H21)) Or (CLng(var_8E) = &H22))) Then
  loc_14D956E:         Set var_A0 = 1(0)
  loc_14D9575:         Set var_9C = (0)(var_A0)
  loc_14D958D:         Proc_6_138_106E830(var_A0, global_92, KeyCode)
  loc_14D959B:       End If
  loc_14D959E:     Else
  loc_14D95A6:       If (var_96 = CInt(&HC)) Then
  loc_14D95BB:         Set var_BC = 0(var_9C)
  loc_14D95C6:         Set var_AC = var_BC
  loc_14D95D1:         Set var_A0 = Nothing
  loc_14D9603:         Proc_6_69_134A630(Me.DGNewRoomNo, Me.Txt, CInt(&HC), global_96, Shift)
  loc_14D9622:         var_C0 = Me.RecordCount
  loc_14D9672:         If ((var_C0 > 0) And ((((((CLng(var_8E) = &H28) Or (CLng(var_8E) = &H26)) Or (CLng(var_8E) = &H25)) Or (CLng(var_8E) = &H27)) Or (CLng(var_8E) = &H21)) Or (CLng(var_8E) = &H22))) Then
  loc_14D9679:           Set var_A0 = Me.DGNewRoomNo
  loc_14D9680:           Set var_9C = 1(0)
  loc_14D9698:           Proc_6_138_106E830(var_A0, global_96, KeyCode, var_9C)
  loc_14D96A6:         End If
  loc_14D96A9:       Else
  loc_14D96B1:         If (var_96 = CInt(&H10)) Then
  loc_14D96BE:           Set var_94 = Me.Txt
  loc_14D96C4:           Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A0)
  loc_14D96DF:           Proc_6_41_FA1734(var_9C, Shift, 6)
  loc_14D96EE:         Else
  loc_14D96F6:           If (var_96 = CInt(&H18)) Then
  loc_14D9711:             Set var_AC = Nothing
  loc_14D971C:             Set var_A0 = Nothing
  loc_14D974E:             Proc_6_69_134A630(Me.DGPackage, Me.Txt, CInt(&H18), global_100, Shift, 0, 1)
  loc_14D9765:           Else
  loc_14D976D:             If (var_96 = CInt(&H1E)) Then
  loc_14D9788:               Set var_AC = Nothing
  loc_14D97C5:               Proc_6_69_134A630(Me.DGPlanPkg, Me.Txt, CInt(&H1E), global_100, Shift, 0, 1, Nothing)
  loc_14D97D9:             End If
  loc_14D97D9:           End If
  loc_14D97D9:         End If
  loc_14D97D9:       End If
  loc_14D97D9:     End If
  loc_14D97D9:   End If
  loc_14D97D9: End If
  loc_14D97F3: Set var_9C = Me.DGPlanPkg
  loc_14D980D: Set var_A0 = Me.Frmrate
  loc_14D9823: Set var_AC = Me.DGRoomNo
  loc_14D9851: Set var_B8 = var_AC((((((CBool(Me.DGPackage.Visible) = 0) And (CBool(var_9C.Visible) = 0)) And (var_A0.Visible = 0)) And (CBool(var_AC.Visible) = 0)) And (CBool(Me.DGNewRoomNo.Visible) = 0)))
  loc_14D9857: var_110 = var_B8.Visible
  loc_14D9880: If (0 And (CBool(var_110) = 0)) Then
  loc_14D98A1:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&HC))) Then
  loc_14D98AF:     Set var_94 = Me.Txt
  loc_14D98B5:     Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C, var_A0, var_AC)
  loc_14D98D7:     Set var_A0 = Me.Txt
  loc_14D98DD:     Call 0.Method_Txt_KeyDown0 (CInt(&HC), var_AC, Trim(CVar(var_9C)), 0)
  loc_14D9908:     If CBool(2 <> Trim(CVar(var_AC))) Then
  loc_14D992B:       Set var_94 = Me.Txt
  loc_14D9931:       Call 0.Method_Txt_KeyDown0 (CInt(0), var_9C, "Select * from KOT Where Pending='Y' and RoomNo='", var_110, -1)
  loc_14D9940:       var_E0 = Trim(CVar(var_9C))
  loc_14D9948:       var_F0 = var_A0 & var_E0 
  loc_14D9951:       var_100 = var_F0 & "' and roomtype='RO' and VoidYN='N' and NCKOT<>'Y' and DelFlag<>'Y'" 
  loc_14D995F:       unk_52DB53.Execute CStr(var_100), var_C0, var_AC
  loc_14D9967:       0 = var_A0.RecordCount
  loc_14D998C:       If (var_C0 > 0) Then
  loc_14D999D:         var_120 = "There is some KOT Pending for this Room."
  loc_14D99A8:         MsgBox(var_120, &H10, var_E0, var_F0, var_100)
  loc_14D99B8:         Exit Sub
  loc_14D99B9:       End If
  loc_14D99B9:     End If
  loc_14D99B9:   End If
  loc_14D99D7:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_14D99E8:     Set var_94 = Me.Txt
  loc_14D99EE:     Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D99F6:     var_134 = var_9C.Text
  loc_14D9A0D:     If (var_134 = vbNullString) Then
  loc_14D9A1E:       Set var_94 = Me.Txt
  loc_14D9A24:       Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D9A2C:       var_9C.Tag = vbNullString
  loc_14D9A4F:       If (Me.RecordCount > 0) Then
  loc_14D9A58:         Me.MoveFirst
  loc_14D9A7C:         Set var_94 = Me.Txt
  loc_14D9A82:         Call 0.Method_Txt_KeyDown0 (CInt(&HB), var_9C, var_134, "Code='")
  loc_14D9A8A:         0 = var_9C.Tag
  loc_14D9A9A:         var_15C = 1 & var_134 & "'"
  loc_14D9AA3:         Me.Find var_15C, var_120, 
  loc_14D9AE2:         If Not(((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_14D9AFF:           var_9C = Me.Fields.Item("RoomTaxStru")
  loc_14D9B1E:           Set var_A0 = Me.Txt
  loc_14D9B24:           Call 0.Method_Txt_KeyDown0 (CInt(&H32), var_AC)
  loc_14D9B2C:           var_AC.Text = Proc_6_38_E69628(CVar(var_9C))
  loc_14D9B40:         End If
  loc_14D9B40:       End If
  loc_14D9B40:     End If
  loc_14D9B4E:     Set var_94 = Me.Txt
  loc_14D9B54:     Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D9B7D:     If ((var_9C.Tag <> vbNullString) And (global_110 = &HFF)) Then
  loc_14D9BA6:       Set var_9C = Me.Txt
  loc_14D9BAC:       Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_A0)
  loc_14D9BCE:       If ((Me.FrPackage.Visible = 0) And (var_A0.Text <> vbNullString)) Then
  loc_14D9BE1:         Me.FrPackage.ZOrder 0
  loc_14D9BF5:         Me.FrPackage.Visible = True
  loc_14D9C0B:         Set var_94 = Me.Txt
  loc_14D9C11:         Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D9C2C:         Set var_A0 = Me.Txt
  loc_14D9C32:         Call 0.Method_Txt_KeyDown0 (CInt(&H18), var_AC)
  loc_14D9C3A:         var_AC.Text = var_9C.Text
  loc_14D9C5B:         Set var_94 = Me.Txt
  loc_14D9C61:         Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D9C7C:         Set var_A0 = Me.Txt
  loc_14D9C82:         Call 0.Method_Txt_KeyDown0 (CInt(&H18), var_AC)
  loc_14D9C8A:         var_AC.Tag = var_9C.Tag
  loc_14D9CA8:         Set var_94 = Me.Txt
  loc_14D9CAE:         Call 0.Method_Txt_KeyDown0 (CInt(&H18))
  loc_14D9CB6:         var_9C.SetFocus
  loc_14D9CC2:       End If
  loc_14D9CC5:     Else
  loc_14D9CD3:       Set var_94 = Me.Txt
  loc_14D9CD9:       Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_9C)
  loc_14D9CE1:       var_134 = var_9C.Tag
  loc_14D9CF8:       If (var_134 <> vbNullString) Then
  loc_14D9D19:         Set var_94 = Me.Txt
  loc_14D9D1F:         Call 0.Method_Txt_KeyDown0 (CInt(8), var_9C, var_134, "Select * from Comp_PlanDet where companyCode='")
  loc_14D9D27:         var_D0 = var_9C.Tag
  loc_14D9D30:         var_158 = -1 & var_134
  loc_14D9D37:         var_160 = 1 & var_134 & "' and RoomCat='"
  loc_14D9D48:         Set var_A0 = Me.Txt
  loc_14D9D4E:         Call 0.Method_Txt_KeyDown0 (CInt(&HB), var_AC, var_15C)
  loc_14D9D56:         var_160 = var_AC.Tag
  loc_14D9D66:         var_16C = var_BC & var_15C & "' and PLanCode='"
  loc_14D9D77:         Set var_B4 = Me.Txt
  loc_14D9D7D:         Call 0.Method_Txt_KeyDown0 (CInt(&H1E), var_B8, var_168)
  loc_14D9D85:         var_16C = var_B8.Tag
  loc_14D9D9E:         unk_52DB53.Execute var_9C & var_168 & "'", , 
  loc_14D9DA9:         Set var_8C = var_BC
  loc_14D9DE9:         If (var_8C.RecordCount > 0) Then
  loc_14D9E28:           If (var_8C.Fields.Item("PLANAmt").Value > 0) Then
  loc_14D9E5A:             If (MsgBox("Apply Trarrif as per defined Condition?", &H24, var_E0, var_F0, var_100) = 6) Then
  loc_14D9E74:               var_9C = var_8C.Fields.Item("PLANAmt")
  loc_14D9E7C:               var_D0 = CVar(var_9C) 'Address
  loc_14D9E83:               Proc_6_39_E7D3A0(var_E0)
  loc_14D9EBA:               Set var_A0 = Me.Txt
  loc_14D9EC0:               Call 0.Method_Txt_KeyDown0 (CInt(&H10), var_AC, CStr(Format(var_E0, "0.00")))
  loc_14D9EC8:               var_AC.Text = 1
  loc_14D9EF2:               Set var_94 = Me.Txt
  loc_14D9EF8:               Call 0.Method_Txt_KeyDown0 (CInt(&H26), var_9C, "Yes")
  loc_14D9F00:               var_9C.Text = 1
  loc_14D9F18:               Call Txt_Validate(CInt(&H26))
  loc_14D9F1D:             End If
  loc_14D9F1D:           End If
  loc_14D9F1D:         End If
  loc_14D9F1D:       End If
  loc_14D9F1D:     End If
  loc_14D9F1D:   End If
  loc_14D9F32:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14D9F3B:     Proc_6_75_E5335C(Shift, arg_14)
  loc_14D9F40:   End If
  loc_14D9F4A:   If (CLng(Shift) = &H26) Then
  loc_14D9F53:     Proc_6_76_E533C8(Shift, arg_14)
  loc_14D9F58:   End If
  loc_14D9F58: End If
  loc_14D9F62: var_D0 = Me.DGPackage.Visible
  loc_14D9FB7: Set var_B4 = 0(((((CBool(var_D0) = 0) And (CBool(Me.DGPlanPkg.Visible) = 0)) And (CBool(Me.DGRoomNo.Visible) = 0)) And (CBool(Me.DGNewRoomNo.Visible) = 0)))
  loc_14D9FE4: If (var_D0 And (CBool(var_B4.Visible) = 0)) Then
  loc_14DA005:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H17))) Then
  loc_14DA00E:     Call Txt_Validate(KeyCode)
  loc_14DA019:     If (var_86 = &HFF) Then
  loc_14DA01C:       Exit Sub
  loc_14DA01D:     End If
  loc_14DA02D:     Me.Frmrate.ZOrder 1
  loc_14DA041:     Me.Frmrate.Visible = False
  loc_14DA055:     Me.Frame1.Enabled = True
  loc_14DA05D:     Exit Sub
  loc_14DA05E:   End If
  loc_14DA073:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_14DA07C:     Proc_6_75_E5335C(Shift, arg_14)
  loc_14DA081:   End If
  loc_14DA08B:   If (CLng(Shift) = &H26) Then
  loc_14DA094:     Proc_6_76_E533C8(Shift, arg_14)
  loc_14DA099:   End If
  loc_14DA099: End If
  loc_14DA09E: Set var_8C = Nothing
  loc_14DA0A1: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11A3068
  'Data Table: 52DB34
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_A0 As TextBox
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_11A2C4B: Proc_6_58_E06050(arg_10)
  loc_11A2C56: Proc_6_133_E7FB08(var_94)
  loc_11A2C5F: arg_10 = CInt(var_94)
  loc_11A2C68: var_96 = KeyAscii
  loc_11A2C73: If Not (var_96 = CInt(&H28)) Then
  loc_11A2C7E:   If (var_96 = CInt(&H27)) Then
  loc_11A2C81:   End If
  loc_11A2C8B:   Set var_9C = Me.Txt
  loc_11A2C91:   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, var_96)
  loc_11A2CAC:   Proc_6_42_129B55C(var_A0, arg_10, 2)
  loc_11A2CBB: Else
  loc_11A2CC3:   If Not (var_96 = CInt(&H26)) Then
  loc_11A2CCE:     If (var_96 = CInt(&H29)) Then
  loc_11A2CD1:     End If
  loc_11A2CFA:     If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11A2D0A:       Set var_9C = Me.Txt
  loc_11A2D10:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_11A2D18:       var_A0.Text = 2
  loc_11A2D27:     Else
  loc_11A2D50:       If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11A2D60:         Set var_9C = Me.Txt
  loc_11A2D66:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No")
  loc_11A2D6E:         var_A0.Text = arg_10
  loc_11A2D7A:       End If
  loc_11A2D7A:     End If
  loc_11A2D7C:     arg_10 = 0
  loc_11A2D82:   Else
  loc_11A2D8A:     If (var_96 = CInt(0)) Then
  loc_11A2DA9:       If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_11A2DD6:         Proc_6_89_1470B00(Me.Txt, KeyAscii, global_88, arg_10)
  loc_11A2DF0:         Set var_A0 = 0("RoomNo")
  loc_11A2E08:         Proc_6_138_106E830(Me.DGRoomNo, global_88, KeyAscii)
  loc_11A2E16:       End If
  loc_11A2E19:     Else
  loc_11A2E21:       If (var_96 = CInt(&HC)) Then
  loc_11A2E40:         If (CBool(Me.DGNewRoomNo.Visible) = &HFF) Then
  loc_11A2E6D:           Proc_6_89_1470B00(Me.Txt, KeyAscii, global_96, arg_10, "RoomNo")
  loc_11A2E87:           Set var_A0 = var_A0(0)
  loc_11A2E9F:           Proc_6_138_106E830(Me.DGNewRoomNo, global_96, KeyAscii)
  loc_11A2EAD:         End If
  loc_11A2EB0:       Else
  loc_11A2EB8:         If (var_96 = CInt(&HB)) Then
  loc_11A2ED7:           If (CBool(arg_10(var_A0).Visible) = &HFF) Then
  loc_11A2F04:             Proc_6_89_1470B00(Me.Txt, KeyAscii, global_92, arg_10)
  loc_11A2F1E:             Set var_A0 = (arg_10)
  loc_11A2F36:             Proc_6_138_106E830(0("Name"), global_92)
  loc_11A2F44:           End If
  loc_11A2F47:         Else
  loc_11A2F4F:           If (var_96 = CInt(&H18)) Then
  loc_11A2F6E:             If (CBool(Me.DGPackage.Visible) = &HFF) Then
  loc_11A2F75:               Set var_A0 = Me.Txt
  loc_11A2F80:               var_DC = "Name"
  loc_11A2F9B:               Proc_6_89_1470B00(var_A0, KeyAscii, global_100, arg_10)
  loc_11A2FAA:             End If
  loc_11A2FAD:           Else
  loc_11A2FB5:             If (var_96 = CInt(&H2B)) Then
  loc_11A2FE1:               If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11A2FF1:                 Set var_9C = Me.Txt
  loc_11A2FF7:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "No", var_DC)
  loc_11A2FFF:                 var_A0.Text = 0
  loc_11A300E:               Else
  loc_11A3037:                 If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11A3047:                   Set var_9C = Me.Txt
  loc_11A304D:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A0, "Yes")
  loc_11A3055:                   var_A0.Text = KeyAscii
  loc_11A3061:                 End If
  loc_11A3061:               End If
  loc_11A3063:               arg_10 = 0
  loc_11A3066:             End If
  loc_11A3066:           End If
  loc_11A3066:         End If
  loc_11A3066:       End If
  loc_11A3066:     End If
  loc_11A3066:   End If
  loc_11A3066: End If
  loc_11A3066: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '1153130
  'Data Table: 52DB34
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A0 As TextBox
  Dim var_108 As Double
  Dim var_B0 As TextBox
  Dim var_110 As Double
  Dim var_FC As TextBox
  loc_1152D9B: var_86 = KeyCode
  loc_1152DA6: If (var_86 = CInt(0)) Then
  loc_1152DC5:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_1152DD9:     var_A8 = "RoomNO"
  loc_1152E01:     Proc_6_68_12A2818(Me.DGRoomNo, Me.Txt, CInt(0), global_88)
  loc_1152E14:   End If
  loc_1152E17: Else
  loc_1152E1F:   If (var_86 = CInt(&HB)) Then
  loc_1152E3E:     If (CBool(var_A8(Shift).Visible) = &HFF) Then
  loc_1152E52:       var_A8 = "Name"
  loc_1152E7A:       Proc_6_68_12A2818((var_86), Me.Txt, CInt(&HB))
  loc_1152E8D:     End If
  loc_1152E90:   Else
  loc_1152E98:     If (var_86 = CInt(&HC)) Then
  loc_1152EB7:       If (CBool(Me.DGNewRoomNo.Visible) = &HFF) Then
  loc_1152ECB:         var_A8 = "RoomNO"
  loc_1152EF3:         Proc_6_68_12A2818(Me.DGNewRoomNo, Me.Txt, CInt(&HC), global_96, Shift)
  loc_1152F06:       End If
  loc_1152F09:     Else
  loc_1152F11:       If (var_86 = CInt(&H18)) Then
  loc_1152F30:         If (CBool(Me.DGPackage.Visible) = &HFF) Then
  loc_1152F3E:           Set var_B0 = Me.Txt
  loc_1152F44:           var_A8 = "Name"
  loc_1152F5D:           Set var_A0 = var_B0
  loc_1152F6C:           Proc_6_68_12A2818(Me.DGPackage, var_A0, CInt(&H18), global_100, Shift)
  loc_1152F7F:         End If
  loc_1152F82:       Else
  loc_1152F8A:         If (var_86 = CInt(&H2C)) Then
  loc_1152F9B:           Set var_8C = Me.Txt
  loc_1152FA1:           Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A0, var_A8, var_A8)
  loc_1152FA9:           var_A8 = var_A0.Text
  loc_1152FB6:           var_108 = Val(var_A8)
  loc_1152FC6:           Set var_AC = Me.Txt
  loc_1152FCC:           Call 0.Method_Txt_KeyUp0 (KeyCode, var_B0, var_B4, var_108)
  loc_1152FD4:           global_92 = var_B0.Text
  loc_1153022:           Set var_F8 = Me.Txt
  loc_1153028:           Call 0.Method_Txt_KeyUp0 (CInt(&H2D), var_FC, CStr(Format(CVar(((var_108 * Val(var_B4)) / CDbl(&H64))), "0.00")), 1)
  loc_1153030:           var_FC.Text = 1
  loc_1153059:         Else
  loc_1153061:           If (var_86 = CInt(&H2D)) Then
  loc_1153071:             Set var_8C = Me.Txt
  loc_1153077:             Call 0.Method_Txt_KeyUp0 (KeyCode, var_A0, var_A8)
  loc_115307F:             var_110 = var_A0.Text
  loc_115308C:             var_108 = Val(var_A8)
  loc_115309D:             Set var_AC = Me.Txt
  loc_11530A3:             Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_B0, var_B4)
  loc_11530F9:             Set var_F8 = Me.Txt
  loc_11530FF:             Call 0.Method_Txt_KeyUp0 (CInt(&H2C), var_FC, CStr(Format(CVar(((var_B0.Text * CDbl(&H64)) / Val(var_B4))), "0.00000")), 1)
  loc_1153107:             var_FC.Text = 1
  loc_115312D:           End If
  loc_115312D:         End If
  loc_115312D:       End If
  loc_115312D:     End If
  loc_115312D:   End If
  loc_115312D: End If
  loc_115312D: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E473B4
  'Data Table: 52DB34
  loc_E47392: Set var_88 = Me.Txt
  loc_E47398: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E473A6: Proc_6_73_E23294(var_8C)
  loc_E473B2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1AE9D80
  'Data Table: 52DB34
  Dim var_EA As Integer
  Dim var_F4 As Variant
  Dim arg_10 As Integer
  Dim var_108 As Variant
  Dim var_128 As Variant
  Dim var_168 As Double
  Dim var_140 As Variant
  Dim var_170 As Double
  Dim var_154 As Variant
  Dim var_160 As String
  Dim var_15C As Variant
  Dim var_F0 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_F8 As String
  Dim var_1A8 As Variant
  Dim var_1B0 As TextBox
  Dim var_138 As Variant
  Dim Me As Variant
  Dim var_13C As Variant
  Dim var_118 As Variant
  Dim var_144 As String
  Dim var_158 As Fields15
  Dim var_1E4 As TextBox
  Dim var_1B8 As String
  Dim var_1BC As String
  Dim var_1D4 As String
  Dim var_190 As Variant
  Dim var_1C0 As String
  Dim var_1C4 As String
  Dim unk_52DB53 As Connection15
  Dim var_1A4 As Variant
  Dim var_E8 As Recordset15
  Dim var_C0 As Double
  Dim var_C8 As Double
  Dim var_D0 As Double
  Dim var_D8 As Double
  Dim var_AE As String
  Dim var_B8 As Double
  Dim var_9C As String
  Dim var_DA As Integer
  Dim var_9A As String
  Dim var_1F8 As Variant
  Dim var_98 As Recordset15
  Dim var_298 As Variant
  Dim var_9E As Integer
  Dim var_E4 As Double
  loc_1AE5ABB: var_EA = Cancel
  loc_1AE5AC6: If (var_EA = CInt(&H19)) Then
  loc_1AE5AD6:   Set var_F0 = Me.Txt
  loc_1AE5ADC:   Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE5AE4:   var_F8 = var_F4.Text
  loc_1AE5B00:   If (CDbl(Val(var_F8)) = CDbl(0)) Then
  loc_1AE5B05:     arg_10 = &HFF
  loc_1AE5B08:     Exit Sub
  loc_1AE5B09:   End If
  loc_1AE5B12:   If (global_110 = &HFF) Then
  loc_1AE5B15:     Call Proc_59_43_E60D38(arg_10)
  loc_1AE5B1A:   End If
  loc_1AE5B1D: Else
  loc_1AE5B25:   If (var_EA = CInt(&H2B)) Then
  loc_1AE5B32:     Set var_F0 = Me.Txt
  loc_1AE5B38:     Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE5B61:     If (Trim(CVar(var_F4)) = vbNullString) Then
  loc_1AE5B66:       arg_10 = &HFF
  loc_1AE5B69:       Exit Sub
  loc_1AE5B6A:     End If
  loc_1AE5B78:     Set var_F0 = Me.Txt
  loc_1AE5B7E:     Call 0.Method_Txt_Validate0 (CInt(&H2B), var_F4, var_F8)
  loc_1AE5B86:     arg_10 = var_F4.Text
  loc_1AE5B9D:     If (var_F8 = "Yes") Then
  loc_1AE5BAE:       Set var_F0 = Me.Txt
  loc_1AE5BB4:       Call 0.Method_Txt_Validate0 (CInt(&H19), var_F4)
  loc_1AE5BC9:       var_168 = Val(var_F4.Text)
  loc_1AE5BDA:       Set var_13C = Me.Txt
  loc_1AE5BE0:       Call 0.Method_Txt_Validate0 (CInt(&H30), var_140, var_144)
  loc_1AE5BF5:       var_170 = Val(var_144)
  loc_1AE5C14:       var_108 = CVar((var_140.Text - var_170)) 'Double
  loc_1AE5C32:       Set var_158 = Me.Txt
  loc_1AE5C38:       Call 0.Method_Txt_Validate0 (CInt(&H2E), var_15C, CStr(Format(CVar(var_F4), "0.00")), 1)
  loc_1AE5C40:       var_15C.Tag = 1
  loc_1AE5C66:       Call Proc_59_48_1D7941C(var_170)
  loc_1AE5C6E:     Else
  loc_1AE5C7C:       Set var_F0 = Me.Txt
  loc_1AE5C82:       Call 0.Method_Txt_Validate0 (CInt(&H2E), var_F4)
  loc_1AE5CA4:       Set var_F0 = Me.Txt
  loc_1AE5CAA:       Call 0.Method_Txt_Validate0 (CInt(&H2E), var_F4)
  loc_1AE5CB2:       var_F4.Tag = vbNullString
  loc_1AE5CCB:       Me.lblLTDet.Caption = vbNullString
  loc_1AE5CD3:       Call Proc_59_48_1D7941C(var_EA)
  loc_1AE5CE6:       Set var_F0 = Me.Txt
  loc_1AE5CEC:       Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE5D07:       Set var_13C = Me.Txt
  loc_1AE5D0D:       Call 0.Method_Txt_Validate0 (CInt(&H2E), var_140)
  loc_1AE5D15:       var_140.Text = vbNullString
  loc_1AE5D33:       Set var_F0 = Me.Txt
  loc_1AE5D39:       Call 0.Method_Txt_Validate0 (CInt(&H10))
  loc_1AE5D3E:       var_154 = "Net Room Rate is :"
  loc_1AE5D8B:       Set var_13C = Me.Lbl
  loc_1AE5D91:       Call 0.Method_Txt_Validate0 (&H3F, var_140, CStr(1 & Trim(CVar(CStr(Format(CVar(var_F4), "0.00"))))))
  loc_1AE5D99:       var_140.Caption = 1
  loc_1AE5DBB:     End If
  loc_1AE5DBE:   Else
  loc_1AE5DC6:     If Not (var_EA = CInt(&H26)) Then
  loc_1AE5DD1:       If (var_EA = CInt(&H29)) Then
  loc_1AE5DD4:       End If
  loc_1AE5DDE:       Set var_F0 = Me.Txt
  loc_1AE5DE4:       Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE5E1F:       If (Ucase(Left(CVar(var_F4), 1)) = "Y") Then
  loc_1AE5E2F:         Set var_F0 = Me.Txt
  loc_1AE5E35:         Call 0.Method_Txt_Validate0 (Cancel, var_F4, "Yes")
  loc_1AE5E3D:         var_F4.Text = var_154
  loc_1AE5E4C:       Else
  loc_1AE5E59:         Set var_F0 = Me.Txt
  loc_1AE5E5F:         Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE5E67:         var_F4.Text = "No"
  loc_1AE5E73:       End If
  loc_1AE5E7E:       Set var_F0 = Me.Txt
  loc_1AE5E84:       Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE5E97:       Set var_13C = Me.Txt
  loc_1AE5E9D:       Call 0.Method_Txt_Validate0 (CInt(&H26), var_140)
  loc_1AE5EB8:       Set var_158 = Me.Txt
  loc_1AE5EBE:       Call 0.Method_Txt_Validate0 (CInt(&H29), var_15C)
  loc_1AE5ED9:       Set var_1A4 = Me.Txt
  loc_1AE5EDF:       Call 0.Method_Txt_Validate0 (CInt(&H32), var_1A8)
  loc_1AE5EFA:       Set var_1AC = Me.Txt
  loc_1AE5F00:       Call 0.Method_Txt_Validate0 (CInt(&H33), var_1B0)
  loc_1AE5F08:       var_F8 = var_1B0.Text
  loc_1AE5F15:       var_170 = Val(var_F8)
  loc_1AE5F3D:       Proc_96_76_183EFE0(var_F4, var_140.Text, var_15C.Text, var_1A8.Text)
  loc_1AE5F67:     Else
  loc_1AE5F6F:       If (var_EA = CInt(0)) Then
  loc_1AE5F80:         Set var_F0 = Me.Txt
  loc_1AE5F86:         Call 0.Method_Txt_Validate0 (CInt(0), var_F4, var_F8)
  loc_1AE5F8E:         var_170 = var_F4.Text
  loc_1AE5FA5:         If (var_F8 = vbNullString) Then
  loc_1AE5FAA:           arg_10 = &HFF
  loc_1AE5FAD:         End If
  loc_1AE5FCB:         Set var_F0 = Me.Txt
  loc_1AE5FD1:         Call 0.Method_Txt_Validate0 (CInt(0), var_F4, "Roomno='", 0, 1)
  loc_1AE5FF5:         var_F8 = CStr(var_1D4 & Trim(CVar(var_F4)) & "'")
  loc_1AE5FFF:         Me.Find var_F8, arg_10, var_170
  loc_1AE6063:         Set var_F0 = Me.Txt
  loc_1AE6069:         Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE6071:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_F4.Text
  loc_1AE6089:         If (var_F4 Or (var_F8 = vbNullString)) Then
  loc_1AE6099:           Set var_F0 = Me.Txt
  loc_1AE609F:           Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE60A7:           var_F4.Tag = vbNullString
  loc_1AE60B3:           Exit Sub
  loc_1AE60B4:         End If
  loc_1AE60EF:         Set var_13C = Me.Txt
  loc_1AE60F5:         Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE60FD:         var_140.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_1AE614F:         Set var_13C = Me.Txt
  loc_1AE6155:         Call 0.Method_Txt_Validate0 (CInt(&HC), var_140)
  loc_1AE615D:         var_140.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_1AE61AB:         (Proc_6_38_E69628(CVar(Me.Fields.Item("BookingDocId")))).Caption = 
  loc_1AE61F5:         (Proc_6_38_E69628(CVar(Me.Fields.Item("CheckInDocId")))).Caption = 
  loc_1AE6242:         Set var_13C = Me.Txt
  loc_1AE6248:         Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE6250:         var_140.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_1AE629F:         Set var_13C = Me.Txt
  loc_1AE62A5:         Call 0.Method_Txt_Validate0 (CInt(&HA), var_140)
  loc_1AE62AD:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_1AE62DB:         var_F4 = Me.Fields.Item("ChkInDate")
  loc_1AE62FA:         Set var_13C = Me.Txt
  loc_1AE6300:         Call 0.Method_Txt_Validate0 (CInt(1), var_140)
  loc_1AE6308:         var_140.Text = Proc_6_38_E69628(CVar(var_F4))
  loc_1AE6327:         Set var_F0 = Me.Txt
  loc_1AE632D:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1AE6367:         1(CStr(Format(CVar(var_F4), "DDDD"))).Caption = 1
  loc_1AE63D2:         Set var_13C = Me.Txt
  loc_1AE63D8:         Call 0.Method_Txt_Validate0 (CInt(2), var_140)
  loc_1AE63E0:         var_140.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_1AE6418:         var_F4 = Me.Fields.Item("ChkInTime")
  loc_1AE6451:         Set var_13C = Me.Txt
  loc_1AE6457:         Call 0.Method_Txt_Validate0 (CInt(3), var_140)
  loc_1AE645F:         var_140.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_F4))), 2))
  loc_1AE64AD:         Set var_F0 = Me.Txt
  loc_1AE64B3:         Call 0.Method_Txt_Validate0 (CInt(4), var_F4, Format$(MemVar_1F950EC, "dd/MMM/yyyy"))
  loc_1AE64BB:         var_F4.Text = 1
  loc_1AE6525:         Set var_F0 = Me.Txt
  loc_1AE652B:         Call 0.Method_Txt_Validate0 (CInt(5), var_F4, CStr(Left(CVar(Proc_6_38_E69628(Format(Time, "hh:mm"), 1, 1)), 2)))
  loc_1AE6533:         var_F4.Text = 1
  loc_1AE656A:         var_118 = "hh:mm"
  loc_1AE65AB:         Set var_F0 = Me.Txt
  loc_1AE65B1:         Call 0.Method_Txt_Validate0 (CInt(6), var_F4, CStr(Right(CVar(Proc_6_38_E69628(Format(Time, var_118), 1)), 2)))
  loc_1AE65B9:         var_F4.Text = 1
  loc_1AE65F3:         var_F4 = Me.Fields.Item("NoDays")
  loc_1AE6602:         Proc_6_39_E7D3A0(var_118, CVar(var_F4))
  loc_1AE6619:         Set var_13C = Me.Txt
  loc_1AE661F:         Call 0.Method_Txt_Validate0 (CInt(&H31), var_140)
  loc_1AE6627:         var_140.Text = CStr(var_118)
  loc_1AE664A:         Set var_F0 = Me.Txt
  loc_1AE6650:         Call 0.Method_Txt_Validate0 (CInt(4), var_F4)
  loc_1AE6664:         var_118 = "DDDD"
  loc_1AE668A:         1(CStr(Format(CVar(var_F4), var_118))).Caption = 1
  loc_1AE66DE:         Set var_13C = Me.Txt
  loc_1AE66E4:         Call 0.Method_Txt_Validate0 (CInt(7), var_140)
  loc_1AE66EC:         var_140.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_1AE673E:         Set var_13C = Me.Txt
  loc_1AE6744:         Call 0.Method_Txt_Validate0 (CInt(7), var_140)
  loc_1AE674C:         var_140.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_1AE679B:         Set var_13C = Me.Txt
  loc_1AE67A1:         Call 0.Method_Txt_Validate0 (CInt(8), var_140)
  loc_1AE67A9:         var_140.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_1AE67F6:         Set var_13C = Me.Txt
  loc_1AE67FC:         Call 0.Method_Txt_Validate0 (CInt(8), var_140)
  loc_1AE6804:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_1AE6851:         Set var_13C = Me.Txt
  loc_1AE6857:         Call 0.Method_Txt_Validate0 (CInt(&H15), var_140)
  loc_1AE685F:         var_140.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_1AE68AC:         Set var_13C = Me.Txt
  loc_1AE68B2:         Call 0.Method_Txt_Validate0 (CInt(&H15), var_140)
  loc_1AE68BA:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_1AE68E8:         var_F4 = Me.Fields.Item("OldAdult")
  loc_1AE68F7:         Proc_6_39_E7D3A0(var_118, CVar(var_F4))
  loc_1AE690E:         Set var_13C = Me.Txt
  loc_1AE6914:         Call 0.Method_Txt_Validate0 (CInt(&H13), var_140)
  loc_1AE691C:         var_140.Text = CStr(var_118)
  loc_1AE6942:         Set var_F0 = Me.Txt
  loc_1AE6948:         Call 0.Method_Txt_Validate0 (CInt(&H13), var_F4)
  loc_1AE696D:         Set var_13C = Me.Txt
  loc_1AE6973:         Call 0.Method_Txt_Validate0 (CInt(&HD), var_140)
  loc_1AE697B:         var_140.Text = CStr(Val(var_F4.Text))
  loc_1AE69AC:         var_F4 = Me.Fields.Item("OldChild")
  loc_1AE69BB:         Proc_6_39_E7D3A0(var_118, CVar(var_F4))
  loc_1AE69D2:         Set var_13C = Me.Txt
  loc_1AE69D8:         Call 0.Method_Txt_Validate0 (CInt(&H14), var_140)
  loc_1AE69E0:         var_140.Text = CStr(var_118)
  loc_1AE6A06:         Set var_F0 = Me.Txt
  loc_1AE6A0C:         Call 0.Method_Txt_Validate0 (CInt(&H14), var_F4)
  loc_1AE6A31:         Set var_13C = Me.Txt
  loc_1AE6A37:         Call 0.Method_Txt_Validate0 (CInt(&HE), var_140)
  loc_1AE6A3F:         var_140.Text = CStr(Val(var_F4.Text))
  loc_1AE6A8F:         Set var_13C = Me.Txt
  loc_1AE6A95:         Call 0.Method_Txt_Validate0 (CInt(&H12), var_140)
  loc_1AE6A9D:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_1AE6ACB:         var_F4 = Me.Fields.Item("RoomRate")
  loc_1AE6ADA:         Proc_6_39_E7D3A0(var_118, CVar(var_F4))
  loc_1AE6AF1:         Set var_13C = Me.Txt
  loc_1AE6AF7:         Call 0.Method_Txt_Validate0 (CInt(&H11), var_140)
  loc_1AE6AFF:         var_140.Text = CStr(var_118)
  loc_1AE6B22:         Set var_F0 = Me.Txt
  loc_1AE6B28:         Call 0.Method_Txt_Validate0 (CInt(&H12), var_F4)
  loc_1AE6B47:         Set var_13C = Me.Txt
  loc_1AE6B4D:         Call 0.Method_Txt_Validate0 (CInt(&HF), var_140)
  loc_1AE6B55:         var_140.Text = Proc_6_38_E69628(CVar(var_F4))
  loc_1AE6B77:         Set var_F0 = Me.Txt
  loc_1AE6B7D:         Call 0.Method_Txt_Validate0 (CInt(&H15), var_F4)
  loc_1AE6BA3:         Set var_13C = Me.Txt
  loc_1AE6BA9:         Call 0.Method_Txt_Validate0 (CInt(&HB), var_140)
  loc_1AE6BB1:         var_140.Tag = Proc_6_38_E69628(CVar(var_F4.Tag))
  loc_1AE6BD2:         Set var_F0 = Me.Txt
  loc_1AE6BD8:         Call 0.Method_Txt_Validate0 (CInt(&H15), var_F4)
  loc_1AE6BF7:         Set var_13C = Me.Txt
  loc_1AE6BFD:         Call 0.Method_Txt_Validate0 (CInt(&HB), var_140)
  loc_1AE6C05:         var_140.Text = Proc_6_38_E69628(CVar(var_F4))
  loc_1AE6C52:         Set var_13C = Me.Txt
  loc_1AE6C58:         Call 0.Method_Txt_Validate0 (CInt(&H32), var_140)
  loc_1AE6C60:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomTaxStru")))
  loc_1AE6CAD:         Set var_13C = Me.Txt
  loc_1AE6CB3:         Call 0.Method_Txt_Validate0 (CInt(&H26), var_140)
  loc_1AE6CBB:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RRTaxInc")))
  loc_1AE6D08:         Set var_13C = Me.Txt
  loc_1AE6D0E:         Call 0.Method_Txt_Validate0 (CInt(&H29), var_140)
  loc_1AE6D44:         var_F4 = Me.Fields.Item("RoomTarrif")
  loc_1AE6D53:         Proc_6_39_E7D3A0(var_118, CVar(var_F4))
  loc_1AE6D6D:         If (var_118 = 0) Then
  loc_1AE6D7B:           Set var_F0 = Me.Txt
  loc_1AE6D81:           Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE6D94:           Set var_13C = Me.Txt
  loc_1AE6D9A:           Call 0.Method_Txt_Validate0 (CInt(&H26), var_140)
  loc_1AE6DC1:           var_15C = Me.Fields.Item("RoomRate")
  loc_1AE6DD0:           Proc_6_39_E7D3A0(var_118, CVar(var_15C))
  loc_1AE6DE3:           Set var_1A4 = Me.Txt
  loc_1AE6DE9:           Call 0.Method_Txt_Validate0 (CInt(&H32), var_1A8)
  loc_1AE6DF1:           var_160 = var_1A8.Text
  loc_1AE6E15:           Proc_96_77_1447818(var_F4, Proc_6_38_E69628(CVar(Me.Fields.Item("RRServiceChrg"))), CSng(var_118))
  loc_1AE6E3C:         Else
  loc_1AE6E65:           Proc_6_39_E7D3A0(var_118, CVar(Me.Fields.Item("RoomTarrif")))
  loc_1AE6E7C:           Set var_13C = Me.Txt
  loc_1AE6E82:           Call 0.Method_Txt_Validate0 (CInt(&H10), var_140, CStr(var_118))
  loc_1AE6E8A:           var_140.Text = var_160
  loc_1AE6ECB:           Proc_6_39_E7D3A0(var_118, CVar(Me.Fields.Item("RoomRate")))
  loc_1AE6EE2:           Set var_13C = Me.Txt
  loc_1AE6EE8:           Call 0.Method_Txt_Validate0 (CInt(&H10), var_140)
  loc_1AE6EF0:           var_140.Tag = CStr(var_118)
  loc_1AE6F08:         End If
  loc_1AE6F22:         var_F4 = Me.Fields.Item("RoomTarrif")
  loc_1AE6F31:         Proc_6_39_E7D3A0(var_118, CVar(var_F4))
  loc_1AE6F4B:         If (var_118 = 0) Then
  loc_1AE6F5C:           Set var_F0 = Me.Txt
  loc_1AE6F62:           Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4)
  loc_1AE6F7D:           Set var_13C = Me.Txt
  loc_1AE6F83:           Call 0.Method_Txt_Validate0 (CInt(0), var_140)
  loc_1AE6F9E:           Set var_158 = Me.Txt
  loc_1AE6FA4:           Call 0.Method_Txt_Validate0 (CInt(1), var_15C)
  loc_1AE6FBF:           Set var_1A4 = Me.Txt
  loc_1AE6FC5:           Call 0.Method_Txt_Validate0 (CInt(&HD), var_1A8)
  loc_1AE6FDA:           var_170 = Val(var_1A8.Text)
  loc_1AE6FEB:           Set var_1AC = Me.Txt
  loc_1AE6FF1:           Call 0.Method_Txt_Validate0 (CInt(&HF), var_1B0, var_1C4)
  loc_1AE7023:           Proc_96_78_1390FE0(var_F4.Tag, var_140.Text, CDate(var_15C.Text))
  loc_1AE7038:           Set var_1B4 = Me.Txt
  loc_1AE703E:           Call 0.Method_Txt_Validate0 (CInt(&H33), var_1E4, CStr(CInt(var_1B0.Text)))
  loc_1AE7046:           var_1E4.Text = var_1C4
  loc_1AE7078:         Else
  loc_1AE70A1:           Proc_6_39_E7D3A0(var_118, CVar(Me.Fields.Item("RackRate")))
  loc_1AE70B8:           Set var_13C = Me.Txt
  loc_1AE70BE:           Call 0.Method_Txt_Validate0 (CInt(&H33), var_140)
  loc_1AE70C6:           var_140.Text = CStr(var_118)
  loc_1AE70DE:         End If
  loc_1AE7117:         Set var_13C = Me.Txt
  loc_1AE711D:         Call 0.Method_Txt_Validate0 (CInt(&H1E), var_140)
  loc_1AE7125:         var_140.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("PlanCode")))
  loc_1AE7172:         Set var_13C = Me.Txt
  loc_1AE7178:         Call 0.Method_Txt_Validate0 (CInt(&H1E), var_140)
  loc_1AE7180:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("PlanName")))
  loc_1AE71D8:         Set var_13C = Me.Txt
  loc_1AE71DE:         Call 0.Method_Txt_Validate0 (CInt(&H1A), var_140)
  loc_1AE71E6:         var_140.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_1AE7242:         Set var_13C = Me.Txt
  loc_1AE7248:         Call 0.Method_Txt_Validate0 (CInt(&H1B), var_140)
  loc_1AE7250:         var_140.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_1AE7282:         var_F4 = Me.Fields.Item("CityName")
  loc_1AE72C2:         var_140 = Me.Fields.Item("StateName")
  loc_1AE72DE:         var_160 = Proc_6_38_E69628(Trim(CVar(var_140)), Proc_6_38_E69628(Trim(CVar(var_F4))) & ",")
  loc_1AE72EF:         var_1D4 = "CountryName"
  loc_1AE72FE:         var_158 = Me.Fields
  loc_1AE7315:         var_1A0 = Trim(CVar(var_158.Item(var_1D4)))
  loc_1AE7334:         Set var_1A4 = Me.Txt
  loc_1AE733A:         Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1A8)
  loc_1AE7342:         var_1A8.Text = var_F4 & var_160 & "," & Proc_6_38_E69628(var_1A0)
  loc_1AE73AD:         Set var_13C = Me.Txt
  loc_1AE73B3:         Call 0.Method_Txt_Validate0 (CInt(&H23), var_140)
  loc_1AE73BB:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_1AE7422:         Set var_13C = Me.Txt
  loc_1AE7428:         Call 0.Method_Txt_Validate0 (CInt(&H24), var_140)
  loc_1AE7430:         var_140.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_1AE7484:         var_118 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_1AE74A1:         Set var_13C = Me.Txt
  loc_1AE74A7:         Call 0.Method_Txt_Validate0 (CInt(&H25), var_140)
  loc_1AE74AF:         var_140.Text = CStr(Right(var_118, 2))
  loc_1AE7506:         Set var_13C = Me.Txt
  loc_1AE750C:         Call 0.Method_Txt_Validate0 (CInt(&H20), var_140)
  loc_1AE7514:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_1AE7561:         Set var_13C = Me.Txt
  loc_1AE7567:         Call 0.Method_Txt_Validate0 (CInt(&H21), var_140)
  loc_1AE756F:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_1AE75BC:         Set var_13C = Me.Txt
  loc_1AE75C2:         Call 0.Method_Txt_Validate0 (CInt(&H22), var_140)
  loc_1AE75CA:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments3")))
  loc_1AE7617:         Set var_13C = Me.Txt
  loc_1AE761D:         Call 0.Method_Txt_Validate0 (CInt(9), var_140)
  loc_1AE7625:         var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_1AE765B:         var_108 = CVar(Me.Fields.Item("PlanDisc")) 'Address
  loc_1AE7662:         Proc_6_39_E7D3A0(var_118)
  loc_1AE7699:         Set var_13C = Me.Txt
  loc_1AE769F:         Call 0.Method_Txt_Validate0 (CInt(&H2C), var_140, CStr(Format(var_118, "0.00000")))
  loc_1AE76A7:         var_140.Text = 1
  loc_1AE76EC:         Proc_6_39_E7D3A0(var_118, CVar(Me.Fields.Item("PlanDiscAmt")))
  loc_1AE770C:         var_180 = Format(var_118, "0.00")
  loc_1AE7723:         Set var_13C = Me.Txt
  loc_1AE7729:         Call 0.Method_Txt_Validate0 (CInt(&H2D), var_140, CStr(var_180), 1)
  loc_1AE7731:         var_140.Text = 1
  loc_1AE7785:         Me.LblDiscAppOn.Caption = Proc_6_38_E69628(CVar(Me.Fields.Item("PlanDiscAppon")), 1)
  loc_1AE77C0:         Proc_6_39_E7D3A0(var_118, CVar(Me.Fields.Item("RoDisc")))
  loc_1AE77D7:         Set var_13C = Me.Txt
  loc_1AE77DD:         Call 0.Method_Txt_Validate0 (CInt(&H27), var_140)
  loc_1AE77E5:         var_140.Text = CStr(var_118)
  loc_1AE7817:         var_F4 = Me.Fields.Item("RSDisc")
  loc_1AE7826:         Proc_6_39_E7D3A0(var_118, CVar(var_F4))
  loc_1AE782E:         var_F8 = CStr(var_118)
  loc_1AE783D:         Set var_13C = Me.Txt
  loc_1AE7843:         Call 0.Method_Txt_Validate0 (CInt(&H28), var_140)
  loc_1AE7881:         Set var_F0 = Me.Txt
  loc_1AE7887:         Call 0.Method_Txt_Validate0 (CInt(0), var_F4, var_F8, "Select Code as SearchCode,Code as RoomNo, Name as Quot from roommast where type='RO' and Code='")
  loc_1AE788F:         var_108 = var_F4.Text
  loc_1AE7898:         var_144 = -1 & var_F8
  loc_1AE789F:         var_1B8 = Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime"))) & "' and Code not in (Select RoomNO from roomOcc where ChkOutDate is NULL and RoomNO <>'"
  loc_1AE78B0:         Set var_13C = Me.Txt
  loc_1AE78B6:         Call 0.Method_Txt_Validate0 (CInt(0), var_140, var_160)
  loc_1AE78BE:         var_1B8 = var_F8
  loc_1AE78D7:         unk_52DB53.Execute var_158 & var_160 & "')", var_108, 
  loc_1AE7916:         CVarUnk
  loc_1AE791B:         VerifyVarObj
  loc_1AE7921:         Set var_F0 = Me.DGNewRoomNo
  loc_1AE7927:         LateIdStAd
  loc_1AE7959:         Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4, var_F8, "Select Name from PlanMast where Code='", var_108)
  loc_1AE7961:         -1 = var_F4.Tag
  loc_1AE796A:         var_144 = var_13C & var_F8
  loc_1AE797A:         unk_52DB53.Execute var_144 & "'", Me.Txt, var_158
  loc_1AE79B1:         If (var_13C.RecordCount > 0) Then
  loc_1AE79EC:           Set var_F0 = Me.Txt
  loc_1AE79F2:           Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4, var_144, "Select Name from PlanMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND Code='", var_108)
  loc_1AE79FA:           -1 = var_F4.Tag
  loc_1AE7A13:           unk_52DB53.Execute var_13C & var_144 & "'", var_140, 0
  loc_1AE7A23:            = var_140.Item()
  loc_1AE7A2B:           var_118 = CVar(var_13C.Fields) 'Address
  loc_1AE7A42:           Set var_15C = Me.Txt
  loc_1AE7A48:           Call 0.Method_Txt_Validate0 (CInt(&H1E), var_1A4)
  loc_1AE7A50:           var_1A4.Text = Proc_6_38_E69628(var_118)
  loc_1AE7A88:           Set var_F0 = Me.Txt
  loc_1AE7A8E:           Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4)
  loc_1AE7AB7:           If ((var_F4.Tag <> vbNullString) And (global_110 = &HFF)) Then
  loc_1AE7AC8:             Set var_F0 = Me.Txt
  loc_1AE7ACE:             Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4)
  loc_1AE7AE9:             Set var_13C = Me.Txt
  loc_1AE7AEF:             Call 0.Method_Txt_Validate0 (CInt(&H18), var_140)
  loc_1AE7AF7:             var_140.Tag = var_F4.Tag
  loc_1AE7B0A:             Call Proc_59_50_14EBEFC()
  loc_1AE7B1D:             Set var_F0 = Me.Txt
  loc_1AE7B23:             Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE7B2B:             var_F8 = var_F4.Tag
  loc_1AE7B33:             var_108 = CVar(var_F8) 'String
  loc_1AE7B39:             Proc_6_39_E7D3A0(var_118)
  loc_1AE7B50:             Set var_13C = Me.Txt
  loc_1AE7B56:             Call 0.Method_Txt_Validate0 (CInt(&H2E), var_140)
  loc_1AE7B5E:             var_140.Text = CStr(var_118)
  loc_1AE7B7B:           Else
  loc_1AE7B89:             Set var_F0 = Me.Txt
  loc_1AE7B8F:             Call 0.Method_Txt_Validate0 (CInt(&H18), var_F4)
  loc_1AE7B97:             var_F4.Tag = vbNullString
  loc_1AE7BB6:             Me.FGrid3.Row = 1
  loc_1AE7BBE:             var_128 = vbNullString
  loc_1AE7BC8:             Set var_F0 = Me.FGrid3
  loc_1AE7BD9:             var_128 = 1
  loc_1AE7BEC:             Me.FGrid3.FixedRows = var_128
  loc_1AE7BF4:           End If
  loc_1AE7BF4:         End If
  loc_1AE7BF7:       Else
  loc_1AE7BFF:         If (var_EA = CInt(4)) Then
  loc_1AE7C0F:           Set var_F0 = Me.Txt
  loc_1AE7C15:           Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE7C1D:           FGrid3.DispID_10000 = var_F4.Text
  loc_1AE7C3B:           Set var_13C = Me.Txt
  loc_1AE7C41:           Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE7C6B:           Set var_F0 = Me.Txt
  loc_1AE7C71:           Call 0.Method_Txt_Validate0 (CInt(4), var_F4)
  loc_1AE7C85:           var_118 = "DDDD"
  loc_1AE7C95:           var_138 = Format(CVar(var_F4), var_118)
  loc_1AE7CAB:           1(CStr(var_138)).Caption = 1
  loc_1AE7CD1:           Set var_13C = Me.Txt
  loc_1AE7CD7:           Call 0.Method_Txt_Validate0 (CInt(4), var_140)
  loc_1AE7CDF:           var_144 = Proc_6_34_14EEAAC(CStr(var_138), "DDDD")
  loc_1AE7CF2:           Set var_F0 = Me.Txt
  loc_1AE7CF8:           Call 0.Method_Txt_Validate0 (CInt(1), var_F4)
  loc_1AE7D00:           var_F8 = var_F4.Text
  loc_1AE7D22:           If (CDate(var_F8) > CDate(var_144)) Then
  loc_1AE7D3E:             MsgBox("Departure Date Must Be Greater than Check in Date", &H40, var_118, var_138, var_180)
  loc_1AE7D50:             arg_10 = &HFF
  loc_1AE7D53:           End If
  loc_1AE7D56:         Else
  loc_1AE7D5E:           If Not (var_EA = CInt(5)) Then
  loc_1AE7D69:             If (var_EA = CInt(2)) Then
  loc_1AE7D6C:             End If
  loc_1AE7D79:             Set var_F0 = Me.Txt
  loc_1AE7D7F:             Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE7D87:             arg_10 = var_F4.Text
  loc_1AE7DA3:             If (CDbl(Val(var_F8)) > CDbl(&H17)) Then
  loc_1AE7DBF:               MsgBox("Invalid Time", &H40, var_118, var_138, var_180)
  loc_1AE7DD1:               arg_10 = &HFF
  loc_1AE7DD4:             End If
  loc_1AE7DDE:             Set var_F0 = Me.Txt
  loc_1AE7DE4:             Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE7DF8:             var_118 = "00"
  loc_1AE7E08:             var_138 = Format(CVar(var_F4), var_118)
  loc_1AE7E10:             var_F8 = CStr(var_138)
  loc_1AE7E1E:             Set var_13C = Me.Txt
  loc_1AE7E24:             Call 0.Method_Txt_Validate0 (Cancel, var_140, var_F8, 1)
  loc_1AE7E2C:             var_140.Text = 1
  loc_1AE7E49:           Else
  loc_1AE7E51:             If Not (var_EA = CInt(3)) Then
  loc_1AE7E5C:               If (var_EA = CInt(6)) Then
  loc_1AE7E5F:               End If
  loc_1AE7E6C:               Set var_F0 = Me.Txt
  loc_1AE7E72:               Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE7E7A:               arg_10 = var_F4.Text
  loc_1AE7E96:               If (CDbl(Val(var_F8)) > CDbl(&H3B)) Then
  loc_1AE7EB2:                 MsgBox("Invalid Time", &H40, var_118, var_138, var_180)
  loc_1AE7EC4:                 arg_10 = &HFF
  loc_1AE7EC7:               End If
  loc_1AE7ED1:               Set var_F0 = Me.Txt
  loc_1AE7ED7:               Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE7EF4:               var_108 = CVar(var_F4) 'Address
  loc_1AE7F03:               var_F8 = CStr(Format(var_108, "00"))
  loc_1AE7F11:               Set var_13C = Me.Txt
  loc_1AE7F17:               Call 0.Method_Txt_Validate0 (Cancel, var_140, var_F8, 1)
  loc_1AE7F1F:               var_140.Text = 1
  loc_1AE7F3C:             Else
  loc_1AE7F44:               If (var_EA = CInt(&HC)) Then
  loc_1AE7F55:                 Set var_F0 = Me.Txt
  loc_1AE7F5B:                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4, var_F8)
  loc_1AE7F63:                 arg_10 = var_F4.Text
  loc_1AE7F7E:                 Set var_13C = Me.Txt
  loc_1AE7F84:                 Call 0.Method_Txt_Validate0 (CInt(&HC), var_140, var_144)
  loc_1AE7F8C:                 (var_F8 = vbNullString) = var_140.Text
  loc_1AE7FAC:                 If (var_108 And (var_144 = vbNullString)) Then
  loc_1AE7FB1:                   arg_10 = &HFF
  loc_1AE7FB4:                 End If
  loc_1AE7FBF:                 Set var_F0 = Me.Txt
  loc_1AE7FC5:                 Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4)
  loc_1AE7FEE:                 If CBool(Trim(CVar(var_F4)) <> vbNullString) Then
  loc_1AE8005:                   var_F8 = "Select RoomMast.RoomCat,RoomCat.Name,Revmast.TaxStru as RoomTaxStru From RoomMast Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_1AE800C:                   var_138 = CVar(var_F8 & "' or RoomMast.LOGSITE_CODE='HO') AND RoomMast.Type='RO' AND RoomMast.InclCount='Y' and RoomMast.Code='") 'String
  loc_1AE801A:                   Set var_F0 = Me.Txt
  loc_1AE8020:                   Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4, var_138, var_1A0)
  loc_1AE8037:                   var_180 = -1 & Trim(CVar(var_F4)) 
  loc_1AE8040:                   var_190 = var_180 & "'" 
  loc_1AE804E:                   unk_52DB53.Execute CStr(var_190), var_13C, arg_10
  loc_1AE8059:                   Set var_E8 = var_13C
  loc_1AE808D:                   If (var_E8.RecordCount > 0) Then
  loc_1AE80C6:                     Set var_13C = Me.Txt
  loc_1AE80CC:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_140)
  loc_1AE80D4:                     var_140.Text = Proc_6_38_E69628(CVar(var_E8.Fields.Item("Name")))
  loc_1AE8102:                     var_F4 = var_E8.Fields.Item("RoomCat")
  loc_1AE8121:                     Set var_13C = Me.Txt
  loc_1AE8127:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_140)
  loc_1AE812F:                     var_140.Tag = CStr(var_F4.Value)
  loc_1AE8153:                     Set var_F0 = Me.Txt
  loc_1AE8159:                     Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4)
  loc_1AE8178:                     If (var_F4.Tag = vbNullString) Then
  loc_1AE8192:                       var_F4 = var_E8.Fields.Item("RoomTaxStru")
  loc_1AE81B1:                       Set var_13C = Me.Txt
  loc_1AE81B7:                       Call 0.Method_Txt_Validate0 (CInt(&H32), var_140)
  loc_1AE81BF:                       var_140.Text = Proc_6_38_E69628(CVar(var_F4))
  loc_1AE81D3:                     End If
  loc_1AE81E1:                     Set var_F0 = Me.Txt
  loc_1AE81E7:                     Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4)
  loc_1AE81EF:                     var_F8 = var_F4.Tag
  loc_1AE8202:                     Set var_13C = Me.Txt
  loc_1AE8208:                     Call 0.Method_Txt_Validate0 (CInt(0), var_140)
  loc_1AE8210:                     var_1BC = var_140.Text
  loc_1AE8223:                     Set var_158 = Me.Txt
  loc_1AE8229:                     Call 0.Method_Txt_Validate0 (CInt(1), var_15C)
  loc_1AE8244:                     Set var_1A4 = Me.Txt
  loc_1AE824A:                     Call 0.Method_Txt_Validate0 (CInt(&HD), var_1A8)
  loc_1AE825F:                     var_170 = Val(var_1A8.Text)
  loc_1AE8270:                     Set var_1AC = Me.Txt
  loc_1AE8276:                     Call 0.Method_Txt_Validate0 (CInt(&HF), var_1B0)
  loc_1AE82A8:                     Proc_96_78_1390FE0(var_F8, var_1BC, CDate(var_15C.Text))
  loc_1AE82BD:                     Set var_1B4 = Me.Txt
  loc_1AE82C3:                     Call 0.Method_Txt_Validate0 (CInt(&H33), var_1E4, CStr(CInt(var_170)))
  loc_1AE82CB:                     var_1E4.Text = var_1B0.Text
  loc_1AE82FA:                   End If
  loc_1AE82FA:                 End If
  loc_1AE82FD:               Else
  loc_1AE8305:                 If (var_EA = CInt(&H18)) Then
  loc_1AE8313:                   Set var_F0 = Me.Txt
  loc_1AE8319:                   Call 0.Method_Txt_Validate0 (CInt(&H18), var_F4)
  loc_1AE8342:                   If (Trim(CVar(var_F4)) = vbNullString) Then
  loc_1AE8347:                     arg_10 = &HFF
  loc_1AE834A:                     Exit Sub
  loc_1AE834B:                   End If
  loc_1AE8399:                   Set var_F0 = Me.Txt
  loc_1AE839F:                   Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE83A7:                   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_F4.Text
  loc_1AE83BF:                   If (arg_10 Or (var_F8 = vbNullString)) Then
  loc_1AE83CF:                     Set var_F0 = Me.Txt
  loc_1AE83D5:                     Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE83DD:                     var_F4.Tag = vbNullString
  loc_1AE83E9:                     Exit Sub
  loc_1AE83EA:                   End If
  loc_1AE8425:                   Set var_13C = Me.Txt
  loc_1AE842B:                   Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE8433:                   var_140.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1AE8484:                   Set var_13C = Me.Txt
  loc_1AE848A:                   Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE8492:                   var_140.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_1AE84E1:                   Set var_13C = Me.Txt
  loc_1AE84E7:                   Call 0.Method_Txt_Validate0 (CInt(&H32), var_140)
  loc_1AE84EF:                   var_140.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomTaxStru")))
  loc_1AE850C:                   If (global_110 = &HFF) Then
  loc_1AE850F:                     Call Proc_59_44_197F7D0(var_170)
  loc_1AE8514:                   End If
  loc_1AE8550:                   Set var_13C = Me.Txt
  loc_1AE8556:                   Call 0.Method_Txt_Validate0 (CInt(&H19), var_140)
  loc_1AE855E:                   var_140.Text = CStr(Me.Fields.Item("Total").Value)
  loc_1AE85B0:                   Set var_13C = Me.Txt
  loc_1AE85B6:                   Call 0.Method_Txt_Validate0 (CInt(&H19), var_140)
  loc_1AE85BE:                   var_140.Tag = CStr(Me.Fields.Item("App_Date").Value)
  loc_1AE8610:                   Set var_13C = Me.Txt
  loc_1AE8616:                   Call 0.Method_Txt_Validate0 (CInt(&H1E), var_140)
  loc_1AE861E:                   var_140.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1AE8651:                   var_F4 = Me.Fields.Item("Code")
  loc_1AE8659:                   var_108 = var_F4.Value
  loc_1AE8670:                   Set var_13C = Me.Txt
  loc_1AE8676:                   Call 0.Method_Txt_Validate0 (CInt(&H1E), var_140)
  loc_1AE867E:                   var_140.Tag = CStr(var_108)
  loc_1AE8697:                 Else
  loc_1AE869F:                   If (var_EA = CInt(&HB)) Then
  loc_1AE86AF:                     Set var_F0 = Me.Txt
  loc_1AE86B5:                     Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE86D4:                     If (var_F4.Text = vbNullString) Then
  loc_1AE86E4:                       Set var_F0 = Me.Txt
  loc_1AE86EA:                       Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE86F2:                       var_F4.Tag = vbNullString
  loc_1AE8708:                       Set global_96 = New 
  loc_1AE871A:                       Me.Recordset15.CursorLocation = 3
  loc_1AE8733:                       var_F8 = "Select Code as SearchCode, Code as RoomNo,Name as Quot from RoomMast Where LogSite_Code='" & MemVar_1F95078
  loc_1AE873A:                       var_118 = CVar(var_F8 & "' and type='RO' And InclCount='Y' and Code not in ( Select RoomNo from RoomOcc where type not  in ('C','O')) and Code not in ( Select RoomCode from RoomBLockOut where Type In ('O','M') And ") 'String
  loc_1AE8748:                       Proc_6_7_F26918(var_108, MemVar_1F950EC, var_118)
  loc_1AE875D:                       var_144 = CStr(var_190 & var_108 & " between Fromdate and ToDate) order by Code")
  loc_1AE8767:                       unk_52DB53.Execute var_144, -1, var_F0
  loc_1AE8778:                       Set global_96 = var_F0
  loc_1AE87A0:                       CVarUnk
  loc_1AE87A5:                       VerifyVarObj
  loc_1AE87AB:                       Set var_F0 = Me.DGNewRoomNo
  loc_1AE87B1:                       LateIdStAd
  loc_1AE87D3:                       Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4, vbNullString)
  loc_1AE87DB:                       var_F4.Text = Me.Txt
  loc_1AE87EA:                     Else
  loc_1AE8838:                       Set var_F0 = Me.Txt
  loc_1AE883E:                       Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE8846:                       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_F4.Text
  loc_1AE885E:                       If (global_96 Or (var_F8 = vbNullString)) Then
  loc_1AE886E:                         Set var_F0 = Me.Txt
  loc_1AE8874:                         Call 0.Method_Txt_Validate0 (Cancel, var_F4)
  loc_1AE887C:                         var_F4.Tag = vbNullString
  loc_1AE8888:                         Exit Sub
  loc_1AE8889:                       End If
  loc_1AE88C4:                       Set var_13C = Me.Txt
  loc_1AE88CA:                       Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE88D2:                       var_140.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1AE8905:                       var_F4 = Me.Fields.Item("Code")
  loc_1AE8923:                       Set var_13C = Me.Txt
  loc_1AE8929:                       Call 0.Method_Txt_Validate0 (Cancel, var_140)
  loc_1AE8931:                       var_140.Tag = CStr(var_F4.Value)
  loc_1AE8955:                       Set var_F0 = Me.Txt
  loc_1AE895B:                       Call 0.Method_Txt_Validate0 (CInt(&H1E), var_F4)
  loc_1AE897A:                       If (var_F4.Tag = vbNullString) Then
  loc_1AE8997:                         var_F4 = Me.Fields.Item("RoomTaxStru")
  loc_1AE899F:                         var_108 = CVar(var_F4) 'Address
  loc_1AE89B6:                         Set var_13C = Me.Txt
  loc_1AE89BC:                         Call 0.Method_Txt_Validate0 (CInt(&H32), var_140)
  loc_1AE89C4:                         var_140.Text = Proc_6_38_E69628(var_108)
  loc_1AE89D8:                       End If
  loc_1AE89E2:                       Set global_96 = New 
  loc_1AE89F4:                       Me.CursorLocation = 3
  loc_1AE8A0D:                       var_F8 = "Select Code as SearchCode, Code as RoomNo,Name as Quot from RoomMast Where LogSite_Code='" & MemVar_1F95078
  loc_1AE8A14:                       var_160 = var_F8 & "' and type='RO' And InclCount='Y' and Code not in ( Select RoomNo from RoomOcc where type not  in ('C','O') AND ROOMNO<>'"
  loc_1AE8A25:                       Set var_F0 = Me.Txt
  loc_1AE8A2B:                       Call 0.Method_Txt_Validate0 (CInt(0), var_F4, var_144, var_160)
  loc_1AE8A33:                       var_190 = var_F4.Text
  loc_1AE8A3C:                       var_1B8 = -1 & var_144
  loc_1AE8A43:                       var_1C0 = var_13C & var_144 & "') AND TYPE='RO' And RoomCat='"
  loc_1AE8A53:                       Set var_13C = Me.Txt
  loc_1AE8A59:                       Call 0.Method_Txt_Validate0 (Cancel, var_140, var_1BC)
  loc_1AE8A61:                       var_1C0 = var_140.Tag
  loc_1AE8A71:                       var_118 = CVar(var_158 & var_1BC & "' and Code not in ( Select RoomCode from RoomBLockOut where Type In ('O','M') And ") 'String
  loc_1AE8A7F:                       Proc_6_7_F26918(var_108, MemVar_1F950EC)
  loc_1AE8A9E:                       unk_52DB53.Execute CStr(var_118 & var_108 & " between Fromdate and ToDate) order by code"), , 
  loc_1AE8AAF:                       Set global_96 = var_158
  loc_1AE8AEB:                       CVarUnk
  loc_1AE8AF0:                       VerifyVarObj
  loc_1AE8AF6:                       Set var_F0 = Me.DGNewRoomNo
  loc_1AE8AFC:                       LateIdStAd
  loc_1AE8B2E:                       Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4, "RoomNo='", 0)
  loc_1AE8B5C:                       Me.Find CStr(1 & Trim(CVar(var_F4)) & "'"), var_1D4, Me.Txt
  loc_1AE8BB3:                       If ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Then
  loc_1AE8BC4:                         Set var_F0 = Me.Txt
  loc_1AE8BCA:                         Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4)
  loc_1AE8BD2:                         var_F4.Text = vbNullString
  loc_1AE8BEC:                         Set var_F0 = Me.Txt
  loc_1AE8BF2:                         Call 0.Method_Txt_Validate0 (CInt(&HC), var_F4)
  loc_1AE8BFA:                         var_F4.Tag = vbNullString
  loc_1AE8C06:                       End If
  loc_1AE8C06:                     End If
  loc_1AE8C09:                   Else
  loc_1AE8C11:                     If (var_EA = CInt(&H10)) Then
  loc_1AE8C22:                       Set var_F0 = Me.Txt
  loc_1AE8C28:                       Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4)
  loc_1AE8C30:                       var_F8 = var_F4.Text
  loc_1AE8C4C:                       Set var_13C = Me.Txt
  loc_1AE8C52:                       Call 0.Method_Txt_Validate0 (CInt(0), var_140)
  loc_1AE8C8E:                       If CBool((var_F8 = vbNullString) And (Trim(CVar(var_140)) = vbNullString)) Then
  loc_1AE8C9C:                         Set var_F0 = Me.Txt
  loc_1AE8CA2:                         Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4)
  loc_1AE8CAA:                         var_F4.SetFocus
  loc_1AE8CB8:                         arg_10 = &HFF
  loc_1AE8CBB:                         Exit Sub
  loc_1AE8CBC:                       End If
  loc_1AE8CBF:                     Else
  loc_1AE8CC7:                       If (var_EA = CInt(&H16)) Then
  loc_1AE8CD7:                         Set var_F0 = Me.Txt
  loc_1AE8CDD:                         Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE8CE5:                         arg_10 = var_F4.Text
  loc_1AE8CFC:                         If (var_F8 = vbNullString) Then
  loc_1AE8D01:                           arg_10 = &HFF
  loc_1AE8D04:                           Exit Sub
  loc_1AE8D05:                         End If
  loc_1AE8D08:                       Else
  loc_1AE8D10:                         If (var_EA = CInt(&H17)) Then
  loc_1AE8D20:                           Set var_F0 = Me.Txt
  loc_1AE8D26:                           Call 0.Method_Txt_Validate0 (Cancel, var_F4, var_F8)
  loc_1AE8D2E:                           arg_10 = var_F4.Text
  loc_1AE8D45:                           If (var_F8 = vbNullString) Then
  loc_1AE8D4A:                             arg_10 = &HFF
  loc_1AE8D4D:                             GoTo loc_1AE8D50
  loc_1AE8D50:                             ' Referenced from:                         1AE8D4D
  loc_1AE8D50:                           End If
  loc_1AE8D53:                         Else
  loc_1AE8D5B:                           If (var_EA = CInt(&H2C)) Then
  loc_1AE8D67:                             If (global_110 = &HFF) Then
  loc_1AE8D6A:                               Call Proc_59_48_1D7941C(arg_10)
  loc_1AE8D6F:                             End If
  loc_1AE8D72:                           Else
  loc_1AE8D7A:                             If (var_EA = CInt(&H2D)) Then
  loc_1AE8D86:                               If (global_110 = &HFF) Then
  loc_1AE8D89:                                 Call Proc_59_48_1D7941C(global_96)
  loc_1AE8D8E:                               End If
  loc_1AE8D91:                             Else
  loc_1AE8D99:                               If (var_EA = CInt(&HF)) Then
  loc_1AE8D9F:                                 var_C0 = CDbl(0)
  loc_1AE8DA5:                                 var_C8 = CDbl(0)
  loc_1AE8DAB:                                 var_D0 = CDbl(0)
  loc_1AE8DC2:                                 Set var_F0 = Me.Txt
  loc_1AE8DC8:                                 Call 0.Method_Txt_Validate0 (CInt(&HB), var_F4, var_F8, CDbl(0))
  loc_1AE8DD0:                                 var_D0 = var_F4.Tag
  loc_1AE8DEA:                                 var_AE = CStr(Trim(CVar(var_F8)))
  loc_1AE8E07:                                 Set var_F0 = Me.Txt
  loc_1AE8E0D:                                 Call 0.Method_Txt_Validate0 (CInt(0), var_F4, var_AE)
  loc_1AE8E25:                                 var_A4 = CStr(Trim(CVar(var_F4)))
  loc_1AE8E40:                                 Set var_F0 = Me.Txt
  loc_1AE8E46:                                 Call 0.Method_Txt_Validate0 (CInt(1), var_F4, var_F8)
  loc_1AE8E4E:                                 var_C8 = var_F4.Text
  loc_1AE8E58:                                 var_B8 = CDate(var_F8)
  loc_1AE8E70:                                 Set var_F0 = Me.Txt
  loc_1AE8E76:                                 Call 0.Method_Txt_Validate0 (CInt(&HF), var_F4)
  loc_1AE8E85:                                 var_118 = Trim(CVar(var_F4))
  loc_1AE8E9C:                                 var_9C = CStr(Ucase(var_118))
  loc_1AE8EB7:                                 var_108 = Trim(var_A4)
  loc_1AE8ECA:                                 If CBool(var_108 <> vbNullString) Then
  loc_1AE8EE8:                                   var_144 = "SELECT MULTPER,* FROM ROOMMAST WHERE LogSite_Code='" & MemVar_1F95078 & "' and TYPE='RO' AND ROOMCAT='"
  loc_1AE8EF5:                                   var_1B8 = var_144 & var_AE
  loc_1AE8F05:                                   unk_52DB53.Execute var_1B8 & "'", var_108, -1
  loc_1AE8F10:                                   Set var_98 = var_F0
  loc_1AE8F29:                                 Else
  loc_1AE8F53:                                   unk_52DB53.Execute "SELECT MULTPER FROM ROOMCAT WHERE CODE='" & var_AE & "'", var_108, -1
  loc_1AE8F5E:                                   Set var_98 = var_F0
  loc_1AE8F70:                                 End If
  loc_1AE8F87:                                 If (Me.Recordset15.RecordCount > 0) Then
  loc_1AE8F9C:                                   var_F0 = Me.Recordset15.Fields
  loc_1AE8FAC:                                   var_108 = CVar(var_F0.Item("MultPer")) 'Address
  loc_1AE8FB3:                                   Proc_6_39_E7D3A0(var_118, var_108, var_F0, var_F0)
  loc_1AE8FF0:                                   var_180 = (var_118 = 0) 'Variant
  loc_1AE9003:                                   var_DA = CInt(IIf(var_180, 2, CVar(Me.Recordset15.Fields.Item("MultPer"))))
  loc_1AE901F:                                 Else
  loc_1AE9021:                                   var_DA = 2
  loc_1AE9024:                                 End If
  loc_1AE9041:                                 Proc_6_7_F26918(var_108, var_B8, "SELECT * FROM SEASONMAST WHERE ", var_180, -1, var_F0)
  loc_1AE9052:                                 var_138 = var_DA & var_108 & " BETWEEN FROMDATE AND TODATE" 
  loc_1AE9060:                                 unk_52DB53.Execute CStr(var_138), var_DA, var_9C
  loc_1AE906B:                                 Set var_98 = var_F0
  loc_1AE9096:                                 If (Me.Recordset15.RecordCount > 0) Then
  loc_1AE90AB:                                   var_F0 = Me.Recordset15.Fields
  loc_1AE90B3:                                   var_F4 = var_F0.Item("RateCode")
  loc_1AE90BB:                                   var_108 = CVar(var_F4) 'Address
  loc_1AE90C2:                                   var_118 = Trim(var_108)
  loc_1AE90CE:                                   var_9A = CStr(var_118)
  loc_1AE90DF:                                 Else
  loc_1AE90E5:                                   var_9A = "*"
  loc_1AE90E8:                                 End If
  loc_1AE90FE:                                 var_F8 = var_AE
  loc_1AE9102:                                 var_144 = "SELECT * FROM RATELIST WHERE ROOMCAT='" & var_F8
  loc_1AE9112:                                 unk_52DB53.Execute var_144 & "' ORDER BY ROOMCAT,ROOMNO,CODE,OCCTYPE", var_108, -1
  loc_1AE911D:                                 Set var_98 = var_F0
  loc_1AE9146:                                 If (Me.Recordset15.RecordCount <= 0) Then
  loc_1AE9162:                                   MsgBox("Empty Rate table", 0, var_118, var_138, var_180)
  loc_1AE9172:                                   Exit Sub
  loc_1AE9173:                                 End If
  loc_1AE9184:                                 Call 0.Method_Txt_Validate0 (CInt(&HF), var_F4, Me.Txt)
  loc_1AE91A6:                                 var_218 = Ucase(Trim(CVar(var_F4))) 'Variant
  loc_1AE91BF:                                 If Not (var_218 = "1") Then
  loc_1AE91CD:                                   If Not (var_218 = "2") Then
  loc_1AE91DB:                                     If Not (var_218 = "3") Then
  loc_1AE91E9:                                       If Not (var_218 = "4") Then
  loc_1AE91F7:                                         If (var_218 = "5") Then
  loc_1AE91FA:                                         End If
  loc_1AE91FA:                                       End If
  loc_1AE91FA:                                     End If
  loc_1AE91FA:                                   End If
  loc_1AE9200:                                   var_98.MoveFirst
  loc_1AE9205:                                   ' Referenced from:                               1AE956A
  loc_1AE9207:                                   If &HFF Then
  loc_1AE927D:                                     var_1A0 = (Trim(CVar(Me.Recordset15.Fields.Item("RoomNo"))) = CVar(var_A4)) Or (Me.Recordset15.Fields.Item("RoomNo").Value = "*****")
  loc_1AE92F3:                                     var_298 = (Me.Recordset15.Fields.Item("Code").Value = CVar(var_9A)) Or (Me.Recordset15.Fields.Item("Code").Value = "*")
  loc_1AE931D:                                     If CBool(var_1A0 And var_298) Then
  loc_1AE934D:                                       var_2B8 = Me.Recordset15.Fields.Item("OccType").Value 'Variant
  loc_1AE9363:                                       If (var_2B8 = "Extra Person") Then
  loc_1AE9383:                                         var_9C = var_F8
  loc_1AE9394:                                         var_118 = ("Rate" + Trim(var_9C))
  loc_1AE93BB:                                         var_C0 = CSng(Me.Recordset15.Fields.Item(Trim(CVar(Me.Recordset15.Fields.Item("RoomNo")))).Value)
  loc_1AE93D4:                                       Else
  loc_1AE93DF:                                         If (var_2B8 = "Multiple") Then
  loc_1AE93FF:                                           var_9C = var_F8
  loc_1AE9410:                                           var_118 = ("Rate" + Trim(var_9C))
  loc_1AE9437:                                           var_C8 = CSng(Me.Recordset15.Fields.Item(Trim(CVar(Me.Recordset15.Fields.Item("RoomNo")))).Value)
  loc_1AE9450:                                         Else
  loc_1AE945B:                                           If (var_2B8 = "Single") Then
  loc_1AE947B:                                             var_9C = var_F8
  loc_1AE948C:                                             var_118 = ("Rate" + Trim(var_9C))
  loc_1AE94AA:                                             var_138 = Me.Recordset15.Fields.Item(Trim(CVar(Me.Recordset15.Fields.Item("RoomNo")))).Value
  loc_1AE94B3:                                             var_D0 = CSng(var_138)
  loc_1AE94CC:                                           Else
  loc_1AE94D7:                                             If (var_2B8 = "Weekend") Then
  loc_1AE94EC:                                               var_108 = Trim(var_9C)
  loc_1AE94F7:                                               var_9C = var_F8
  loc_1AE9508:                                               var_118 = ("Rate" + var_108)
  loc_1AE9516:                                               var_F0 = Me.Recordset15.Fields
  loc_1AE952F:                                               var_D8 = CSng(var_F0.Item(Trim(CVar(Me.Recordset15.Fields.Item("RoomNo")))).Value)
  loc_1AE9545:                                             End If
  loc_1AE9545:                                           End If
  loc_1AE9545:                                         End If
  loc_1AE9545:                                       End If
  loc_1AE9545:                                     End If
  loc_1AE954B:                                     var_98.MoveNext
  loc_1AE9564:                                     If (var_98.EOF = &HFF) Then
  loc_1AE9567:                                       GoTo loc_1AE956D
  loc_1AE956A:                                     End If
  loc_1AE956A:                                     GoTo loc_1AE9205
  loc_1AE956D:                                     ' Referenced from:                               1AE9567
  loc_1AE956D:                                   End If
  loc_1AE9583:                                   unk_52DB53.Execute "Select * from SeasonMast1", var_108, -1
  loc_1AE958E:                                   Set var_98 = var_F0
  loc_1AE95AE:                                   If (Me.Recordset15.RecordCount > 0) Then
  loc_1AE95CB:                                     var_F4 = Me.Recordset15.Fields.Item("WeekEnd")
  loc_1AE961F:                                     If (Mid(CVar(var_F4), CLng(DatePart("W", var_B8, 2, 1)), 1) = "*") Then
  loc_1AE9624:                                       var_9E = &HFF
  loc_1AE9627:                                     End If
  loc_1AE9627:                                   End If
  loc_1AE963B:                                   Call 0.Method_Txt_Validate0 (CInt(&HD), var_F4, var_F8, var_9E, Me.Txt, var_D8)
  loc_1AE965F:                                   If (CDbl(Val(var_F8)) = CDbl(1)) Then
  loc_1AE968B:                                     var_138 = (CVar(var_F4.Text) + IIf((var_9E = &HFF), var_D8, 0))
  loc_1AE9690:                                     var_E4 = CSng(1)
  loc_1AE96A1:                                   Else
  loc_1AE96AF:                                     Set var_F0 = Me.Txt
  loc_1AE96B5:                                     Call 0.Method_Txt_Validate0 (CInt(&HD), var_F4, var_F8, var_E4, var_C8)
  loc_1AE96CA:                                     var_168 = Val(var_F8)
  loc_1AE96DD:                                     var_1F8 = CVar((var_C8 + (var_F4.Text * (var_168 - CDbl(var_DA))))) 'Double
  loc_1AE9703:                                     var_138 = (CVar(var_F4.Text) + IIf((var_9E = &HFF), var_D8, 0))
  loc_1AE9708:                                     var_E4 = CSng(1)
  loc_1AE9720:                                   End If
  loc_1AE9723:                                 Else
  loc_1AE972E:                                   If Not (var_218 = "W") Then
  loc_1AE973C:                                     If (var_218 = "M") Then
  loc_1AE973F:                                     End If
  loc_1AE9745:                                     var_98.MoveFirst
  loc_1AE974A:                                     ' Referenced from:                                 1AE98F1
  loc_1AE974C:                                     If &HFF Then
  loc_1AE979C:                                       var_13C = Me.Recordset15.Fields
  loc_1AE97A4:                                       var_140 = var_13C.Item("RoomNo")
  loc_1AE97BE:                                       var_190 = (Me.Recordset15.Fields.Item("RoomNo").Value = CVar(var_A4)) Or (var_140.Value = "*****")
  loc_1AE97DF:                                       var_15C = Me.Recordset15.Fields.Item("Code")
  loc_1AE981A:                                       var_1A8 = Me.Recordset15.Fields.Item("Code")
  loc_1AE985E:                                       If CBool(var_190 And (var_15C.Value = CVar(var_9A)) Or (var_1A8.Value = "*")) Then
  loc_1AE987E:                                         var_9C = var_F8
  loc_1AE988F:                                         var_118 = ("Rate" + Trim(var_9C))
  loc_1AE98B6:                                         var_E4 = CSng(Me.Recordset15.Fields.Item(IIf((var_9E = &HFF), var_D8, 0)).Value)
  loc_1AE98CC:                                       End If
  loc_1AE98D2:                                       var_98.MoveNext
  loc_1AE98EB:                                       If (var_98.EOF = &HFF) Then
  loc_1AE98EE:                                         GoTo loc_1AE98F4
  loc_1AE98F1:                                       End If
  loc_1AE98F1:                                       GoTo loc_1AE974A
  loc_1AE98F4:                                       ' Referenced from:                                 1AE98EE
  loc_1AE98F4:                                     End If
  loc_1AE98F7:                                   Else
  loc_1AE9902:                                     If (var_218 = "P") Then
  loc_1AE992A:                                       var_180 = CVar(global_80) 'String
  loc_1AE9939:                                       Set var_F4 = Me.Txt
  loc_1AE993F:                                       Call 0.Method_Txt_Validate0 (CInt(&HF), var_13C, var_180, (Me.FrPackage.Visible = 0), var_E4)
  loc_1AE994E:                                       var_118 = Trim(CVar(var_13C))
  loc_1AE9959:                                       var_138 = Ucase(var_118)
  loc_1AE997F:                                       If CBool(var_168 And (var_E4 <> var_138)) Then
  loc_1AE9992:                                         Me.FrPackage.ZOrder 0
  loc_1AE99A6:                                         Me.FrPackage.Visible = True
  loc_1AE99B0:                                         arg_10 = &HFF
  loc_1AE99B3:                                       End If
  loc_1AE99B6:                                     Else
  loc_1AE99D5:                                       MsgBox(CVar("Select Valid Rate Code" & vbCrLf & "1,2,3,4,5,M,W,P"), &H40, var_118, var_138, var_180)
  loc_1AE99EA:                                       arg_10 = &HFF
  loc_1AE99ED:                                       Exit Sub
  loc_1AE99EE:                                     End If
  loc_1AE99EE:                                   End If
  loc_1AE99EE:                                 End If
  loc_1AE9A16:                                 var_F8 = CStr(Format(var_E4, "0.00"))
  loc_1AE9A25:                                 Set var_F0 = Me.Txt
  loc_1AE9A2B:                                 Call 0.Method_Txt_Validate0 (CInt(&H33), var_F4, var_F8, 1, 1)
  loc_1AE9A57:                                 Set var_13C = Me.Txt
  loc_1AE9A5D:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_140, var_144, arg_10)
  loc_1AE9A65:                                 var_9A = var_140.Text
  loc_1AE9A72:                                 var_168 = Val(var_144)
  loc_1AE9A83:                                 Set var_F0 = Me.Txt
  loc_1AE9A89:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4, var_F8)
  loc_1AE9ABB:                                 Set var_158 = Me.Txt
  loc_1AE9AC1:                                 Call 0.Method_Txt_Validate0 (CInt(&HF), var_15C, ((CDbl(Val(var_F8)) <> CDbl(0)) And (var_E4 <> CDbl(arg_10))))
  loc_1AE9AD0:                                 var_118 = Trim(CVar(var_15C))
  loc_1AE9ADB:                                 var_138 = Ucase(var_118)
  loc_1AE9B12:                                 If CBool(var_B8 And (var_138 <> "P")) Then
  loc_1AE9B23:                                   var_128 = "Re-Calculate Room Rate ?"
  loc_1AE9B44:                                   If (MsgBox("P", &H24, var_118, var_138, var_180) = 6) Then
  loc_1AE9B5A:                                     Set var_F0 = Me.Txt
  loc_1AE9B60:                                     Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE9B68:                                     var_F4.Text = CStr(var_E4)
  loc_1AE9B77:                                   End If
  loc_1AE9B7A:                                 Else
  loc_1AE9B8D:                                   Set var_F0 = Me.Txt
  loc_1AE9B93:                                   Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE9B9B:                                   var_F4.Text = CStr(var_E4)
  loc_1AE9BAA:                                 End If
  loc_1AE9BB8:                                 Set var_F0 = Me.Txt
  loc_1AE9BBE:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE9BC6:                                 var_F8 = var_F4.Text
  loc_1AE9BD6:                                 global_72 = Val(var_F8)
  loc_1AE9BF1:                                 Set var_F0 = Me.Txt
  loc_1AE9BF7:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4, var_F8)
  loc_1AE9BFF:                                 global_72 = var_F4.Text
  loc_1AE9C45:                                 Set var_13C = Me.Txt
  loc_1AE9C4B:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_140, CStr(Format(CVar(Val(var_F8)), "0.00")), 1)
  loc_1AE9C53:                                 var_140.Text = 1
  loc_1AE9C7E:                                 Set var_F0 = Me.Txt
  loc_1AE9C84:                                 Call 0.Method_Txt_Validate0 (CInt(&H10), var_F4)
  loc_1AE9C94:                                 Set var_13C = Me.Txt
  loc_1AE9C9A:                                 Call 0.Method_Txt_Validate0 (CInt(&H26), var_140)
  loc_1AE9CB9:                                 Set var_158 = Me.Txt
  loc_1AE9CBF:                                 Call 0.Method_Txt_Validate0 (CInt(&H29), var_15C)
  loc_1AE9CE1:                                 Set var_1A4 = Me.Txt
  loc_1AE9CE7:                                 Call 0.Method_Txt_Validate0 (CInt(&H32), var_1A8, var_1B8)
  loc_1AE9CEF:                                 var_168 = var_1A8.Text
  loc_1AE9D02:                                 Set var_1AC = Me.Txt
  loc_1AE9D08:                                 Call 0.Method_Txt_Validate0 (CInt(&H33), var_1B0)
  loc_1AE9D1D:                                 var_170 = Val(var_1B0.Text)
  loc_1AE9D47:                                 Proc_96_76_183EFE0(var_F4, CStr(Trim(CVar(var_140))), CStr(Trim(CVar(var_15C))), var_1B8)
  loc_1AE9D75:                               End If
  loc_1AE9D75:                             End If
  loc_1AE9D75:                           End If
  loc_1AE9D75:                         End If
  loc_1AE9D75:                       End If
  loc_1AE9D75:                     End If
  loc_1AE9D75:                   End If
  loc_1AE9D75:                 End If
  loc_1AE9D75:               End If
  loc_1AE9D75:             End If
  loc_1AE9D75:           End If
  loc_1AE9D75:         End If
  loc_1AE9D75:       End If
  loc_1AE9D75:     End If
  loc_1AE9D75:   End If
  loc_1AE9D75: End If
  loc_1AE9D7A: Set var_E8 = Nothing
  loc_1AE9D7D: Exit Sub
End Sub

Private Sub DGNewRoomNo_UnknownEvent_9 'F401F4
  'Data Table: 52DB34
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F400EB: Me.DGNewRoomNo.Visible = False
  loc_F4010A: If (Me.RecordCount > 0) Then
  loc_F40149:   Set var_B4 = Me.Txt
  loc_F4014F:   Call 0.Method_DGNewRoomNo_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F40157:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4018A:   var_B0 = Me.Fields.Item("Name")
  loc_F401A9:   Set var_B4 = Me.Txt
  loc_F401AF:   Call 0.Method_DGNewRoomNo_UnknownEvent_90 (CInt(&HC), var_B8)
  loc_F401B7:   var_B8.Text = CStr(var_B0.Value)
  loc_F401CD: End If
  loc_F401D8: Set var_A8 = Me.Txt
  loc_F401DE: Call 0.Method_DGNewRoomNo_UnknownEvent_90 (CInt(&HC))
  loc_F401E6: var_B0.SetFocus
  loc_F401F2: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E85890
  'Data Table: 52DB34
  loc_E8583C: If (CBool(().Visible) = &HFF) Then
  loc_E8583F:   Call DGRoomType_UnknownEvent_9()
  loc_E85844: End If
  loc_E85860: If (CBool(Me.DGNewRoomNo.Visible) = &HFF) Then
  loc_E85863:   Call DGNewRoomNo_UnknownEvent_9()
  loc_E85868: End If
  loc_E85884: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E85887:   Call DGRoomNo_UnknownEvent_9()
  loc_E8588C: End If
  loc_E8588C: Exit Sub
  loc_E8588D: Set var_B4 = 
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F52174
  'Data Table: 52DB34
  Dim var_8C As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_110 As String
  Dim var_10C As TextBox
  Dim var_114 As Long
  loc_F52064: Call Proc_59_42_F6EAAC()
  loc_F52075: If (Index = 0) Then
  loc_F5208B:   var_C0 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_F52094:   Set var_A0 = Me.FGrid3
  loc_F520CA:   Set var_108 = Me.TxtGrid
  loc_F520D0:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_10C, CStr(Me.FGrid3.TextMatrix)))
  loc_F520D8:   var_10C.Tag = CVar(CLng(var_A0.Col))
  loc_F52109:   var_114 = CLng(Me.FGrid3.Col)
  loc_F52119:   If Not (var_114 = CLng(&H12)) Then
  loc_F52123:     If (var_114 = CLng(&HF)) Then
  loc_F52126:     End If
  loc_F52135:     Set var_8C = Me.TxtGrid
  loc_F5213B:     Call 0.Method_TxtGrid_GotFocus0 (Index, var_A0, 0)
  loc_F52143:     var_A0.MaxLength = var_114
  loc_F52158:     If (global_68 = 0) Then
  loc_F52163:       var_110 = "{Home}+{End}"
  loc_F52169:       Proc_303_0_FBACC8(CStr(Me.FGrid3.TextMatrix)), 0)
  loc_F52171:     End If
  loc_F52171:   End If
  loc_F52171: End If
  loc_F52171: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FACDA8
  'Data Table: 52DB34
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As Long
  loc_FACC18: On Error Goto loc_FACDA0
  loc_FACC25: If (CLng(Shift) = &H1B) Then
  loc_FACC35:   Set var_88 = Me.TxtGrid
  loc_FACC3B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FACC55:   Set var_94 = Me.TxtGrid
  loc_FACC5B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_FACC63:   var_98.Text = var_8C.Tag
  loc_FACC7F:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FACC84:   Call Proc_59_42_F6EAAC(arg_14)
  loc_FACC95:   Set var_88 = Me.TxtGrid
  loc_FACC9B:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FACCA3:   var_8C.Visible = False
  loc_FACCAF:   Exit Sub
  loc_FACCB0: End If
  loc_FACCBC: If (KeyCode = 0) Then
  loc_FACCD2:   var_B0 = CLng(Me.FGrid3.Col)
  loc_FACCE2:   If Not (var_B0 = CLng(&H12)) Then
  loc_FACCEC:     If (var_B0 = CLng(&HF)) Then
  loc_FACCEF:     End If
  loc_FACD2F:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H25) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_68 = &HFF))) Then
  loc_FACD38:       Call Proc_59_47_1290C60(KeyCode, var_B2)
  loc_FACD43:       If (var_B2 = &HFF) Then
  loc_FACD90:         Proc_6_62_1254E68(Me.FGrid3, Me.TxtGrid, KeyCode, Shift, global_68, CByte((CInt(&HF) + 1)))
  loc_FACDA0:         ' Referenced from: FACC18
  loc_FACDA0:       End If
  loc_FACDA0:     End If
  loc_FACDA0:   End If
  loc_FACDA0: End If
  loc_FACDA0: Proc_6_60_E63754(0, 0, 0)
  loc_FACDA5: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EDB514
  'Data Table: 52DB34
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  loc_EDB46C: If (KeyAscii = 0) Then
  loc_EDB482:   var_A0 = CLng(Me.FGrid3.Col)
  loc_EDB492:   If (var_A0 = CLng(&H12)) Then
  loc_EDB49F:     Set var_8C = Me.TxtGrid
  loc_EDB4A5:     Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4)
  loc_EDB4C0:     Proc_6_42_129B55C(var_A4, arg_10, 2)
  loc_EDB4CF:   Else
  loc_EDB4D6:     If (var_A0 = CLng(&HF)) Then
  loc_EDB4E3:       Set var_8C = Me.TxtGrid
  loc_EDB4E9:       Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A4, 2)
  loc_EDB504:       Proc_6_42_129B55C(var_A4, arg_10, 8)
  loc_EDB510:     End If
  loc_EDB510:   End If
  loc_EDB510: End If
  loc_EDB510: Exit Sub
  loc_EDB511: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E03250
  'Data Table: 52DB34
  loc_E03244: On Error Goto loc_E03248
  loc_E03247: Exit Sub
  loc_E03248: ' Referenced from: E03244
  loc_E03248: Proc_6_60_E63754()
  loc_E0324D: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E20A38
  'Data Table: 52DB34
  Dim arg_10 As Integer
  loc_E20A20: If (Cancel = 0) Then
  loc_E20A29:   Call Proc_59_47_1290C60(Cancel, var_88)
  loc_E20A32:   arg_10 = Not(var_88)
  loc_E20A35: End If
  loc_E20A35: Exit Sub
  loc_E20A36: Set var_4400 = arg_10
End Sub

Private Sub Form_Load() '1400744
  'Data Table: 52DB34
  Dim var_8C As Variant
  Dim var_90 As String
  Dim var_9C As String
  Dim var_A0 As String
  Dim unk_52DB53 As Connection15
  Dim var_88 As Recordset15
  Dim var_B4 As Variant
  Dim var_C4 As Variant
  Dim var_DC As Variant
  Dim Me As Recordset15
  Dim var_120 As Variant
  Dim var_12C As Variant
  Dim var_128 As Variant
  Dim var_CC As TextBox
  loc_13FFD24: On Error Goto loc_140073D
  loc_13FFD2F: Call 0.Method_arg_7C (CDbl(1450))
  loc_13FFD3C: Call 0.Method_arg_74 (CDbl(1625))
  loc_13FFD49: Call 0.Method_MeC (CDbl(9200))
  loc_13FFD56: Call 0.Method_Me4 (CDbl(17000))
  loc_13FFD62: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13FFD75: (CLng(MemVar_1F951B4)).BackColor = 
  loc_13FFD8C: Me.FrPackage.Top = CDbl(4020)
  loc_13FFDA3: Me.FrPackage.Left = CDbl(1095)
  loc_13FFDBA: Me.Frmrate.Top = CDbl(2745)
  loc_13FFDCB: Set var_8C = Me.Frmrate
  loc_13FFDD1: var_8C.Left = CDbl(2520)
  loc_13FFE02: var_9C = "SELECT ChangeRoomDtl FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='" & MemVar_1F95128 & "' And UserName='"
  loc_13FFE19: unk_52DB53.Execute var_9C & MemVar_1F950C8 & "'", var_C4, -1
  loc_13FFE24: Set var_88 = var_8C
  loc_13FFE50: If (var_88.RecordCount > 0) Then
  loc_13FFE62:   var_8C = var_88.Fields
  loc_13FFE72:   var_C4 = CVar(var_8C.Item("ChangeRoomDtl")) 'Address
  loc_13FFE81:   global_112 = Proc_6_38_E69628(var_C4)
  loc_13FFE8E: End If
  loc_13FFEA2: var_90 = "Select NCUR,PlanCalc,RoomRateEditable,RoomIncTaxEditable,RoomServiceChargeEditable,BlockInvalidTarrifIncTaxYN,PlanSelectionBasedOn from enviro WHERE LOGSITE_CODE='" & MemVar_1F95078
  loc_13FFEB2: unk_52DB53.Execute var_90 & "'", var_C4, -1
  loc_13FFEBD: Set var_88 = var_8C
  loc_13FFEDC: var_8C = var_88.Fields
  loc_13FFEFB: global_120 = Proc_6_38_E69628(CVar(var_8C.Item("RoomRateEditable")), var_8C)
  loc_13FFF36: global_124 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomIncTaxEditable")))
  loc_13FFF71: global_128 = Proc_6_38_E69628(CVar(var_88.Fields.Item("RoomServiceChargeEditable")))
  loc_13FFFAC: global_132 = Proc_6_38_E69628(CVar(var_88.Fields.Item("BlockInvalidTarrifIncTaxYN")))
  loc_13FFFE7: global_116 = Proc_6_38_E69628(CVar(var_88.Fields.Item("PlanSelectionBasedOn")))
  loc_1400013: var_C4 = CVar(var_88.Fields.Item("PlanCalc")) 'Address
  loc_140002D: If (Proc_6_38_E69628(var_C4) = "No") Then
  loc_1400035:   global_110 = 0
  loc_140003B: Else
  loc_1400040:   global_110 = &HFF
  loc_1400043: End If
  loc_140005F: Me.Recordset15.CursorLocation = 3
  loc_140006F: Proc_6_7_F26918(var_C4, MemVar_1F950EC, global_110)
  loc_1400099: var_DC = CVar("Select Code,Name,total,App_Date,RoomTaxStru From PlanMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and ActiveYN='Yes' and App_date<=") 'String
  loc_14000B3: Me.Open var_DC & var_C4 & " Order by Name", CVar(MemVar_1F95044), 2
  loc_14000CF: CVarUnk
  loc_14000D4: VerifyVarObj
  loc_14000DA: Set var_8C = Me.DGPackage
  loc_14000E0: LateIdStAd
  loc_14000F7: CVarUnk
  loc_14000FC: VerifyVarObj
  loc_1400108: LateIdStAd
  loc_1400124: Set var_CC = Me.Txt
  loc_140012A: Call 0.Method_Form_Load0 (CInt(&H18), var_120, var_124, Me.DGPlanPkg, New, Me.DGPlanPkg)
  loc_1400132: global_100 = var_120.Top
  loc_1400145: Set var_128 = Me.Txt
  loc_140014B: Call 0.Method_Form_Load0 (CInt(&H18), var_12C, var_130, 3)
  loc_1400153: -1 = var_12C.Height
  loc_1400175: var_B4 = CVar(((Me.FrPackage.Top + var_124) + var_130)) 'Single
  loc_1400184: Me.DGPackage.Top = MemVar_1F950EC
  loc_14001A6: Set var_CC = Me.Txt
  loc_14001AC: Call 0.Method_Form_Load0 (CInt(&H18), var_120, var_124)
  loc_14001B4: global_110 = var_120.Left
  loc_14001D2: var_B4 = CVar((Me.FrPackage.Left + var_124)) 'Single
  loc_14001DB: Set var_128 = Me.DGPackage
  loc_14001E1: var_128.Left = MemVar_1F950EC
  loc_14001FF: Set var_120 = Me.Txt
  loc_1400205: Call 0.Method_Form_Load0 (CInt(&H1E), var_128)
  loc_1400220: Set var_8C = Me.Txt
  loc_1400226: Call 0.Method_Form_Load0 (CInt(&H1E), var_CC)
  loc_140023A: var_B4 = CVar((var_CC.Top + var_128.Height)) 'Single
  loc_1400249: Me.DGPlanPkg.Top = MemVar_1F950EC
  loc_1400269: Set var_8C = Me.Txt
  loc_140026F: Call 0.Method_Form_Load0 (CInt(&H1E), var_CC)
  loc_140028E: Me.DGPlanPkg.Left = CVar(var_CC.Left)
  loc_14002AA: Set var_8C = Me.Txt
  loc_14002B0: Call 0.Method_Form_Load0 (CInt(&HC), var_CC)
  loc_14002CF: Me.DGNewRoomNo.Left = CVar(var_CC.Left)
  loc_14002EB: Set var_120 = Me.Txt
  loc_14002F1: Call 0.Method_Form_Load0 (CInt(&HC), var_128)
  loc_140030C: Set var_8C = Me.Txt
  loc_1400312: Call 0.Method_Form_Load0 (CInt(&HC), var_CC)
  loc_140032A: var_B4 = CVar(((var_CC.Top + var_128.Height) + CDbl(&H1E))) 'Single
  loc_1400339: Me.DGNewRoomNo.Top = CVar(var_CC.Left)
  loc_140035F: Call 0.Method_Form_Load0 (CInt(&HB), var_CC)
  loc_140037E: Me.Txt(CVar(var_CC.Left)).Left = 
  loc_140039A: Set var_120 = Me.Txt
  loc_14003A0: Call 0.Method_Form_Load0 (CInt(&HB), var_128)
  loc_14003BB: Set var_8C = Me.Txt
  loc_14003C1: Call 0.Method_Form_Load0 (CInt(&HB), var_CC)
  loc_14003D9: var_B4 = CVar(((var_CC.Top + var_128.Height) + CDbl(&H1E))) 'Single
  loc_14003E8: (CVar(var_CC.Left)).Top = 
  loc_1400408: Set var_8C = Me.Txt
  loc_140040E: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_140042D: Me.DGRoomNo.Left = CVar(var_CC.Left)
  loc_1400449: Set var_120 = Me.Txt
  loc_140044F: Call 0.Method_Form_Load0 (CInt(0), var_128)
  loc_140046A: Set var_8C = Me.Txt
  loc_1400470: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_1400488: var_B4 = CVar(((var_CC.Top + var_128.Height) + CDbl(&H1E))) 'Single
  loc_1400491: Set var_12C = Me.DGRoomNo
  loc_1400497: var_12C.Top = CVar(var_CC.Left)
  loc_14004B3: Set global_96 = New 
  loc_14004C5: Me.var_12C.CursorLocation = 3
  loc_14004E8: var_90 = "Select RoomMast.Code as SearchCode,RoomMast.Code as RoomNo,RoomMast.Name as Quot,RoomMast.RoomCat,Revmast.TaxStru as RoomTaxStru From RoomMast Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code Where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_14004EF: var_C4 = CVar(var_90 & "' or RoomMast.LOGSITE_CODE='HO') AND RoomMast.Type='RO' AND RoomMast.InclCount='Y' Order by RoomMast.Code") 'String
  loc_14004F9: Me.Open var_C4, CVar(MemVar_1F95044), 2
  loc_140050D: CVarUnk
  loc_1400512: VerifyVarObj
  loc_1400518: Set var_8C = Me.DGNewRoomNo
  loc_140051E: LateIdStAd
  loc_1400548: Me.DGNewRoomNo.CursorLocation = 3
  loc_140056B: var_90 = "Select RoomCat.Code, RoomCat.Name, Revmast.TaxStru as RoomTaxStru From RoomCat Left Join Revmast On RoomCat.Revcode=Revmast.Code where (RoomCat.LOGSITE_CODE='" & MemVar_1F95078
  loc_1400590: CVarUnk
  loc_1400595: VerifyVarObj
  loc_140059B: Set var_8C = 3(New)
  loc_14005A1: LateIdStAd
  loc_14005BF: Me.Frmrate.ZOrder 1
  loc_14005D1: Set global_88 = New 
  loc_14005E3: Me.Recordset15.CursorLocation = 3
  loc_1400606: var_90 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, RoomOcc.RoomTarrif, RoomOcc.RoomTaxStru, GuestProf.Name as GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.GuestStatus,GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.DocId as CheckInDocId,GuestFolio.FolioNO as FolioNo,GuestFolio.RoDisc,GuestFolio.RSDisc,GuestFolio.BookingDocId as BookingDocId, RoomOcc.RateCode, RoomOcc.RoomRate,RoomOcc.PlanCode,PlanMast.Name As PlanName, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GUESTSTAT.NAME AS STATUSNAME,RoomOcc.RRTaxInc,RoomOcc.RRServiceChrg,RoomOcc.PlanDisc,RoomOcc.PlanDiscAmt,RoomOcc.PlanDiscAppon,RoomOcc.RackRate,GuestFolio.NoDays " & "FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code)LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS Left Join PlanMast On PlanMast.Code=RoomOcc.PlanCode where ROOMMAST.LOGSITE_CODE='"
  loc_1400622: var_A0 = var_90 & MemVar_1F95078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F95078 & "' AND RoomMast.type='RO' and RoomMAst.Code in (Select ISNULL(RoomNo,'') from RoomOcc where ROOMMAST.LOGSITE_CODE='"
  loc_140063E: var_C4 = CVar(var_A0 & MemVar_1F95078 & "' AND ROOMOCC.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  isnull(type,'') Not In ('O','C')) and isnull(RoomOcc.type,'') Not In ('O','C') Order by RoomMast.Code") 'String
  loc_1400648: ar(var_90 & "' or RoomCat.LOGSITE_CODE='HO') Order by RoomCat.Name"), CVar(MemVar_1F95044), 2 var_C4, CVar(MemVar_1F95044), 2
  loc_140066C: CVarUnk
  loc_1400671: VerifyVarObj
  loc_140067D: LateIdStAd
  loc_140068B: Call Proc_59_46_1388738(Me.DGRoomNo, global_88, 3, -1, Me.DGRoomNo)
  loc_14006A0: Me.Frmrate.ZOrder 1
  loc_14006B8: Me.FrPackage.ZOrder 1
  loc_14006DB: If (Me.Frmrate.Visible = &HFF) Then
  loc_14006EA:   Me.Frmrate.Visible = False
  loc_14006FE:   Me.Frame1.Enabled = True
  loc_1400706: End If
  loc_1400729: Call Proc_59_40_106C930(Proc_5_1_100EC1C("EDIT", Me, global_88, -1), Me, global_96)
  loc_1400739: Set var_88 = Nothing
  loc_140073C: Exit Sub
  loc_140073D: ' Referenced from: 13FFD24
  loc_140073D: Proc_6_60_E63754(3)
  loc_1400742: Exit Sub
End Sub

Private Sub Form_Resize() 'E75040
  'Data Table: 52DB34
  loc_E74FEA: Call 0.Method_arg_50 (var_88)
  loc_E74FFC: (var_88).Caption = 
  loc_E75015: (CDbl(0)).Left = 
  loc_E75023: Call 0.Method_arg_100 (var_90)
  loc_E75035: (var_90).Width = 
  loc_E7503D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E69524
  'Data Table: 52DB34
  loc_E694DB: Set global_88 = Nothing
  loc_E694ED: Set global_84 = Nothing
  loc_E694FF: Set global_96 = Nothing
  loc_E69511: Set global_92 = Nothing
  loc_E6951D: MasterFormExit = 0
  loc_E69520: Exit Sub
End Sub

Private Sub Form_Activate() 'E851F8
  'Data Table: 52DB34
  Dim var_A4 As TextBox
  loc_E85190: On Error Goto loc_E851F2
  loc_E85197: Set var_8C = Me.TopCtrl1
  loc_E8519D: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E851B2: If (CLng(CInt()) = &H2D) Then
  loc_E851B5: End If
  loc_E851C9: If (fdRoomChange.OpenMode = 1) Then
  loc_E851D7:   Set var_8C = Me.Txt
  loc_E851DD:   Call 0.Method_Form_Activate0 (CInt(&HB))
  loc_E851E5:   var_A4.SetFocus
  loc_E851F1: End If
  loc_E851F1: Exit Sub
  loc_E851F2: ' Referenced from: E85190
  loc_E851F2: Proc_6_60_E63754(var_A4)
  loc_E851F7: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E273BC
  'Data Table: 52DB34
  loc_E273A1: If (MasterFormExit = &HFF) Then
  loc_E273B1:   Me.Global.Unload Me
  loc_E273B9: End If
  loc_E273B9: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E28E34
  'Data Table: 52DB34
  loc_E28E0C: On Error Goto loc_E28E2C
  loc_E28E23: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E28E2B: Exit Sub
  loc_E28E2C: ' Referenced from: E28E0C
  loc_E28E2C: Proc_6_60_E63754(Shift)
  loc_E28E31: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F14A8C
  'Data Table: 52DB34
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F149A4: On Error Goto loc_F14A49
  loc_F149BE: If (Me.RecordCount > 0) Then
  loc_F149D6:   var_8C = "EDIT"
  loc_F149E4:   Call Proc_59_40_106C930(Proc_5_1_100EC1C(var_8C, Me))
  loc_F149FA:   Set var_90 = Me.Txt
  loc_F14A00:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F14A08:   var_98.SetFocus
  loc_F14A17: Else
  loc_F14A38:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F14A48: End If
  loc_F14A48: Exit Sub
  loc_F14A49: ' Referenced from: F149A4
  loc_F14A51: Set var_90 = Err()
  loc_F14A57: Call 0.Method_arg_2C (var_8C)
  loc_F14A78: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F14A8B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECC8F4
  'Data Table: 52DB34
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_ECC850: On Error Goto loc_ECC8EB
  loc_ECC86A: If (Me.RecordCount <= 0) Then
  loc_ECC873:   var_B8 = "Information"
  loc_ECC88E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ECC89E:   Exit Sub
  loc_ECC89F: End If
  loc_ECC8B0: MemVar_1F950E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & mVType & "' ORDER BY VDate"
  loc_ECC8BD: MemVar_1F95120 = Me
  loc_ECC8CA: Proc_6_126_F1C850("2000,2000,2000,2000")
  loc_ECC8E5: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECC8EA: Exit Sub
  loc_ECC8EB: ' Referenced from: ECC850
  loc_ECC8EB: Proc_6_60_E63754(MemVar_1F950E4)
  loc_ECC8F0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '18BBDCC
  'Data Table: 52DB34
  Dim var_B8 As Variant
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_148 As String
  Dim var_14C As String
  Dim unk_52DB53 As Connection15
  Dim var_BC As Variant
  Dim var_150 As Variant
  Dim var_154 As Variant
  Dim var_124 As Variant
  Dim var_104 As Variant
  Dim var_144 As Variant
  Dim var_C0 As Variant
  Dim unk_52DB95 As Connection15
  Dim var_B4 As Variant
  Dim var_9C As Variant
  Dim var_16C As String
  Dim var_170 As String
  Dim var_178 As String
  Dim var_17C As String
  Dim var_188 As String
  Dim var_180 As Variant
  Dim var_190 As String
  Dim var_174 As String
  Dim var_198 As Variant
  Dim var_1A0 As Variant
  Dim var_1B4 As Double
  Dim var_164 As Variant
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_1E4 As Variant
  Dim var_1F4 As Variant
  Dim var_8E As Variant
  Dim var_224 As Variant
  Dim var_284 As Variant
  Dim var_2D4 As Variant
  Dim var_194 As Variant
  Dim var_2E4 As Variant
  Dim var_334 As Variant
  Dim var_19C As Variant
  Dim var_388 As Variant
  Dim var_3CC As Variant
  Dim var_3E0 As Variant
  Dim var_428 As Variant
  Dim var_470 As Variant
  Dim var_4C8 As Variant
  Dim var_4D0 As Variant
  Dim var_1AC As Double
  Dim var_4D8 As TextBox
  Dim var_580 As Variant
  Dim var_5E8 As Variant
  Dim var_628 As Variant
  Dim var_650 As Variant
  Dim var_680 As Variant
  Dim var_6C8 As TextBox
  Dim var_710 As TextBox
  Dim var_B30 As Double
  Dim var_764 As Variant
  Dim var_7CC As Variant
  Dim var_930 As TextBox
  Dim var_A28 As TextBox
  Dim var_B38 As Double
  Dim var_A70 As TextBox
  Dim var_AB8 As TextBox
  Dim var_234 As Variant
  Dim var_254 As Variant
  Dim var_274 As Variant
  Dim var_2B4 As Variant
  Dim var_304 As Variant
  Dim var_324 As Variant
  Dim var_364 As Variant
  Dim var_384 As Variant
  Dim var_3B8 As Variant
  Dim var_400 As Variant
  Dim var_410 As Variant
  Dim var_420 As Variant
  Dim var_438 As Variant
  Dim var_480 As Variant
  Dim var_4A0 As Variant
  Dim var_548 As Variant
  Dim var_558 As Variant
  Dim var_5C0 As Variant
  Dim var_6D8 As Variant
  Dim var_6E8 As Variant
  Dim var_720 As Variant
  Dim var_820 As Variant
  Dim var_830 As Variant
  Dim var_890 As Variant
  Dim var_8D0 As Variant
  Dim var_960 As Variant
  Dim var_9A8 As Variant
  Dim var_ADC As Variant
  Dim var_294 As Variant
  Dim var_1A4 As Variant
  Dim var_2F4 As Variant
  Dim var_354 As Variant
  Dim var_184 As String
  Dim var_ABC As String
  Dim var_E4 As Variant
  Dim var_4F8 As Variant
  Dim var_244 As Variant
  Dim var_424 As MSHFlexGrid
  Dim var_EC4 As Double
  Dim var_46C As MSHFlexGrid
  Dim var_ECC As Double
  Dim var_ED4 As Double
  Dim var_4B4 As MSHFlexGrid
  Dim var_4B8 As MSHFlexGrid
  Dim var_D54 As Variant
  Dim var_4CC As MSHFlexGrid
  Dim var_EDC As Double
  Dim var_EE4 As Double
  Dim var_56C As Fields15
  Dim var_62C As MSHFlexGrid
  Dim var_EEC As Double
  Dim var_B68 As String
  Dim var_B94 As String
  Dim var_BD4 As String
  Dim var_DBC As Variant
  Dim var_590 As Variant
  Dim Me As Recordset15
  loc_18B9858: On Error Goto loc_18BBD77
  loc_18B985F: var_86 = CByte(0) 'Byte
  loc_18B986E: Set var_B4 = Me.Txt
  loc_18B9874: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D))
  loc_18B989D: If (Proc_6_27_EA61EC(var_B8, "Reason") = 0) Then
  loc_18B98A7:   Call Txt_GotFocus(CInt(&H1D))
  loc_18B98AC:   Exit Sub
  loc_18B98AD: End If
  loc_18B98B8: Set var_B4 = Me.Txt
  loc_18B98BE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_B8)
  loc_18B98C6: var_C0 = "Room Type"
  loc_18B98E7: If (Proc_6_27_EA61EC(var_B8, var_C0) = 0) Then
  loc_18B98F1:   Call Txt_GotFocus(CInt(&HB))
  loc_18B98F6:   Exit Sub
  loc_18B98F7: End If
  loc_18B9903: Call Txt_Validate(CInt(&HB))
  loc_18B9916: Set var_B4 = Me.Txt
  loc_18B991C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_B8, var_C0)
  loc_18B9924: 0 = var_B8.Tag
  loc_18B9932: var_E4 = Trim(CVar(var_C0))
  loc_18B9950: If (var_E4 = vbNullString) Then
  loc_18B996C:   MsgBox("Room Type is a required field.", &H10, var_E4, var_104, var_144)
  loc_18B9983:   Call Txt_GotFocus(CInt(&HB))
  loc_18B9988:   Exit Sub
  loc_18B9989: End If
  loc_18B9994: Set var_B4 = Me.Txt
  loc_18B999A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8)
  loc_18B99C3: If (Proc_6_27_EA61EC(var_B8, "Room No") = 0) Then
  loc_18B99CD:   Call Txt_GotFocus(CInt(0))
  loc_18B99D2:   Exit Sub
  loc_18B99D3: End If
  loc_18B99E1: Set var_B4 = Me.Txt
  loc_18B99E7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_B8)
  loc_18B99EF: var_C0 = var_B8.Text
  loc_18B9A0B: If (CDbl(Val(var_C0)) <= CDbl(0)) Then
  loc_18B9A21:   var_D4 = "Adult should not be zero."
  loc_18B9A27:   MsgBox(var_D4, &H10, var_E4, var_104, var_144)
  loc_18B9A3E:   Call Txt_GotFocus(CInt(&HD))
  loc_18B9A43:   Exit Sub
  loc_18B9A44: End If
  loc_18B9A71: Set var_B4 = Me.Txt
  loc_18B9A77: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_C0, "Select Count(*) from RoomMast Where Type='RO' and Code='", var_D4, -1)
  loc_18B9A8F: var_14C = var_150 & var_C0 & "'"
  loc_18B9A98: unk_52DB53.Execute var_14C, 0, var_154
  loc_18B9AA0: var_E4 = var_B8.Text.Fields
  loc_18B9AA8:  = var_150.Item(var_B8)
  loc_18B9AB0:  = var_154.Value
  loc_18B9ADD: If (var_E4 = 0) Then
  loc_18B9AF9:   MsgBox("Re Select Room No", 0, var_E4, var_104, var_144)
  loc_18B9B09:   Exit Sub
  loc_18B9B0A: End If
  loc_18B9B15: Set var_B4 = Me.Txt
  loc_18B9B1B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_18B9B3D: Set var_BC = Me.Txt
  loc_18B9B43: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_150)
  loc_18B9B6E: If CBool(Trim(CVar(var_B8)) <> Trim(CVar(var_150))) Then
  loc_18B9B91:   Set var_B4 = Me.Txt
  loc_18B9B97:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, "Select * from KOT Where Pending='Y' and RoomNo='", var_164)
  loc_18B9BA6:   var_E4 = Trim(CVar(var_B8))
  loc_18B9BAE:   var_104 = -1 & var_E4 
  loc_18B9BB7:   var_144 = CVar(var_150) & "' and roomtype='RO' and VoidYN='N' and NCKOT<>'Y' and DelFlag<>'Y'" 
  loc_18B9BC5:   unk_52DB53.Execute CStr(var_144), var_BC, var_168
  loc_18B9BCD:   var_B8 = var_BC.RecordCount
  loc_18B9BF2:   If (var_168 > 0) Then
  loc_18B9C0E:     MsgBox("There is some KOT Pending for this Room.", &H10, var_E4, CVar(var_150), var_144)
  loc_18B9C1E:     Exit Sub
  loc_18B9C1F:   End If
  loc_18B9C1F: End If
  loc_18B9C2D: Set var_B4 = Me.Txt
  loc_18B9C33: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_B8)
  loc_18B9C57: If (CDbl(Val(var_B8.Text)) <= CDbl(0)) Then
  loc_18B9C65:   var_E4 = "Validation Error"
  loc_18B9C75:   var_D4 = "Tariff should be greater than zero."
  loc_18B9C7B:   MsgBox(var_D4, &H10, var_E4, CVar(var_150), var_144)
  loc_18B9C99:   Set var_B4 = Me.Txt
  loc_18B9C9F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_B8)
  loc_18B9CA7:   var_C2 = var_B8.Enabled
  loc_18B9CB9:   If (var_C2 = &HFF) Then
  loc_18B9CC7:     Set var_B4 = Me.Txt
  loc_18B9CCD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10))
  loc_18B9CD5:     var_B8.SetFocus
  loc_18B9CE1:     Exit Sub
  loc_18B9CE2:   End If
  loc_18B9CE2: End If
  loc_18B9CEA: If (MemVar_1F951D4 = "Y") Then
  loc_18B9CF3:   var_114 = 0
  loc_18B9D12:   unk_52DB95.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_D4, -1
  loc_18B9D1A:   var_B4 = var_B4.Fields
  loc_18B9D22:   var_114 = var_B8.Item(var_B8)
  loc_18B9D2A:   var_BC = var_BC.Value
  loc_18B9D78:   Set var_B4 = Me.Txt
  loc_18B9D7E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, var_14C, "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME) VALUES (" & CStr(CLng(var_E4)) & ",'CHKOT','", var_D4)
  loc_18B9D86:   -1 = var_B8.Text
  loc_18B9DA7:   Set var_BC = Me.Txt
  loc_18B9DAD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_150, var_174, var_194 & var_14C & "','")
  loc_18B9DB5:   var_9C = var_150.Text
  loc_18B9DC5:   var_188 = var_E4 & var_174 & "','"
  loc_18B9DD6:   Set var_154 = Me.Txt
  loc_18B9DDC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_180, var_184)
  loc_18B9DE4:   var_188 = var_180.Text
  loc_18B9DFD:   unk_52DB95.Execute var_B8 & var_184 & "')", , 
  loc_18B9E68:   If (MsgBox("Do You Want to Open Dial Facility ?", &H104, "Dial Facility", CVar(var_150), var_144) = 6) Then
  loc_18B9E86:     var_C0 = CStr((var_9C + 1))
  loc_18B9EA2:     Set var_B4 = Me.Txt
  loc_18B9EA8:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_14C, "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME) VALUES(" & CStr(CLng("Dial Facility")) & ",'CHKIN','")
  loc_18B9EB0:     var_D4 = var_B8.Text
  loc_18B9EB9:     var_170 = -1 & var_14C
  loc_18B9EC0:     var_178 = var_194 & var_14C & "','"
  loc_18B9ED1:     Set var_BC = Me.Txt
  loc_18B9ED7:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_150, var_174)
  loc_18B9EDF:     var_178 = var_150.Text
  loc_18B9F00:     Set var_154 = Me.Txt
  loc_18B9F06:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_180)
  loc_18B9F0E:     var_184 = var_180.Text
  loc_18B9F1E:     var_190 = var_194 & var_174 & "','" & var_184 & "')"
  loc_18B9F27:     unk_52DB95.Execute var_190, , 
  loc_18B9F5B:   End If
  loc_18B9F5B: End If
  loc_18B9F64: unk_52DB53.BeginTrans var_168
  loc_18B9F6D: var_86 = CByte(1) 'Byte
  loc_18B9F8E: var_D4 = "Select * from roomocc where DocId='"(CStr(CLng("Dial Facility"))).Caption
  loc_18B9F97: var_148 = -1 & CStr(CLng("Dial Facility"))
  loc_18B9F9E: var_14C = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME) VALUES(" & CStr(CLng("Dial Facility")) & "' and (Type is NULL or Type='') and Site_Code='"
  loc_18B9FAC: var_174 = var_14C & MemVar_1F95070 & "' and RoomNo='"
  loc_18B9FC3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_BC, var_194 & var_14C)
  loc_18B9FCB: var_174 = var_BC.Text
  loc_18B9FD4: var_178 = var_150 & var_194 & var_14C
  loc_18B9FDB: var_17C = var_178 & "'"
  loc_18B9FE4: unk_52DB53.Execute var_17C, , 
  loc_18B9FEF: Set var_94 = var_150
  loc_18BA01E: Set var_B4 = Me.Txt
  loc_18BA024: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10))
  loc_18BA037: Set var_BC = Me.Txt
  loc_18BA03D: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_150)
  loc_18BA058: Set var_154 = Me.Txt
  loc_18BA05E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_180)
  loc_18BA079: Set var_194 = Me.Txt
  loc_18BA07F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_198)
  loc_18BA09A: Set var_19C = Me.Txt
  loc_18BA0A0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_1A0)
  loc_18BA0A8: var_C0 = var_1A0.Text
  loc_18BA0DD: Proc_96_76_183EFE0(Me.Txt, var_150.Text, var_180.Text, var_198.Text)
  loc_18BA13F: var_E4 = Trim(CVar(Me.Recordset15.Fields.Item("DocID")))
  loc_18BA163: var_1D4 = "Select MAX(sno) AS SNO from RoomOcc  where DocId='" & var_E4 & "' and Site_Code='" & CVar(MemVar_1F95070) & "' and RoomNO='" 
  loc_18BA175: Set var_BC = Me.Txt
  loc_18BA17B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_150, var_C0, var_1D4, var_234)
  loc_18BA183: -1 = var_150.Text
  loc_18BA1A5: unk_52DB53.Execute CStr(var_154 & CVar(var_C0) & "'"), Val(var_C0), Val(var_C0)
  loc_18BA1B0: Set var_8C = var_154
  loc_18BA1EF: If (Me.Recordset15.RecordCount > 0) Then
  loc_18BA21B:   Proc_6_39_E7D3A0(var_E4, CVar(Me.Recordset15.Fields.Item("SNo")))
  loc_18BA228:   var_104 = (var_E4 + 1)
  loc_18BA22D:   var_8E = CInt("Select MAX(sno) AS SNO from RoomOcc  where DocId='" & var_E4)
  loc_18BA23F: Else
  loc_18BA241:   var_8E = 1
  loc_18BA244: End If
  loc_18BA25E: var_B8 = Me.Recordset15.Fields.Item("DocID")
  loc_18BA283: Proc_96_84_FFE61C(CStr(Trim(CVar(var_B8))), "E", var_8E)
  loc_18BA2BB: If CBool(Trim(CVar(var_B8(var_8E))) <> vbNullString) Then
  loc_18BA2DC:   Set var_B4 = Me.Txt
  loc_18BA2E2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_C0, "Update Booking Set OccRoom='")
  loc_18BA2EA:   var_1D4 = var_B8.Text
  loc_18BA2F3:   var_148 = -1 & var_C0
  loc_18BA31D:   var_14C = CStr(Trim(CVar(var_BC(CVar("E" & "' where docid='")))) & "'")
  loc_18BA327:   unk_52DB53.Execute var_14C, , 
  loc_18BA360:   var_148 = "E"
  loc_18BA36E:   Proc_96_85_FFD3FC(CStr(Trim(CVar(()))))
  loc_18BA381: End If
  loc_18BA39F: Set var_B4 = Me.Txt
  loc_18BA3A5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H27), var_B8, var_C0, "Update GuestFolio Set RoDisc='")
  loc_18BA3AD: var_1D4 = var_B8.Text
  loc_18BA3B6: var_148 = -1 & var_C0
  loc_18BA3BD: var_16C = var_148 & "',RSDisc='"
  loc_18BA3CE: Set var_BC = Me.Txt
  loc_18BA3D4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H28), var_150, var_14C)
  loc_18BA3DC: var_16C = var_150.Text
  loc_18BA42D: var_174 = CStr(CVar(var_194 & var_14C & "' where docid='") & Trim(CVar(Me.Recordset15.Fields.Item("DocID"))) & "'")
  loc_18BA437: unk_52DB53.Execute var_174, var_148, 
  loc_18BA47B: var_B4 = Me.Recordset15.Fields
  loc_18BA483: var_B8 = var_B4.Item("DocID")
  loc_18BA4A2: Set var_BC = Me.Txt
  loc_18BA4A8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA))
  loc_18BA4B0: var_1E4 = CVar(var_150) 'Address
  loc_18BA4D9: var_180 = Me.Txt.Fields.Item("vType")
  loc_18BA4E1: var_244 = var_180.Value
  loc_18BA4F1: Proc_6_17_EAAE40(var_294, MemVar_1F95070)
  loc_18BA510: var_198 = Me.Recordset15.Fields.Item("vPrefix")
  loc_18BA51F: Proc_6_17_EAAE40(var_2F4, CVar(var_198))
  loc_18BA53E: var_1A0 = Me.Recordset15.Fields.Item("GuestProf")
  loc_18BA54D: Proc_6_17_EAAE40(var_354, CVar(var_1A0))
  loc_18BA560: Set var_1A4 = Me.Txt
  loc_18BA566: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_388)
  loc_18BA56E: var_C0 = var_388.Tag
  loc_18BA590: var_3E0 = Me.Recordset15.Fields.Item("Roomtype")
  loc_18BA5AB: Set var_424 = Me.Txt
  loc_18BA5B1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_428)
  loc_18BA5CC: Set var_46C = Me.Txt
  loc_18BA5D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_470)
  loc_18BA5EA: Set var_4B4 = Me.Txt
  loc_18BA5F0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_4B8)
  loc_18BA5F8: var_4C8 = CVar(var_4B8) 'Address
  loc_18BA612: Set var_4CC = Me.Txt
  loc_18BA618: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_4D0)
  loc_18BA62D: var_1AC = Val(var_4D0.Tag)
  loc_18BA63E: Set var_4D4 = Me.Txt
  loc_18BA644: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_4D8, var_174)
  loc_18BA686: Set var_56C = Me.Txt
  loc_18BA68C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_570)
  loc_18BA69B: Proc_6_7_F26918(var_590, CVar(var_570))
  loc_18BA6AB: Set var_5C4 = Me.Txt
  loc_18BA6B1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_5C8)
  loc_18BA6C1: Set var_62C = Me.Txt
  loc_18BA6C7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_630)
  loc_18BA6F8: var_628 = (Format(CVar(var_5C8), "00") + ":")
  loc_18BA723: var_680 = (1 + Format(CVar(var_630), "00"))
  loc_18BA72A: Proc_6_17_EAAE40(var_690, var_680, 1, var_628)
  loc_18BA73D: Set var_6C4 = Me.Txt
  loc_18BA743: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_6C8, var_178)
  loc_18BA74B: 1 = var_6C8.Text
  loc_18BA758: var_1B4 = Val(var_178)
  loc_18BA769: Set var_70C = Me.Txt
  loc_18BA76F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_710, var_17C)
  loc_18BA784: var_B30 = Val(var_17C)
  loc_18BA7B0: Proc_6_7_F26918(var_788, CVar(Me.Recordset15.Fields.Item("DepDate")), var_B30)
  loc_18BA7ED: Proc_6_7_F26918(var_870, Date)
  loc_18BA800: Set var_8E4 = Me.Txt
  loc_18BA806: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H26), var_8E8, var_184)
  loc_18BA80E: 1 = var_8E8.Text
  loc_18BA821: Set var_92C = Me.Txt
  loc_18BA827: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H29), var_930)
  loc_18BA83F: Set var_974 = Me.Txt
  loc_18BA845: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_978)
  loc_18BA854: Proc_6_7_F26918(var_998, CVar(var_978))
  loc_18BA891: Set var_A24 = Me.Txt
  loc_18BA897: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_A28)
  loc_18BA8AC: var_B38 = Val(var_A28.Text)
  loc_18BA8BD: Set var_A6C = Me.Txt
  loc_18BA8C3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H33), var_A70, var_190)
  loc_18BA8D8: var_B40 = Val(var_190)
  loc_18BA8E9: Set var_AB4 = Me.Txt
  loc_18BA8EF: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H32), var_AB8, var_ABC)
  loc_18BA909: var_114 = "Insert Into RoomOcc (DocID,Sno,FolioNo,VType, Site_Code,vPrefix,GuestProf,RoomCat,RoomType,RoomNo,RateCode,RoomRate,ChkInDate,ChkInTime,aDult,Children,DepDate,DepTime,Type,U_Name,U_EntDt,U_AE,LogSite_Code,RRTaxInc,RRServiceChrg,ChngDate,Extrabed,RoomTarrif,RackRate,RoomTaxStru) Values ('"
  loc_18BA96D: var_324 = var_114 & Trim(CVar(var_B8)) & "'," & CVar(var_8E) & "," & Trim(var_1E4) & ",'" & var_244 & "'," & var_294 & "," & var_2F4 & "," 
  loc_18BA9BA: var_480 = CVar(var_470.Text) 'String
  loc_18BA9CD: var_548 = var_324 & var_354 & ",'" & CVar(var_C0) & "','" & var_3E0.Value & "','" & CVar(var_428.Text) & "','" & var_480 & "'," & IIf((Proc_6_38_E69628(var_4C8) = "Yes"), CVar(var_4D8.Text), CVar(Val(var_174))) 
  loc_18BA9E6: var_5C0 = var_548 & "," & var_590 & "," 
  loc_18BAA01: var_6E8 = var_5C0 & var_690 & "," & CVar(var_710.Text) 
  loc_18BAA48: var_830 = var_6E8 & "," & CVar(var_B30) & "," & var_788 & ",'" & Me.Recordset15.Fields.Item("DepTime").Value & "','','" & CVar(MemVar_1F950C8) 
  loc_18BAAA1: var_9A8 = var_830 & "'," & var_870 & ",'A','" & CVar(MemVar_1F95078) & "','" & CVar(var_184) & "','" & CVar(var_930.Text) & "'," & var_998 
  loc_18BAAEC: var_ADC = var_9A8 & "," & Me.Txt.Fields.Item("ExtraBed").Value & "," & CVar(var_A70.Text) & "," & CVar(var_AB8.Text) & ",'" & CVar(var_ABC) 
  loc_18BAB03: unk_52DB53.Execute CStr(var_ADC & "')"), var_B20, -1
  loc_18BAC48: Set var_B4 = Me.Txt
  loc_18BAC4E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_B8)
  loc_18BAC7D: Set var_BC = Me.Txt
  loc_18BAC83: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_150, var_C0)
  loc_18BAC8B: (Trim(CVar(var_B8)) <> vbNullString) = var_150.Tag
  loc_18BACB7: If CBool(var_B24 And (var_C0 <> vbNullString)) Then
  loc_18BACC8:   Set var_B4 = Me.Txt
  loc_18BACCE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_B8)
  loc_18BACD6:   var_C0 = var_B8.Tag
  loc_18BACE9:   Set var_BC = Me.Txt
  loc_18BACEF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_150)
  loc_18BACF7:   var_14C = var_150.Text
  loc_18BAD04:   var_1AC = Val(var_14C)
  loc_18BAD12:   Set var_154 = Me.Txt
  loc_18BAD18:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2B), var_180)
  loc_18BAD20:   var_D4 = CVar(var_180) 'Address
  loc_18BAD27:   var_E4 = Trim(var_D4)
  loc_18BAD37:   Set var_194 = Me.Txt
  loc_18BAD3D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2C), var_198)
  loc_18BAD4C:   Proc_6_39_E7D3A0(var_1E4, CVar(var_198))
  loc_18BAD5C:   Set var_19C = Me.Txt
  loc_18BAD62:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H2D), var_1A0)
  loc_18BAD71:   Proc_6_39_E7D3A0(var_244, CVar(var_1A0))
  loc_18BAD96:   var_304 = CVar(Proc_6_15_EF37AC(var_150)) 'String
  loc_18BAD9C:   Proc_6_7_F26918(var_324)
  loc_18BADDD:   Set var_3CC = Me.Txt
  loc_18BADE3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_3E0)
  loc_18BAE17:   var_174 = "Update RoomOcc Set PlanCode='" & var_C0 & "',PlanAmt=" & CStr(var_1AC)
  loc_18BAE57:   var_2E4 = CVar(var_174 & ",IncInRate='") & var_E4 & "',PlanDisc=" & var_1E4 & ",PlanDiscAmt=" & var_244 & ",PlanDiscAppOn='" & CVar(Proc_6_38_E69628(Trim(CVar(Me.LblDiscAppOn)), var_1AC)) 
  loc_18BAE7A:   var_364 = var_2E4 & "',U_EntDt=" & var_324 & ",U_AE='E' where Sno=" & CVar(var_8E) 
  loc_18BAEA6:   var_420 = var_364 & " And DocId='" & Trim(CVar(Me.LblDiscAppOn.Fields.Item("DocID"))) & "' and Site_Code='" & CVar(MemVar_1F95070) & "' and RoomNO='" 
  loc_18BAEC7:   unk_52DB53.Execute CStr(var_420 & CVar(var_3E0.Text) & "'"), var_480, -1
  loc_18BAF3F: End If
  loc_18BAF5D: Set var_B4 = Me.Txt
  loc_18BAF63: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_C0, "Update GuestMessage set RoomNo='", var_D4)
  loc_18BAF6B: -1 = var_B8.Text
  loc_18BAF7B: var_16C = var_19C & var_C0 & "',RoomCat='"
  loc_18BAF8C: Set var_BC = Me.Txt
  loc_18BAF92: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_150, var_14C)
  loc_18BAF9A: var_16C = var_150.Tag
  loc_18BAFAA: var_178 = var_424 & var_14C & "' where FolioNo="
  loc_18BAFBB: Set var_154 = Me.Txt
  loc_18BAFC1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_180, var_174)
  loc_18BAFC9: var_178 = var_180.Text
  loc_18BAFF8: Set var_194 = Me.Txt
  loc_18BAFFE: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_198)
  loc_18BB01F: unk_52DB53.Execute var_304 & var_174 & " and LogSite_Code='" & MemVar_1F95078 & "' and RoomNO='" & var_198.Text & "'", , 
  loc_18BB066: Set var_B4 = Me.Txt
  loc_18BB06C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4))
  loc_18BB07B: Proc_6_7_F26918(var_E4, CVar(var_B8))
  loc_18BB08B: Set var_BC = Me.Txt
  loc_18BB091: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_150)
  loc_18BB0B5: var_1E4 = Format(CVar(var_150), "00")
  loc_18BB0C5: Set var_154 = Me.Txt
  loc_18BB0CB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_180, 1)
  loc_18BB0EF: var_244 = Format(CVar(var_180), "00")
  loc_18BB102: Set var_194 = Me.Txt
  loc_18BB108: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_198, var_C0, 1)
  loc_18BB110: 1 = var_198.Text
  loc_18BB120: Set var_19C = Me.Txt
  loc_18BB126: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_1A0)
  loc_18BB12E: var_2F4 = CVar(var_1A0) 'Address
  loc_18BB135: Proc_6_17_EAAE40(var_304, var_2F4)
  loc_18BB145: Proc_6_7_F26918(var_364, CVar(Proc_6_15_EF37AC(1)))
  loc_18BB186: Set var_3CC = Me.Txt
  loc_18BB18C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_3E0)
  loc_18BB1C3: var_1F4 = (var_1E4 + ":")
  loc_18BB1CA: var_254 = (CVar(var_174 & ",IncInRate='") & var_E4 & "',PlanDisc=" & var_1E4 + var_244)
  loc_18BB1CE: var_274 = "Update RoomOcc set CHKOUTDATE=" & var_E4 & ",CHKOUTTIME='" & CVar(var_174 & ",IncInRate='") & var_E4 & "',PlanDisc=" & var_1E4 & ",PlanDiscAmt=" & var_244 
  loc_18BB201: var_384 = var_274 & "',Type='C',NewRoomNo='" & CVar(var_C0) & "',Reason=" & var_304 & ",U_EntDt=" & var_364 
  loc_18BB214: var_2B4 = CVar((var_8E - 1)) 'Integer
  loc_18BB230: var_438 = var_384 & ",U_AE='E' where Sno=" & CVar(MemVar_1F95070) & " And DocId='" & Trim(CVar(Me.Txt.Fields.Item("DocID"))) & "' and Site_Code='" 
  loc_18BB264: unk_52DB53.Execute CStr(var_438 & CVar(MemVar_1F95070) & "' and RoomNO='" & CVar(var_3E0.Text) & "'"), var_4C8, -1
  loc_18BB2DB: Set var_B4 = Me.Txt
  loc_18BB2E1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8)
  loc_18BB309: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_150, Trim(CVar(var_B8)))
  loc_18BB334: If CBool(var_424 <> Trim(CVar(var_150))) Then
  loc_18BB354:   Set var_B4 = Me.Txt
  loc_18BB35A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_B8, "Update RoomMast set RoomStat='D' Where Type='RO' And Code='", var_1E4)
  loc_18BB371:   var_104 = -1 & Trim(CVar(var_B8)) 
  loc_18BB38D:   var_1D4 = CVar(var_150) & "' And Site_Code='" & CVar(MemVar_1F95070) & "'" 
  loc_18BB39B:   unk_52DB53.Execute CStr(var_1D4), Me.Txt, var_B8
  loc_18BB3BB: End If
  loc_18BB3E7: var_B8 = Me.Recordset15.Fields.Item("DocID")
  loc_18BB416: Set var_BC = Me.Txt
  loc_18BB41C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_150, "Delete from PlanDetails where DocId='" & Trim(CVar(var_B8)) & "' And PlanAppDate=")
  loc_18BB42B: Proc_6_7_F26918(var_1D4, CVar(var_150), var_244)
  loc_18BB433: var_1E4 = -1 & var_1D4 
  loc_18BB453: var_C0 = CStr(var_1E4 & " And Site_Code='" & CVar(MemVar_1F95070) & "'")
  loc_18BB45D: unk_52DB53.Execute var_C0, var_154, 
  loc_18BB492: Set var_B4 = Me.Txt
  loc_18BB498: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E))
  loc_18BB4C7: Set var_BC = Me.Txt
  loc_18BB4CD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_150, var_C0)
  loc_18BB4D5: (Trim(CVar(var_B8)) <> vbNullString) = var_150.Tag
  loc_18BB514: If CBool(var_B8 And (var_C0 <> vbNullString) And (global_110 = &HFF)) Then
  loc_18BB522:   Set var_B4 = Me.FGrid3
  loc_18BB53F:   For var_B44 = CByte(1) To CByte((CLng(var_B4.Rows) - 1)): var_96 = var_B44 'Byte
  loc_18BB552:     var_124 = CVar(CLng(2)) 'Long
  loc_18BB56C:     var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_18BB57D:     If (var_C0 <> vbNullString) Then
  loc_18BB58E:       Set var_B4 = Me.Txt
  loc_18BB594:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_B8, var_C0)
  loc_18BB59C:       var_124 = var_B8.Text
  loc_18BB5A9:       var_1AC = Val(var_C0)
  loc_18BB5B7:       Set var_BC = Me.Txt
  loc_18BB5BD:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_150, var_1AC)
  loc_18BB5D6:       var_F4 = CVar(CLng(var_96)) 'Long
  loc_18BB5DE:       var_124 = CVar(CLng(2)) 'Long
  loc_18BB5ED:       var_E4 = Me.FGrid3.TextMatrix)
  loc_18BB5FE:       var_1C4 = CVar(CLng(var_96)) 'Long
  loc_18BB606:       var_224 = CVar(CLng(&H11)) 'Long
  loc_18BB615:       var_104 = Me.FGrid3.TextMatrix)
  loc_18BB626:       var_284 = CVar(CLng(var_96)) 'Long
  loc_18BB62E:       var_2D4 = CVar(CLng(5)) 'Long
  loc_18BB63D:       var_144 = Me.FGrid3.TextMatrix)
  loc_18BB64E:       var_334 = CVar(CLng(var_96)) 'Long
  loc_18BB656:       var_3B8 = CVar(CLng(3)) 'Long
  loc_18BB676:       var_410 = CVar(CLng(var_96)) 'Long
  loc_18BB67E:       var_4A0 = CVar(CLng(&HB)) 'Long
  loc_18BB69E:       var_4F8 = CVar(CLng(var_96)) 'Long
  loc_18BB6A6:       var_558 = CVar(CLng(&HC)) 'Long
  loc_18BB6C6:       var_5E8 = CVar(CLng(var_96)) 'Long
  loc_18BB6CE:       var_650 = CVar(CLng(&HD)) 'Long
  loc_18BB6EE:       var_6D8 = CVar(CLng(var_96)) 'Long
  loc_18BB6F6:       var_720 = CVar(CLng(&HE)) 'Long
  loc_18BB720:       var_764 = CVar(CLng(var_96)) 'Long
  loc_18BB728:       var_7CC = CVar(CLng(6)) 'Long
  loc_18BB752:       var_820 = CVar(CLng(var_96)) 'Long
  loc_18BB75A:       var_890 = CVar(CLng(7)) 'Long
  loc_18BB784:       var_8D0 = CVar(CLng(var_96)) 'Long
  loc_18BB78C:       var_960 = CVar(CLng(8)) 'Long
  loc_18BB7AE:       var_B40 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BB7E0:       var_EC4 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BB812:       var_ECC = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BB844:       var_ED4 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BB874:       Proc_6_7_F26918(var_2F4, CVar(CStr(Me.FGrid3.TextMatrix))), CVar(CLng(&H13)), CVar(CLng(var_96)), var_ED4, CVar(CLng(&H12)), CVar(CLng(var_96)), var_ECC)
  loc_18BB8A6:       Proc_6_17_EAAE40(var_384, CVar(CStr(Me.FGrid3.TextMatrix))), CVar(CLng(&H15)), CVar(CLng(var_96)), CVar(CLng(&HA)), CVar(CLng(var_96)))
  loc_18BB8B6:       Proc_6_7_F26918(var_438, MemVar_1F950EC, var_EC4, CVar(CLng(9)))
  loc_18BB8C8:       var_D54 = CVar(CLng(&HF)) 'Long
  loc_18BB8EA:       var_EDC = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BB91C:       var_EE4 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BB92D:       Set var_4D4 = Me.Txt
  loc_18BB933:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_4D8, var_DD0, var_EE4, CVar(CLng(&H14)), CVar(CLng(var_96)), var_EDC)
  loc_18BB93B:       var_D54 = var_4D8.Tag
  loc_18BB979:       Set var_5C4 = Me.Txt
  loc_18BB97F:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_5C8, CVar(CLng(var_96)), CVar(CLng(var_96)))
  loc_18BB98E:       Proc_6_39_E7D3A0(var_5C0, CVar(var_5C8), var_B40)
  loc_18BB9C2:       var_EEC = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_18BB9D0:       Set var_630 = Me.Txt
  loc_18BB9D6:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_6C4, var_EEC, CVar(CLng(&H14)))
  loc_18BB9E5:       Proc_6_7_F26918(var_690, CVar(var_6C4), CVar(CLng(var_96)))
  loc_18BBA03:       var_14C = "Insert Into PlanDetails (FolioNo,RoomNo,RevCode,Chrgcode,TaxInc,TaxStru,PrintOption,PostingMethod,ChargeType,FlatRate,Adult,Child,ExtraAdult,ExtraChild,NoOfDays,PlanPer,App_Date,FixRate,Site_Code,U_Name,U_EntDt,U_AE,Amount,PlanCode,Docid,NetPackageAmount,Logsite_Code,DiscAmt,PlanAppDate) Values (" & CStr(var_1AC)
  loc_18BBA3F:       var_ABC = var_14C & ",'" & Proc_6_38_E69628(CVar(var_150), CVar(CLng(var_96))) & "','" & CStr(var_E4) & "','" & CStr(var_104) & "','"
  loc_18BBA80:       var_B68 = var_ABC & CStr(var_144) & "','" & CStr(Me.FGrid3.TextMatrix)) & "','" & CStr(Me.FGrid3.TextMatrix)) & "','" & CStr(Me.FGrid3.TextMatrix))
  loc_18BBAB8:       var_B94 = var_B68 & "','" & CStr(Me.FGrid3.TextMatrix)) & "'," & CStr(Val(CStr(Me.FGrid3.TextMatrix)))) & "," & CStr(Val(CStr(Me.FGrid3.TextMatrix))))
  loc_18BBB04:       var_BD4 = var_B94 & "," & CStr(Val(CStr(Me.FGrid3.TextMatrix)))) & "," & CStr(var_B40) & "," & CStr(var_EC4) & "," & CStr(var_ECC)
  loc_18BBB5A:       var_400 = CVar(var_BD4 & "," & CStr(var_ED4) & ",") & var_2F4 & "," & var_384 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_18BBB7E:       var_DBC = CVar((var_EDC - var_EE4)) 'Double
  loc_18BBBA5:       var_580 = var_400 & "'," & var_438 & ",'A'," & var_DBC & ",'" & CVar(var_DD0) & "','" & Trim(CVar(Me.Recordset15.Fields.Item("DocID"))) 
  loc_18BBC03:       unk_52DB53.Execute CStr(var_580 & "'," & var_5C0 & ",'" & CVar(MemVar_1F95078) & "'," & CVar(var_EEC) & "," & var_690 & ")"), var_6E8, -1
  loc_18BBD35:     End If
  loc_18BBD38:   Next var_B44 'Byte
  loc_18BBD3E: End If
  loc_18BBD44: unk_52DB53.CommitTrans
  loc_18BBD4E: Set var_8C = Nothing
  loc_18BBD55: var_86 = CByte(0) 'Byte
  loc_18BBD59: Call Proc_59_41_E9BB68()
  loc_18BBD69: Me.Requery -1
  loc_18BBD73: Set var_94 = Nothing
  loc_18BBD76: Exit Sub
  loc_18BBD77: ' Referenced from: 18B9858
  loc_18BBD80: If (CInt(var_86) = 1) Then
  loc_18BBD89:   unk_52DB53.RollbackTrans
  loc_18BBD8E: End If
  loc_18BBD96: Set var_B4 = Err()
  loc_18BBD9C: Call 0.Method_arg_2C (var_C0)
  loc_18BBDB5: MsgBox(CVar(var_C0), &H10, var_E4, var_104, var_144)
  loc_18BBDC8: Exit Sub
End Sub

Private Sub BtnEnh1_UnknownEvent_9 'DFF78C
  'Data Table: 52DB34
  Dim .global_-17328 As Long
  loc_DFF784: Call TopCtrl1_UnknownEvent_16()
  loc_DFF789: Exit Sub
  loc_DFF78A: .global_-17328 = 
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1AF8C
  'Data Table: 52DB34
  Dim var_4301 As Double
  loc_E1AF81: Me.Global.Unload Me
  loc_E1AF89: Exit Sub
  loc_E1AF8A: var_4301 = 
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F40614
  'Data Table: 52DB34
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4050B: Me.DGRoomNo.Visible = False
  loc_F4052A: If (Me.RecordCount > 0) Then
  loc_F40569:   Set var_B4 = Me.Txt
  loc_F4056F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F40577:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F405AA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F405C9:   Set var_B4 = Me.Txt
  loc_F405CF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F405D7:   var_B8.Text = CStr(var_B0.Value)
  loc_F405ED: End If
  loc_F405F8: Set var_A8 = Me.Txt
  loc_F405FE: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F40606: var_B0.SetFocus
  loc_F40612: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9BC20
  'Data Table: 52DB34
  Dim var_A8 As Variant
  loc_E9BBA4: Set var_88 = Me.DGRoomNo
  loc_E9BBCE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9BBD6: Set var_BC = Me.DGRoomNo
  loc_E9BBF6: Set var_BC = var_A8(DGRoomNo.DispID_1B)
  loc_E9BC10: Proc_6_138_106E830(Me.DGRoomNo, global_88, 0)
  loc_E9BC1E: Exit Sub
End Sub

Private Sub CmdOK_Click() '1417EE8
  'Data Table: 52DB34
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_98 As TextBox
  Dim var_148 As Double
  Dim var_124 As TextBox
  Dim var_150 As Double
  Dim var_130 As TextBox
  Dim var_158 As Double
  Dim var_13C As TextBox
  Dim var_160 As Double
  Dim var_164 As String
  Dim var_178 As TextBox
  Dim var_200 As Double
  Dim var_184 As TextBox
  Dim var_208 As Double
  Dim var_16C As TextBox
  Dim var_18C As String
  Dim var_210 As Double
  Dim var_118 As Variant
  Dim var_1D8 As Variant
  Dim var_94 As Frame
  loc_14174C1: Set var_94 = Me.Lbl
  loc_14174C7: Call 0.Method_CmdOK_Click0 (&H3F)
  loc_14174D6: var_B8 = Trim(CVar(var_98))
  loc_14174F0: If (var_B8 = vbNullString) Then
  loc_1417501:   var_C8 = "Re-Check Package Details"
  loc_141750C:   MsgBox(vbNullString, 0, var_B8, var_D8, var_118)
  loc_141751C:   Exit Sub
  loc_141751D: End If
  loc_141752B: Set var_94 = Me.Txt
  loc_1417531: Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_98)
  loc_1417550: If (var_98.Text = "No") Then
  loc_1417561:   Set var_94 = Me.Txt
  loc_1417567:   Call 0.Method_CmdOK_Click0 (CInt(&H19), var_98)
  loc_141756F:   var_11C = var_98.Text
  loc_141757C:   var_148 = Val(var_11C)
  loc_141758D:   Set var_120 = Me.Txt
  loc_1417593:   Call 0.Method_CmdOK_Click0 (CInt(&H2D), var_124, var_128)
  loc_14175A8:   var_150 = Val(var_128)
  loc_14175B9:   Set var_12C = Me.Txt
  loc_14175BF:   Call 0.Method_CmdOK_Click0 (CInt(&H30), var_130, var_134)
  loc_14175D4:   var_158 = Val(var_134)
  loc_14175E5:   Set var_138 = Me.Txt
  loc_14175EB:   Call 0.Method_CmdOK_Click0 (CInt(&H10), var_13C, var_140)
  loc_1417612:   var_B8 = "0"
  loc_1417627:   var_A8 = CVar((((var_124.Text - var_130.Text) - var_13C.Text) - Val(var_140))) 'Double
  loc_141762E:   var_D8 = Format(vbNullString, var_B8)
  loc_1417665:   If CBool(var_D8 <> 0) Then
  loc_1417681:     MsgBox("Invalid Package Amount", 0, var_B8, var_D8, var_118)
  loc_1417691:     Exit Sub
  loc_1417692:   End If
  loc_1417695: Else
  loc_14176A3:   Set var_94 = Me.Txt
  loc_14176A9:   Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_98, var_11C, 1)
  loc_14176B1:   1 = var_98.Text
  loc_14176C8:   If (var_11C = "Yes") Then
  loc_14176D9:     Set var_12C = Me.Txt
  loc_14176DF:     Call 0.Method_CmdOK_Click0 (CInt(&H2D), var_130, var_134)
  loc_14176E7:     var_160 = var_130.Text
  loc_14176F4:     var_150 = Val(var_134)
  loc_1417705:     Set var_138 = Me.Txt
  loc_141770B:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_13C, var_140)
  loc_1417720:     var_158 = Val(var_140)
  loc_1417731:     Set var_120 = Me.Txt
  loc_1417737:     Call 0.Method_CmdOK_Click0 (CInt(&H30), var_124, var_128)
  loc_1417756:     var_164 = CStr(((Val(var_128) + var_13C.Tag) + var_124.Text))
  loc_141775E:     var_160 = Val(var_164)
  loc_141776F:     Set var_174 = Me.Txt
  loc_1417775:     Call 0.Method_CmdOK_Click0 (CInt(&H2D), var_178, var_17C)
  loc_141778A:     var_200 = Val(var_17C)
  loc_141779B:     Set var_180 = Me.Txt
  loc_14177A1:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_184, var_188)
  loc_14177B6:     var_208 = Val(var_188)
  loc_14177C7:     Set var_168 = Me.Txt
  loc_14177CD:     Call 0.Method_CmdOK_Click0 (CInt(&H30), var_16C, var_170)
  loc_14177EC:     var_18C = CStr(((Val(var_170) + var_184.Tag) + var_16C.Text))
  loc_141780F:     var_118 = CVar(Val(var_18C)) 'Double
  loc_1417829:     Set var_94 = Me.Txt
  loc_141782F:     Call 0.Method_CmdOK_Click0 (CInt(&H19), var_98, var_11C, 1)
  loc_1417837:     1 = var_98.Text
  loc_1417858:     var_B8 = "0.00"
  loc_1417868:     var_D8 = Format(CVar(var_178.Text), var_B8)
  loc_141788F:     Proc_6_142_14A62A0(CSng(Format(var_118, "0.00")), CByte(0), "U", 2, var_D8)
  loc_1417898:     var_1D8 = (1 + CVar(1))
  loc_14178E5:     If CBool(CVar(Val(var_11C)) <> var_1D8) Then
  loc_1417901:       MsgBox("Invalid Room Rate", 0, var_B8, var_D8, var_118)
  loc_1417911:       Exit Sub
  loc_1417912:     End If
  loc_1417912:   End If
  loc_1417912: End If
  loc_1417920: Set var_94 = Me.Txt
  loc_1417926: Call 0.Method_CmdOK_Click0 (CInt(&H30), var_98, var_11C)
  loc_141792E: var_210 = var_98.Text
  loc_141794A: If (CDbl(Val(var_11C)) < CDbl(0)) Then
  loc_1417966:   MsgBox("Invalid Meal Charges", &H40, var_B8, var_D8, var_118)
  loc_1417981:   Set var_94 = Me.Txt
  loc_1417987:   Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_141798F:   var_98.SetFocus
  loc_141799B:   Exit Sub
  loc_141799C: End If
  loc_14179AA: Set var_94 = Me.Txt
  loc_14179B0: Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_14179D9: Set var_120 = Me.Txt
  loc_14179DF: Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_124)
  loc_14179EE: var_B8 = Trim(CVar(var_124))
  loc_1417A00: var_118 = (CDbl(Val(var_98.Text)) = CDbl(0)) And (var_B8 = "Yes")
  loc_1417A1B: If CBool(var_118) Then
  loc_1417A37:   MsgBox("Invalid Room Rate", &H40, var_B8, var_D8, var_118)
  loc_1417A52:   Set var_94 = Me.Txt
  loc_1417A58:   Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_1417A60:   var_98.SetFocus
  loc_1417A6C:   Exit Sub
  loc_1417A6D: End If
  loc_1417A7B: Set var_94 = Me.Txt
  loc_1417A81: Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_1417AA5: If (CDbl(Val(var_98.Text)) < CDbl(0)) Then
  loc_1417AC1:   MsgBox("Negative Room Rate", &H40, var_B8, var_D8, var_118)
  loc_1417ADC:   Set var_94 = Me.Txt
  loc_1417AE2:   Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_1417AEA:   var_98.SetFocus
  loc_1417AF6:   Exit Sub
  loc_1417AF7: End If
  loc_1417B02: If (global_132 = "Yes") Then
  loc_1417B13:   Set var_94 = Me.Txt
  loc_1417B19:   Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98)
  loc_1417B21:   var_11C = var_98.Text
  loc_1417B42:   Set var_120 = Me.Txt
  loc_1417B48:   Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_124)
  loc_1417B57:   var_B8 = Trim(CVar(var_124))
  loc_1417B69:   var_118 = (CDbl(Val(var_11C)) <> CDbl(0)) And (var_B8 = "Yes")
  loc_1417B84:   If CBool(var_118) Then
  loc_1417B95:     Set var_120 = Me.Txt
  loc_1417B9B:     Call 0.Method_CmdOK_Click0 (CInt(&H33), var_124)
  loc_1417BB0:     var_160 = Val(var_124.Text)
  loc_1417BC1:     Set var_12C = Me.Txt
  loc_1417BC7:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_130, var_134)
  loc_1417BDC:     var_200 = Val(var_134)
  loc_1417BED:     Set var_138 = Me.Txt
  loc_1417BF3:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_13C, var_140)
  loc_1417C08:     var_208 = Val(var_140)
  loc_1417C19:     Set var_168 = Me.Txt
  loc_1417C1F:     Call 0.Method_CmdOK_Click0 (CInt(&H32), var_16C, var_17C)
  loc_1417C5A:     Proc_96_79_17AFC38(var_130.Tag, var_13C.Text, var_16C.Text, "Yes")
  loc_1417C5F:     var_210 = "Yes"
  loc_1417C70:     Set var_94 = Me.Txt
  loc_1417C76:     Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98, var_11C)
  loc_1417CBD:     If (CDbl(Abs((Val(var_11C) - var_98.Tag))) > CDbl(1)) Then
  loc_1417CD9:       MsgBox("Block Range Room Rate Inc.", &H40, var_B8, var_D8, var_118)
  loc_1417CF4:       Set var_94 = Me.Txt
  loc_1417CFA:       Call 0.Method_CmdOK_Click0 (CInt(&H19), var_98)
  loc_1417D02:       var_98.SetFocus
  loc_1417D0E:       Exit Sub
  loc_1417D0F:     End If
  loc_1417D0F:   End If
  loc_1417D0F: End If
  loc_1417D1F: Me.FrPackage.ZOrder 1
  loc_1417D33: Me.FrPackage.Visible = False
  loc_1417D47: Me.Frame1.Enabled = True
  loc_1417D5A: Set var_94 = Me.Txt
  loc_1417D60: Call 0.Method_CmdOK_Click0 (CInt(&H18), var_98)
  loc_1417D89: If (Proc_6_27_EA61EC(var_98, "Plan/Package") = 0) Then
  loc_1417D93:   Call Txt_GotFocus(CInt(&H18))
  loc_1417D98:   Exit Sub
  loc_1417D99: End If
  loc_1417DA4: Set var_94 = Me.Txt
  loc_1417DAA: Call 0.Method_CmdOK_Click0 (CInt(&H2B), var_98)
  loc_1417DD3: If (Proc_6_27_EA61EC(var_98, "Inc.in Rate") = 0) Then
  loc_1417DDD:   Call Txt_GotFocus(CInt(&H2B))
  loc_1417DE2:   Exit Sub
  loc_1417DE3: End If
  loc_1417DEE: Set var_94 = Me.Txt
  loc_1417DF4: Call 0.Method_CmdOK_Click0 (CInt(&H19), var_98)
  loc_1417DFC: var_11C = "Plan/Package Amount"
  loc_1417E1D: If (Proc_6_27_EA61EC(var_98, var_11C) = 0) Then
  loc_1417E27:   Call Txt_GotFocus(CInt(&H19))
  loc_1417E2C:   Exit Sub
  loc_1417E2D: End If
  loc_1417E3B: Set var_94 = Me.Txt
  loc_1417E41: Call 0.Method_CmdOK_Click0 (CInt(&H2E), var_98, var_11C)
  loc_1417E49: var_17C = var_98.Text
  loc_1417E65: If (CDbl(Val(var_11C)) = CDbl(0)) Then
  loc_1417E73:   Set var_94 = Me.Txt
  loc_1417E79:   Call 0.Method_CmdOK_Click0 (CInt(&H10), var_98)
  loc_1417E81:   var_98.SetFocus
  loc_1417E90: Else
  loc_1417E9B:   Set var_94 = Me.Txt
  loc_1417EA1:   Call 0.Method_CmdOK_Click0 (CInt(&H29), var_98)
  loc_1417EA9:   var_98.SetFocus
  loc_1417EB5: End If
  loc_1417EC3: Set var_94 = Me.Txt
  loc_1417EC9: Call 0.Method_CmdOK_Click0 (CInt(&H27), var_98)
  loc_1417ED1: var_98.Text = vbNullString
  loc_1417EE2: Set var_88 = Nothing
  loc_1417EE5: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_0 'E612C4
  'Data Table: 52DB34
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6128F: Me.FGrid3.BackColorSel = CVar(CLng("14737632"))
  loc_E612A2: Set var_A8 = Me.TxtGrid
  loc_E612A8: Call 0.Method_FGrid3_UnknownEvent_00 (0, var_AC)
  loc_E612B0: var_AC.Visible = False
  loc_E612BC: Call Proc_59_42_F6EAAC()
  loc_E612C1: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_9 'DFEA6C
  'Data Table: 52DB34
  loc_DFEA64: Call Proc_59_51_DFE25C()
  loc_DFEA69: Exit Sub
End Sub

Public Sub FGrid3_UnknownEvent_A(arg_C, arg_10) '10674C4
  'Data Table: 52DB34
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim arg_C As Integer
  Dim var_DC As Long
  Dim var_D8 As Variant
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1067248: Set var_88 = Me.TopCtrl1
  loc_106724E: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1067293: If ((CStr() = "Browse") And ((((CLng(arg_C) = &H24) Or (CLng(arg_C) = &H23)) Or (CLng(arg_C) = &H21)) Or (CLng(arg_C) = &H22))) Then
  loc_106729C:   Call Form_KeyDown(arg_C, arg_10)
  loc_10672A1: End If
  loc_10672A5: Set var_88 = Me.TopCtrl1
  loc_10672AB: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10672C4: If (CStr() = "Browse") Then
  loc_10672C7:   Exit Sub
  loc_10672C8: End If
  loc_106733C: If ((CLng(arg_C) = &H26) And (CDbl(Val(CStr(Me.FGrid3.Tag))) = CDbl((CLng(Me.FGrid3.Rows) - (CLng(Me.FGrid3.Rows) - 1))))) Then
  loc_1067347:   var_9C = "+{Tab}"
  loc_106734D:   Proc_303_0_FBACC8(CStr(Me.FGrid3.Tag), 0)
  loc_1067357:   arg_C = 0
  loc_106735D: Else
  loc_1067367:   var_B0 = Me.FGrid3.Rows
  loc_10673B4:   If ((CLng(arg_C) = &H28) And (CDbl(Val(CStr(Me.FGrid3.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_10673C5:     Proc_303_0_FBACC8("{Tab}", 0, var_B0)
  loc_10673CF:     arg_C = 0
  loc_10673D2:   End If
  loc_10673D2: End If
  loc_10673D8: global_108 = arg_C
  loc_10673FE: Me.FGrid3.Tag = CVar(CStr(CLng(Me.FGrid3.Row)))
  loc_1067422: If ((CLng(arg_C) = &H2E) And (arg_10 = 0)) Then
  loc_1067438:   var_DC = CLng(Me.FGrid3.Col)
  loc_1067448:   If Not (var_DC = CLng(&H12)) Then
  loc_1067452:     If (var_DC = CLng(&HF)) Then
  loc_1067455:     End If
  loc_1067468:     var_D8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1067480:     var_FC = CVar(CLng(Me.FGrid3.Col)) 'Long
  loc_1067485:     var_11C = vbNullString
  loc_106748F:     Set var_B4 = Me.FGrid3
  loc_1067495:     LateIdCallSt
  loc_10674AD:   End If
  loc_10674AD: End If
  loc_10674B3: If (arg_C = &HD) Then
  loc_10674BB:   global_68 = 0
  loc_10674BE: End If
  loc_10674C0: arg_C = 0
  loc_10674C3: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_B 'E105B8
  'Data Table: 52DB34
  loc_E105A9: Call FGrid3_UnknownEvent_C()
  loc_E105B3: global_68 = 0
  loc_E105B6: Exit Sub
End Sub

Public Sub FGrid3_UnknownEvent_C(Index As Integer) 'EF0548
  'Data Table: 52DB34
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_EF048C: Set var_88 = Me.TopCtrl1
  loc_EF0492: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_EF04AB: If (CStr() = "Browse") Then
  loc_EF04AE:   Exit Sub
  loc_EF04AF: End If
  loc_EF04C2: var_A0 = CLng(Me.FGrid3.Col)
  loc_EF04D2: If Not (var_A0 = CLng(&H12)) Then
  loc_EF04DC:   If (var_A0 = CLng(&HF)) Then
  loc_EF04DF:   End If
  loc_EF051D:   Proc_6_63_110B734(Me, Me.FGrid3, Me.TxtGrid, 0)
  loc_EF052F: End If
  loc_EF0539: If (CLng(Index) <> &HD) Then
  loc_EF0541:   global_68 = &HFF
  loc_EF0544: End If
  loc_EF0544: Exit Sub
End Sub

Private Sub FGrid3_UnknownEvent_D 'E68394
  'Data Table: 52DB34
  Dim var_8C As MSHFlexGrid
  loc_E6834C: Set var_8C = Me.TopCtrl1
  loc_E68352: Call {33AD4EF2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E6836B: If (CStr() = "Browse") Then
  loc_E6836E:   Exit Sub
  loc_E6836F: End If
  loc_E6838C: If (CLng(Me.FGrid3.ColSel) = CLng(0)) Then
  loc_E6838F:   Exit Sub
  loc_E68390: End If
  loc_E68390: Exit Sub
End Sub

Public Function MasterFormExitGet() '52F6F8
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '52F707
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '52F716
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '52F725
  mVType = Value
End Sub

Public Property Get OpenMode() 'E07390
  'Data Table: 52DB34
  loc_E07389: OpenMode = global_104
End Sub

Public Property Let OpenMode(vNewValue) 'E02968
  'Data Table: 52DB34
  loc_E02965: Exit Sub
  loc_E02966: Set var_4304 = vNewValue
End Sub

Public Sub Proc_59_40_106C930(arg_C) '106C930
  'Data Table: 52DB34
  Dim var_98 As TextBox
  loc_106C6A2: Set var_8C = Me.Txt
  loc_106C6A8: Call 0.Method_Proc_59_40_106C930C (var_8E, var_86)
  loc_106C6B8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_106C6CE:   Set var_8C = Me.Txt
  loc_106C6D4:   Call 0.Method_Proc_59_40_106C9300 (CInt(var_86), var_98)
  loc_106C6DC:   var_98.Enabled = arg_C
  loc_106C6EB: Next var_92 'Byte
  loc_106C6FE: Set var_8C = Me.Txt
  loc_106C704: Call 0.Method_Proc_59_40_106C9300 (CInt(&H1F), var_98)
  loc_106C70C: var_98.Enabled = False
  loc_106C725: Set var_8C = Me.Txt
  loc_106C72B: Call 0.Method_Proc_59_40_106C9300 (CInt(&H2A), var_98)
  loc_106C733: var_98.Enabled = False
  loc_106C74C: Set var_8C = Me.Txt
  loc_106C752: Call 0.Method_Proc_59_40_106C9300 (CInt(&H30), var_98)
  loc_106C75A: var_98.Enabled = False
  loc_106C773: Set var_8C = Me.Txt
  loc_106C779: Call 0.Method_Proc_59_40_106C9300 (CInt(&H33), var_98)
  loc_106C781: var_98.Enabled = False
  loc_106C79F: If ((MemVar_1F950B8 = 0) And (global_112 <> "Yes")) Then
  loc_106C7AF:   Set var_8C = Me.Txt
  loc_106C7B5:   Call 0.Method_Proc_59_40_106C9300 (CInt(&H10), var_98)
  loc_106C7BD:   var_98.Enabled = False
  loc_106C7D6:   Set var_8C = Me.Txt
  loc_106C7DC:   Call 0.Method_Proc_59_40_106C9300 (CInt(&H1E), var_98)
  loc_106C7E4:   var_98.Enabled = False
  loc_106C7FD:   Set var_8C = Me.Txt
  loc_106C803:   Call 0.Method_Proc_59_40_106C9300 (CInt(&H26), var_98)
  loc_106C80B:   var_98.Enabled = False
  loc_106C824:   Set var_8C = Me.Txt
  loc_106C82A:   Call 0.Method_Proc_59_40_106C9300 (CInt(&H29), var_98)
  loc_106C832:   var_98.Enabled = False
  loc_106C84B:   Set var_8C = Me.Txt
  loc_106C851:   Call 0.Method_Proc_59_40_106C9300 (CInt(&H27), var_98)
  loc_106C859:   var_98.Enabled = False
  loc_106C872:   Set var_8C = Me.Txt
  loc_106C878:   Call 0.Method_Proc_59_40_106C9300 (CInt(&H28), var_98)
  loc_106C880:   var_98.Enabled = False
  loc_106C88F: Else
  loc_106C89A:   If (global_120 = "N") Then
  loc_106C8AA:     Set var_8C = Me.Txt
  loc_106C8B0:     Call 0.Method_Proc_59_40_106C9300 (CInt(&H10), var_98)
  loc_106C8B8:     var_98.Enabled = False
  loc_106C8C4:   End If
  loc_106C8CF:   If (global_124 = "N") Then
  loc_106C8DF:     Set var_8C = Me.Txt
  loc_106C8E5:     Call 0.Method_Proc_59_40_106C9300 (CInt(&H26), var_98)
  loc_106C8ED:     var_98.Enabled = False
  loc_106C8F9:   End If
  loc_106C904:   If (global_128 = "N") Then
  loc_106C914:     Set var_8C = Me.Txt
  loc_106C91A:     Call 0.Method_Proc_59_40_106C9300 (CInt(&H29), var_98)
  loc_106C922:     var_98.Enabled = False
  loc_106C92E:   End If
  loc_106C92E: End If
  loc_106C92E: Exit Sub
End Sub

Public Sub Proc_59_41_E9BB68
  'Data Table: 52DB34
  Dim var_98 As TextBox
  loc_E9BAEE: Set var_8C = Me.Txt
  loc_E9BAF4: Call 0.Method_Proc_59_41_E9BB68C (var_8E, var_86)
  loc_E9BB04: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E9BB1A:   Set var_8C = Me.Txt
  loc_E9BB20:   Call 0.Method_Proc_59_41_E9BB680 (CInt(var_86), var_98)
  loc_E9BB28:   var_98.Text = vbNullString
  loc_E9BB44:   Set var_8C = Me.Txt
  loc_E9BB4A:   Call 0.Method_Proc_59_41_E9BB680 (CInt(var_86), var_98)
  loc_E9BB52:   var_98.Tag = vbNullString
  loc_E9BB61: Next var_92 'Byte
  loc_E9BB67: Exit Sub
End Sub

Public Sub Proc_59_42_F6EAAC
  'Data Table: 52DB34
  loc_F6E980: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6E992:   Me.DGRoomNo.Visible = False
  loc_F6E99A: End If
  loc_F6E9B6: If (CBool(Me.DGNewRoomNo.Visible) = &HFF) Then
  loc_F6E9C8:   Me.DGNewRoomNo.Visible = False
  loc_F6E9D0: End If
  loc_F6E9EC: If (CBool(().Visible) = &HFF) Then
  loc_F6E9FE:   (False).Visible = 
  loc_F6EA06: End If
  loc_F6EA22: If (CBool(Me.DGPlanPkg.Visible) = &HFF) Then
  loc_F6EA34:   Me.DGPlanPkg.Visible = False
  loc_F6EA3C: End If
  loc_F6EA58: If (CBool(Me.DGPackage.Visible) = &HFF) Then
  loc_F6EA6A:   Me.DGPackage.Visible = False
  loc_F6EA72: End If
  loc_F6EA8E: If (CBool(().Visible) = &HFF) Then
  loc_F6EAA0:   (False).Visible = 
  loc_F6EAA8: End If
  loc_F6EAA8: Exit Sub
End Sub

Public Sub Proc_59_43_E60D38
  'Data Table: 52DB34
  Dim var_A8 As TextBox
  loc_E60D0A: Set var_A4 = Me.Txt
  loc_E60D10: Call 0.Method_Proc_59_43_E60D380 (CInt(&H19), var_A8)
  loc_E60D32: Call Proc_59_48_1D7941C(Val(var_A8.Text))
  loc_E60D37: Exit Sub
End Sub

Public Sub Proc_59_44_197F7D0
  'Data Table: 52DB34
  Dim var_B4 As String
  Dim var_C4 As String
  Dim var_BC As Variant
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_52DB53 As Connection15
  Dim var_88 As Recordset15
  Dim var_C0 As String
  Dim var_F8 As Variant
  Dim var_100 As Variant
  Dim var_B0 As Recordset15
  Dim var_DC As Variant
  Dim var_B8 As Variant
  Dim var_124 As Variant
  Dim var_EC As Variant
  Dim var_134 As Variant
  Dim var_F0 As Variant
  Dim var_164 As Variant
  Dim var_17C As Double
  Dim var_144 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim var_154 As Variant
  Dim var_114 As MSHFlexGrid
  Dim var_1F4 As Variant
  Dim var_FC As Variant
  Dim var_204 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  Dim var_1E4 As Variant
  Dim var_2D8 As Double
  Dim var_2E0 As Double
  Dim var_2E8 As Double
  Dim var_27C As TextBox
  Dim var_28C As Variant
  Dim var_2AC As Variant
  Dim var_1D4 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_300 As TextBox
  loc_197CA4C: var_B4 = "SELECT plan1.Code, plan1.Chrgcode, FixedCharge.Name,plan1.Revcode, plan1.TaxStru, plan1.TaxInc, plan1.PrintOption,plan1.PostingMethod, plan1.ChargeType, plan1.FlatRate,plan1.Adult, plan1.Child, plan1.ExtraAdult, plan1.ExtraChild,Plan1.App_Date , Plan1.PlanPer, PlanMast.PercentApp,PlanMast.plan_package,Plan1.NoofDays,Plan1.PerDayAmount,Plan1.NetAmount,Plan1.FixRate,pLANmAST.RoomPer,PlanMast.RoomRate,PlanMast.PackageAmount,PlanMast.DiscAppYN,PlanMAst.DiscAppOn,planmast.Nights,planmast.Adults,PlanMast.Childs,PLanMast.RRIncTax,PLanMast.RoomTaxStru FROM (PlanMast Left join plan1 on Planmast.Code=Plan1.Code) Left Join FixedCharge ON plan1.Chrgcode = FixedCharge.Code  where (PlanMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_197CA53: var_C4 = var_B4 & "' or PlanMast.LOGSITE_CODE='HO') and PlanMast.code='"
  loc_197CA64: Set var_B8 = Me.Txt
  loc_197CA6A: Call 0.Method_Proc_59_44_197F7D00 (CInt(&H18), var_BC, var_C0, var_C4)
  loc_197CA72: var_EC = var_BC.Tag
  loc_197CA7B: var_C8 = -1 & var_C0
  loc_197CA8B: unk_52DB53.Execute var_C8 & "'", var_F0, 
  loc_197CA96: Set var_88 = var_F0
  loc_197CAC6: If (var_88.RecordCount > 0) Then
  loc_197CAE7:   Set var_B8 = Me.Txt
  loc_197CAED:   Call 0.Method_Proc_59_44_197F7D00 (CInt(8), var_BC, var_B4, "Select * from Comp_PlanDet where companyCode='")
  loc_197CAF5:   var_EC = var_BC.Tag
  loc_197CAFE:   var_C0 = -1 & var_B4
  loc_197CB05:   var_C8 = var_C0 & "' and RoomCat='"
  loc_197CB16:   Set var_F0 = Me.Txt
  loc_197CB1C:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&HB), var_F8, var_C4)
  loc_197CB24:   var_C8 = var_F8.Tag
  loc_197CB2D:   var_CC = var_114 & var_C4
  loc_197CB45:   Set var_FC = Me.Txt
  loc_197CB4B:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H18), var_100)
  loc_197CB6C:   unk_52DB53.Execute var_CC & "' and PLanCode='" & var_100.Tag & "'", , 
  loc_197CB77:   Set var_B0 = var_114
  loc_197CBB7:   If (var_B0.RecordCount > 0) Then
  loc_197CBF6:     If (var_B0.Fields.Item("PLANAmt").Value > 0) Then
  loc_197CC18:       var_EC = CVar(var_B0.Fields.Item("PLANAmt")) 'Address
  loc_197CC1F:       Proc_6_39_E7D3A0(var_134)
  loc_197CC56:       Set var_F0 = Me.Txt
  loc_197CC5C:       Call 0.Method_Proc_59_44_197F7D00 (CInt(&H19), var_F8, CStr(Format(var_134, "0.00")))
  loc_197CC64:       var_F8.Text = 1
  loc_197CC83:     Else
  loc_197CCA9:       Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("PackageAmount")))
  loc_197CCE0:       Set var_F0 = Me.Txt
  loc_197CCE6:       Call 0.Method_Proc_59_44_197F7D00 (CInt(&H19), var_F8, CStr(Format(var_134, "0.00")), 1)
  loc_197CCEE:       var_F8.Text = 1
  loc_197CD0A:     End If
  loc_197CD0D:   Else
  loc_197CD33:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("PackageAmount")))
  loc_197CD6A:     Set var_F0 = Me.Txt
  loc_197CD70:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&H19), var_F8, CStr(Format(var_134, "0.00")), 1)
  loc_197CD78:     var_F8.Text = 1
  loc_197CD94:   End If
  loc_197CDBA:   Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("RoomRate")))
  loc_197CDD1:   Set var_F0 = Me.Txt
  loc_197CDD7:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H2E), var_F8, CStr(var_134))
  loc_197CDDF:   var_F8.Text = 1
  loc_197CE0E:   var_BC = var_88.Fields.Item("RoomRate")
  loc_197CE1D:   Proc_6_39_E7D3A0(var_134, CVar(var_BC))
  loc_197CE34:   Set var_F0 = Me.Txt
  loc_197CE3A:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H10), var_F8)
  loc_197CE42:   var_F8.Text = CStr(var_134)
  loc_197CE68:   Set var_B8 = Me.Txt
  loc_197CE6E:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H2B), var_BC)
  loc_197CE76:   var_BC.Text = "Yes"
  loc_197CE9C:   var_BC = var_88.Fields.Item("DiscAppYN")
  loc_197CEBE:   If CBool(var_BC.Value <> "Yes") Then
  loc_197CECE:     Set var_B8 = Me.Txt
  loc_197CED4:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&H2D), var_BC)
  loc_197CEDC:     var_BC.Enabled = False
  loc_197CEF5:     Set var_B8 = Me.Txt
  loc_197CEFB:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&H2C), var_BC)
  loc_197CF03:     var_BC.Enabled = False
  loc_197CF0F:   End If
  loc_197CF45:   var_B4 = CStr(Trim(CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("DiscAppOn"))))))
  loc_197CF53:   Me.LblDiscAppOn.Caption = var_B4
  loc_197CF85:   var_BC = var_88.Fields.Item("PLan_Package")
  loc_197CFA7:   If (var_BC.Value = "Plan") Then
  loc_197CFB6:     Set var_B8 = Me.Lbl
  loc_197CFBC:     Call 0.Method_Proc_59_44_197F7D00 (&H2C, var_BC)
  loc_197CFC4:     var_BC.Caption = "Plan"
  loc_197CFDC:     Set var_B8 = Me.Lbl
  loc_197CFE2:     Call 0.Method_Proc_59_44_197F7D00 (&H23, var_BC)
  loc_197CFEA:     var_BC.Caption = "Plan Amount"
  loc_197D002:     Set var_B8 = Me.Lbl
  loc_197D008:     Call 0.Method_Proc_59_44_197F7D00 (&H40, var_BC)
  loc_197D010:     var_BC.Caption = "Total Plan Amount"
  loc_197D028:     Set var_B8 = Me.Lbl
  loc_197D02E:     Call 0.Method_Proc_59_44_197F7D00 (&H42, var_BC)
  loc_197D036:     var_BC.Caption = "Plan Discount"
  loc_197D045:   Else
  loc_197D051:     Set var_B8 = Me.Lbl
  loc_197D057:     Call 0.Method_Proc_59_44_197F7D00 (&H2C, var_BC)
  loc_197D05F:     var_BC.Caption = "Package"
  loc_197D077:     Set var_B8 = Me.Lbl
  loc_197D07D:     Call 0.Method_Proc_59_44_197F7D00 (&H23, var_BC)
  loc_197D085:     var_BC.Caption = "Package Amount"
  loc_197D09D:     Set var_B8 = Me.Lbl
  loc_197D0A3:     Call 0.Method_Proc_59_44_197F7D00 (&H40, var_BC)
  loc_197D0AB:     var_BC.Caption = "Total Package Amount"
  loc_197D0C3:     Set var_B8 = Me.Lbl
  loc_197D0C9:     Call 0.Method_Proc_59_44_197F7D00 (&H42, var_BC)
  loc_197D0D1:     var_BC.Caption = "Package Discount"
  loc_197D0DD:   End If
  loc_197D0DD: End If
  loc_197D0F0: Me.FGrid3.Rows = 1
  loc_197D0FC: var_8A = CByte(1) 'Byte
  loc_197D100: var_DC = vbNullString
  loc_197D10A: Set var_B8 = Me.FGrid3
  loc_197D12E: Me.FGrid3.FixedRows = 1
  loc_197D149: Me.FGrid3.Row = 1
  loc_197D165: If (var_88.RecordCount > 0) Then
  loc_197D182:   var_BC = var_88.Fields.Item("PercentApp")
  loc_197D1A4:   If (var_BC.Value = "Yes") Then
  loc_197D1BC:     Set var_B8 = Me.FGrid3
  loc_197D1C2:     LateIdCallSt
  loc_197D1D0:     var_A0 = "Percentage"
  loc_197D1E7:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&H2F), var_BC, "Percentage", Me.Txt, &H4B0)
  loc_197D1EF:     var_BC.Text = CVar(CLng(&H12))
  loc_197D1FE:   Else
  loc_197D213:     Set var_B8 = Me.FGrid3
  loc_197D219:     LateIdCallSt
  loc_197D227:     var_A0 = "Amount"
  loc_197D23E:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&H2F), var_BC, "Amount", Me.Txt, 0)
  loc_197D246:     var_BC.Text = CVar(CLng(&H12))
  loc_197D252:   End If
  loc_197D255: Else
  loc_197D258:   var_DC = CVar(CLng(&H12)) 'Long
  loc_197D25D:   var_164 = 0
  loc_197D26A:   Set var_B8 = Me.FGrid3
  loc_197D270:   LateIdCallSt
  loc_197D27B: End If
  loc_197D28F: If (var_88.RecordCount > 0) Then
  loc_197D2A6:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_BC, var_B4, Me.Txt, var_164)
  loc_197D2AE:   var_DC = var_BC.Text
  loc_197D2FD:   If (CVar(Val(var_B4)) > var_88.Fields.Item("Adults").Value) Then
  loc_197D306:     var_DC = "Adults"
  loc_197D31A:     var_F8 = var_88.Fields.Item(var_DC)
  loc_197D333:     var_17C = Val(CStr(var_F8.Value))
  loc_197D344:     Set var_B8 = Me.Txt
  loc_197D34A:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_BC, var_B4, var_17C)
  loc_197D352:     FGrid3.DispID_10000 = var_BC.Text
  loc_197D365:     var_C4 = CStr((Val(var_B4) - var_17C))
  loc_197D373:     Set var_FC = Me.Txt
  loc_197D379:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&H1F), var_100, var_C4)
  loc_197D381:     var_100.Text = var_DC
  loc_197D3A4:     var_DC = CVar(CLng(8)) 'Long
  loc_197D3A9:     var_164 = &H3E8
  loc_197D3B6:     Set var_B8 = Me.FGrid3
  loc_197D3BC:     LateIdCallSt
  loc_197D3CA:     var_DC = CVar(CLng(9)) 'Long
  loc_197D3CF:     var_164 = &H3E8
  loc_197D3DC:     Set var_B8 = Me.FGrid3
  loc_197D3E2:     LateIdCallSt
  loc_197D3ED:     ' Referenced from: 197E186
  loc_197D3ED:   End If
  loc_197D3ED: End If
  loc_197D3FC: If Not(var_88.EOF) Then
  loc_197D402:   var_DC = "RevCode"
  loc_197D40E:   var_B8 = var_88.Fields
  loc_197D438:   If (Proc_6_38_E69628(CVar(var_B8.Item(var_DC)), var_B8, var_164, var_DC) <> vbNullString) Then
  loc_197D43F:     Set var_184 = Me.FGrid3
  loc_197D455:     var_194 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197D47B:     var_DC = CVar((CLng(Me.FGrid3.Row) - 1)) 'Long
  loc_197D49D:     var_B4 = CStr(Me.FGrid3.TextMatrix))
  loc_197D4AB:     var_154 = CVar(CStr((Val(var_B4) + CDbl(1)))) 'String
  loc_197D4B2:     LateIdCallSt
  loc_197D4F4:     var_DC = "Name"
  loc_197D519:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_DC)), CVar(CLng(1)), CVar(CLng(Me.FGrid3.Row)), var_184, Format(Me.FGrid3.Row, "0.00"), CVar(CLng(0)), var_DC)) 'String
  loc_197D520:     LateIdCallSt
  loc_197D580:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(Me.FGrid3.Row)), var_184, var_144, CVar(CLng(0)))) 'String
  loc_197D587:     LateIdCallSt
  loc_197D5D6:     var_BC = var_88.Fields.Item("TaxStru")
  loc_197D5E7:     var_144 = CVar(Proc_6_38_E69628(CVar(var_BC), CVar(CLng(3)), CVar(CLng(Me.FGrid3.Row)), var_184, var_144)) 'String
  loc_197D5EE:     LateIdCallSt
  loc_197D634:     Set var_B8 = Me.Txt
  loc_197D63A:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&H18), var_BC, var_B4, CVar(CLng(4)), CVar(CLng(Me.FGrid3.Row)), var_184)
  loc_197D642:     var_144 = var_BC.Tag
  loc_197D64A:     var_134 = CVar(var_B4) 'String
  loc_197D651:     LateIdCallSt
  loc_197D673:     var_134 = Me.FGrid3.Row
  loc_197D6B8:     LateIdCallSt
  loc_197D70C:     If (var_88.Fields.Item("PLan_Package").Value = "Package") Then
  loc_197D73A:       var_B4 = CStr(var_88.Fields.Item("NoofDays").Value)
  loc_197D742:       var_17C = Val(var_B4)
  loc_197D750:       Set var_F0 = Me.Txt
  loc_197D756:       Call 0.Method_Proc_59_44_197F7D00 (CInt(&H31), var_F8, var_17C, var_184, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_134)), var_184, var_134)))
  loc_197D76E:       var_194 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197D776:       var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197D79D:       var_134 = var_88.Fields.Item("NoofDays").Value
  loc_197D7A6:       var_C0 = CStr(var_134)
  loc_197D7C8:       var_1E4 = IIf((CDbl(var_17C) = CDbl(0)), CVar(var_F8), CVar(Val(var_C0)))
  loc_197D7D1:       var_204 = CVar(CStr(var_1E4)) 'String
  loc_197D7D8:       LateIdCallSt
  loc_197D80C:     Else
  loc_197D81F:       var_DC = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197D827:       var_164 = CVar(CLng(&HA)) 'Long
  loc_197D82C:       var_194 = "1"
  loc_197D835:       LateIdCallSt
  loc_197D843:     End If
  loc_197D889:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("PrintOption")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid3.Row)), var_184, var_194, var_164)
  loc_197D899:     LateIdCallSt
  loc_197D8D6:     var_DC = "PostingMethod"
  loc_197D8FB:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_DC)), CVar(CLng(&HC)), CVar(CLng(Me.FGrid3.Row)), var_184, CVar(CStr(Me.FGrid3.Row)), var_DC)) 'String
  loc_197D902:     LateIdCallSt
  loc_197D924:     var_134 = Me.FGrid3.Row
  loc_197D962:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(&HD)), CVar(CLng(var_134)), var_184, var_144, var_184)) 'String
  loc_197D969:     LateIdCallSt
  loc_197D98B:     var_144 = Me.FGrid3.Row
  loc_197D9C7:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("FlatRate")), CVar(CLng(&HE)), CVar(CLng(var_144)), var_184, var_144)
  loc_197D9D7:     LateIdCallSt
  loc_197D9FB:     var_134 = Me.FGrid3.Row
  loc_197DA39:     var_144 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChrgCode")), CVar(CLng(&H11)), CVar(CLng(var_134)), var_184, CVar(CStr(var_134)))) 'String
  loc_197DA40:     LateIdCallSt
  loc_197DA62:     var_144 = Me.FGrid3.Row
  loc_197DA9E:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("App_Date")), CVar(CLng(&H13)), CVar(CLng(var_144)), var_184, var_144)
  loc_197DAAE:     LateIdCallSt
  loc_197DAEE:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("FlatRate")), var_184, CVar(CStr(var_134)), var_204)
  loc_197DB19:     Proc_6_39_E7D3A0(var_1E4, CVar(var_88.Fields.Item("FlatRate")), var_1B4)
  loc_197DB2D:     var_FC = var_88.Fields
  loc_197DB44:     Proc_6_39_E7D3A0(var_204, CVar(var_FC.Item("Adult")), var_194)
  loc_197DB7E:     var_1A4 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197DB86:     var_1C4 = CVar(CLng(6)) 'Long
  loc_197DBB6:     LateIdCallSt
  loc_197DC0A:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("PerDayAmount")), var_184, CVar(CStr(Format(IIf((var_134 <> 0), var_1E4, var_204), "0.00"))), 1)
  loc_197DC22:     var_164 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197DC5A:     LateIdCallSt
  loc_197DC9E:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("NetAmount")), var_184, CVar(CStr(Format(var_134, "0.00"))), 1, 1, CVar(CLng(&HF)))
  loc_197DCB6:     var_164 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197DCEE:     LateIdCallSt
  loc_197DD52:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("PlanPer")), CVar(CLng(&H12)), CVar(CLng(Me.FGrid3.Row)), var_184, CVar(CStr(Format(var_134, "0.00"))), 1)
  loc_197DD62:     LateIdCallSt
  loc_197DDB3:     var_BC = var_88.Fields.Item("Child")
  loc_197DDC2:     Proc_6_39_E7D3A0(var_134, CVar(var_BC), CVar(CLng(7)), CVar(CLng(Me.FGrid3.Row)), var_184, CVar(CStr(var_134)), 1)
  loc_197DDD2:     LateIdCallSt
  loc_197DDFA:     Set var_B8 = Me.Txt
  loc_197DE00:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&H1F), var_BC, var_B4, var_184, CVar(CStr(var_134)), CVar(CLng(&H10)))
  loc_197DE08:     var_164 = var_BC.Text
  loc_197DE44:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("ExtraAdult")), (CDbl(Val(var_B4)) > CDbl(0)), (CDbl(Val(var_B4)) > CDbl(0)))
  loc_197DE71:     If CBool(1 And (var_134 = 0)) Then
  loc_197DE87:       var_124 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197DEBA:       Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("Adult")), CVar(CLng(8)))
  loc_197DEC3:       var_154 = CVar(CStr(var_134)) 'String
  loc_197DECA:       LateIdCallSt
  loc_197DEE7:     Else
  loc_197DF1E:       var_BC = var_88.Fields.Item("ExtraAdult")
  loc_197DF2D:       Proc_6_39_E7D3A0(var_134, CVar(var_BC), CVar(CLng(8)), CVar(CLng(Me.FGrid3.Row)), var_184)
  loc_197DF36:       var_154 = CVar(CStr(var_134)) 'String
  loc_197DF3D:       LateIdCallSt
  loc_197DF57:     End If
  loc_197DF65:     Set var_B8 = Me.Txt
  loc_197DF6B:     Call 0.Method_Proc_59_44_197F7D00 (CInt(&H1F), var_BC, var_B4, var_184, var_154)
  loc_197DF73:     var_154 = var_BC.Text
  loc_197DFAF:     Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("ExtraChild")), (CDbl(Val(var_B4)) > CDbl(0)))
  loc_197DFDC:     If CBool(0 And (var_134 = 0)) Then
  loc_197DFF2:       var_124 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_197E025:       Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("Child")), CVar(CLng(9)))
  loc_197E02E:       var_154 = CVar(CStr(var_134)) 'String
  loc_197E035:       LateIdCallSt
  loc_197E052:     Else
  loc_197E098:       Proc_6_39_E7D3A0(var_134, CVar(var_88.Fields.Item("ExtraChild")), CVar(CLng(9)), CVar(CLng(Me.FGrid3.Row)), var_184)
  loc_197E0A1:       var_154 = CVar(CStr(var_134)) 'String
  loc_197E0A8:       LateIdCallSt
  loc_197E0C2:     End If
  loc_197E0C6:     Set var_F0 = Me.FGrid3
  loc_197E0F9:     var_BC = var_88.Fields.Item("FixRate")
  loc_197E108:     Proc_6_39_E7D3A0(var_134, CVar(var_BC), CVar(CLng(&H15)), CVar(CLng(var_F0.Row)), var_184)
  loc_197E111:     var_154 = CVar(CStr(var_134)) 'String
  loc_197E118:     LateIdCallSt
  loc_197E13D:     var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_197E141:     var_DC = vbNullString
  loc_197E14B:     Set var_B8 = Me.FGrid3
  loc_197E161:     var_DC = CVar(CLng(var_8A)) 'Long
  loc_197E170:     Me.FGrid3.Row = var_DC
  loc_197E17A:     Set var_184 = Nothing 
  loc_197E17E:   End If
  loc_197E181:   var_88.MoveNext
  loc_197E186:   GoTo loc_197D3ED
  loc_197E189: End If
  loc_197E191: If (var_A0 = "Percentage") Then
  loc_197E1A2:   Set var_B8 = Me.Txt
  loc_197E1A8:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H1F), var_BC, var_B4, FGrid3.DispID_10000, var_DC, var_184)
  loc_197E1B0:   var_154 = var_BC.Text
  loc_197E1CC:   If (CDbl(Val(var_B4)) > CDbl(0)) Then
  loc_197E1F7:     For var_278 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)): var_8A = var_278 'Byte
  loc_197E202:       var_DC = CVar(CLng(var_8A)) 'Long
  loc_197E20A:       var_164 = CVar(CLng(&H11)) 'Long
  loc_197E235:       If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_197E267:         var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197E278:         Set var_BC = Me.Txt
  loc_197E27E:         Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)), CVar(CLng(6)))
  loc_197E286:         var_DC = var_F0.Text
  loc_197E293:         var_2D8 = Val(var_C0)
  loc_197E2A4:         Set var_F8 = Me.Txt
  loc_197E2AA:         Call 0.Method_Proc_59_44_197F7D00 (CInt(&H1F), var_FC, var_C4, var_2D8, CByte(1))
  loc_197E2B2:         var_154 = var_FC.Text
  loc_197E2BF:         var_2E0 = Val(var_C4)
  loc_197E2D8:         Set var_100 = Me.FGrid3
  loc_197E2F1:         var_2E8 = Val(CStr(var_100.TextMatrix)))
  loc_197E302:         Set var_114 = Me.Txt
  loc_197E308:         Call 0.Method_Proc_59_44_197F7D00 (CInt(&H1F), var_27C, var_CC, var_2E8, CVar(CLng(8)), CVar(CLng(var_8A)))
  loc_197E325:         var_28C = CVar(CLng(var_8A)) 'Long
  loc_197E32D:         var_2AC = CVar(CLng(&HF)) 'Long
  loc_197E35A:         var_144 = CVar(((var_17C * (var_2D8 - var_27C.Text)) + (var_2E8 * Val(var_CC)))) 'Double
  loc_197E36A:         var_1F4 = CVar(CStr(Format(var_F0.Row, "0.00"))) 'String
  loc_197E378:         LateIdCallSt
  loc_197E3E0:         var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197E3F1:         Set var_BC = Me.Txt
  loc_197E3F7:         Call 0.Method_Proc_59_44_197F7D00 (CInt(&H19), var_F0, var_C0, var_17C, CVar(CLng(&HF)), CVar(CLng(var_8A)), Me.FGrid3)
  loc_197E3FF:         var_1F4 = var_F0.Text
  loc_197E414:         var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197E41C:         var_1D4 = CVar(CLng(&H12)) 'Long
  loc_197E451:         var_1E4 = CVar(CStr(Format(CVar(((var_17C * CDbl(&H64)) / Val(var_C0))), "0.00"))) 'String
  loc_197E459:         Set var_F8 = Me.FGrid3
  loc_197E45F:         LateIdCallSt
  loc_197E48B:         var_DC = CVar(CLng(var_8A)) 'Long
  loc_197E493:         var_164 = CVar(CLng(&HF)) 'Long
  loc_197E4BD:         var_194 = CVar(CLng(var_8A)) 'Long
  loc_197E4C5:         var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197E4CE:         Set var_BC = Me.FGrid3
  loc_197E4D4:         var_134 = var_BC.TextMatrix)
  loc_197E4DF:         var_C0 = CStr(var_134)
  loc_197E4EF:         var_28C = CVar(CLng(var_8A)) 'Long
  loc_197E4F7:         var_2AC = CVar(CLng(&H10)) 'Long
  loc_197E50B:         var_154 = "0.00"
  loc_197E518:         var_144 = CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))) 'Double
  loc_197E528:         var_1F4 = CVar(CStr(Format(var_144, var_154))) 'String
  loc_197E530:         Set var_F0 = Me.FGrid3
  loc_197E536:         LateIdCallSt
  loc_197E55D:       End If
  loc_197E560:     Next var_278 'Byte
  loc_197E566:   End If
  loc_197E566:   Call Proc_59_43_E60D38()
  loc_197E56E: Else
  loc_197E57C:   Set var_B8 = Me.Txt
  loc_197E582:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&HE), var_BC)
  loc_197E5A6:   If (CDbl(Val(var_BC.Text)) <> CDbl(0)) Then
  loc_197E5D8:     If (MsgBox("Want Include Child in Plan/Package Value?", &H24, var_134, var_144, var_154) = 6) Then
  loc_197E603:       For var_2F4 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):   var_8A = var_2F4 'Byte
  loc_197E60E:         var_DC = CVar(CLng(var_8A)) 'Long
  loc_197E616:         var_164 = CVar(CLng(&H11)) 'Long
  loc_197E641:         If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_197E649:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197E651:           var_164 = CVar(CLng(&HD)) 'Long
  loc_197E67C:           If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_197E6AE:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197E6BF:             Set var_BC = Me.Txt
  loc_197E6C5:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_197E6CD:             var_164 = var_F0.Text
  loc_197E6DA:             var_2D8 = Val(var_C0)
  loc_197E6EB:             Set var_F8 = Me.Txt
  loc_197E6F1:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HE), var_FC, var_C4, var_2D8)
  loc_197E6F9:             var_DC = var_FC.Text
  loc_197E718:             var_94 = (var_94 + (var_17C * (var_2D8 + Val(var_C4))))
  loc_197E763:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197E774:             Set var_BC = Me.Txt
  loc_197E77A:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)))
  loc_197E782:             var_94 = var_F0.Text
  loc_197E797:             var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197E79F:             var_1D4 = CVar(CLng(&HF)) 'Long
  loc_197E7D0:             var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_197E7D8:             Set var_F8 = Me.FGrid3
  loc_197E7DE:             LateIdCallSt
  loc_197E80A:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197E812:             var_164 = CVar(CLng(&HF)) 'Long
  loc_197E83C:             var_194 = CVar(CLng(var_8A)) 'Long
  loc_197E844:             var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197E85E:             var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_197E86E:             var_28C = CVar(CLng(var_8A)) 'Long
  loc_197E876:             var_2AC = CVar(CLng(&H10)) 'Long
  loc_197E8A7:             var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))), "0.00"))) 'String
  loc_197E8AF:             Set var_F0 = Me.FGrid3
  loc_197E8B5:             LateIdCallSt
  loc_197E8E1:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197E8E9:             var_164 = CVar(CLng(&H10)) 'Long
  loc_197E915:             var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197E924:           Else
  loc_197E931:             var_164 = CVar(CLng(&HE)) 'Long
  loc_197E964:             Set var_BC = Me.Txt
  loc_197E96A:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, Val(CStr(Me.FGrid3.TextMatrix))), var_164, CVar(CLng(var_8A)), var_9C)
  loc_197E97F:             var_2D8 = Val(var_C0)
  loc_197E990:             Set var_F8 = Me.Txt
  loc_197E996:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HE), var_FC, var_C4, var_2D8, var_164)
  loc_197E99E:             var_DC = var_FC.Text
  loc_197E9BD:             var_94 = (var_94 + (var_F0.Text * (var_2D8 + Val(var_C4))))
  loc_197EA08:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197EA19:             Set var_BC = Me.Txt
  loc_197EA1F:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)))
  loc_197EA27:             var_94 = var_F0.Text
  loc_197EA3C:             var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197EA44:             var_1D4 = CVar(CLng(&HF)) 'Long
  loc_197EA75:             var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_197EA7D:             Set var_F8 = Me.FGrid3
  loc_197EA83:             LateIdCallSt
  loc_197EAAF:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197EAB7:             var_164 = CVar(CLng(&HF)) 'Long
  loc_197EAE1:             var_194 = CVar(CLng(var_8A)) 'Long
  loc_197EAE9:             var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197EB03:             var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_197EB13:             var_28C = CVar(CLng(var_8A)) 'Long
  loc_197EB1B:             var_2AC = CVar(CLng(&H10)) 'Long
  loc_197EB4C:             var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))), "0.00"))) 'String
  loc_197EB54:             Set var_F0 = Me.FGrid3
  loc_197EB5A:             LateIdCallSt
  loc_197EB86:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197EB8E:             var_164 = CVar(CLng(&H10)) 'Long
  loc_197EBBA:             var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197EBC6:           End If
  loc_197EBC6:         End If
  loc_197EBC9:       Next var_2F4 'Byte
  loc_197EBD2:     Else
  loc_197EBFA:       For var_2F8 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_8A = var_2F8 'Byte
  loc_197EC05:         var_DC = CVar(CLng(var_8A)) 'Long
  loc_197EC0D:         var_164 = CVar(CLng(&H11)) 'Long
  loc_197EC38:         If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_197EC40:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197EC48:           var_164 = CVar(CLng(&HD)) 'Long
  loc_197EC73:           If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_197ECA5:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197ECB6:             Set var_BC = Me.Txt
  loc_197ECBC:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_197ECC4:             var_164 = var_F0.Text
  loc_197ECDF:             var_94 = (var_94 + (var_17C * Val(var_C0)))
  loc_197ED24:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197ED35:             Set var_BC = Me.Txt
  loc_197ED3B:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)))
  loc_197ED43:             var_94 = var_F0.Text
  loc_197ED58:             var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197ED60:             var_1D4 = CVar(CLng(&HF)) 'Long
  loc_197ED91:             var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_197ED99:             Set var_F8 = Me.FGrid3
  loc_197ED9F:             LateIdCallSt
  loc_197EDCB:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197EDD3:             var_164 = CVar(CLng(&HF)) 'Long
  loc_197EDFD:             var_194 = CVar(CLng(var_8A)) 'Long
  loc_197EE05:             var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197EE1F:             var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_197EE2F:             var_28C = CVar(CLng(var_8A)) 'Long
  loc_197EE37:             var_2AC = CVar(CLng(&H10)) 'Long
  loc_197EE68:             var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))), "0.00"))) 'String
  loc_197EE70:             Set var_F0 = Me.FGrid3
  loc_197EE76:             LateIdCallSt
  loc_197EEA2:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197EEAA:             var_164 = CVar(CLng(&H10)) 'Long
  loc_197EED6:             var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197EEE5:           Else
  loc_197EF25:             Set var_BC = Me.Txt
  loc_197EF2B:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, Val(CStr(Me.FGrid3.TextMatrix))), CVar(CLng(&HE)), CVar(CLng(var_8A)), var_9C)
  loc_197EF4E:             var_94 = (var_94 + (var_F0.Text * Val(var_C0)))
  loc_197EF93:             var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197EFA4:             Set var_BC = Me.Txt
  loc_197EFAA:             Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)), var_94)
  loc_197EFB2:             var_2D8 = var_F0.Text
  loc_197EFC7:             var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197EFCF:             var_1D4 = CVar(CLng(&HF)) 'Long
  loc_197F000:             var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_197F008:             Set var_F8 = Me.FGrid3
  loc_197F00E:             LateIdCallSt
  loc_197F03A:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F042:             var_164 = CVar(CLng(&HF)) 'Long
  loc_197F06C:             var_194 = CVar(CLng(var_8A)) 'Long
  loc_197F074:             var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197F09E:             var_28C = CVar(CLng(var_8A)) 'Long
  loc_197F0A6:             var_2AC = CVar(CLng(&H10)) 'Long
  loc_197F0D7:             var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_197F0DF:             Set var_F0 = Me.FGrid3
  loc_197F0E5:             LateIdCallSt
  loc_197F111:             var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F119:             var_164 = CVar(CLng(&H10)) 'Long
  loc_197F145:             var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197F151:           End If
  loc_197F151:         End If
  loc_197F154:       Next var_2F8 'Byte
  loc_197F15A:     End If
  loc_197F15D:   Else
  loc_197F185:     For var_2FC = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_8A = var_2FC 'Byte
  loc_197F190:       var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F198:       var_164 = CVar(CLng(&H11)) 'Long
  loc_197F1C3:       If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_197F1CB:         var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F1D3:         var_164 = CVar(CLng(&HD)) 'Long
  loc_197F1FE:         If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_197F206:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F20E:           var_164 = CVar(CLng(&HE)) 'Long
  loc_197F23A:           var_94 = (var_94 + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197F24B:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F253:           var_164 = CVar(CLng(&HE)) 'Long
  loc_197F27D:           var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197F285:           var_1D4 = CVar(CLng(&HF)) 'Long
  loc_197F2B2:           var_1E4 = CVar(CStr(Format(CVar(Val(CStr(Me.FGrid3.TextMatrix)))), "0.00"))) 'String
  loc_197F2BA:           Set var_BC = Me.FGrid3
  loc_197F2C0:           LateIdCallSt
  loc_197F2E4:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F2EC:           var_164 = CVar(CLng(&HF)) 'Long
  loc_197F316:           var_194 = CVar(CLng(var_8A)) 'Long
  loc_197F31E:           var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197F338:           var_C0 = CStr(Me.FGrid3.TextMatrix))
  loc_197F348:           var_28C = CVar(CLng(var_8A)) 'Long
  loc_197F350:           var_2AC = CVar(CLng(&H10)) 'Long
  loc_197F381:           var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(var_C0))), "0.00"))) 'String
  loc_197F389:           Set var_F0 = Me.FGrid3
  loc_197F38F:           LateIdCallSt
  loc_197F3BB:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F3C3:           var_164 = CVar(CLng(&H10)) 'Long
  loc_197F3EF:           var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197F3FE:         Else
  loc_197F43E:           Set var_BC = Me.Txt
  loc_197F444:           Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, Val(CStr(Me.FGrid3.TextMatrix))), CVar(CLng(6)), CVar(CLng(var_8A)), var_9C)
  loc_197F467:           var_94 = (var_94 + (var_F0.Text * Val(var_C0)))
  loc_197F4AC:           var_17C = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_197F4BD:           Set var_BC = Me.Txt
  loc_197F4C3:           Call 0.Method_Proc_59_44_197F7D00 (CInt(&HD), var_F0, var_C0, var_17C, CVar(CLng(6)), CVar(CLng(var_8A)), var_94)
  loc_197F4CB:           var_2D8 = var_F0.Text
  loc_197F4E0:           var_1B4 = CVar(CLng(var_8A)) 'Long
  loc_197F4E8:           var_1D4 = CVar(CLng(&HF)) 'Long
  loc_197F519:           var_1E4 = CVar(CStr(Format(CVar((var_17C * Val(var_C0))), "0.00"))) 'String
  loc_197F521:           Set var_F8 = Me.FGrid3
  loc_197F527:           LateIdCallSt
  loc_197F553:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F55B:           var_164 = CVar(CLng(&HF)) 'Long
  loc_197F585:           var_194 = CVar(CLng(var_8A)) 'Long
  loc_197F58D:           var_1B4 = CVar(CLng(&HA)) 'Long
  loc_197F596:           Set var_BC = Me.FGrid3
  loc_197F5B7:           var_28C = CVar(CLng(var_8A)) 'Long
  loc_197F5BF:           var_2AC = CVar(CLng(&H10)) 'Long
  loc_197F5F0:           var_1F4 = CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_BC.TextMatrix))))), "0.00"))) 'String
  loc_197F5F8:           Set var_F0 = Me.FGrid3
  loc_197F5FE:           LateIdCallSt
  loc_197F62A:           var_DC = CVar(CLng(var_8A)) 'Long
  loc_197F632:           var_164 = CVar(CLng(&H10)) 'Long
  loc_197F65E:           var_9C = (var_9C + Val(CStr(Me.FGrid3.TextMatrix))))
  loc_197F66A:         End If
  loc_197F66A:       End If
  loc_197F66D:     Next var_2FC 'Byte
  loc_197F673:   End If
  loc_197F6AA:   Set var_B8 = Me.Txt
  loc_197F6B0:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H30), var_BC, CStr(Format(var_9C, "0.00")))
  loc_197F6B8:   var_BC.Text = 1
  loc_197F6D9:   Set var_B8 = Me.Txt
  loc_197F6DF:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H10), var_BC)
  loc_197F6F2:   Set var_F0 = Me.Txt
  loc_197F6F8:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H26), var_F8)
  loc_197F713:   Set var_FC = Me.Txt
  loc_197F719:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H29), var_100)
  loc_197F734:   Set var_114 = Me.Txt
  loc_197F73A:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H32), var_27C)
  loc_197F755:   Set var_2D0 = Me.Txt
  loc_197F75B:   Call 0.Method_Proc_59_44_197F7D00 (CInt(&H33), var_300)
  loc_197F770:   var_2D8 = Val(var_300.Text)
  loc_197F798:   Proc_96_76_183EFE0(var_BC, var_F8.Text, var_100.Text, var_27C.Text)
  loc_197F7BF: End If
  loc_197F7C4: Set var_88 = Nothing
  loc_197F7CC: Set var_A4 = Nothing
  loc_197F7CF: Exit Sub
End Sub

Public Sub Proc_59_45_1563560
  'Data Table: 52DB34
  Dim var_9C As Variant
  Dim var_A4 As String
  Dim var_A8 As String
  Dim unk_52DB53 As Connection15
  Dim var_B8 As Variant
  Dim var_98 As Variant
  Dim var_88 As Recordset15
  Dim var_CC As Variant
  Dim var_124 As Variant
  Dim var_134 As Variant
  Dim var_154 As Variant
  Dim var_C8 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_174 As Variant
  Dim var_1B8 As Double
  Dim var_1C0 As Double
  Dim var_1B0 As TextBox
  Dim var_1C8 As Double
  Dim var_94 As Double
  loc_15624FA: Set var_98 = Me.Txt
  loc_1562500: Call 0.Method_Proc_59_45_15635600 (CInt(&H18), var_9C, var_A0, "SELECT plan1.Code, plan1.Chrgcode, FixedCharge.Name, plan1.Revcode, plan1.TaxStru, plan1.TaxInc, plan1.PrintOption, plan1.PostingMethod, plan1.ChargeType, plan1.FlatRate, plan1.Adult, plan1.Child, plan1.ExtraAdult, plan1.ExtraChild,Plan1.App_Date,Plan1.PlanPer,Plan1.noofDays,Plan1.FixRate FROM plan1 INNER JOIN FixedCharge ON plan1.Chrgcode = FixedCharge.Code where plan1.code='")
  loc_1562508: var_C8 = var_9C.Tag
  loc_1562511: var_A4 = -1 & var_A0
  loc_1562518: var_A8 = var_A4 & "'"
  loc_1562521: unk_52DB53.Execute var_A8, var_CC, 
  loc_156252C: Set var_88 = var_CC
  loc_1562557: Me.FGrid3.Rows = 1
  loc_1562563: var_8A = CByte(1) 'Byte
  loc_1562567: var_B8 = vbNullString
  loc_1562571: Set var_98 = Me.FGrid3
  loc_1562595: Me.FGrid3.FixedRows = 1
  loc_15625B0: Me.FGrid3.Row = 1
  loc_15625B8: ' Referenced from: 1562EA3
  loc_15625C7: If Not(var_88.EOF) Then
  loc_15625CE:   Set var_E4 = Me.FGrid3
  loc_15625E4:   var_134 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_15625EC:   var_154 = CVar(CLng(0)) 'Long
  loc_156260A:   var_B8 = CVar((CLng(Me.FGrid3.Row) - 1)) 'Long
  loc_156262C:   var_A0 = CStr(Me.FGrid3.TextMatrix))
  loc_156263A:   var_174 = CVar(CStr((Val(var_A0) + CDbl(1)))) 'String
  loc_1562641:   LateIdCallSt
  loc_15626A8:   var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("Name")), CVar(CLng(1)), CVar(CLng(Me.FGrid3.Row)), var_E4, var_174, CVar(CLng(0)))) 'String
  loc_15626AF:   LateIdCallSt
  loc_156270F:   var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(Me.FGrid3.Row)), var_E4, var_124)) 'String
  loc_1562716:   LateIdCallSt
  loc_1562765:   var_9C = var_88.Fields.Item("TaxStru")
  loc_1562776:   var_124 = CVar(Proc_6_38_E69628(CVar(var_9C), CVar(CLng(3)), CVar(CLng(Me.FGrid3.Row)), var_E4, var_124)) 'String
  loc_156277D:   LateIdCallSt
  loc_15627C3:   Set var_98 = Me.Txt
  loc_15627C9:   Call 0.Method_Proc_59_45_15635600 (CInt(&H18), var_9C, var_A0, CVar(CLng(4)), CVar(CLng(Me.FGrid3.Row)), var_E4)
  loc_15627D1:   var_124 = var_9C.Tag
  loc_15627D9:   var_114 = CVar(var_A0) 'String
  loc_15627E0:   LateIdCallSt
  loc_1562802:   var_114 = Me.FGrid3.Row
  loc_1562847:   LateIdCallSt
  loc_1562862:   var_B8 = "Adult"
  loc_1562885:   Proc_6_39_E7D3A0(var_114, CVar(var_88.Fields.Item(var_B8)), var_E4, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_114)), var_E4, var_114)), var_B8)
  loc_156289D:   var_F4 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_15628D5:   LateIdCallSt
  loc_1562939:   Proc_6_39_E7D3A0(var_114, CVar(var_88.Fields.Item("Child")), CVar(CLng(7)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(Format(var_114, "0.00"))), 1)
  loc_1562949:   LateIdCallSt
  loc_15629A9:   Proc_6_39_E7D3A0(var_114, CVar(var_88.Fields.Item("ExtraAdult")), CVar(CLng(8)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)), 1)
  loc_15629B9:   LateIdCallSt
  loc_1562A19:   Proc_6_39_E7D3A0(var_114, CVar(var_88.Fields.Item("ExtraChild")), CVar(CLng(9)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)))
  loc_1562A29:   LateIdCallSt
  loc_1562A89:   Proc_6_39_E7D3A0(var_114, CVar(var_88.Fields.Item("NoofDays")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)))
  loc_1562A99:   LateIdCallSt
  loc_1562AF9:   Proc_6_39_E7D3A0(var_114, CVar(var_88.Fields.Item("PrintOption")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)))
  loc_1562B09:   LateIdCallSt
  loc_1562B6B:   var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PostingMethod")), CVar(CLng(&HC)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(Me.FGrid3.Row)), CVar(CLng(6)))) 'String
  loc_1562B72:   LateIdCallSt
  loc_1562B94:   var_114 = Me.FGrid3.Row
  loc_1562BD2:   var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(&HD)), CVar(CLng(var_114)), var_E4, var_124)) 'String
  loc_1562BD9:   LateIdCallSt
  loc_1562BFB:   var_124 = Me.FGrid3.Row
  loc_1562C37:   Proc_6_39_E7D3A0(var_114, CVar(var_88.Fields.Item("FlatRate")), CVar(CLng(&HE)), CVar(CLng(var_124)), var_E4, var_124)
  loc_1562C40:   var_174 = CVar(CStr(var_114)) 'String
  loc_1562C47:   LateIdCallSt
  loc_1562C74:   var_B8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1562C8A:   LateIdCallSt
  loc_1562CA2:   var_114 = Me.FGrid3.Row
  loc_1562CBB:   var_B8 = "ChrgCode"
  loc_1562CE0:   var_124 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_B8)), CVar(CLng(&H11)), CVar(CLng(var_114)), var_E4, vbNullString, CVar(CLng(&HF)), var_B8)) 'String
  loc_1562CE7:   LateIdCallSt
  loc_1562D09:   var_124 = Me.FGrid3.Row
  loc_1562D45:   Proc_6_39_E7D3A0(var_114, CVar(var_88.Fields.Item("PlanPer")), CVar(CLng(&H12)), CVar(CLng(var_124)), var_E4, var_124)
  loc_1562D55:   LateIdCallSt
  loc_1562DB5:   Proc_6_39_E7D3A0(var_114, CVar(var_88.Fields.Item("App_Date")), CVar(CLng(&H13)), CVar(CLng(Me.FGrid3.Row)), var_E4, CVar(CStr(var_114)))
  loc_1562DC5:   LateIdCallSt
  loc_1562DE3:   Set var_CC = Me.FGrid3
  loc_1562DE9:   var_124 = var_CC.Row
  loc_1562E16:   var_9C = var_88.Fields.Item("FixRate")
  loc_1562E25:   Proc_6_39_E7D3A0(var_114, CVar(var_9C), CVar(CLng(&H15)), CVar(CLng(var_124)), var_E4, CVar(CStr(var_114)))
  loc_1562E2E:   var_174 = CVar(CStr(var_114)) 'String
  loc_1562E35:   LateIdCallSt
  loc_1562E5A:   var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_1562E5E:   var_B8 = vbNullString
  loc_1562E68:   Set var_98 = Me.FGrid3
  loc_1562E7E:   var_B8 = CVar(CLng(var_8A)) 'Long
  loc_1562E8D:   Me.FGrid3.Row = var_B8
  loc_1562E97:   Set var_E4 = Nothing 
  loc_1562E9E:   var_88.MoveNext
  loc_1562EA3:   GoTo loc_15625B8
  loc_1562EA6: End If
  loc_1562EB4: Set var_98 = Me.Txt
  loc_1562EBA: Call 0.Method_Proc_59_45_15635600 (CInt(&HE), var_9C, var_A0, FGrid3.DispID_10000, var_B8, var_E4, var_174)
  loc_1562EC2: var_E4 = var_9C.Text
  loc_1562EDE: If (CDbl(Val(var_A0)) <> CDbl(0)) Then
  loc_1562F10:   If (MsgBox("Want Include Child in Plan/Package Value?", &H24, var_114, var_124, var_174) = 6) Then
  loc_1562F3B:     For var_1A8 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)): var_8A = var_1A8 'Byte
  loc_1562F46:       var_B8 = CVar(CLng(var_8A)) 'Long
  loc_1562F4E:       var_F4 = CVar(CLng(&H11)) 'Long
  loc_1562F79:       If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_1562F81:         var_B8 = CVar(CLng(var_8A)) 'Long
  loc_1562F89:         var_F4 = CVar(CLng(&HD)) 'Long
  loc_1562FB4:         If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_1562FC4:           var_F4 = CVar(CLng(&HE)) 'Long
  loc_1562FE6:           var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1562FF7:           Set var_9C = Me.Txt
  loc_1562FFD:           Call 0.Method_Proc_59_45_15635600 (CInt(&HD), var_CC, var_A4, var_1B8, var_F4, CVar(CLng(var_8A)), var_F4)
  loc_1563005:           var_B8 = var_CC.Text
  loc_1563012:           var_1C0 = Val(var_A4)
  loc_1563023:           Set var_1AC = Me.Txt
  loc_1563029:           Call 0.Method_Proc_59_45_15635600 (CInt(&HE), var_1B0, var_A8, var_1C0, var_F4)
  loc_1563031:           var_B8 = var_1B0.Text
  loc_156303E:           var_1C8 = Val(var_A8)
  loc_1563050:           var_94 = (var_94 + (var_1B8 * (var_1C0 + var_1C8)))
  loc_156306F:         Else
  loc_156309E:           var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_15630AF:           Set var_9C = Me.Txt
  loc_15630B5:           Call 0.Method_Proc_59_45_15635600 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_15630BD:           var_94 = var_CC.Text
  loc_15630CA:           var_1C0 = Val(var_A4)
  loc_15630DB:           Set var_1AC = Me.Txt
  loc_15630E1:           Call 0.Method_Proc_59_45_15635600 (CInt(&HE), var_1B0, var_A8, var_1C0, var_1C8)
  loc_15630E9:           CByte(1) = var_1B0.Text
  loc_1563108:           var_94 = (var_94 + (var_1B8 * (var_1C0 + Val(var_A8))))
  loc_1563124:         End If
  loc_1563124:       End If
  loc_1563127:     Next var_1A8 'Byte
  loc_1563130:   Else
  loc_1563158:     For var_1CC = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):   var_8A = var_1CC 'Byte
  loc_1563163:       var_B8 = CVar(CLng(var_8A)) 'Long
  loc_156316B:       var_F4 = CVar(CLng(&H11)) 'Long
  loc_1563196:       If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_156319E:         var_B8 = CVar(CLng(var_8A)) 'Long
  loc_15631A6:         var_F4 = CVar(CLng(&HD)) 'Long
  loc_15631D1:         If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_1563203:           var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1563214:           Set var_9C = Me.Txt
  loc_156321A:           Call 0.Method_Proc_59_45_15635600 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_1563222:           var_F4 = var_CC.Text
  loc_156323D:           var_94 = (var_94 + (var_1B8 * Val(var_A4)))
  loc_1563256:         Else
  loc_1563285:           var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1563296:           Set var_9C = Me.Txt
  loc_156329C:           Call 0.Method_Proc_59_45_15635600 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_15632A4:           var_94 = var_CC.Text
  loc_15632BF:           var_94 = (var_94 + (var_1B8 * Val(var_A4)))
  loc_15632D5:         End If
  loc_15632D5:       End If
  loc_15632D8:     Next var_1CC 'Byte
  loc_15632DE:   End If
  loc_15632E1: Else
  loc_1563309:   For var_1D0 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):   var_8A = var_1D0 'Byte
  loc_1563314:     var_B8 = CVar(CLng(var_8A)) 'Long
  loc_156331C:     var_F4 = CVar(CLng(&H11)) 'Long
  loc_1563347:     If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_156334F:       var_B8 = CVar(CLng(var_8A)) 'Long
  loc_1563357:       var_F4 = CVar(CLng(&HD)) 'Long
  loc_1563382:       If (CStr(Me.FGrid3.TextMatrix)) = "Flat Rate") Then
  loc_15633B4:         var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_15633C5:         Set var_9C = Me.Txt
  loc_15633CB:         Call 0.Method_Proc_59_45_15635600 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_15633D3:         var_F4 = var_CC.Text
  loc_15633E0:         var_1C0 = Val(var_A4)
  loc_15633F1:         Set var_1AC = Me.Txt
  loc_15633F7:         Call 0.Method_Proc_59_45_15635600 (CInt(&HE), var_1B0, var_A8, var_1C0)
  loc_15633FF:         var_B8 = var_1B0.Text
  loc_156341E:         var_94 = (var_94 + (var_1B8 * (var_1C0 + Val(var_A8))))
  loc_156343D:       Else
  loc_156346C:         var_1B8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_156347D:         Set var_9C = Me.Txt
  loc_1563483:         Call 0.Method_Proc_59_45_15635600 (CInt(&HD), var_CC, var_A4, var_1B8, CVar(CLng(&HE)), CVar(CLng(var_8A)))
  loc_156348B:         var_94 = var_CC.Text
  loc_1563498:         var_1C0 = Val(var_A4)
  loc_15634A9:         Set var_1AC = Me.Txt
  loc_15634AF:         Call 0.Method_Proc_59_45_15635600 (CInt(&HE), var_1B0, var_A8, var_1C0)
  loc_15634B7:         var_1C8 = var_1B0.Text
  loc_15634D6:         var_94 = (var_94 + (var_1B8 * (var_1C0 + Val(var_A8))))
  loc_15634F2:       End If
  loc_15634F2:     End If
  loc_15634F5:   Next var_1D0 'Byte
  loc_15634FB: End If
  loc_1563532: Set var_98 = Me.Txt
  loc_1563538: Call 0.Method_Proc_59_45_15635600 (CInt(&H19), var_9C, CStr(Format(var_94, "0.00")))
  loc_1563540: var_9C.Text = 1
  loc_156355B: Set var_88 = Nothing
  loc_156355E: Exit Sub
End Sub

Public Sub Proc_59_46_1388738
  'Data Table: 52DB34
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_1387E63: Me.FGrid3.Cols = &H16
  loc_1387E68: var_98 = 0
  loc_1387E74: var_B8 = CVar(CLng(0)) 'Long
  loc_1387E79: var_D8 = "No."
  loc_1387E82: LateIdCallSt
  loc_1387E8D: var_98 = CVar(CLng(0)) 'Long
  loc_1387E98: var_B8 = CVar(CInt(4)) 'Integer
  loc_1387E9F: LateIdCallSt
  loc_1387EAA: var_98 = CVar(CLng(0)) 'Long
  loc_1387EB5: var_B8 = CVar(CInt(4)) 'Integer
  loc_1387EBC: LateIdCallSt
  loc_1387EC7: var_98 = CVar(CLng(0)) 'Long
  loc_1387ECC: var_B8 = &H190
  loc_1387ED8: LateIdCallSt
  loc_1387EE0: var_98 = 0
  loc_1387EEC: var_B8 = CVar(CLng(1)) 'Long
  loc_1387EF1: var_D8 = "Fixed Charge"
  loc_1387EFA: LateIdCallSt
  loc_1387F05: var_98 = CVar(CLng(1)) 'Long
  loc_1387F10: var_B8 = CVar(CInt(1)) 'Integer
  loc_1387F17: LateIdCallSt
  loc_1387F22: var_98 = CVar(CLng(1)) 'Long
  loc_1387F2D: var_B8 = CVar(CInt(1)) 'Integer
  loc_1387F34: LateIdCallSt
  loc_1387F3F: var_98 = CVar(CLng(1)) 'Long
  loc_1387F44: var_B8 = &H7D0
  loc_1387F50: LateIdCallSt
  loc_1387F5B: var_98 = CVar(CLng(2)) 'Long
  loc_1387F60: var_B8 = 0
  loc_1387F6C: LateIdCallSt
  loc_1387F77: var_98 = CVar(CLng(&H11)) 'Long
  loc_1387F7C: var_B8 = 0
  loc_1387F88: LateIdCallSt
  loc_1387F90: var_98 = 0
  loc_1387F9C: var_B8 = CVar(CLng(3)) 'Long
  loc_1387FA1: var_D8 = "TaxStru"
  loc_1387FAA: LateIdCallSt
  loc_1387FB5: var_98 = CVar(CLng(3)) 'Long
  loc_1387FC0: var_B8 = CVar(CInt(1)) 'Integer
  loc_1387FC7: LateIdCallSt
  loc_1387FD2: var_98 = CVar(CLng(3)) 'Long
  loc_1387FDD: var_B8 = CVar(CInt(1)) 'Integer
  loc_1387FE4: LateIdCallSt
  loc_1387FEF: var_98 = CVar(CLng(3)) 'Long
  loc_1387FF4: var_B8 = 0
  loc_1388000: LateIdCallSt
  loc_138800B: var_98 = CVar(CLng(4)) 'Long
  loc_1388010: var_B8 = 0
  loc_138801C: LateIdCallSt
  loc_1388024: var_98 = 0
  loc_1388030: var_B8 = CVar(CLng(5)) 'Long
  loc_1388035: var_D8 = "Tax Inc"
  loc_138803E: LateIdCallSt
  loc_1388049: var_98 = CVar(CLng(5)) 'Long
  loc_1388054: var_B8 = CVar(CInt(4)) 'Integer
  loc_138805B: LateIdCallSt
  loc_1388066: var_98 = CVar(CLng(5)) 'Long
  loc_1388071: var_B8 = CVar(CInt(4)) 'Integer
  loc_1388078: LateIdCallSt
  loc_1388083: var_98 = CVar(CLng(5)) 'Long
  loc_1388088: var_B8 = 0
  loc_1388094: LateIdCallSt
  loc_138809C: var_98 = 0
  loc_13880A8: var_B8 = CVar(CLng(6)) 'Long
  loc_13880AD: var_D8 = "Adult Rate"
  loc_13880B6: LateIdCallSt
  loc_13880C1: var_98 = CVar(CLng(6)) 'Long
  loc_13880CC: var_B8 = CVar(CInt(7)) 'Integer
  loc_13880D3: LateIdCallSt
  loc_13880DE: var_98 = CVar(CLng(6)) 'Long
  loc_13880E9: var_B8 = CVar(CInt(7)) 'Integer
  loc_13880F0: LateIdCallSt
  loc_13880FB: var_98 = CVar(CLng(6)) 'Long
  loc_1388100: var_B8 = 0
  loc_138810C: LateIdCallSt
  loc_1388114: var_98 = 0
  loc_1388120: var_B8 = CVar(CLng(7)) 'Long
  loc_1388125: var_D8 = "Child Rate"
  loc_138812E: LateIdCallSt
  loc_1388139: var_98 = CVar(CLng(7)) 'Long
  loc_1388144: var_B8 = CVar(CInt(7)) 'Integer
  loc_138814B: LateIdCallSt
  loc_1388156: var_98 = CVar(CLng(7)) 'Long
  loc_1388161: var_B8 = CVar(CInt(7)) 'Integer
  loc_1388168: LateIdCallSt
  loc_1388173: var_98 = CVar(CLng(7)) 'Long
  loc_1388178: var_B8 = 0
  loc_1388184: LateIdCallSt
  loc_138818C: var_98 = 0
  loc_1388198: var_B8 = CVar(CLng(8)) 'Long
  loc_138819D: var_D8 = "Extra Adult"
  loc_13881A6: LateIdCallSt
  loc_13881B1: var_98 = CVar(CLng(8)) 'Long
  loc_13881BC: var_B8 = CVar(CInt(7)) 'Integer
  loc_13881C3: LateIdCallSt
  loc_13881CE: var_98 = CVar(CLng(8)) 'Long
  loc_13881D9: var_B8 = CVar(CInt(7)) 'Integer
  loc_13881E0: LateIdCallSt
  loc_13881EB: var_98 = CVar(CLng(8)) 'Long
  loc_13881F0: var_B8 = 0
  loc_13881FC: LateIdCallSt
  loc_1388204: var_98 = 0
  loc_1388210: var_B8 = CVar(CLng(9)) 'Long
  loc_1388215: var_D8 = "Extra Child"
  loc_138821E: LateIdCallSt
  loc_1388229: var_98 = CVar(CLng(9)) 'Long
  loc_1388234: var_B8 = CVar(CInt(7)) 'Integer
  loc_138823B: LateIdCallSt
  loc_1388246: var_98 = CVar(CLng(9)) 'Long
  loc_1388251: var_B8 = CVar(CInt(7)) 'Integer
  loc_1388258: LateIdCallSt
  loc_1388263: var_98 = CVar(CLng(9)) 'Long
  loc_1388268: var_B8 = 0
  loc_1388274: LateIdCallSt
  loc_138827C: var_98 = 0
  loc_1388288: var_B8 = CVar(CLng(&HA)) 'Long
  loc_138828D: var_D8 = "Occurences"
  loc_1388296: LateIdCallSt
  loc_13882A1: var_98 = CVar(CLng(&HA)) 'Long
  loc_13882AC: var_B8 = CVar(CInt(7)) 'Integer
  loc_13882B3: LateIdCallSt
  loc_13882BE: var_98 = CVar(CLng(&HA)) 'Long
  loc_13882C9: var_B8 = CVar(CInt(7)) 'Integer
  loc_13882D0: LateIdCallSt
  loc_13882DB: var_98 = CVar(CLng(&HA)) 'Long
  loc_13882E0: var_B8 = &H4B0
  loc_13882EC: LateIdCallSt
  loc_13882F4: var_98 = 0
  loc_1388300: var_B8 = CVar(CLng(&HF)) 'Long
  loc_1388305: var_D8 = "Amt/Day"
  loc_138830E: LateIdCallSt
  loc_1388319: var_98 = CVar(CLng(&HF)) 'Long
  loc_1388324: var_B8 = CVar(CInt(7)) 'Integer
  loc_138832B: LateIdCallSt
  loc_1388336: var_98 = CVar(CLng(&HF)) 'Long
  loc_1388341: var_B8 = CVar(CInt(7)) 'Integer
  loc_1388348: LateIdCallSt
  loc_1388353: var_98 = CVar(CLng(&HF)) 'Long
  loc_1388358: var_B8 = &H4B0
  loc_1388364: LateIdCallSt
  loc_138836C: var_98 = 0
  loc_1388378: var_B8 = CVar(CLng(&H10)) 'Long
  loc_138837D: var_D8 = "Amount"
  loc_1388386: LateIdCallSt
  loc_1388391: var_98 = CVar(CLng(&H10)) 'Long
  loc_138839C: var_B8 = CVar(CInt(7)) 'Integer
  loc_13883A3: LateIdCallSt
  loc_13883AE: var_98 = CVar(CLng(&H10)) 'Long
  loc_13883B9: var_B8 = CVar(CInt(7)) 'Integer
  loc_13883C0: LateIdCallSt
  loc_13883CB: var_98 = CVar(CLng(&H10)) 'Long
  loc_13883D0: var_B8 = &H4B0
  loc_13883DC: LateIdCallSt
  loc_13883E4: var_98 = 0
  loc_13883F0: var_B8 = CVar(CLng(&HB)) 'Long
  loc_13883F5: var_D8 = "Print Option"
  loc_13883FE: LateIdCallSt
  loc_1388409: var_98 = CVar(CLng(&HB)) 'Long
  loc_1388414: var_B8 = CVar(CInt(1)) 'Integer
  loc_138841B: LateIdCallSt
  loc_1388426: var_98 = CVar(CLng(&HB)) 'Long
  loc_1388431: var_B8 = CVar(CInt(1)) 'Integer
  loc_1388438: LateIdCallSt
  loc_1388443: var_98 = CVar(CLng(&HB)) 'Long
  loc_1388448: var_B8 = 0
  loc_1388454: LateIdCallSt
  loc_138845C: var_98 = 0
  loc_1388468: var_B8 = CVar(CLng(&HC)) 'Long
  loc_138846D: var_D8 = "Posting Method"
  loc_1388476: LateIdCallSt
  loc_1388481: var_98 = CVar(CLng(&HC)) 'Long
  loc_138848C: var_B8 = CVar(CInt(1)) 'Integer
  loc_1388493: LateIdCallSt
  loc_138849E: var_98 = CVar(CLng(&HC)) 'Long
  loc_13884A9: var_B8 = CVar(CInt(1)) 'Integer
  loc_13884B0: LateIdCallSt
  loc_13884BB: var_98 = CVar(CLng(&HC)) 'Long
  loc_13884C0: var_B8 = 0
  loc_13884CC: LateIdCallSt
  loc_13884D4: var_98 = 0
  loc_13884E0: var_B8 = CVar(CLng(&HD)) 'Long
  loc_13884E5: var_D8 = "Charge Type"
  loc_13884EE: LateIdCallSt
  loc_13884F9: var_98 = CVar(CLng(&HD)) 'Long
  loc_1388504: var_B8 = CVar(CInt(1)) 'Integer
  loc_138850B: LateIdCallSt
  loc_1388516: var_98 = CVar(CLng(&HD)) 'Long
  loc_1388521: var_B8 = CVar(CInt(1)) 'Integer
  loc_1388528: LateIdCallSt
  loc_1388533: var_98 = CVar(CLng(&HD)) 'Long
  loc_1388538: var_B8 = 0
  loc_1388544: LateIdCallSt
  loc_138854C: var_98 = 0
  loc_1388558: var_B8 = CVar(CLng(&HE)) 'Long
  loc_138855D: var_D8 = "Flat Rate"
  loc_1388566: LateIdCallSt
  loc_1388571: var_98 = CVar(CLng(&HE)) 'Long
  loc_138857C: var_B8 = CVar(CInt(7)) 'Integer
  loc_1388583: LateIdCallSt
  loc_138858E: var_98 = CVar(CLng(&HE)) 'Long
  loc_1388599: var_B8 = CVar(CInt(7)) 'Integer
  loc_13885A0: LateIdCallSt
  loc_13885AB: var_98 = CVar(CLng(&HE)) 'Long
  loc_13885B0: var_B8 = 0
  loc_13885BC: LateIdCallSt
  loc_13885C4: var_98 = 0
  loc_13885D0: var_B8 = CVar(CLng(&H13)) 'Long
  loc_13885D5: var_D8 = "AppDate"
  loc_13885DE: LateIdCallSt
  loc_13885E9: var_98 = CVar(CLng(&H13)) 'Long
  loc_13885F4: var_B8 = CVar(CInt(7)) 'Integer
  loc_13885FB: LateIdCallSt
  loc_1388606: var_98 = CVar(CLng(&H13)) 'Long
  loc_1388611: var_B8 = CVar(CInt(7)) 'Integer
  loc_1388618: LateIdCallSt
  loc_1388623: var_98 = CVar(CLng(&H13)) 'Long
  loc_1388628: var_B8 = 0
  loc_1388634: LateIdCallSt
  loc_138863C: var_98 = 0
  loc_1388648: var_B8 = CVar(CLng(&H12)) 'Long
  loc_138864D: var_D8 = "Plan Percentage"
  loc_1388656: LateIdCallSt
  loc_1388661: var_98 = CVar(CLng(&H12)) 'Long
  loc_138866C: var_B8 = CVar(CInt(7)) 'Integer
  loc_1388673: LateIdCallSt
  loc_138867E: var_98 = CVar(CLng(&H12)) 'Long
  loc_1388689: var_B8 = CVar(CInt(7)) 'Integer
  loc_1388690: LateIdCallSt
  loc_138869B: var_98 = CVar(CLng(&H12)) 'Long
  loc_13886A0: var_B8 = 0
  loc_13886AC: LateIdCallSt
  loc_13886B4: var_98 = 0
  loc_13886C0: var_B8 = CVar(CLng(&H14)) 'Long
  loc_13886C5: var_D8 = "Disc Amount"
  loc_13886CE: LateIdCallSt
  loc_13886D9: var_98 = CVar(CLng(&H14)) 'Long
  loc_13886DE: var_B8 = 0
  loc_13886EA: LateIdCallSt
  loc_13886F2: var_98 = 0
  loc_13886FE: var_B8 = CVar(CLng(&H15)) 'Long
  loc_1388703: var_D8 = "Fix Rate"
  loc_138870C: LateIdCallSt
  loc_1388717: var_98 = CVar(CLng(&H15)) 'Long
  loc_138871C: var_B8 = 0
  loc_1388728: LateIdCallSt
  loc_1388732: Set var_88 = Nothing 
  loc_1388736: Exit Sub
End Sub

Public Sub Proc_59_47_1290C60(arg_C) '1290C60
  'Data Table: 52DB34
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As Variant
  Dim var_DC As MSHFlexGrid
  Dim var_110 As Variant
  Dim var_F0 As Variant
  Dim var_130 As Variant
  Dim var_B8 As Variant
  Dim var_150 As Variant
  Dim var_1D8 As Double
  Dim var_120 As Variant
  Dim var_168 As String
  Dim var_1E0 As Double
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_A8 As String
  Dim var_140 As Variant
  loc_12906AC: If (arg_C = 0) Then
  loc_12906D2:   If (CLng(Me.FGrid3.Col) = CLng(&H12)) Then
  loc_12906E2:     Set var_8C = Me.TxtGrid
  loc_12906E8:     Call 0.Method_Proc_59_47_1290C600 (arg_C, var_A4, var_A8)
  loc_12906F0:     var_A0 = var_A4.Text
  loc_1290708:     var_110 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290720:     var_130 = CVar(CLng(Me.FGrid3.Col)) 'Long
  loc_129075A:     LateIdCallSt
  loc_129078C:     Set var_8C = Me.Txt
  loc_1290792:     Call 0.Method_Proc_59_47_1290C600 (CInt(&H19), var_A4, var_A8, Me.FGrid3, CVar(CStr(Format(CVar(var_A8), "0.00"))))
  loc_129079A:     1 = var_A4.Text
  loc_12907BD:     var_B8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_12907C5:     var_120 = CVar(CLng(&H12)) 'Long
  loc_1290808:     var_17C = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290810:     var_19C = CVar(CLng(&HF)) 'Long
  loc_1290841:     var_1BC = CVar(CStr(Format(CVar((Val(var_A8) * Val(CStr((CDbl(CStr(Me.FGrid3.TextMatrix))) / CDbl(&H64)))))), "0.00"))) 'String
  loc_1290849:     Set var_1D0 = Me.FGrid3
  loc_129084F:     LateIdCallSt
  loc_1290893:     var_B8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_129089B:     var_120 = CVar(CLng(&HF)) 'Long
  loc_12908A4:     Set var_A4 = Me.FGrid3
  loc_12908B5:     var_A8 = CStr(var_A4.TextMatrix))
  loc_12908BD:     var_1D8 = Val(var_A8)
  loc_12908D3:     var_140 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_12908F5:     var_168 = CStr(Me.FGrid3.TextMatrix))
  loc_12908FD:     var_1E0 = Val(var_168)
  loc_129095A:     LateIdCallSt
  loc_129098D:     Call Proc_59_48_1D7941C(Me.FGrid3, CVar(CStr(Format(CVar((var_1D8 * var_1E0)), "0.00"))), 1, 1, CVar(CLng(&H10)), CVar(CLng(Me.FGrid3.Row)), var_1E0, CVar(CLng(&HA)))
  loc_1290995:   Else
  loc_129099C:     If (var_A0 = CLng(&HF)) Then
  loc_12909AC:       Set var_8C = Me.TxtGrid
  loc_12909B2:       Call 0.Method_Proc_59_47_1290C600 (arg_C, var_A4, var_A8, var_140, var_1D8)
  loc_12909BA:       var_120 = var_A4.Text
  loc_12909D2:       var_110 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_12909DB:       Set var_F0 = Me.FGrid3
  loc_12909EA:       var_130 = CVar(CLng(var_F0.Col)) 'Long
  loc_1290A16:       var_150 = CVar(CStr(Format(CVar(var_A8), "0.00"))) 'String
  loc_1290A24:       LateIdCallSt
  loc_1290A85:       var_1D8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1290A96:       Set var_DC = Me.Txt
  loc_1290A9C:       Call 0.Method_Proc_59_47_1290C600 (CInt(&H19), var_F0, var_168, var_1D8, CVar(CLng(&HF)), CVar(CLng(Me.FGrid3.Row)), Me.FGrid3)
  loc_1290AA4:       var_150 = var_F0.Text
  loc_1290AC7:       var_17C = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290ACF:       var_19C = CVar(CLng(&H12)) 'Long
  loc_1290B04:       var_1BC = CVar(CStr(Format(CVar(((var_1D8 * CDbl(&H64)) / Val(var_168))), "0.00"))) 'String
  loc_1290B0C:       Set var_1D0 = Me.FGrid3
  loc_1290B12:       LateIdCallSt
  loc_1290B54:       var_B8 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290B5C:       var_120 = CVar(CLng(&HF)) 'Long
  loc_1290B94:       var_140 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_1290BBE:       var_1E0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1290C1B:       LateIdCallSt
  loc_1290C4E:       Call Proc_59_48_1D7941C(Me.FGrid3, CVar(CStr(Format(CVar((Val(CStr(Me.FGrid3.TextMatrix))) * var_1E0)), "0.00"))), 1, 1, CVar(CLng(&H10)), CVar(CLng(Me.FGrid3.Row)), var_1E0, CVar(CLng(&HA)))
  loc_1290C53:     End If
  loc_1290C53:   End If
  loc_1290C53: End If
  loc_1290C58: Proc_59_47_1290C60 = &HFF
End Sub

Public Sub Proc_59_48_1D7941C
  'Data Table: 52DB34
  Dim var_D4 As Variant
  Dim var_F4 As Variant
  Dim var_10C As Variant
  Dim var_118 As Variant
  Dim var_C4 As Double
  Dim var_108 As Variant
  Dim var_13C As Variant
  Dim var_110 As String
  Dim var_1E8 As Double
  Dim var_114 As Variant
  Dim var_1F0 As Double
  Dim var_190 As Variant
  Dim var_1B0 As Variant
  Dim var_E4 As Variant
  Dim var_1D0 As Variant
  Dim var_150 As String
  Dim var_160 As Variant
  Dim var_90 As Double
  Dim var_12C As Variant
  Dim var_1F4 As String
  Dim var_1F8 As String
  Dim unk_52DB53 As Connection15
  Dim var_208 As Variant
  Dim var_218 As Double
  Dim var_210 As Variant
  Dim var_1E0 As Variant
  Dim var_204 As Variant
  Dim var_104 As Variant
  Dim var_2C4 As Double
  Dim var_26C As Variant
  Dim var_28C As Variant
  Dim var_180 As Variant
  Dim var_2AC As Variant
  Dim var_23C As Variant
  Dim var_2BC As Variant
  Dim var_2E4 As Variant
  Dim var_29C As Variant
  Dim var_304 As Variant
  Dim var_20C As Variant
  Dim var_31C As TextBox
  Dim var_1C0 As Variant
  Dim var_22C As Variant
  Dim var_27C As Variant
  Dim var_25C As Variant
  Dim var_98 As Recordset15
  Dim var_A0 As Double
  loc_1D714CE: If CBool(Trim(CVar(())) <> vbNullString) Then
  loc_1D714DF:   Set var_108 = Me.Txt
  loc_1D714E5:   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H1E), var_10C)
  loc_1D71500:   Set var_114 = Me.Txt
  loc_1D71506:   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H18), var_118)
  loc_1D7150E:   var_118.Tag = var_10C.Tag
  loc_1D71521: End If
  loc_1D71524: var_C4 = CDbl(&H64)
  loc_1D7154F: For var_11C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)): var_86 = var_11C 'Byte
  loc_1D7155A:   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71562:   var_13C = CVar(CLng(&H11)) 'Long
  loc_1D7158D:   If (CStr(Me.FGrid3.TextMatrix)) <> vbNullString) Then
  loc_1D71595:     var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7159D:     var_13C = CVar(CLng(&H15)) 'Long
  loc_1D715C8:     If (CStr(Me.FGrid3.TextMatrix)) = "Yes") Then
  loc_1D715FA:       var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D7160B:       Set var_10C = Me.Txt
  loc_1D71611:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_114, var_150, var_1E8, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_1D71619:       var_13C = var_114.Text
  loc_1D7162E:       var_190 = CVar(CLng(var_86)) 'Long
  loc_1D71636:       var_1B0 = CVar(CLng(&H12)) 'Long
  loc_1D7166B:       var_1D0 = CVar(CStr(Format(CVar(((var_1E8 * CDbl(&H64)) / Val(var_150))), "0.00"))) 'String
  loc_1D71673:       Set var_118 = Me.FGrid3
  loc_1D71679:       LateIdCallSt
  loc_1D716A5:       var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D716AD:       var_13C = CVar(CLng(&H12)) 'Long
  loc_1D716C7:       var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D716CF:       var_1E8 = Val(var_110)
  loc_1D716D9:       var_C4 = (var_C4 - var_1E8)
  loc_1D716E8:     Else
  loc_1D716F6:       Set var_108 = Me.Txt
  loc_1D716FC:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C, var_110, var_C4, var_1E8, var_13C, var_F4)
  loc_1D71704:       var_118 = var_10C.Text
  loc_1D71719:       var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71721:       var_13C = CVar(CLng(&H12)) 'Long
  loc_1D7172A:       Set var_114 = Me.FGrid3
  loc_1D7174B:       var_190 = CVar(CLng(var_86)) 'Long
  loc_1D71753:       var_1B0 = CVar(CLng(&HF)) 'Long
  loc_1D71788:       var_1D0 = CVar(CStr(Format(CVar(((Val(var_110) * Val(CStr(var_114.TextMatrix)))) / CDbl(&H64))), "0.00"))) 'String
  loc_1D71790:       Set var_118 = Me.FGrid3
  loc_1D71796:       LateIdCallSt
  loc_1D717C2:       var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D717CA:       var_13C = CVar(CLng(&H12)) 'Long
  loc_1D717F6:       var_C4 = (var_C4 - Val(CStr(Me.FGrid3.TextMatrix))))
  loc_1D71802:     End If
  loc_1D71807:     var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7180F:     var_13C = CVar(CLng(&HA)) 'Long
  loc_1D71839:     var_160 = CVar(CLng(var_86)) 'Long
  loc_1D71841:     var_190 = CVar(CLng(&HF)) 'Long
  loc_1D7184A:     Set var_10C = Me.FGrid3
  loc_1D7185B:     var_150 = CStr(var_10C.TextMatrix))
  loc_1D71863:     var_1F0 = Val(var_150)
  loc_1D71871:     var_90 = (var_90 + (Val(CStr(Me.FGrid3.TextMatrix))) * var_1F0))
  loc_1D71889:   End If
  loc_1D718C0:   Set var_108 = Me.Txt
  loc_1D718C6:   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(Format(var_90, "0.00")), 1, 1, var_90, var_1F0)
  loc_1D718CE:   var_10C.Text = var_190
  loc_1D718E7: Next var_11C 'Byte
  loc_1D71901: var_110 = "SELECT PlanMast.Code,PlanMast.RRIncTax,PlanMast.RoomPer,PlanMast.PercentApp,PlanMast.plan_package, plan1.Chrgcode, FixedCharge.Name,plan1.Revcode, plan1.TaxStru, plan1.TaxInc, plan1.PrintOption,plan1.PostingMethod, plan1.ChargeType, plan1.FlatRate,plan1.Adult, plan1.Child, plan1.ExtraAdult, plan1.ExtraChild,Plan1.App_Date , Plan1.PlanPer,Plan1.NoofDays FROM (PlanMast left join plan1 on Planmast.Code=Plan1.Code) Left JOIN FixedCharge ON plan1.Chrgcode = FixedCharge.Code where (PlanMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_1D71919: Set var_108 = Me.Txt
  loc_1D7191F: Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H18), var_10C, var_150, var_110 & "' or PlanMast.LOGSITE_CODE='HO') and PlanMast.code='")
  loc_1D71927: var_D4 = var_10C.Tag
  loc_1D71930: var_1F8 = -1 & var_150
  loc_1D71940: unk_52DB53.Execute var_1F8 & "'", var_114, 
  loc_1D7194B: Set var_94 = var_114
  loc_1D7197E: If (Me.Recordset15.RecordCount = 0) Then
  loc_1D71986:   Set var_94 = Nothing
  loc_1D7198E:   Set var_98 = Nothing
  loc_1D71991:   Exit Sub
  loc_1D71992: End If
  loc_1D719A0: Set var_108 = Me.Txt
  loc_1D719A6: Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2B), var_10C)
  loc_1D719C5: If (var_10C.Text = "Yes") Then
  loc_1D719D4:   Set var_108 = Me.Lbl
  loc_1D719DA:   Call 0.Method_Proc_59_48_1D7941C0 (&H3F, var_10C)
  loc_1D719E2:   var_10C.Caption = vbNullString
  loc_1D719FC:   Set var_108 = Me.Txt
  loc_1D71A02:   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D71A0A:   var_110 = var_10C.Text
  loc_1D71A28:   Set var_114 = Me.Txt
  loc_1D71A2E:   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D71A36:   var_150 = var_118.Text
  loc_1D71A62:   var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D71A71:   var_1F4 = CStr(Format(var_D4, "0.00"))
  loc_1D71A80:   Set var_204 = Me.Txt
  loc_1D71A86:   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D71A8E:   var_208.Tag = 1
  loc_1D71AF3:   If (Me.Recordset15.Fields.Item("RRIncTax").Value = "Yes") Then
  loc_1D71B13:     var_10C = Me.Recordset15.Fields.Item("PLan_Package")
  loc_1D71B35:     If (var_10C.Value = "Package") Then
  loc_1D71B46:       Set var_108 = Me.Txt
  loc_1D71B4C:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_10C, var_110)
  loc_1D71B54:       var_1F0 = var_10C.Text
  loc_1D71B70:       If (CDbl(Val(var_110)) >= CDbl(0)) Then
  loc_1D71B93:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D71BA4:           Set var_108 = Me.Txt
  loc_1D71BAA:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D71BBF:           var_1E8 = Val(var_10C.Text)
  loc_1D71BD0:           Set var_114 = Me.Txt
  loc_1D71BD6:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118, var_150)
  loc_1D71BEB:           var_1F0 = Val(var_150)
  loc_1D71BFC:           Set var_204 = Me.Txt
  loc_1D71C02:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D71C3A:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D71C58:           Set var_20C = Me.Txt
  loc_1D71C5E:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D71C66:           var_210.Tag = 1
  loc_1D71C95:         Else
  loc_1D71CA2:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D71CB5:           If (var_110 = "Disc On Food") Then
  loc_1D71CC6:             Set var_108 = Me.Txt
  loc_1D71CCC:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C, var_110)
  loc_1D71CD4:             var_218 = var_10C.Text
  loc_1D71CE1:             var_1E8 = Val(var_110)
  loc_1D71CF2:             Set var_114 = Me.Txt
  loc_1D71CF8:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_150)
  loc_1D71D0D:             var_1F0 = Val(var_150)
  loc_1D71D1E:             Set var_204 = Me.Txt
  loc_1D71D24:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D71D5C:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D71D7A:             Set var_20C = Me.Txt
  loc_1D71D80:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D71D88:             var_210.Text = 1
  loc_1D71DDC:             For var_21C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):   var_86 = var_21C 'Byte
  loc_1D71DE7:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71DEF:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D71E1F:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D71E29:                 If (var_90 <> CDbl(0)) Then
  loc_1D71E31:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71E39:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D71E5B:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D71E8D:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D71E9E:                   Set var_114 = Me.Txt
  loc_1D71EA4:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D71EAC:                   var_13C = var_118.Text
  loc_1D71EC1:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D71EC9:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D71EF3:                   var_26C = CVar(CLng(var_86)) 'Long
  loc_1D71EFB:                   var_28C = CVar(CLng(&H14)) 'Long
  loc_1D71F38:                   var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D71F40:                   Set var_208 = Me.FGrid3
  loc_1D71F46:                   LateIdCallSt
  loc_1D71F7C:                 Else
  loc_1D71F81:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D71F89:                   var_13C = CVar(CLng(&HF)) 'Long
  loc_1D71FB3:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D71FBB:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D71FE8:                   var_1D0 = CVar(CStr(Format(CVar(Val(CStr(Me.FGrid3.TextMatrix)))), "0.00"))) 'String
  loc_1D71FF0:                   Set var_10C = Me.FGrid3
  loc_1D71FF6:                   LateIdCallSt
  loc_1D72015:                 End If
  loc_1D7201A:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D72022:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D7204C:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D72054:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D7205D:                 Set var_10C = Me.FGrid3
  loc_1D7207E:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D72086:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D720A0:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D720B0:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D720B8:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D720C1:                 Set var_118 = Me.FGrid3
  loc_1D720E2:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D720EA:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D72113:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D72123:                 var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D7212B:                 Set var_204 = Me.FGrid3
  loc_1D72131:                 LateIdCallSt
  loc_1D72164:               End If
  loc_1D72167:             Next var_21C 'Byte
  loc_1D72170:           Else
  loc_1D72190:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D721A1:               Set var_108 = Me.Txt
  loc_1D721A7:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D721CD:               Set var_114 = Me.Txt
  loc_1D721D3:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D721E8:               var_1F0 = Val(var_118.Text)
  loc_1D721F9:               Set var_204 = Me.Txt
  loc_1D721FF:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D7224D:               var_2C4 = Val(CStr(Me.Recordset15.Fields.Item("RoomPer").Value))
  loc_1D72278:               var_E4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((Val(var_1F4) * var_2C4) / CDbl(&H64)))) 'Double
  loc_1D72296:               Set var_318 = Me.Txt
  loc_1D7229C:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_31C, CStr(Format(var_10C.TextMatrix), "0.00")), 1)
  loc_1D722A4:               var_31C.Tag = 1
  loc_1D722EA:               Set var_108 = Me.Txt
  loc_1D722F0:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D722F8:               var_10C.Text = var_2C4
  loc_1D7232F:               For var_320 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_86 = var_320 'Byte
  loc_1D7233A:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D72342:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D72372:                 If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D7237A:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D72382:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D723A4:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D723D6:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D723E7:                   Set var_114 = Me.Txt
  loc_1D723ED:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D723F5:                   var_13C = var_118.Text
  loc_1D72422:                   var_208 = Me.Recordset15.Fields.Item("RoomPer")
  loc_1D72443:                   var_1C0 = CVar(CLng(var_86)) 'Long
  loc_1D7244B:                   var_22C = CVar(CLng(&HA)) 'Long
  loc_1D72475:                   var_27C = CVar(CLng(var_86)) 'Long
  loc_1D7247D:                   var_29C = CVar(CLng(&H14)) 'Long
  loc_1D724B6:                   var_1D0 = CVar(((((((var_1E8 * var_1F0) * Val(var_1F4)) * (CDbl(&H64) - Val(CStr(var_208.Value)))) / CDbl(&H64)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))) 'Double
  loc_1D724C6:                   var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D724CE:                   Set var_210 = Me.FGrid3
  loc_1D724D4:                   LateIdCallSt
  loc_1D72514:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7251C:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D72536:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D72546:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D7254E:                   var_190 = CVar(CLng(&HF)) 'Long
  loc_1D72557:                   Set var_10C = Me.FGrid3
  loc_1D72578:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D72580:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D725AA:                   var_23C = CVar(CLng(var_86)) 'Long
  loc_1D725B2:                   var_26C = CVar(CLng(&H14)) 'Long
  loc_1D725DC:                   var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D7260D:                   var_1D0 = CVar(((Val(var_110) * Val(CStr(var_10C.TextMatrix)))) - (Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(Me.FGrid3.TextMatrix)))))) 'Double
  loc_1D7261D:                   var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D72625:                   Set var_204 = Me.FGrid3
  loc_1D7262B:                   LateIdCallSt
  loc_1D7268D:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D7269E:                   Set var_108 = Me.Txt
  loc_1D726A4:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D726AC:                   var_304 = var_10C.Text
  loc_1D726BF:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D726CD:                   Set var_118 = Me.Txt
  loc_1D726D3:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D726DB:                   var_204.Text = CVar(CLng(&H10))
  loc_1D726F9:                 End If
  loc_1D726FC:               Next var_320 'Byte
  loc_1D72705:             Else
  loc_1D72713:               Set var_108 = Me.Txt
  loc_1D72719:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D7273F:               Set var_114 = Me.Txt
  loc_1D72745:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D7275A:               var_1F0 = Val(var_118.Text)
  loc_1D72779:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D72788:               var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D72797:               Set var_204 = Me.Txt
  loc_1D7279D:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D727A5:               var_208.Tag = 1
  loc_1D727DD:               Set var_108 = Me.Txt
  loc_1D727E3:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D727EB:               var_10C.Text = var_1F0
  loc_1D72822:               For var_32C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_32C 'Byte
  loc_1D7282D:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D72835:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D7284F:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D72857:                 var_1E8 = Val(var_110)
  loc_1D72870:                 Set var_10C = Me.FGrid3
  loc_1D72889:                 var_1F0 = Val(CStr(var_10C.TextMatrix)))
  loc_1D7289A:                 Set var_114 = Me.Txt
  loc_1D728A0:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_1D728BD:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D728C5:                 var_1E0 = CVar(CLng(&H12)) 'Long
  loc_1D728CE:                 Set var_204 = Me.FGrid3
  loc_1D728EF:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D72924:                 var_180 = CVar(((var_118.Text * var_1F0) - ((Val(var_1F4) * Val(CStr(var_204.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D72934:                 var_2AC = CVar(CStr(Format(Me.FGrid3.TextMatrix), "0.00"))) 'String
  loc_1D7293C:                 Set var_208 = Me.FGrid3
  loc_1D72942:                 LateIdCallSt
  loc_1D729A4:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D729B5:                 Set var_108 = Me.Txt
  loc_1D729BB:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_208)
  loc_1D729C3:                 var_2AC = var_10C.Text
  loc_1D729D6:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D729E4:                 Set var_118 = Me.Txt
  loc_1D729EA:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, var_1F4, 1, 1)
  loc_1D729F2:                 var_204.Text = CVar(CLng(&H10))
  loc_1D72A13:               Next var_32C 'Byte
  loc_1D72A19:             End If
  loc_1D72A19:           End If
  loc_1D72A19:         End If
  loc_1D72A1C:       Else
  loc_1D72A2A:         Set var_108 = Me.Txt
  loc_1D72A30:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D72A38:         var_110 = var_10C.Text
  loc_1D72A56:         Set var_114 = Me.Txt
  loc_1D72A5C:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D72A64:         var_150 = var_118.Text
  loc_1D72A90:         var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D72AAE:         Set var_204 = Me.Txt
  loc_1D72AB4:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D72ABC:         var_208.Tag = 1
  loc_1D72AE2:       End If
  loc_1D72AF0:       Set var_108 = Me.Txt
  loc_1D72AF6:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D72AFE:       var_1F0 = var_10C.Tag
  loc_1D72B0B:       var_1E8 = Val(var_110)
  loc_1D72B1C:       Set var_114 = Me.Txt
  loc_1D72B22:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D72B37:       var_1F0 = Val(var_150)
  loc_1D72B74:       Set var_204 = Me.Txt
  loc_1D72B7A:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / var_1F0)), "0.00")), 1)
  loc_1D72B82:       var_208.Text = 1
  loc_1D72BC5:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D72BE4:       Set var_114 = Me.Txt
  loc_1D72BEA:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D72BF2:       var_118.Text = var_1F0
  loc_1D72C16:       Set var_108 = Me.Txt
  loc_1D72C1C:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C)
  loc_1D72C31:       var_1E8 = Val(var_10C.Tag)
  loc_1D72C42:       Set var_114 = Me.Txt
  loc_1D72C48:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D72C8B:       var_1F4 = CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00"))
  loc_1D72C9A:       Set var_204 = Me.Txt
  loc_1D72CA0:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_208, var_1F4, 1)
  loc_1D72CA8:       var_208.Text = 1
  loc_1D72CD9:       Set var_108 = Me.Txt
  loc_1D72CDF:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C)
  loc_1D72CF2:       Set var_114 = Me.Txt
  loc_1D72CF8:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118, var_150)
  loc_1D72D00:       var_1F0 = var_118.Text
  loc_1D72D13:       Set var_204 = Me.Txt
  loc_1D72D19:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H29), var_208)
  loc_1D72D34:       Set var_20C = Me.Txt
  loc_1D72D3A:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H32), var_210)
  loc_1D72D55:       Set var_318 = Me.Txt
  loc_1D72D5B:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H33), var_31C)
  loc_1D72D63:       var_110 = var_31C.Text
  loc_1D72D70:       var_1F0 = Val(var_110)
  loc_1D72D98:       Proc_96_76_183EFE0(var_10C, var_150, var_208.Text, var_210.Text)
  loc_1D72DCD:       Set var_108 = Me.Txt
  loc_1D72DD3:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C, var_110)
  loc_1D72DEE:       Set var_114 = Me.Txt
  loc_1D72DF4:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_110)
  loc_1D72DFC:       var_118.Text = var_10C.Tag
  loc_1D72E12:     Else
  loc_1D72E20:       Set var_108 = Me.Txt
  loc_1D72E26:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_10C)
  loc_1D72E4A:       If (CDbl(Val(var_10C.Text)) >= CDbl(0)) Then
  loc_1D72E6D:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D72E7E:           Set var_108 = Me.Txt
  loc_1D72E84:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D72E99:           var_1E8 = Val(var_10C.Text)
  loc_1D72EAA:           Set var_114 = Me.Txt
  loc_1D72EB0:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118, var_150)
  loc_1D72EC5:           var_1F0 = Val(var_150)
  loc_1D72ED6:           Set var_204 = Me.Txt
  loc_1D72EDC:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D72F14:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D72F32:           Set var_20C = Me.Txt
  loc_1D72F38:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D72F40:           var_210.Tag = 1
  loc_1D72F6F:         Else
  loc_1D72F7C:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D72F8F:           If (var_110 = "Disc On Food") Then
  loc_1D72FA0:             Set var_108 = Me.Txt
  loc_1D72FA6:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C, var_110)
  loc_1D72FAE:             var_218 = var_10C.Text
  loc_1D72FBB:             var_1E8 = Val(var_110)
  loc_1D72FCC:             Set var_114 = Me.Txt
  loc_1D72FD2:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_150)
  loc_1D72FE7:             var_1F0 = Val(var_150)
  loc_1D72FF8:             Set var_204 = Me.Txt
  loc_1D72FFE:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D73036:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D73054:             Set var_20C = Me.Txt
  loc_1D7305A:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D73062:             var_210.Text = 1
  loc_1D730B6:             For var_33C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_86 = var_33C 'Byte
  loc_1D730C1:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D730C9:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D730F9:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D73101:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D73109:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D7312B:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D7315D:                 var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D7316E:                 Set var_114 = Me.Txt
  loc_1D73174:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D7317C:                 var_13C = var_118.Text
  loc_1D73191:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D73199:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D731C3:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D731CB:                 var_28C = CVar(CLng(&H14)) 'Long
  loc_1D73208:                 var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D73210:                 Set var_208 = Me.FGrid3
  loc_1D73216:                 LateIdCallSt
  loc_1D7324E:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D73256:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D73280:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D73288:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D73291:                 Set var_10C = Me.FGrid3
  loc_1D732B2:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D732BA:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D732D4:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D732E4:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D732EC:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D732F5:                 Set var_118 = Me.FGrid3
  loc_1D73316:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D7331E:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D73347:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D73357:                 var_304 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D7335F:                 Set var_204 = Me.FGrid3
  loc_1D73365:                 LateIdCallSt
  loc_1D73398:               End If
  loc_1D7339B:             Next var_33C 'Byte
  loc_1D733A4:           Else
  loc_1D733C4:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D733D5:               Set var_108 = Me.Txt
  loc_1D733DB:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D73401:               Set var_114 = Me.Txt
  loc_1D73407:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D7341C:               var_1F0 = Val(var_118.Text)
  loc_1D7342D:               Set var_204 = Me.Txt
  loc_1D73433:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D73448:               var_218 = Val(var_1F4)
  loc_1D73473:               var_D4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((var_218 * var_C4) / CDbl(&H64)))) 'Double
  loc_1D73491:               Set var_20C = Me.Txt
  loc_1D73497:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_210, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D7349F:               var_210.Tag = 1
  loc_1D734DD:               Set var_108 = Me.Txt
  loc_1D734E3:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D734EB:               var_10C.Text = var_218
  loc_1D73522:               For var_340 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_340 'Byte
  loc_1D7352D:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7354F:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D73565:                 If (CDbl(Val(var_110)) <> CDbl(0)) Then
  loc_1D73576:                   Set var_108 = Me.Txt
  loc_1D7357C:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_10C, var_110, CVar(CLng(&HF)))
  loc_1D73584:                   var_F4 = var_10C.Text
  loc_1D73599:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D735A1:                   var_13C = CVar(CLng(&H12)) 'Long
  loc_1D735AA:                   Set var_114 = Me.FGrid3
  loc_1D735BB:                   var_150 = CStr(var_114.TextMatrix))
  loc_1D735CB:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D735D3:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D73608:                   var_1D0 = CVar(CStr(Format(CVar(((Val(var_110) * Val(var_150)) / CDbl(&H64))), "0.00"))) 'String
  loc_1D73616:                   LateIdCallSt
  loc_1D73664:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D7366C:                   var_1E8 = Val(var_110)
  loc_1D7367D:                   Set var_10C = Me.Txt
  loc_1D73683:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_114, var_150, var_1E8, CVar(CLng(&HF)), CVar(CLng(var_86)), Me.FGrid3)
  loc_1D7368B:                   var_1D0 = var_114.Text
  loc_1D736A0:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D736A8:                   var_190 = CVar(CLng(&H12)) 'Long
  loc_1D736D2:                   var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D73703:                   var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D73713:                   var_25C = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D7371B:                   Set var_204 = Me.FGrid3
  loc_1D73721:                   LateIdCallSt
  loc_1D7377D:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D7378E:                   Set var_108 = Me.Txt
  loc_1D73794:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D7379C:                   var_25C = var_10C.Text
  loc_1D737AF:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D737BD:                   Set var_118 = Me.Txt
  loc_1D737C3:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D737CB:                   var_204.Text = CVar(CLng(&H10))
  loc_1D737E9:                 End If
  loc_1D737EC:               Next var_340 'Byte
  loc_1D737F5:             Else
  loc_1D73803:               Set var_108 = Me.Txt
  loc_1D73809:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D7382F:               Set var_114 = Me.Txt
  loc_1D73835:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D7383D:               var_150 = var_118.Text
  loc_1D7384A:               var_1F0 = Val(var_150)
  loc_1D73869:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D73887:               Set var_204 = Me.Txt
  loc_1D7388D:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D73895:               var_208.Tag = 1
  loc_1D738CD:               Set var_108 = Me.Txt
  loc_1D738D3:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D738DB:               var_10C.Text = var_1F0
  loc_1D73912:               For var_344 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_344 'Byte
  loc_1D7391D:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D73925:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D7393F:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D73947:                 var_1E8 = Val(var_110)
  loc_1D73958:                 Set var_10C = Me.Txt
  loc_1D7395E:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_114, var_150, var_1E8)
  loc_1D73966:                 var_13C = var_114.Text
  loc_1D7397B:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D73983:                 var_190 = CVar(CLng(&H12)) 'Long
  loc_1D739AD:                 var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D739DE:                 var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D739EE:                 var_25C = CVar(CStr(Format(Format(Me.FGrid3.TextMatrix), "0.00"), "0.00"))) 'String
  loc_1D739F6:                 Set var_204 = Me.FGrid3
  loc_1D739FC:                 LateIdCallSt
  loc_1D73A58:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D73A69:                 Set var_108 = Me.Txt
  loc_1D73A6F:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D73A77:                 var_25C = var_10C.Text
  loc_1D73A8A:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D73A98:                 Set var_118 = Me.Txt
  loc_1D73A9E:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D73AA6:                 var_204.Text = CVar(CLng(&H10))
  loc_1D73AC7:               Next var_344 'Byte
  loc_1D73ACD:             End If
  loc_1D73ACD:           End If
  loc_1D73ACD:         End If
  loc_1D73AD0:       Else
  loc_1D73ADE:         Set var_108 = Me.Txt
  loc_1D73AE4:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D73AF9:         var_1E8 = Val(var_10C.Text)
  loc_1D73B0A:         Set var_114 = Me.Txt
  loc_1D73B10:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D73B25:         var_1F0 = Val(var_118.Text)
  loc_1D73B44:         var_D4 = CVar((var_1E8 - var_1F0)) 'Double
  loc_1D73B53:         var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D73B62:         Set var_204 = Me.Txt
  loc_1D73B68:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D73B70:         var_208.Tag = 1
  loc_1D73B96:       End If
  loc_1D73BB3:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D73BD2:       Set var_114 = Me.Txt
  loc_1D73BD8:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D73BE0:       var_118.Text = var_1F0
  loc_1D73C04:       Set var_108 = Me.Txt
  loc_1D73C0A:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C)
  loc_1D73C25:       Set var_114 = Me.Txt
  loc_1D73C2B:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_118)
  loc_1D73C51:       Set var_108 = Me.Txt
  loc_1D73C57:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C)
  loc_1D73C6A:       Set var_114 = Me.Txt
  loc_1D73C70:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118)
  loc_1D73C8B:       Set var_204 = Me.Txt
  loc_1D73C91:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H29), var_208)
  loc_1D73CAC:       Set var_20C = Me.Txt
  loc_1D73CB2:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H32), var_210)
  loc_1D73CCD:       Set var_318 = Me.Txt
  loc_1D73CD3:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H33), var_31C)
  loc_1D73CDB:       var_110 = var_31C.Text
  loc_1D73CE8:       var_1F0 = Val(var_110)
  loc_1D73D10:       Proc_96_76_183EFE0(var_10C, var_10C.Tag, var_208.Text, var_210.Text)
  loc_1D73D45:       Set var_108 = Me.Txt
  loc_1D73D4B:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C, var_110)
  loc_1D73D66:       Set var_114 = Me.Txt
  loc_1D73D6C:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_110)
  loc_1D73D74:       var_118.Text = var_10C.Tag
  loc_1D73D87:     End If
  loc_1D73D87:     var_F4 = "Net Room Rate including Tax is :"
  loc_1D73D9A:     Set var_108 = Me.Txt
  loc_1D73DA0:     Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D73DA8:     var_F4 = var_10C.Tag
  loc_1D73DCF:     Set var_114 = Me.Lbl
  loc_1D73DD5:     Call 0.Method_Proc_59_48_1D7941C0 (&H3F, var_118)
  loc_1D73DDD:     var_118.Caption = CStr(var_1E8 & Trim(CVar(var_110)))
  loc_1D73E06:     Me.lblLTDet.Caption = vbNullString
  loc_1D73E11:   Else
  loc_1D73E2E:     var_10C = Me.Recordset15.Fields.Item("PLan_Package")
  loc_1D73E50:     If (var_10C.Value = "Package") Then
  loc_1D73E61:       Set var_108 = Me.Txt
  loc_1D73E67:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_10C)
  loc_1D73E8B:       If (CDbl(Val(var_10C.Text)) >= CDbl(0)) Then
  loc_1D73EAE:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D73EBF:           Set var_108 = Me.Txt
  loc_1D73EC5:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D73EEB:           Set var_114 = Me.Txt
  loc_1D73EF1:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D73EF9:           var_150 = var_118.Text
  loc_1D73F06:           var_1F0 = Val(var_150)
  loc_1D73F17:           Set var_204 = Me.Txt
  loc_1D73F1D:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D73F55:           var_D4 = CVar(((Val(var_10C.Text) - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D73F73:           Set var_20C = Me.Txt
  loc_1D73F79:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D73F81:           var_210.Tag = 1
  loc_1D73FB0:         Else
  loc_1D73FBD:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D73FD0:           If (var_110 = "Disc On Food") Then
  loc_1D73FE1:             Set var_108 = Me.Txt
  loc_1D73FE7:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C, var_110)
  loc_1D73FEF:             var_218 = var_10C.Text
  loc_1D73FFC:             var_1E8 = Val(var_110)
  loc_1D7400D:             Set var_114 = Me.Txt
  loc_1D74013:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_150)
  loc_1D74028:             var_1F0 = Val(var_150)
  loc_1D74039:             Set var_204 = Me.Txt
  loc_1D7403F:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D74077:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D74095:             Set var_20C = Me.Txt
  loc_1D7409B:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D740A3:             var_210.Text = 1
  loc_1D740F7:             For var_348 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_86 = var_348 'Byte
  loc_1D74102:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7410A:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D7413A:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D74144:                 If (var_90 <> CDbl(0)) Then
  loc_1D7414C:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D74154:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D74176:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D741A8:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D741B9:                   Set var_114 = Me.Txt
  loc_1D741BF:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D741C7:                   var_13C = var_118.Text
  loc_1D741DC:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D741E4:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D7420E:                   var_26C = CVar(CLng(var_86)) 'Long
  loc_1D74216:                   var_28C = CVar(CLng(&H14)) 'Long
  loc_1D74253:                   var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D7425B:                   Set var_208 = Me.FGrid3
  loc_1D74261:                   LateIdCallSt
  loc_1D74297:                 Else
  loc_1D7429C:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D742A4:                   var_13C = CVar(CLng(&HF)) 'Long
  loc_1D742CE:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D742D6:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D74303:                   var_1D0 = CVar(CStr(Format(CVar(Val(CStr(Me.FGrid3.TextMatrix)))), "0.00"))) 'String
  loc_1D7430B:                   Set var_10C = Me.FGrid3
  loc_1D74311:                   LateIdCallSt
  loc_1D74330:                 End If
  loc_1D74335:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7433D:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D74367:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D7436F:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D74378:                 Set var_10C = Me.FGrid3
  loc_1D74399:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D743A1:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D743BB:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D743CB:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D743D3:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D743DC:                 Set var_118 = Me.FGrid3
  loc_1D743FD:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D74405:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D7442E:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D7443E:                 var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D74446:                 Set var_204 = Me.FGrid3
  loc_1D7444C:                 LateIdCallSt
  loc_1D7447F:               End If
  loc_1D74482:             Next var_348 'Byte
  loc_1D7448B:           Else
  loc_1D744AB:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D744BC:               Set var_108 = Me.Txt
  loc_1D744C2:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D744E8:               Set var_114 = Me.Txt
  loc_1D744EE:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D74503:               var_1F0 = Val(var_118.Text)
  loc_1D74514:               Set var_204 = Me.Txt
  loc_1D7451A:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D74568:               var_2C4 = Val(CStr(Me.Recordset15.Fields.Item("RoomPer").Value))
  loc_1D74593:               var_E4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((Val(var_1F4) * var_2C4) / CDbl(&H64)))) 'Double
  loc_1D745B1:               Set var_318 = Me.Txt
  loc_1D745B7:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_31C, CStr(Format(var_10C.TextMatrix), "0.00")), 1)
  loc_1D745BF:               var_31C.Tag = 1
  loc_1D74605:               Set var_108 = Me.Txt
  loc_1D7460B:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D74613:               var_10C.Text = var_2C4
  loc_1D7464A:               For var_34C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_34C 'Byte
  loc_1D74655:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7465D:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D7468D:                 If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D74695:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7469D:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D746BF:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D746F1:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D74702:                   Set var_114 = Me.Txt
  loc_1D74708:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D74710:                   var_13C = var_118.Text
  loc_1D7473D:                   var_208 = Me.Recordset15.Fields.Item("RoomPer")
  loc_1D7475E:                   var_1C0 = CVar(CLng(var_86)) 'Long
  loc_1D74766:                   var_22C = CVar(CLng(&HA)) 'Long
  loc_1D74790:                   var_27C = CVar(CLng(var_86)) 'Long
  loc_1D74798:                   var_29C = CVar(CLng(&H14)) 'Long
  loc_1D747D1:                   var_1D0 = CVar(((((((var_1E8 * var_1F0) * Val(var_1F4)) * (CDbl(&H64) - Val(CStr(var_208.Value)))) / CDbl(&H64)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))) 'Double
  loc_1D747E1:                   var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D747E9:                   Set var_210 = Me.FGrid3
  loc_1D747EF:                   LateIdCallSt
  loc_1D7482F:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D74837:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D74851:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D74861:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D74869:                   var_190 = CVar(CLng(&HF)) 'Long
  loc_1D74872:                   Set var_10C = Me.FGrid3
  loc_1D74893:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D7489B:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D748C5:                   var_23C = CVar(CLng(var_86)) 'Long
  loc_1D748CD:                   var_26C = CVar(CLng(&H14)) 'Long
  loc_1D748F7:                   var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D74928:                   var_1D0 = CVar(((Val(var_110) * Val(CStr(var_10C.TextMatrix)))) - (Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(Me.FGrid3.TextMatrix)))))) 'Double
  loc_1D74938:                   var_304 = CVar(CStr(Format(var_1D0, "0.00"))) 'String
  loc_1D74940:                   Set var_204 = Me.FGrid3
  loc_1D74946:                   LateIdCallSt
  loc_1D749A8:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D749B9:                   Set var_108 = Me.Txt
  loc_1D749BF:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D749C7:                   var_304 = var_10C.Text
  loc_1D749DA:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D749E8:                   Set var_118 = Me.Txt
  loc_1D749EE:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D749F6:                   var_204.Text = CVar(CLng(&H10))
  loc_1D74A14:                 End If
  loc_1D74A17:               Next var_34C 'Byte
  loc_1D74A20:             Else
  loc_1D74A2E:               Set var_108 = Me.Txt
  loc_1D74A34:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D74A5A:               Set var_114 = Me.Txt
  loc_1D74A60:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D74A75:               var_1F0 = Val(var_118.Text)
  loc_1D74A94:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D74AA3:               var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D74AB2:               Set var_204 = Me.Txt
  loc_1D74AB8:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D74AC0:               var_208.Tag = 1
  loc_1D74AF8:               Set var_108 = Me.Txt
  loc_1D74AFE:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D74B06:               var_10C.Text = var_1F0
  loc_1D74B3D:               For var_350 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_350 'Byte
  loc_1D74B48:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D74B50:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D74B6A:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D74B72:                 var_1E8 = Val(var_110)
  loc_1D74B8B:                 Set var_10C = Me.FGrid3
  loc_1D74BA4:                 var_1F0 = Val(CStr(var_10C.TextMatrix)))
  loc_1D74BB5:                 Set var_114 = Me.Txt
  loc_1D74BBB:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_1D74BD8:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D74BE0:                 var_1E0 = CVar(CLng(&H12)) 'Long
  loc_1D74BE9:                 Set var_204 = Me.FGrid3
  loc_1D74C0A:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D74C3F:                 var_180 = CVar(((var_118.Text * var_1F0) - ((Val(var_1F4) * Val(CStr(var_204.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D74C4F:                 var_2AC = CVar(CStr(Format(Me.FGrid3.TextMatrix), "0.00"))) 'String
  loc_1D74C57:                 Set var_208 = Me.FGrid3
  loc_1D74C5D:                 LateIdCallSt
  loc_1D74CBF:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D74CD0:                 Set var_108 = Me.Txt
  loc_1D74CD6:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_208)
  loc_1D74CDE:                 var_2AC = var_10C.Text
  loc_1D74CF1:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D74CFF:                 Set var_118 = Me.Txt
  loc_1D74D05:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, var_1F4, 1, 1)
  loc_1D74D0D:                 var_204.Text = CVar(CLng(&H10))
  loc_1D74D2E:               Next var_350 'Byte
  loc_1D74D34:             End If
  loc_1D74D34:           End If
  loc_1D74D34:         End If
  loc_1D74D37:       Else
  loc_1D74D45:         Set var_108 = Me.Txt
  loc_1D74D4B:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D74D53:         var_110 = var_10C.Text
  loc_1D74D71:         Set var_114 = Me.Txt
  loc_1D74D77:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D74D7F:         var_150 = var_118.Text
  loc_1D74DAB:         var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D74DC9:         Set var_204 = Me.Txt
  loc_1D74DCF:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D74DD7:         var_208.Tag = 1
  loc_1D74DFD:       End If
  loc_1D74E0B:       Set var_108 = Me.Txt
  loc_1D74E11:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D74E19:       var_1F0 = var_10C.Tag
  loc_1D74E26:       var_1E8 = Val(var_110)
  loc_1D74E37:       Set var_114 = Me.Txt
  loc_1D74E3D:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D74E52:       var_1F0 = Val(var_150)
  loc_1D74E8F:       Set var_204 = Me.Txt
  loc_1D74E95:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / var_1F0)), "0.00")), 1)
  loc_1D74E9D:       var_208.Text = 1
  loc_1D74EE0:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D74EFF:       Set var_114 = Me.Txt
  loc_1D74F05:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D74F0D:       var_118.Text = var_1F0
  loc_1D74F31:       Set var_108 = Me.Txt
  loc_1D74F37:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C)
  loc_1D74F4C:       var_1E8 = Val(var_10C.Tag)
  loc_1D74F5D:       Set var_114 = Me.Txt
  loc_1D74F63:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D74FA6:       var_1F4 = CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00"))
  loc_1D74FB5:       Set var_204 = Me.Txt
  loc_1D74FBB:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_208, var_1F4, 1)
  loc_1D74FC3:       var_208.Text = 1
  loc_1D74FF4:       Set var_108 = Me.Txt
  loc_1D74FFA:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C)
  loc_1D7500D:       Set var_114 = Me.Txt
  loc_1D75013:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118, var_150)
  loc_1D7501B:       var_1F0 = var_118.Text
  loc_1D7502E:       Set var_204 = Me.Txt
  loc_1D75034:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H29), var_208)
  loc_1D7504F:       Set var_20C = Me.Txt
  loc_1D75055:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H32), var_210)
  loc_1D75070:       Set var_318 = Me.Txt
  loc_1D75076:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H33), var_31C)
  loc_1D7507E:       var_110 = var_31C.Text
  loc_1D7508B:       var_1F0 = Val(var_110)
  loc_1D750B3:       Proc_96_76_183EFE0(var_10C, var_150, var_208.Text, var_210.Text)
  loc_1D750E8:       Set var_108 = Me.Txt
  loc_1D750EE:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C, var_110)
  loc_1D75109:       Set var_114 = Me.Txt
  loc_1D7510F:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_110)
  loc_1D75117:       var_118.Text = var_10C.Tag
  loc_1D7512D:     Else
  loc_1D7513B:       Set var_108 = Me.Txt
  loc_1D75141:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_10C)
  loc_1D75165:       If (CDbl(Val(var_10C.Text)) >= CDbl(0)) Then
  loc_1D75188:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D75199:           Set var_108 = Me.Txt
  loc_1D7519F:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D751B4:           var_1E8 = Val(var_10C.Text)
  loc_1D751C5:           Set var_114 = Me.Txt
  loc_1D751CB:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118, var_150)
  loc_1D751E0:           var_1F0 = Val(var_150)
  loc_1D751F1:           Set var_204 = Me.Txt
  loc_1D751F7:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D7522F:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D7524D:           Set var_20C = Me.Txt
  loc_1D75253:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D7525B:           var_210.Tag = 1
  loc_1D7528A:         Else
  loc_1D75297:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D752AA:           If (var_110 = "Disc On Food") Then
  loc_1D752BB:             Set var_108 = Me.Txt
  loc_1D752C1:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C, var_110)
  loc_1D752C9:             var_218 = var_10C.Text
  loc_1D752D6:             var_1E8 = Val(var_110)
  loc_1D752E7:             Set var_114 = Me.Txt
  loc_1D752ED:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_150)
  loc_1D75302:             var_1F0 = Val(var_150)
  loc_1D75313:             Set var_204 = Me.Txt
  loc_1D75319:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D75351:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D7536F:             Set var_20C = Me.Txt
  loc_1D75375:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D7537D:             var_210.Text = 1
  loc_1D753D1:             For var_354 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_354 'Byte
  loc_1D753DC:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D753E4:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D75414:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D7541C:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D75424:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D75446:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D75478:                 var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D75489:                 Set var_114 = Me.Txt
  loc_1D7548F:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D75497:                 var_13C = var_118.Text
  loc_1D754AC:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D754B4:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D754DE:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D754E6:                 var_28C = CVar(CLng(&H14)) 'Long
  loc_1D75523:                 var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D7552B:                 Set var_208 = Me.FGrid3
  loc_1D75531:                 LateIdCallSt
  loc_1D75569:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D75571:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D7559B:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D755A3:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D755AC:                 Set var_10C = Me.FGrid3
  loc_1D755CD:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D755D5:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D755EF:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D755FF:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D75607:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D75610:                 Set var_118 = Me.FGrid3
  loc_1D75631:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D75639:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D75662:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D75672:                 var_304 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D7567A:                 Set var_204 = Me.FGrid3
  loc_1D75680:                 LateIdCallSt
  loc_1D756B3:               End If
  loc_1D756B6:             Next var_354 'Byte
  loc_1D756BF:           Else
  loc_1D756DF:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D756F0:               Set var_108 = Me.Txt
  loc_1D756F6:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D7571C:               Set var_114 = Me.Txt
  loc_1D75722:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D75737:               var_1F0 = Val(var_118.Text)
  loc_1D75748:               Set var_204 = Me.Txt
  loc_1D7574E:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D75763:               var_218 = Val(var_1F4)
  loc_1D7578E:               var_D4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((var_218 * var_C4) / CDbl(&H64)))) 'Double
  loc_1D757AC:               Set var_20C = Me.Txt
  loc_1D757B2:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_210, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D757BA:               var_210.Tag = 1
  loc_1D757F8:               Set var_108 = Me.Txt
  loc_1D757FE:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D75806:               var_10C.Text = var_218
  loc_1D7583D:               For var_358 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_358 'Byte
  loc_1D75848:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D7586A:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D75880:                 If (CDbl(Val(var_110)) <> CDbl(0)) Then
  loc_1D75891:                   Set var_108 = Me.Txt
  loc_1D75897:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_10C, var_110, CVar(CLng(&HF)))
  loc_1D7589F:                   var_F4 = var_10C.Text
  loc_1D758B4:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D758BC:                   var_13C = CVar(CLng(&H12)) 'Long
  loc_1D758C5:                   Set var_114 = Me.FGrid3
  loc_1D758D6:                   var_150 = CStr(var_114.TextMatrix))
  loc_1D758E6:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D758EE:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D75923:                   var_1D0 = CVar(CStr(Format(CVar(((Val(var_110) * Val(var_150)) / CDbl(&H64))), "0.00"))) 'String
  loc_1D75931:                   LateIdCallSt
  loc_1D7597F:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D75987:                   var_1E8 = Val(var_110)
  loc_1D75998:                   Set var_10C = Me.Txt
  loc_1D7599E:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_114, var_150, var_1E8, CVar(CLng(&HF)), CVar(CLng(var_86)), Me.FGrid3)
  loc_1D759A6:                   var_1D0 = var_114.Text
  loc_1D759BB:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D759C3:                   var_190 = CVar(CLng(&H12)) 'Long
  loc_1D759ED:                   var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D75A1E:                   var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D75A2E:                   var_25C = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D75A36:                   Set var_204 = Me.FGrid3
  loc_1D75A3C:                   LateIdCallSt
  loc_1D75A98:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D75AA9:                   Set var_108 = Me.Txt
  loc_1D75AAF:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D75AB7:                   var_25C = var_10C.Text
  loc_1D75ACA:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D75AD8:                   Set var_118 = Me.Txt
  loc_1D75ADE:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D75AE6:                   var_204.Text = CVar(CLng(&H10))
  loc_1D75B04:                 End If
  loc_1D75B07:               Next var_358 'Byte
  loc_1D75B10:             Else
  loc_1D75B1E:               Set var_108 = Me.Txt
  loc_1D75B24:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D75B4A:               Set var_114 = Me.Txt
  loc_1D75B50:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D75B58:               var_150 = var_118.Text
  loc_1D75B65:               var_1F0 = Val(var_150)
  loc_1D75B84:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D75BA2:               Set var_204 = Me.Txt
  loc_1D75BA8:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D75BB0:               var_208.Tag = 1
  loc_1D75BE8:               Set var_108 = Me.Txt
  loc_1D75BEE:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D75BF6:               var_10C.Text = var_1F0
  loc_1D75C2D:               For var_35C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):           var_86 = var_35C 'Byte
  loc_1D75C38:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D75C40:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D75C5A:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D75C62:                 var_1E8 = Val(var_110)
  loc_1D75C73:                 Set var_10C = Me.Txt
  loc_1D75C79:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_114, var_150, var_1E8)
  loc_1D75C81:                 var_13C = var_114.Text
  loc_1D75C96:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D75C9E:                 var_190 = CVar(CLng(&H12)) 'Long
  loc_1D75CC8:                 var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D75CF9:                 var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D75D09:                 var_25C = CVar(CStr(Format(Format(Me.FGrid3.TextMatrix), "0.00"), "0.00"))) 'String
  loc_1D75D11:                 Set var_204 = Me.FGrid3
  loc_1D75D17:                 LateIdCallSt
  loc_1D75D73:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D75D84:                 Set var_108 = Me.Txt
  loc_1D75D8A:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D75D92:                 var_25C = var_10C.Text
  loc_1D75DA5:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D75DB3:                 Set var_118 = Me.Txt
  loc_1D75DB9:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D75DC1:                 var_204.Text = CVar(CLng(&H10))
  loc_1D75DE2:               Next var_35C 'Byte
  loc_1D75DE8:             End If
  loc_1D75DE8:           End If
  loc_1D75DE8:         End If
  loc_1D75DEB:       Else
  loc_1D75DF9:         Set var_108 = Me.Txt
  loc_1D75DFF:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D75E14:         var_1E8 = Val(var_10C.Text)
  loc_1D75E25:         Set var_114 = Me.Txt
  loc_1D75E2B:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D75E40:         var_1F0 = Val(var_118.Text)
  loc_1D75E5F:         var_D4 = CVar((var_1E8 - var_1F0)) 'Double
  loc_1D75E7D:         Set var_204 = Me.Txt
  loc_1D75E83:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D75E8B:         var_208.Tag = 1
  loc_1D75EB1:       End If
  loc_1D75ECE:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D75EED:       Set var_114 = Me.Txt
  loc_1D75EF3:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D75EFB:       var_118.Text = var_1F0
  loc_1D75F1F:       Set var_108 = Me.Txt
  loc_1D75F25:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C)
  loc_1D75F40:       Set var_114 = Me.Txt
  loc_1D75F46:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_118)
  loc_1D75F6C:       Set var_108 = Me.Txt
  loc_1D75F72:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C)
  loc_1D75F85:       Set var_114 = Me.Txt
  loc_1D75F8B:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118)
  loc_1D75FA6:       Set var_204 = Me.Txt
  loc_1D75FAC:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H29), var_208)
  loc_1D75FC7:       Set var_20C = Me.Txt
  loc_1D75FCD:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H32), var_210)
  loc_1D75FE8:       Set var_318 = Me.Txt
  loc_1D75FEE:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H33), var_31C)
  loc_1D75FF6:       var_110 = var_31C.Text
  loc_1D76003:       var_1F0 = Val(var_110)
  loc_1D7602B:       Proc_96_76_183EFE0(var_10C, var_10C.Tag, var_208.Text, var_210.Text)
  loc_1D76060:       Set var_108 = Me.Txt
  loc_1D76066:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C, var_110)
  loc_1D76081:       Set var_114 = Me.Txt
  loc_1D76087:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_110)
  loc_1D7608F:       var_118.Text = var_10C.Tag
  loc_1D760A2:     End If
  loc_1D760A2:     var_F4 = "Net Room Rate Excluding Tax is :"
  loc_1D760B5:     Set var_108 = Me.Txt
  loc_1D760BB:     Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D760C3:     var_F4 = var_10C.Tag
  loc_1D760EA:     Set var_114 = Me.Lbl
  loc_1D760F0:     Call 0.Method_Proc_59_48_1D7941C0 (&H3F, var_118)
  loc_1D760F8:     var_118.Caption = CStr(var_1E8 & Trim(CVar(var_110)))
  loc_1D76121:     Me.lblLTDet.Caption = vbNullString
  loc_1D76129:   End If
  loc_1D7612C: Else
  loc_1D76138:   Set var_108 = Me.Lbl
  loc_1D7613E:   Call 0.Method_Proc_59_48_1D7941C0 (&H3F, var_10C)
  loc_1D76146:   var_10C.Caption = vbNullString
  loc_1D76160:   Set var_108 = Me.Txt
  loc_1D76166:   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D7616E:   var_110 = var_10C.Text
  loc_1D7618C:   Set var_114 = Me.Txt
  loc_1D76192:   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D7619A:   var_150 = var_118.Text
  loc_1D761C6:   var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D761D5:   var_1F4 = CStr(Format(CVar(var_110), "0.00"))
  loc_1D761E4:   Set var_204 = Me.Txt
  loc_1D761EA:   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D761F2:   var_208.Tag = 1
  loc_1D76257:   If (Me.Recordset15.Fields.Item("RRIncTax").Value = "Yes") Then
  loc_1D76277:     var_10C = Me.Recordset15.Fields.Item("PLan_Package")
  loc_1D76299:     If (var_10C.Value = "Package") Then
  loc_1D762AA:       Set var_108 = Me.Txt
  loc_1D762B0:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_10C, var_110)
  loc_1D762B8:       var_1F0 = var_10C.Text
  loc_1D762D4:       If (CDbl(Val(var_110)) >= CDbl(0)) Then
  loc_1D762F7:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D76308:           Set var_108 = Me.Txt
  loc_1D7630E:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D76323:           var_1E8 = Val(var_10C.Text)
  loc_1D76334:           Set var_114 = Me.Txt
  loc_1D7633A:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118, var_150)
  loc_1D7634F:           var_1F0 = Val(var_150)
  loc_1D76360:           Set var_204 = Me.Txt
  loc_1D76366:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D7639E:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D763BC:           Set var_20C = Me.Txt
  loc_1D763C2:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D763CA:           var_210.Tag = 1
  loc_1D763F9:         Else
  loc_1D76406:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D76419:           If (var_110 = "Disc On Food") Then
  loc_1D7642A:             Set var_108 = Me.Txt
  loc_1D76430:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C, var_110)
  loc_1D76438:             var_218 = var_10C.Text
  loc_1D76445:             var_1E8 = Val(var_110)
  loc_1D76456:             Set var_114 = Me.Txt
  loc_1D7645C:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_150)
  loc_1D76471:             var_1F0 = Val(var_150)
  loc_1D76482:             Set var_204 = Me.Txt
  loc_1D76488:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D764C0:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D764DE:             Set var_20C = Me.Txt
  loc_1D764E4:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_210, CStr(Format(var_10C.Value, "0.00")), 1)
  loc_1D764EC:             var_210.Text = 1
  loc_1D76540:             For var_360 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):     var_86 = var_360 'Byte
  loc_1D7654B:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D76553:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D76583:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D7658B:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D76593:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D765B5:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D765E7:                 var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D765F8:                 Set var_114 = Me.Txt
  loc_1D765FE:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D76606:                 var_13C = var_118.Text
  loc_1D7661B:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D76623:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D7664D:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D76655:                 var_28C = CVar(CLng(&H14)) 'Long
  loc_1D76692:                 var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D7669A:                 Set var_208 = Me.FGrid3
  loc_1D766A0:                 LateIdCallSt
  loc_1D766D8:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D766E0:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D7670A:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D76712:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D7671B:                 Set var_10C = Me.FGrid3
  loc_1D7673C:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D76744:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D7675E:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D7676E:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D76776:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D7677F:                 Set var_118 = Me.FGrid3
  loc_1D767A0:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D767A8:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D767D1:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D767E1:                 var_304 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D767E9:                 Set var_204 = Me.FGrid3
  loc_1D767EF:                 LateIdCallSt
  loc_1D76822:               End If
  loc_1D76825:             Next var_360 'Byte
  loc_1D7682E:           Else
  loc_1D7684E:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D7685F:               Set var_108 = Me.Txt
  loc_1D76865:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D7688B:               Set var_114 = Me.Txt
  loc_1D76891:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D768A6:               var_1F0 = Val(var_118.Text)
  loc_1D768B7:               Set var_204 = Me.Txt
  loc_1D768BD:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D768F2:               var_210 = Me.Recordset15.Fields.Item("RoomPer")
  loc_1D7690B:               var_2C4 = Val(CStr(var_210.Value))
  loc_1D76936:               var_E4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((Val(var_1F4) * var_2C4) / CDbl(&H64)))) 'Double
  loc_1D76954:               Set var_318 = Me.Txt
  loc_1D7695A:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_31C, CStr(Format(var_10C.TextMatrix), "0.00")), 1)
  loc_1D76962:               var_31C.Tag = 1
  loc_1D769A8:               Set var_108 = Me.Txt
  loc_1D769AE:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D769B6:               var_10C.Text = var_2C4
  loc_1D769ED:               For var_364 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_364 'Byte
  loc_1D769F8:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D76A00:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D76A30:                 If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D76A38:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D76A40:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D76A62:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D76A94:                   var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D76AA5:                   Set var_114 = Me.Txt
  loc_1D76AAB:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D76AB3:                   var_13C = var_118.Text
  loc_1D76AC8:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D76AD0:                   var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D76AFA:                   var_26C = CVar(CLng(var_86)) 'Long
  loc_1D76B02:                   var_28C = CVar(CLng(&H14)) 'Long
  loc_1D76B3F:                   var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D76B47:                   Set var_208 = Me.FGrid3
  loc_1D76B4D:                   LateIdCallSt
  loc_1D76B85:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D76B8D:                   var_13C = CVar(CLng(&HA)) 'Long
  loc_1D76BA7:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D76BAF:                   var_1E8 = Val(var_110)
  loc_1D76BC8:                   Set var_10C = Me.FGrid3
  loc_1D76BE1:                   var_1F0 = Val(CStr(var_10C.TextMatrix)))
  loc_1D76BF2:                   Set var_114 = Me.Txt
  loc_1D76BF8:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D76C00:                   var_13C = var_118.Text
  loc_1D76C15:                   var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D76C1D:                   var_1E0 = CVar(CLng(&H12)) 'Long
  loc_1D76C26:                   Set var_204 = Me.FGrid3
  loc_1D76C47:                   var_26C = CVar(CLng(var_86)) 'Long
  loc_1D76C7C:                   var_180 = CVar(((var_1E8 * var_1F0) - ((Val(var_1F4) * Val(CStr(var_204.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D76C8C:                   var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D76C94:                   Set var_208 = Me.FGrid3
  loc_1D76C9A:                   LateIdCallSt
  loc_1D76CFC:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D76D0D:                   Set var_108 = Me.Txt
  loc_1D76D13:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_208)
  loc_1D76D1B:                   var_2AC = var_10C.Text
  loc_1D76D2E:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D76D3C:                   Set var_118 = Me.Txt
  loc_1D76D42:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, var_1F4, 1, 1)
  loc_1D76D4A:                   var_204.Text = CVar(CLng(&H10))
  loc_1D76D68:                 End If
  loc_1D76D6B:               Next var_364 'Byte
  loc_1D76D74:             Else
  loc_1D76D82:               Set var_108 = Me.Txt
  loc_1D76D88:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D76DAE:               Set var_114 = Me.Txt
  loc_1D76DB4:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D76DC9:               var_1F0 = Val(var_118.Text)
  loc_1D76DE8:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D76DF7:               var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D76E06:               Set var_204 = Me.Txt
  loc_1D76E0C:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D76E14:               var_208.Tag = 1
  loc_1D76E4C:               Set var_108 = Me.Txt
  loc_1D76E52:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D76E5A:               var_10C.Text = var_1F0
  loc_1D76E91:               For var_368 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_368 'Byte
  loc_1D76E9C:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D76EA4:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D76EBE:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D76EC6:                 var_1E8 = Val(var_110)
  loc_1D76EDF:                 Set var_10C = Me.FGrid3
  loc_1D76EF8:                 var_1F0 = Val(CStr(var_10C.TextMatrix)))
  loc_1D76F09:                 Set var_114 = Me.Txt
  loc_1D76F0F:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)))
  loc_1D76F2C:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D76F34:                 var_1E0 = CVar(CLng(&H12)) 'Long
  loc_1D76F3D:                 Set var_204 = Me.FGrid3
  loc_1D76F5E:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D76F93:                 var_180 = CVar(((var_118.Text * var_1F0) - ((Val(var_1F4) * Val(CStr(var_204.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D76F9A:                 var_25C = Format(CVar(((((var_118.Text * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00")
  loc_1D76FA3:                 var_2AC = CVar(CStr(var_25C)) 'String
  loc_1D76FAB:                 Set var_208 = Me.FGrid3
  loc_1D76FB1:                 LateIdCallSt
  loc_1D77013:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D77024:                 Set var_108 = Me.Txt
  loc_1D7702A:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_208)
  loc_1D77032:                 var_2AC = var_10C.Text
  loc_1D77045:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D77053:                 Set var_118 = Me.Txt
  loc_1D77059:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, var_1F4, 1, 1)
  loc_1D77061:                 var_204.Text = CVar(CLng(&H10))
  loc_1D77082:               Next var_368 'Byte
  loc_1D77088:             End If
  loc_1D77088:           End If
  loc_1D77088:         End If
  loc_1D7708B:       Else
  loc_1D77099:         Set var_108 = Me.Txt
  loc_1D7709F:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D770A7:         var_110 = var_10C.Text
  loc_1D770C5:         Set var_114 = Me.Txt
  loc_1D770CB:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D770D3:         var_150 = var_118.Text
  loc_1D770FF:         var_D4 = CVar((Val(var_110) - Val(var_150))) 'Double
  loc_1D7711D:         Set var_204 = Me.Txt
  loc_1D77123:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D7712B:         var_208.Tag = 1
  loc_1D77151:       End If
  loc_1D77165:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D7716D:       var_1F0 = var_118.Text
  loc_1D7717A:       var_1E8 = Val(var_150)
  loc_1D77191:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D771C2:       If (CDbl((Val(var_110) / var_10C.Tag)) > CDbl(1000)) Then
  loc_1D771E0:         var_150 = "Select * from taxStru where Code='" & MemVar_1F95070 & "TR'"
  loc_1D771E9:         unk_52DB53.Execute var_150, Me.FGrid3.TextMatrix), -1
  loc_1D771F4:         Set var_94 = Me.Txt
  loc_1D7721B:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1D7722B:           var_12C = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1D7724D:           var_10C = Me.Recordset15.Fields.Item("Code")
  loc_1D7726A:           var_110 = CStr(var_12C & var_10C.Value & "' Group By TaxStru.Nature ")
  loc_1D77274:           unk_52DB53.Execute var_110, CVar(((((var_10C.Tag * var_1F0) * Val(CStr(Format(Me.FGrid3.TextMatrix), "0.00")))) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), -1
  loc_1D7727F:           Set var_98 = Me.Txt
  loc_1D772AD:           If (var_98.RecordCount > 0) Then
  loc_1D772BE:             Set var_108 = Me.Txt
  loc_1D772C4:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D772CC:             var_114 = var_10C.Tag
  loc_1D772D9:             var_1E8 = Val(var_110)
  loc_1D772F6:             var_118 = var_98.Fields.Item("Rate")
  loc_1D77311:             Set var_204 = Me.Txt
  loc_1D77317:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_208, var_150)
  loc_1D7732C:             var_1F0 = Val(var_150)
  loc_1D77343:             var_E4 = (100 + var_118.Value)
  loc_1D77347:             var_104 = (CVar(var_208.Text) / 100 & var_10C.Value)
  loc_1D77350:             var_180 = (var_104 * 100)
  loc_1D77372:             var_A0 = CSng(Round((var_180 / CVar(var_1F0)), 2))
  loc_1D773BB:             var_10C = Me.Recordset15.Fields.Item("Limit")
  loc_1D773D7:             If (CVar(var_A0) < var_10C.Value) Then
  loc_1D773F3:               MsgBox("Invalid Package Amount", 0, CVar(var_A0) & var_10C.Value, var_104, var_180)
  loc_1D77408:               Set var_94 = Nothing
  loc_1D77410:               Set var_98 = Nothing
  loc_1D77413:               Exit Sub
  loc_1D77414:             End If
  loc_1D77427:             Set var_108 = Me.Txt
  loc_1D7742D:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, CStr(var_A0), var_A0)
  loc_1D77435:             var_10C.Text = var_1F0
  loc_1D7745D:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C, CStr(var_A0))
  loc_1D77465:             var_10C.Text = Me.Txt
  loc_1D77474:           End If
  loc_1D77474:         End If
  loc_1D77477:       Else
  loc_1D77485:         Set var_108 = Me.Txt
  loc_1D7748B:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C)
  loc_1D77493:         var_110 = var_10C.Tag
  loc_1D774A0:         var_1E8 = Val(var_110)
  loc_1D774B1:         Set var_114 = Me.Txt
  loc_1D774B7:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D77509:         Set var_204 = Me.Txt
  loc_1D7750F:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D77517:         var_208.Text = 1
  loc_1D7754B:         Set var_108 = Me.Txt
  loc_1D77551:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D77559:         var_1F0 = var_10C.Tag
  loc_1D77566:         var_1E8 = Val(var_110)
  loc_1D77577:         Set var_114 = Me.Txt
  loc_1D7757D:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D775C0:         var_1F4 = CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00"))
  loc_1D775CF:         Set var_204 = Me.Txt
  loc_1D775D5:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_208, var_1F4, 1)
  loc_1D775DD:         var_208.Text = 1
  loc_1D77603:       End If
  loc_1D77606:     Else
  loc_1D77614:       Set var_108 = Me.Txt
  loc_1D7761A:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_10C, var_110)
  loc_1D77622:       var_1F0 = var_10C.Text
  loc_1D7763E:       If (CDbl(Val(var_110)) >= CDbl(0)) Then
  loc_1D77661:         If (Me.LblDiscAppOn.Caption = "Disc Post On Room") Then
  loc_1D77672:           Set var_108 = Me.Txt
  loc_1D77678:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D7768D:           var_1E8 = Val(var_10C.Text)
  loc_1D7769E:           Set var_114 = Me.Txt
  loc_1D776A4:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118, var_150)
  loc_1D776B9:           var_1F0 = Val(var_150)
  loc_1D776CA:           Set var_204 = Me.Txt
  loc_1D776D0:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D77708:           var_D4 = CVar(((var_118.Text - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D77726:           Set var_20C = Me.Txt
  loc_1D7772C:           Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D77734:           var_210.Tag = 1
  loc_1D77763:         Else
  loc_1D77770:           var_110 = Me.LblDiscAppOn.Caption
  loc_1D77783:           If (var_110 = "Disc On Food") Then
  loc_1D77794:             Set var_108 = Me.Txt
  loc_1D7779A:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C, var_110)
  loc_1D777A2:             var_218 = var_10C.Text
  loc_1D777AF:             var_1E8 = Val(var_110)
  loc_1D777C0:             Set var_114 = Me.Txt
  loc_1D777C6:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_150)
  loc_1D777DB:             var_1F0 = Val(var_150)
  loc_1D777EC:             Set var_204 = Me.Txt
  loc_1D777F2:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D7782A:             var_D4 = CVar(((var_118.Tag - var_208.Text) - Val(var_1F4))) 'Double
  loc_1D77848:             Set var_20C = Me.Txt
  loc_1D7784E:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_210, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D77856:             var_210.Text = 1
  loc_1D778AA:             For var_36C = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):       var_86 = var_36C 'Byte
  loc_1D778B5:               var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D778BD:               var_13C = CVar(CLng(&HF)) 'Long
  loc_1D778ED:               If (CDbl(Val(CStr(Me.FGrid3.TextMatrix)))) <> CDbl(0)) Then
  loc_1D778F5:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D778FD:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D7791F:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D77951:                 var_1F0 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D77962:                 Set var_114 = Me.Txt
  loc_1D77968:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_118, var_1F4, var_1F0, CVar(CLng(&HF)), CVar(CLng(var_86)), var_1E8)
  loc_1D77970:                 var_13C = var_118.Text
  loc_1D77985:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D7798D:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D779B7:                 var_26C = CVar(CLng(var_86)) 'Long
  loc_1D779BF:                 var_28C = CVar(CLng(&H14)) 'Long
  loc_1D779FC:                 var_2AC = CVar(CStr(Format(CVar(((((var_1E8 * var_1F0) * Val(var_1F4)) / var_90) / Val(CStr(Me.FGrid3.TextMatrix))))), "0.00"))) 'String
  loc_1D77A04:                 Set var_208 = Me.FGrid3
  loc_1D77A0A:                 LateIdCallSt
  loc_1D77A42:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D77A4A:                 var_13C = CVar(CLng(&HA)) 'Long
  loc_1D77A74:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D77A7C:                 var_190 = CVar(CLng(&HF)) 'Long
  loc_1D77A85:                 Set var_10C = Me.FGrid3
  loc_1D77AA6:                 var_1B0 = CVar(CLng(var_86)) 'Long
  loc_1D77AAE:                 var_1E0 = CVar(CLng(&HA)) 'Long
  loc_1D77AC8:                 var_1F4 = CStr(Me.FGrid3.TextMatrix))
  loc_1D77AD8:                 var_23C = CVar(CLng(var_86)) 'Long
  loc_1D77AE0:                 var_26C = CVar(CLng(&H14)) 'Long
  loc_1D77AE9:                 Set var_118 = Me.FGrid3
  loc_1D77B0A:                 var_2BC = CVar(CLng(var_86)) 'Long
  loc_1D77B12:                 var_2E4 = CVar(CLng(&H10)) 'Long
  loc_1D77B3B:                 var_1D0 = CVar(((Val(CStr(Me.FGrid3.TextMatrix))) * Val(CStr(var_10C.TextMatrix)))) - (Val(var_1F4) * Val(CStr(var_118.TextMatrix)))))) 'Double
  loc_1D77B4B:                 var_304 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D77B53:                 Set var_204 = Me.FGrid3
  loc_1D77B59:                 LateIdCallSt
  loc_1D77B8C:               End If
  loc_1D77B8F:             Next var_36C 'Byte
  loc_1D77B98:           Else
  loc_1D77BB8:             If (Me.LblDiscAppOn.Caption = "Disc on Both") Then
  loc_1D77BC9:               Set var_108 = Me.Txt
  loc_1D77BCF:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D77BF5:               Set var_114 = Me.Txt
  loc_1D77BFB:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D77C10:               var_1F0 = Val(var_118.Text)
  loc_1D77C21:               Set var_204 = Me.Txt
  loc_1D77C27:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_208, var_1F4)
  loc_1D77C3C:               var_218 = Val(var_1F4)
  loc_1D77C67:               var_D4 = CVar(((Val(var_10C.Text) - var_208.Text) - ((var_218 * var_C4) / CDbl(&H64)))) 'Double
  loc_1D77C85:               Set var_20C = Me.Txt
  loc_1D77C8B:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_210, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D77C93:               var_210.Tag = 1
  loc_1D77CD1:               Set var_108 = Me.Txt
  loc_1D77CD7:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D77CDF:               var_10C.Text = var_218
  loc_1D77D16:               For var_370 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):         var_86 = var_370 'Byte
  loc_1D77D21:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D77D43:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D77D59:                 If (CDbl(Val(var_110)) <> CDbl(0)) Then
  loc_1D77D6A:                   Set var_108 = Me.Txt
  loc_1D77D70:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_10C, var_110, CVar(CLng(&HF)))
  loc_1D77D78:                   var_F4 = var_10C.Text
  loc_1D77D8D:                   var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D77D95:                   var_13C = CVar(CLng(&H12)) 'Long
  loc_1D77D9E:                   Set var_114 = Me.FGrid3
  loc_1D77DAF:                   var_150 = CStr(var_114.TextMatrix))
  loc_1D77DBF:                   var_190 = CVar(CLng(var_86)) 'Long
  loc_1D77DC7:                   var_1B0 = CVar(CLng(&H14)) 'Long
  loc_1D77DFC:                   var_1D0 = CVar(CStr(Format(CVar(((Val(var_110) * Val(var_150)) / CDbl(&H64))), "0.00"))) 'String
  loc_1D77E0A:                   LateIdCallSt
  loc_1D77E58:                   var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D77E60:                   var_1E8 = Val(var_110)
  loc_1D77E71:                   Set var_10C = Me.Txt
  loc_1D77E77:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_114, var_150, var_1E8, CVar(CLng(&HF)), CVar(CLng(var_86)), Me.FGrid3)
  loc_1D77E7F:                   var_1D0 = var_114.Text
  loc_1D77E94:                   var_160 = CVar(CLng(var_86)) 'Long
  loc_1D77E9C:                   var_190 = CVar(CLng(&H12)) 'Long
  loc_1D77EC6:                   var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D77EF7:                   var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D77F07:                   var_25C = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1D77F0F:                   Set var_204 = Me.FGrid3
  loc_1D77F15:                   LateIdCallSt
  loc_1D77F71:                   var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D77F82:                   Set var_108 = Me.Txt
  loc_1D77F88:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D77F90:                   var_25C = var_10C.Text
  loc_1D77FA3:                   var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D77FB1:                   Set var_118 = Me.Txt
  loc_1D77FB7:                   Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D77FBF:                   var_204.Text = CVar(CLng(&H10))
  loc_1D77FDD:                 End If
  loc_1D77FE0:               Next var_370 'Byte
  loc_1D77FE9:             Else
  loc_1D77FF7:               Set var_108 = Me.Txt
  loc_1D77FFD:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D78023:               Set var_114 = Me.Txt
  loc_1D78029:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D78031:               var_150 = var_118.Text
  loc_1D7803E:               var_1F0 = Val(var_150)
  loc_1D7805D:               var_D4 = CVar((Val(var_10C.Text) - var_1F0)) 'Double
  loc_1D7807B:               Set var_204 = Me.Txt
  loc_1D78081:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(Me.FGrid3.TextMatrix), "0.00")), 1)
  loc_1D78089:               var_208.Tag = 1
  loc_1D780C1:               Set var_108 = Me.Txt
  loc_1D780C7:               Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, CStr(0))
  loc_1D780CF:               var_10C.Text = var_1F0
  loc_1D78106:               For var_374 = CByte(1) To CByte((CLng(Me.FGrid3.Rows) - 1)):           var_86 = var_374 'Byte
  loc_1D78111:                 var_F4 = CVar(CLng(var_86)) 'Long
  loc_1D78119:                 var_13C = CVar(CLng(&HF)) 'Long
  loc_1D78133:                 var_110 = CStr(Me.FGrid3.TextMatrix))
  loc_1D7813B:                 var_1E8 = Val(var_110)
  loc_1D7814C:                 Set var_10C = Me.Txt
  loc_1D78152:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2D), var_114, var_150, var_1E8)
  loc_1D7815A:                 var_13C = var_114.Text
  loc_1D7816F:                 var_160 = CVar(CLng(var_86)) 'Long
  loc_1D78177:                 var_190 = CVar(CLng(&H12)) 'Long
  loc_1D781A1:                 var_1E0 = CVar(CLng(var_86)) 'Long
  loc_1D781BD:                 var_180 = "0.00"
  loc_1D781D2:                 var_104 = CVar((var_1E8 - ((Val(var_150) * Val(CStr(Me.FGrid3.TextMatrix)))) / CDbl(&H64)))) 'Double
  loc_1D781E2:                 var_25C = CVar(CStr(Format(Format(Me.FGrid3.TextMatrix), "0.00"), var_180))) 'String
  loc_1D781EA:                 Set var_204 = Me.FGrid3
  loc_1D781F0:                 LateIdCallSt
  loc_1D7824C:                 var_1E8 = Val(CStr(Me.FGrid3.TextMatrix)))
  loc_1D7825D:                 Set var_108 = Me.Txt
  loc_1D78263:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_10C, var_110, var_1E8, CVar(CLng(&H10)), CVar(CLng(var_86)), var_204)
  loc_1D7826B:                 var_25C = var_10C.Text
  loc_1D7827E:                 var_1F4 = CStr((Val(var_110) + var_1E8))
  loc_1D7828C:                 Set var_118 = Me.Txt
  loc_1D78292:                 Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_204, CStr(Me.FGrid3.TextMatrix)), 1, 1)
  loc_1D7829A:                 var_204.Text = CVar(CLng(&H10))
  loc_1D782BB:               Next var_374 'Byte
  loc_1D782C1:             End If
  loc_1D782C1:           End If
  loc_1D782C1:         End If
  loc_1D782C4:       Else
  loc_1D782D2:         Set var_108 = Me.Txt
  loc_1D782D8:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H19), var_10C)
  loc_1D782ED:         var_1E8 = Val(var_10C.Text)
  loc_1D782FE:         Set var_114 = Me.Txt
  loc_1D78304:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H30), var_118)
  loc_1D78319:         var_1F0 = Val(var_118.Text)
  loc_1D78338:         var_D4 = CVar((var_1E8 - var_1F0)) 'Double
  loc_1D78347:         var_1F4 = CStr(Format(Me.FGrid3.TextMatrix), "0.00"))
  loc_1D78356:         Set var_204 = Me.Txt
  loc_1D7835C:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, var_1F4, 1)
  loc_1D78364:         var_208.Tag = 1
  loc_1D7838A:       End If
  loc_1D783A7:       var_10C = Me.Recordset15.Fields.Item("RRIncTax")
  loc_1D783C6:       Set var_114 = Me.Txt
  loc_1D783CC:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118, CStr(var_10C.Value))
  loc_1D783D4:       var_118.Text = var_1F0
  loc_1D783F8:       Set var_108 = Me.Txt
  loc_1D783FE:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C)
  loc_1D78419:       Set var_114 = Me.Txt
  loc_1D7841F:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_118)
  loc_1D78445:       Set var_108 = Me.Txt
  loc_1D7844B:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C)
  loc_1D7845E:       Set var_114 = Me.Txt
  loc_1D78464:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H26), var_118)
  loc_1D7847F:       Set var_204 = Me.Txt
  loc_1D78485:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H29), var_208)
  loc_1D7848D:       var_1F8 = var_208.Text
  loc_1D784A0:       Set var_20C = Me.Txt
  loc_1D784A6:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H32), var_210)
  loc_1D784C1:       Set var_318 = Me.Txt
  loc_1D784C7:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H33), var_31C)
  loc_1D784CF:       var_110 = var_31C.Text
  loc_1D784DC:       var_1F0 = Val(var_110)
  loc_1D78504:       Proc_96_76_183EFE0(var_10C, var_10C.Tag, var_1F8, var_210.Text)
  loc_1D78539:       Set var_108 = Me.Txt
  loc_1D7853F:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_10C, var_110)
  loc_1D7855A:       Set var_114 = Me.Txt
  loc_1D78560:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_110)
  loc_1D78568:       var_118.Text = var_10C.Tag
  loc_1D7857B:     End If
  loc_1D7857B:     var_F4 = "Net Room Rate including Tax is :"
  loc_1D7858E:     Set var_108 = Me.Txt
  loc_1D78594:     Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D7859C:     var_F4 = var_10C.Tag
  loc_1D785C3:     Set var_114 = Me.Lbl
  loc_1D785C9:     Call 0.Method_Proc_59_48_1D7941C0 (&H3F, var_118)
  loc_1D785D1:     var_118.Caption = CStr(var_1E8 & Trim(CVar(var_110)))
  loc_1D785FA:     Me.lblLTDet.Caption = vbNullString
  loc_1D78605:   Else
  loc_1D78622:     var_10C = Me.Recordset15.Fields.Item("PLan_Package")
  loc_1D7862A:     var_D4 = var_10C.Value
  loc_1D78644:     If (var_D4 = "Package") Then
  loc_1D7865B:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118)
  loc_1D78687:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C)
  loc_1D786B8:       If (CDbl((Val(var_10C.Tag) / Val(var_118.Text))) >= CDbl(1000)) Then
  loc_1D786D6:         var_150 = "Select * from taxStru where Code='" & MemVar_1F95078 & "TR'"
  loc_1D786DF:         unk_52DB53.Execute var_150, var_D4, -1
  loc_1D786EA:         Set var_94 = Me.Txt
  loc_1D78711:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1D78721:           var_12C = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1D78743:           var_10C = Me.Recordset15.Fields.Item("Code")
  loc_1D78760:           var_110 = CStr(var_12C & var_10C.Value & "' Group By TaxStru.Nature ")
  loc_1D7876A:           unk_52DB53.Execute var_110, var_180, -1
  loc_1D78775:           Set var_98 = Me.Txt
  loc_1D787A3:           If (var_98.RecordCount > 0) Then
  loc_1D787B4:             Set var_108 = Me.Txt
  loc_1D787BA:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D787C2:             var_114 = var_10C.Tag
  loc_1D787CF:             var_1E8 = Val(var_110)
  loc_1D787E0:             Set var_114 = Me.Txt
  loc_1D787E6:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D787FB:             var_1F0 = Val(var_150)
  loc_1D7880C:             Set var_204 = Me.Txt
  loc_1D78812:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, var_1F4)
  loc_1D78827:             var_218 = Val(var_1F4)
  loc_1D7884C:             var_104 = var_98.Fields.Item("Rate").Value
  loc_1D7885F:             Set var_318 = Me.Txt
  loc_1D78865:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_31C, var_1F8)
  loc_1D78890:             var_E4 = Round(CVar((var_118.Text / var_208.Tag)), 2)
  loc_1D788AB:             var_180 = (CVar((var_31C.Text / CDbl(&H64))) * var_104)
  loc_1D788CC:             var_304 = (var_E4 + Round((var_180 / CVar(Val(var_1F8))), 2))
  loc_1D788D1:             var_A0 = CSng(var_304)
  loc_1D7892A:             var_10C = Me.Recordset15.Fields.Item("Limit")
  loc_1D78946:             If (CVar(var_A0) < var_10C.Value) Then
  loc_1D78962:               MsgBox("Invalid Package Amount", 0, var_E4, var_104, var_180)
  loc_1D78977:               Set var_94 = Nothing
  loc_1D7897F:               Set var_98 = Nothing
  loc_1D78982:               Exit Sub
  loc_1D78983:             End If
  loc_1D78983:           End If
  loc_1D78983:         End If
  loc_1D78991:         Set var_108 = Me.Txt
  loc_1D78997:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110, var_A0)
  loc_1D7899F:         var_2C4 = var_10C.Tag
  loc_1D789AC:         var_1E8 = Val(var_110)
  loc_1D789BD:         Set var_114 = Me.Txt
  loc_1D789C3:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D78A15:         Set var_204 = Me.Txt
  loc_1D78A1B:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D78A23:         var_208.Text = 1
  loc_1D78A57:         Set var_108 = Me.Txt
  loc_1D78A5D:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D78A65:         var_1F0 = var_10C.Tag
  loc_1D78A72:         var_1E8 = Val(var_110)
  loc_1D78A83:         Set var_114 = Me.Txt
  loc_1D78A89:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D78ADB:         Set var_204 = Me.Txt
  loc_1D78AE1:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_208, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D78AE9:         var_208.Text = 1
  loc_1D78B44:         var_180 = Trim(CVar(CStr(Format(var_A0, "0.00"))))
  loc_1D78B50:         var_110 = CStr(1 & var_180)
  loc_1D78B5D:         Set var_108 = Me.Lbl
  loc_1D78B63:         Call 0.Method_Proc_59_48_1D7941C0 (&H3F, var_10C, var_110, 1)
  loc_1D78B6B:         var_10C.Caption = "Net Room Rate including Tax is :"
  loc_1D78B8C:       Else
  loc_1D78B9A:         Set var_108 = Me.Txt
  loc_1D78BA0:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D78BA8:         var_1F0 = var_10C.Tag
  loc_1D78BB5:         var_1E8 = Val(var_110)
  loc_1D78BC6:         Set var_114 = Me.Txt
  loc_1D78BCC:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D78C1E:         Set var_204 = Me.Txt
  loc_1D78C24:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_208, CStr(Format(CVar((var_118.Text / Val(var_150))), "0.00")), 1)
  loc_1D78C2C:         var_208.Text = 1
  loc_1D78C60:         Set var_108 = Me.Txt
  loc_1D78C66:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D78C6E:         var_1F0 = var_10C.Tag
  loc_1D78C7B:         var_1E8 = Val(var_110)
  loc_1D78C8C:         Set var_114 = Me.Txt
  loc_1D78C92:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H31), var_118, var_150)
  loc_1D78CA7:         var_1F0 = Val(var_150)
  loc_1D78CE4:         Set var_204 = Me.Txt
  loc_1D78CEA:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_208, CStr(Format(CVar((var_118.Text / var_1F0)), "0.00")), 1)
  loc_1D78CF2:         var_208.Text = 1
  loc_1D78D2E:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, "Net Room Rate including Tax is :")
  loc_1D78D36:         var_D4 = CVar(var_10C) 'Address
  loc_1D78D56:         Set var_114 = Me.Lbl
  loc_1D78D5C:         Call 0.Method_Proc_59_48_1D7941C0 (&H3F, var_118, CStr(var_1F0 & Trim(var_D4)))
  loc_1D78D64:         var_118.Caption = Me.Txt
  loc_1D78D7E:       End If
  loc_1D78D81:     Else
  loc_1D78D95:       Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C)
  loc_1D78DBA:       If (CDbl(Val(var_10C.Tag)) >= CDbl(1000)) Then
  loc_1D78DD8:         var_150 = "Select * from taxStru where Code='" & MemVar_1F95070 & "TR'"
  loc_1D78DE1:         unk_52DB53.Execute var_150, var_D4, -1
  loc_1D78DEC:         Set var_94 = Me.Txt
  loc_1D78E13:         If (Me.Recordset15.RecordCount > 0) Then
  loc_1D78E23:           var_12C = "Select sum(TaxStru.Rate) as Rate from taxstru left join RevMast on RevMast.code=TaxStru.TaxCode where RevMast.FieldType='T' and TaxStru.nature='On Base Amt' and taxstru.Code='"
  loc_1D78E45:           var_10C = Me.Recordset15.Fields.Item("Code")
  loc_1D78E62:           var_110 = CStr(var_12C & var_10C.Value & "' Group By TaxStru.Nature ")
  loc_1D78E6C:           unk_52DB53.Execute var_110, var_180, -1
  loc_1D78E77:           Set var_98 = var_114
  loc_1D78EA5:           If (var_98.RecordCount > 0) Then
  loc_1D78EB6:             Set var_108 = Me.Txt
  loc_1D78EBC:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D78EC4:             var_114 = var_10C.Tag
  loc_1D78ED1:             var_1E8 = Val(var_110)
  loc_1D78EE2:             Set var_114 = Me.Txt
  loc_1D78EE8:             Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, var_150)
  loc_1D78F22:             var_104 = var_98.Fields.Item("Rate").Value
  loc_1D78F36:             var_E4 = Round(CVar(var_118.Tag), 2)
  loc_1D78F51:             var_180 = (CVar((Val(var_150) / CDbl(&H64))) * var_104)
  loc_1D78F67:             var_2AC = (var_E4 + Round(var_180, 2))
  loc_1D78F6C:             var_A0 = CSng(Round((var_180 / CVar(Val(var_1F8))), 2))
  loc_1D78FB9:             var_10C = Me.Recordset15.Fields.Item("Limit")
  loc_1D78FD5:             If (CVar(var_A0) < var_10C.Value) Then
  loc_1D78FF1:               MsgBox("Invalid Package Amount", 0, var_E4, var_104, var_180)
  loc_1D79006:               Set var_94 = Nothing
  loc_1D7900E:               Set var_98 = Nothing
  loc_1D79011:               Exit Sub
  loc_1D79012:             End If
  loc_1D79012:           End If
  loc_1D79012:         End If
  loc_1D79020:         Set var_108 = Me.Txt
  loc_1D79026:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110, var_A0)
  loc_1D7902E:         var_1F0 = var_10C.Tag
  loc_1D79074:         Set var_114 = Me.Txt
  loc_1D7907A:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, CStr(Format(CVar(Val(var_110)), "0.00")), 1)
  loc_1D79082:         var_118.Text = 1
  loc_1D790B0:         Set var_108 = Me.Txt
  loc_1D790B6:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D790BE:         var_1E8 = var_10C.Tag
  loc_1D79104:         Set var_114 = Me.Txt
  loc_1D7910A:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_118, CStr(Format(CVar(Val(var_110)), "0.00")), 1)
  loc_1D79112:         var_118.Text = 1
  loc_1D79173:         var_110 = CStr(1 & Trim(CVar(CStr(Format(var_A0, "0.00")))))
  loc_1D79180:         Set var_108 = Me.Lbl
  loc_1D79186:         Call 0.Method_Proc_59_48_1D7941C0 (&H3F, var_10C, var_110, 1)
  loc_1D7918E:         var_10C.Caption = "Net Room Rate including Tax is :"
  loc_1D791BA:         Set var_108 = Me.Txt
  loc_1D791C0:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D791C8:         var_1E8 = var_10C.Tag
  loc_1D791F2:         var_118 = var_98.Fields.Item("Rate")
  loc_1D79245:         Me.lblLTDet.Caption = "Plan Amount Should Increase @ " & CStr(Round((CVar((Val(var_110) / CDbl(&H64))) * var_118.Value), 2)) & " Per Day"
  loc_1D79270:       Else
  loc_1D7927E:         Set var_108 = Me.Txt
  loc_1D79284:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D7928C:         var_1E8 = var_10C.Tag
  loc_1D792D2:         Set var_114 = Me.Txt
  loc_1D792D8:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_118, CStr(Format(CVar(Val(var_110)), "0.00")), 1)
  loc_1D792E0:         var_118.Text = 1
  loc_1D7930E:         Set var_108 = Me.Txt
  loc_1D79314:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, var_110)
  loc_1D7931C:         var_1E8 = var_10C.Tag
  loc_1D79329:         var_1E8 = Val(var_110)
  loc_1D79362:         Set var_114 = Me.Txt
  loc_1D79368:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H10), var_118, CStr(Format(CVar(var_1E8), "0.00")), 1)
  loc_1D79370:         var_118.Text = 1
  loc_1D793A6:         Call 0.Method_Proc_59_48_1D7941C0 (CInt(&H2E), var_10C, "Net Room Rate including Tax is :")
  loc_1D793CE:         Set var_114 = Me.Lbl
  loc_1D793D4:         Call 0.Method_Proc_59_48_1D7941C0 (&H3F, var_118, CStr(var_1E8 & Trim(CVar(var_10C))))
  loc_1D793DC:         var_118.Caption = Me.Txt
  loc_1D79403:         Me.lblLTDet.Caption = vbNullString
  loc_1D7940B:       End If
  loc_1D7940B:     End If
  loc_1D7940B:   End If
  loc_1D7940B: End If
  loc_1D79410: Set var_94 = Nothing
  loc_1D79418: Set var_98 = Nothing
  loc_1D7941B: Exit Sub
End Sub

Public Sub Proc_59_49_FB28F4(arg_C, arg_10, arg_14, arg_18) 'FB28F4
  'Data Table: 52DB34
  Dim var_C0 As Variant
  Dim var_9C As Double
  Dim var_94 As Double
  Dim arg_C As Double
  loc_FB2757: var_A0 = arg_10
  loc_FB2762: If Not (var_A0 = "<=") Then
  loc_FB276D:   If Not (var_A0 = "<") Then
  loc_FB2778:     If (var_A0 = "=") Then
  loc_FB277B:     End If
  loc_FB277B:   End If
  loc_FB279F:   var_C0 = CVar(((arg_14 * CDbl(&H64)) / (CDbl(&H64) + arg_24))) 'Double
  loc_FB27AF:   var_9C = CSng(Format(var_C0, "0.00"))
  loc_FB27C3:   If (arg_10 = "<=") Then
  loc_FB27CD:     If (arg_18 <= var_9C) Then
  loc_FB27D7:       var_94 = (arg_14 - var_9C)
  loc_FB27DD:     Else
  loc_FB27E0:       arg_C = arg_14
  loc_FB27E3:     End If
  loc_FB27E6:   Else
  loc_FB27EE:     If (arg_10 = "<") Then
  loc_FB27F8:       If (arg_18 < var_9C) Then
  loc_FB2802:         var_94 = (arg_14 - var_9C)
  loc_FB2808:       Else
  loc_FB280B:         arg_C = arg_14
  loc_FB280E:       End If
  loc_FB2811:     Else
  loc_FB2819:       If (arg_10 = "=") Then
  loc_FB2823:         If (arg_18 = var_9C) Then
  loc_FB282D:           var_94 = (arg_14 - var_9C)
  loc_FB2833:         Else
  loc_FB2836:           arg_C = arg_14
  loc_FB2839:         End If
  loc_FB2839:       End If
  loc_FB2839:     End If
  loc_FB2839:   End If
  loc_FB283C: Else
  loc_FB2844:   If Not (var_A0 = ">=") Then
  loc_FB284F:     If (var_A0 = ">") Then
  loc_FB2852:     End If
  loc_FB2876:     var_C0 = CVar(((arg_14 * CDbl(&H64)) / (CDbl(&H64) + arg_24))) 'Double
  loc_FB2886:     var_9C = CSng(Format(var_C0, "0.00"))
  loc_FB289A:     If (arg_10 = ">=") Then
  loc_FB28A4:       If (arg_18 >= var_9C) Then
  loc_FB28AE:         var_94 = (arg_14 - var_9C)
  loc_FB28B4:       Else
  loc_FB28B7:         arg_C = arg_14
  loc_FB28BA:       End If
  loc_FB28BD:     Else
  loc_FB28C5:       If (arg_10 = ">") Then
  loc_FB28CF:         If (arg_18 > var_9C) Then
  loc_FB28D9:           var_94 = (arg_14 - var_9C)
  loc_FB28DF:         Else
  loc_FB28E2:           arg_C = arg_14
  loc_FB28E5:         End If
  loc_FB28E5:       End If
  loc_FB28E5:     End If
  loc_FB28E5:   End If
  loc_FB28E5: End If
  loc_FB28EB: Proc_59_49_FB28F4 = var_94
  loc_FB28F2: ArrayRebase1Var
End Sub

Public Sub Proc_59_50_14EBEFC
  'Data Table: 52DB34
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  Dim var_F0 As Variant
  Dim var_100 As Variant
  Dim var_104 As String
  Dim unk_52DB53 As Connection15
  Dim var_128 As Variant
  Dim var_88 As Recordset15
  Dim var_134 As Variant
  Dim var_130 As Variant
  Dim var_114 As Variant
  Dim var_148 As Variant
  Dim var_160 As Double
  Dim var_158 As String
  Dim var_154 As TextBox
  Dim var_C0 As Variant
  Dim var_144 As Variant
  Dim var_124 As Variant
  Dim var_150 As MSHFlexGrid
  Dim var_188 As Variant
  loc_14EB10D: var_D0 = "SELECT plan1.PlanCode as Code, Plan1.Amount, Plan1.NetPackageAmount,plan1.Chrgcode, FixedCharge.Name,plan1.Revcode, plan1.TaxStru, plan1.TaxInc, plan1.PrintOption,plan1.PostingMethod, plan1.ChargeType, plan1.FlatRate,plan1.Adult, plan1.Child, plan1.ExtraAdult, plan1.ExtraChild,Plan1.App_Date , Plan1.PlanPer, PlanMast.PercentApp,Plan1.NoofDays,Plan1.DiscAmt,Plan1.FixRate,PlanMast.DiscAppOn,PlanMast.Adults FROM (PlanMast inner join PlanDetails as plan1 on Planmast.Code=Plan1.planCode) INNER JOIN FixedCharge ON plan1.Chrgcode = FixedCharge.Code  where Plan1.Docid='"
  loc_14EB125: var_E0 = -1 & Trim(CVar(var_124(var_D0))) 
  loc_14EB13C: unk_52DB53.Execute CStr(var_E0 & "'"), var_128, 
  loc_14EB147: Set var_88 = var_128
  loc_14EB170: Me.FGrid3.Rows = 1
  loc_14EB17C: var_8A = CByte(1) 'Byte
  loc_14EB180: var_D0 = vbNullString
  loc_14EB18A: Set var_128 = Me.FGrid3
  loc_14EB1AE: Me.FGrid3.FixedRows = 1
  loc_14EB1C9: Me.FGrid3.Row = 1
  loc_14EB1E5: If (var_88.RecordCount > 0) Then
  loc_14EB210:   var_104 = Proc_6_38_E69628(CVar(var_88.Fields.Item("DiscAppOn")), FGrid3.DispID_10000)
  loc_14EB21D:   Me.LblDiscAppOn.Caption = var_104
  loc_14EB249:   var_130 = var_88.Fields.Item("PercentApp")
  loc_14EB26B:   If (var_130.Value = "Yes") Then
  loc_14EB271:     var_D0 = CVar(CLng(&H12)) 'Long
  loc_14EB276:     var_114 = &H4B0
  loc_14EB283:     Set var_128 = Me.FGrid3
  loc_14EB289:     LateIdCallSt
  loc_14EB297:   Else
  loc_14EB29A:     var_D0 = CVar(CLng(&H12)) 'Long
  loc_14EB29F:     var_114 = 0
  loc_14EB2AC:     Set var_128 = Me.FGrid3
  loc_14EB2B2:     LateIdCallSt
  loc_14EB2BD:   End If
  loc_14EB2C0: Else
  loc_14EB2C3:   var_D0 = CVar(CLng(&H12)) 'Long
  loc_14EB2C8:   var_114 = 0
  loc_14EB2D5:   Set var_128 = Me.FGrid3
  loc_14EB2DB:   LateIdCallSt
  loc_14EB2E6: End If
  loc_14EB2FA: Call 0.Method_Proc_59_50_14EBEFC0 (CInt(&HD), var_130, var_104, Me.Txt, var_114, var_D0, Me.Txt)
  loc_14EB351: If (CVar(Val(var_104)) > var_88.Fields.Item("Adults").Value) Then
  loc_14EB35A:   var_D0 = "Adults"
  loc_14EB387:   var_160 = Val(CStr(var_88.Fields.Item(var_D0).Value))
  loc_14EB398:   Set var_128 = Me.Txt
  loc_14EB39E:   Call 0.Method_Proc_59_50_14EBEFC0 (CInt(&HD), var_130, var_104, var_160, var_D0)
  loc_14EB3A6:   var_128 = var_130.Text
  loc_14EB3B9:   var_158 = CStr((Val(var_104) - var_160))
  loc_14EB3C7:   Set var_150 = Me.Txt
  loc_14EB3CD:   Call 0.Method_Proc_59_50_14EBEFC0 (CInt(&H1F), var_154, var_158)
  loc_14EB3D5:   var_154.Text = var_130.Text
  loc_14EB3F8:   var_D0 = CVar(CLng(8)) 'Long
  loc_14EB3FD:   var_114 = &H3E8
  loc_14EB40A:   Set var_128 = Me.FGrid3
  loc_14EB410:   LateIdCallSt
  loc_14EB41E:   var_D0 = CVar(CLng(9)) 'Long
  loc_14EB423:   var_114 = &H3E8
  loc_14EB430:   Set var_128 = Me.FGrid3
  loc_14EB436:   LateIdCallSt
  loc_14EB441:   ' Referenced from: 14EBEEE
  loc_14EB441: End If
  loc_14EB450: If Not(var_88.EOF) Then
  loc_14EB457:   Set var_168 = Me.FGrid3
  loc_14EB493:   var_D0 = CVar((CLng(Me.FGrid3.Row) - 1)) 'Long
  loc_14EB4B5:   var_104 = CStr(Me.FGrid3.TextMatrix))
  loc_14EB4C3:   var_100 = CVar(CStr((Val(var_104) + CDbl(1)))) 'String
  loc_14EB4CA:   LateIdCallSt
  loc_14EB50C:   var_D0 = "Name"
  loc_14EB531:   var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item(var_D0)), CVar(CLng(1)), CVar(CLng(Me.FGrid3.Row)), var_168, var_E0 & "'", CVar(CLng(0)), var_D0)) 'String
  loc_14EB538:   LateIdCallSt
  loc_14EB598:   var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")), CVar(CLng(2)), CVar(CLng(Me.FGrid3.Row)), var_168, var_E0, CVar(CLng(0)))) 'String
  loc_14EB59F:   LateIdCallSt
  loc_14EB5EE:   var_130 = var_88.Fields.Item("TaxStru")
  loc_14EB5FF:   var_E0 = CVar(Proc_6_38_E69628(CVar(var_130), CVar(CLng(3)), CVar(CLng(Me.FGrid3.Row)), var_168, var_E0)) 'String
  loc_14EB606:   LateIdCallSt
  loc_14EB64C:   Set var_128 = Me.Txt
  loc_14EB652:   Call 0.Method_Proc_59_50_14EBEFC0 (CInt(&H18), var_130, var_104, CVar(CLng(4)), CVar(CLng(Me.FGrid3.Row)), var_168)
  loc_14EB65A:   var_E0 = var_130.Tag
  loc_14EB662:   var_C0 = CVar(var_104) 'String
  loc_14EB669:   LateIdCallSt
  loc_14EB68B:   var_C0 = Me.FGrid3.Row
  loc_14EB6D0:   LateIdCallSt
  loc_14EB70E:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("Adult")), var_168, CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("TaxInc")), CVar(CLng(5)), CVar(CLng(var_C0)), var_168, var_C0)), CVar(CLng(Me.FGrid3.Row)))
  loc_14EB75E:   LateIdCallSt
  loc_14EB7C2:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("Child")), CVar(CLng(7)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(Format(var_C0, "0.00"))), 1)
  loc_14EB7D2:   LateIdCallSt
  loc_14EB832:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("ExtraAdult")), CVar(CLng(8)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(var_C0)), 1)
  loc_14EB842:   LateIdCallSt
  loc_14EB8A2:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("ExtraChild")), CVar(CLng(9)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(var_C0)))
  loc_14EB8B2:   LateIdCallSt
  loc_14EB912:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("NoofDays")), CVar(CLng(&HA)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(var_C0)))
  loc_14EB922:   LateIdCallSt
  loc_14EB982:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("PrintOption")), CVar(CLng(&HB)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(var_C0)))
  loc_14EB992:   LateIdCallSt
  loc_14EB9F4:   var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("PostingMethod")), CVar(CLng(&HC)), CVar(CLng(Me.FGrid3.Row)), var_168, CVar(CStr(Me.FGrid3.Row)), CVar(CLng(6)))) 'String
  loc_14EB9FB:   LateIdCallSt
  loc_14EBA1D:   var_C0 = Me.FGrid3.Row
  loc_14EBA5B:   var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChargeType")), CVar(CLng(&HD)), CVar(CLng(var_C0)), var_168, var_E0)) 'String
  loc_14EBA62:   LateIdCallSt
  loc_14EBA84:   var_E0 = Me.FGrid3.Row
  loc_14EBAC0:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("FlatRate")), CVar(CLng(&HE)), CVar(CLng(var_E0)), var_168, var_E0)
  loc_14EBAC9:   var_100 = CVar(CStr(var_C0)) 'String
  loc_14EBAD0:   LateIdCallSt
  loc_14EBAF9:   var_128 = var_88.Fields
  loc_14EBB10:   Proc_6_39_E7D3A0(var_C0, CVar(var_128.Item("Amount")), var_168, var_100, CVar(CLng(Me.FGrid3.Row)))
  loc_14EBB3B:   Proc_6_39_E7D3A0(var_100, CVar(var_88.Fields.Item("DiscAmt")), var_128)
  loc_14EBB7B:   var_124 = (var_C0 + var_100)
  loc_14EBB92:   LateIdCallSt
  loc_14EBBDE:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("Amount")), var_168, CVar(CStr(Format(Me.FGrid3.Row, "0.00"))), 1, 1)
  loc_14EBBFA:   var_148 = var_88.Fields.Item("NoofDays")
  loc_14EBC09:   Proc_6_39_E7D3A0(var_100, CVar(var_148), CVar(CLng(&HF)), CVar(CLng(Me.FGrid3.Row)))
  loc_14EBC21:   var_144 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_14EBC29:   var_188 = CVar(CLng(&H10)) 'Long
  loc_14EBC67:   LateIdCallSt
  loc_14EBC97:   var_C0 = Me.FGrid3.Row
  loc_14EBCD5:   var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("ChrgCode")), CVar(CLng(&H11)), CVar(CLng(var_C0)), var_168, CVar(CStr(Format((var_C0 * var_100), "0.00"))), 1)) 'String
  loc_14EBCDC:   LateIdCallSt
  loc_14EBCFE:   var_E0 = Me.FGrid3.Row
  loc_14EBD3A:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("PlanPer")), CVar(CLng(&H12)), CVar(CLng(var_E0)), var_168, var_E0)
  loc_14EBD4A:   LateIdCallSt
  loc_14EBD77:   var_F0 = CVar(CLng(Me.FGrid3.Row)) 'Long
  loc_14EBD7F:   var_144 = CVar(CLng(&H13)) 'Long
  loc_14EBDAF:   var_E0 = CVar(CStr(var_88.Fields.Item("App_Date").Value)) 'String
  loc_14EBDB6:   LateIdCallSt
  loc_14EBDDA:   var_C0 = Me.FGrid3.Row
  loc_14EBE18:   var_E0 = CVar(Proc_6_38_E69628(CVar(var_88.Fields.Item("FixRate")), CVar(CLng(&H15)), CVar(CLng(var_C0)), var_168, var_E0, CVar(CLng(&H15)), CVar(CLng(var_C0)))) 'String
  loc_14EBE1F:   LateIdCallSt
  loc_14EBE5D:   Proc_6_39_E7D3A0(var_C0, CVar(var_88.Fields.Item("NetPackageAmount")), var_168, var_E0, var_168)
  loc_14EBE74:   Set var_134 = Me.Txt
  loc_14EBE7A:   Call 0.Method_Proc_59_50_14EBEFC0 (CInt(&H19), var_148, CStr(var_C0), CVar(CStr(var_C0)))
  loc_14EBE82:   var_148.Text = 1
  loc_14EBEA5:   var_8A = CByte((CInt(var_8A) + 1)) 'Byte
  loc_14EBEA9:   var_D0 = vbNullString
  loc_14EBEB3:   Set var_128 = Me.FGrid3
  loc_14EBED8:   Me.FGrid3.Row = CVar(CLng(var_8A))
  loc_14EBEE2:   Set var_168 = Nothing 
  loc_14EBEE9:   var_88.MoveNext
  loc_14EBEEE:   GoTo loc_14EB441
  loc_14EBEF1: End If
  loc_14EBEF6: Set var_88 = Nothing
  loc_14EBEF9: Exit Sub
End Sub

Public Sub Proc_59_51_DFE25C
  'Data Table: 52DB34
  loc_DFE258: Exit Sub
End Sub
