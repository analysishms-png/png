VERSION 5.00
Begin VB.Form FrmRoomMast
  Caption = "Room  Master"
  BackColor = &HFFC0C0&
  ForeColor = &H400000&
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
  ClientWidth = 11880
  ClientHeight = 8490
  Begin TextBox Txt
    Index = 58
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10800
    Top = 1800
    Width = 1560
    Height = 285
    TabIndex = 118
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11880
    Height = 450
    TabIndex = 117
  End
  Begin PictureBox Picture4
    Picture = "FrmRoomMast.frx":0
    Left = 11115
    Top = 6405
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 113
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin PictureBox Picture2
    Picture = "FrmRoomMast.frx":34E
    Left = 11085
    Top = 6735
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 112
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  Begin MSFlexGrid FGPoint
    Left = 13635
    Top = 450
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 111
  End
  Begin DataGrid DGRevenue
    Left = 12660
    Top = 5010
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 106
  End
  Begin DataGrid DGCategory
    Left = 12735
    Top = 4620
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 107
  End
  Begin Frame FrmList
    Left = 11490
    Top = 5775
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 109
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 135
      Top = 285
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 110
    End
  End
  Begin DataGrid DGMaid
    Left = 12915
    Top = 4275
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 108
  End
  Begin PictureBox Picture123
    BackColor = &H80000005&
    ForeColor = &H80000008&
    Left = 13995
    Top = 5775
    Width = 2655
    Height = 3285
    Visible = 0   'False
    TabIndex = 105
    ScaleMode = 1
    AutoRedraw = True
    FontTransparent = True
    DrawStyle = 5
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
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    Left = 11505
    Top = 7650
    Width = 2115
    Height = 255
    Visible = 0   'False
    TabIndex = 100
    BorderStyle = 0 'None
    MaxLength = 25
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
  Begin CommandButton CmdRate
    Caption = "Season &Rate"
    Left = 14625
    Top = 3585
    Width = 1890
    Height = 405
    Visible = 0   'False
    TabIndex = 99
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
    Style = 1
  End
  Begin Frame Srate
    ForeColor = &H80000008&
    Left = 10800
    Top = 4185
    Width = 8430
    Height = 1935
    Visible = 0   'False
    TabIndex = 85
    Appearance = 0 'Flat
    BorderStyle = 0 'None
    Begin TextBox Txt
      Index = 57
      BackColor = &HFFFFFF&
      Left = 2115
      Top = 2265
      Width = 1065
      Height = 255
      Visible = 0   'False
      TabIndex = 51
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 56
      BackColor = &HFFFFFF&
      Left = 2115
      Top = 2010
      Width = 1065
      Height = 255
      Visible = 0   'False
      TabIndex = 50
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 55
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 49
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 54
      BackColor = &HFFFFFF&
      Left = 5700
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 45
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 53
      BackColor = &HFFFFFF&
      Left = 4485
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 41
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 52
      BackColor = &HFFFFFF&
      Left = 3285
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 37
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 51
      BackColor = &HFFFFFF&
      Left = 2085
      Top = 1620
      Width = 1065
      Height = 255
      TabIndex = 33
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 50
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 48
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 49
      BackColor = &HFFFFFF&
      Left = 5700
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 44
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 48
      BackColor = &HFFFFFF&
      Left = 4485
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 40
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 47
      BackColor = &HFFFFFF&
      Left = 3285
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 36
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 46
      BackColor = &HFFFFFF&
      Left = 2085
      Top = 1350
      Width = 1065
      Height = 255
      TabIndex = 32
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 45
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 47
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 44
      BackColor = &HFFFFFF&
      Left = 5700
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 43
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 43
      BackColor = &HFFFFFF&
      Left = 4485
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 39
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 42
      BackColor = &HFFFFFF&
      Left = 3285
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 35
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 41
      BackColor = &HFFFFFF&
      Left = 2085
      Top = 1080
      Width = 1065
      Height = 255
      TabIndex = 31
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 40
      BackColor = &HFFFFFF&
      Left = 6900
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 46
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 39
      BackColor = &HFFFFFF&
      Left = 5700
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 42
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 38
      BackColor = &HFFFFFF&
      Left = 4485
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 38
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 37
      BackColor = &HFFFFFF&
      Left = 3285
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 34
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
      Index = 36
      BackColor = &HFFFFFF&
      Left = 2085
      Top = 810
      Width = 1065
      Height = 255
      TabIndex = 30
      BorderStyle = 0 'None
      Alignment = 1 'Right Justify
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
    Begin CommandButton cmdSave
      Caption = "Save/Exit"
      Left = 6540
      Top = 2085
      Width = 1890
      Height = 405
      TabIndex = 52
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
      Caption = "(+/-)"
      Index = 37
      ForeColor = &H400000&
      Left = 1200
      Top = 1620
      Width = 390
      Height = 195
      TabIndex = 102
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "High Rate"
      Index = 36
      ForeColor = &H400000&
      Left = 2055
      Top = 420
      Width = 960
      Height = 240
      TabIndex = 98
      Alignment = 2 'Center
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
      Caption = "Rack Rate"
      Index = 35
      ForeColor = &H400000&
      Left = 3285
      Top = 420
      Width = 990
      Height = 240
      TabIndex = 97
      Alignment = 2 'Center
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
      Caption = "Disc1 Rate"
      Index = 34
      ForeColor = &H400000&
      Left = 4470
      Top = 420
      Width = 1050
      Height = 240
      TabIndex = 96
      Alignment = 2 'Center
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
      Caption = "Disc2 Rate"
      Index = 33
      ForeColor = &H400000&
      Left = 5670
      Top = 420
      Width = 1050
      Height = 240
      TabIndex = 95
      Alignment = 2 'Center
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
      Caption = "Disc3 Rate"
      Index = 32
      ForeColor = &H400000&
      Left = 6870
      Top = 420
      Width = 1050
      Height = 240
      TabIndex = 94
      Alignment = 2 'Center
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
      Caption = "Single"
      Index = 31
      ForeColor = &H400000&
      Left = 315
      Top = 810
      Width = 570
      Height = 240
      TabIndex = 93
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
      Caption = "Multiple"
      Index = 30
      ForeColor = &H400000&
      Left = 315
      Top = 1080
      Width = 750
      Height = 240
      TabIndex = 92
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
      Caption = "Occupancy Type"
      Index = 29
      ForeColor = &H400000&
      Left = 315
      Top = 405
      Width = 1575
      Height = 240
      TabIndex = 91
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
      Caption = "Extra Person"
      Index = 28
      ForeColor = &H400000&
      Left = 315
      Top = 1350
      Width = 1245
      Height = 240
      TabIndex = 90
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
      Caption = "Weekend"
      Index = 27
      ForeColor = &H400000&
      Left = 315
      Top = 1620
      Width = 900
      Height = 240
      TabIndex = 89
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
    Begin Shape Shape5
      Left = 0
      Top = 375
      Width = 8445
      Height = 1590
    End
    Begin Shape Shape4
      Left = 0
      Top = 735
      Width = 8445
      Height = 1215
    End
    Begin Label Label3
      Caption = "Tariff"
      BackColor = &HBBDDD7&
      ForeColor = &H400000&
      Left = 15
      Top = 105
      Width = 510
      Height = 240
      TabIndex = 88
      AutoSize = -1  'True
      BackStyle = 0 'Transparent
      BeginProperty Font
        Name = "Tahoma"
        Size = 9.75
        Charset = 0
        Weight = 700
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin Label LblName
      Caption = "Weekly Rate"
      Index = 26
      ForeColor = &H400000&
      Left = 345
      Top = 2040
      Width = 1230
      Height = 240
      Visible = 0   'False
      TabIndex = 87
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
      Caption = "Monthly Rate"
      Index = 25
      ForeColor = &H400000&
      Left = 345
      Top = 2310
      Width = 1305
      Height = 240
      Visible = 0   'False
      TabIndex = 86
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
  End
  Begin TextBox Txt
    Index = 35
    BackColor = &HFFFFFF&
    Left = 10680
    Top = 780
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 84
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 34
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4860
    Top = 1200
    Width = 765
    Height = 285
    Visible = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 25
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
    Index = 33
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2475
    Top = 1200
    Width = 1065
    Height = 285
    TabIndex = 0
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
    Index = 29
    BackColor = &HFFFFFF&
    Left = 15150
    Top = 2340
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 54
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 32
    BackColor = &HFFFFFF&
    Left = 15150
    Top = 3150
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 57
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 31
    BackColor = &HFFFFFF&
    Left = 15150
    Top = 2880
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 56
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 30
    BackColor = &HFFFFFF&
    Left = 15150
    Top = 2610
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 55
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 28
    BackColor = &HFFFFFF&
    Left = 12630
    Top = 8760
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 27
    BackColor = &HFFFFFF&
    Left = 12630
    Top = 8490
    Width = 1065
    Height = 255
    Visible = 0   'False
    TabIndex = 28
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 26
    BackColor = &HFFFFFF&
    Left = 8130
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 27
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 8130
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 26
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 25
    BackColor = &HFFFFFF&
    Left = 6900
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 23
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 20
    BackColor = &HFFFFFF&
    Left = 6900
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 22
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 24
    BackColor = &HFFFFFF&
    Left = 5640
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 5640
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 18
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 23
    BackColor = &HFFFFFF&
    Left = 4335
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 15
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 4335
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 14
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 22
    BackColor = &HFFFFFF&
    Left = 3045
    Top = 3765
    Width = 1065
    Height = 285
    TabIndex = 11
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 3045
    Top = 3450
    Width = 1065
    Height = 285
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 16
    BackColor = &HFFFFFF&
    Left = 8130
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 25
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 6900
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 21
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 14
    BackColor = &HFFFFFF&
    Left = 5640
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 17
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 13
    BackColor = &HFFFFFF&
    Left = 4335
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 13
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 12
    BackColor = &HFFFFFF&
    Left = 3045
    Top = 3135
    Width = 1065
    Height = 285
    TabIndex = 9
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 11
    BackColor = &HFFFFFF&
    Left = 8130
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 24
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 10
    BackColor = &HFFFFFF&
    Left = 6900
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 9
    BackColor = &HFFFFFF&
    Left = 5640
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 8
    BackColor = &HFFFFFF&
    Left = 4335
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 12
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 7
    BackColor = &HFFFFFF&
    Left = 3045
    Top = 2820
    Width = 1065
    Height = 285
    TabIndex = 8
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8205
    Top = 1485
    Width = 1230
    Height = 285
    TabIndex = 6
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7380
    Top = 1800
    Width = 2055
    Height = 285
    TabIndex = 7
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8205
    Top = 1170
    Width = 1230
    Height = 285
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 11715
    Top = 8040
    Width = 930
    Height = 255
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    MaxLength = 25
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
    Left = 2475
    Top = 1830
    Width = 3150
    Height = 285
    TabIndex = 3
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2475
    Top = 1515
    Width = 3150
    Height = 285
    TabIndex = 2
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
  Begin MSHFlexGrid FGrid1
    Left = 930
    Top = 4320
    Width = 4500
    Height = 3120
    TabIndex = 53
  End
  Begin CommonDialog CDlg
  End
  Begin Label LblName
    Caption = "Door Lock ID"
    Index = 39
    ForeColor = &HC00000&
    Left = 9510
    Top = 1815
    Width = 1215
    Height = 240
    TabIndex = 119
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
  Begin Image Image1
    Picture = "FrmRoomMast.frx":69C
    Left = 2610
    Top = 3165
    Width = 360
    Height = 360
  End
  Begin Image Image2
    Picture = "FrmRoomMast.frx":D9E
    Left = 2610
    Top = 2775
    Width = 360
    Height = 360
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4800
    Top = 8160
    Width = 2790
    Height = 285
    TabIndex = 116
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
    Left = 1410
    Top = 8160
    Width = 2880
    Height = 255
    TabIndex = 115
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
    TabIndex = 114
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
  Begin Image Picture1
    Left = 5595
    Top = 4125
    Width = 3780
    Height = 3315
    Stretch = -1  'True
    BorderStyle = 1 'Fixed Single
    Appearance = 0 'Flat
  End
  Begin Label Label4
    Caption = "Click Here to insert Image "
    BackColor = &H80000009&
    ForeColor = &HFF0000&
    Left = 6915
    Top = 7470
    Width = 2655
    Height = 390
    TabIndex = 104
    Alignment = 2 'Center
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
    Caption = "(+/-)"
    Index = 38
    ForeColor = &HC00000&
    Left = 2655
    Top = 3780
    Width = 360
    Height = 240
    TabIndex = 103
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
    Caption = "Revenue Chg"
    Index = 3
    ForeColor = &H400000&
    Left = 10245
    Top = 7680
    Width = 1125
    Height = 240
    Visible = 0   'False
    TabIndex = 101
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
    Caption = "Room Type"
    Index = 6
    ForeColor = &HC00000&
    Left = 3765
    Top = 1215
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 83
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
  Begin Shape Shape3
    Left = 12825
    Top = 2265
    Width = 3690
    Height = 1215
    Visible = 0   'False
  End
  Begin Label Label2
    Caption = "Room Features"
    BackColor = &HC0C7D8&
    ForeColor = &HC00000&
    Left = 930
    Top = 4035
    Width = 1755
    Height = 285
    TabIndex = 82
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label LblName
    Caption = "Room No"
    Index = 5
    ForeColor = &HC00000&
    Left = 945
    Top = 1200
    Width = 870
    Height = 240
    TabIndex = 81
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
    Caption = "House Keeping"
    Index = 4
    ForeColor = &HC00000&
    Left = 5925
    Top = 1785
    Width = 1440
    Height = 240
    TabIndex = 80
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
    Caption = "Connecting Room 1"
    Index = 24
    ForeColor = &H400000&
    Left = 13050
    Top = 2340
    Width = 1860
    Height = 240
    Visible = 0   'False
    TabIndex = 79
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
    Caption = "Connecting Room 2"
    Index = 23
    ForeColor = &H400000&
    Left = 13020
    Top = 2625
    Width = 1860
    Height = 240
    Visible = 0   'False
    TabIndex = 78
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
    Caption = "Connecting Room 3"
    Index = 22
    ForeColor = &H400000&
    Left = 13050
    Top = 2880
    Width = 1860
    Height = 240
    Visible = 0   'False
    TabIndex = 77
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
    Caption = "Connecting Room 4"
    Index = 21
    ForeColor = &H400000&
    Left = 13050
    Top = 3150
    Width = 1860
    Height = 240
    Visible = 0   'False
    TabIndex = 76
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
    Caption = "Monthly Rate"
    Index = 20
    ForeColor = &H400000&
    Left = 10830
    Top = 8760
    Width = 1305
    Height = 240
    Visible = 0   'False
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
  Begin Label LblName
    Caption = "Weekly Rate"
    Index = 19
    ForeColor = &H400000&
    Left = 10830
    Top = 8490
    Width = 1230
    Height = 240
    Visible = 0   'False
    TabIndex = 74
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
    Caption = "Tariff"
    BackColor = &HC0C7D8&
    ForeColor = &H80&
    Left = 330
    Top = 2415
    Width = 495
    Height = 240
    TabIndex = 73
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Arial"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = -1 'True
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Shape Shape1
    BorderColor = &HC00000&
    Left = 900
    Top = 2370
    Width = 8400
    Height = 375
    BorderWidth = 2
  End
  Begin Label LblName
    Caption = "Weekend"
    Index = 18
    ForeColor = &HC00000&
    Left = 1755
    Top = 3795
    Width = 900
    Height = 240
    TabIndex = 72
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
    Caption = "Extra Person"
    Index = 17
    ForeColor = &HC00000&
    Left = 1755
    Top = 3480
    Width = 1215
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
    Caption = "Occupancy Type"
    Index = 16
    ForeColor = &H80&
    Left = 1005
    Top = 2370
    Width = 1575
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
  Begin Label LblName
    Caption = "Multiple"
    Index = 15
    ForeColor = &HC00000&
    Left = 10485
    Top = 3285
    Width = 765
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
  Begin Label LblName
    Caption = "Single"
    Index = 14
    ForeColor = &HC00000&
    Left = 10485
    Top = 3015
    Width = 615
    Height = 240
    Visible = 0   'False
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
  Begin Label LblName
    Caption = "Disc3 Rate"
    Index = 13
    ForeColor = &H80&
    Left = 8100
    Top = 2385
    Width = 990
    Height = 240
    TabIndex = 67
    Alignment = 2 'Center
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
    Caption = "Disc2 Rate"
    Index = 12
    ForeColor = &H80&
    Left = 6870
    Top = 2385
    Width = 990
    Height = 240
    TabIndex = 66
    Alignment = 2 'Center
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
    Caption = "Disc1 Rate"
    Index = 11
    ForeColor = &H80&
    Left = 5610
    Top = 2385
    Width = 990
    Height = 240
    TabIndex = 65
    Alignment = 2 'Center
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
    Caption = "Rack Rate"
    Index = 10
    ForeColor = &H80&
    Left = 4305
    Top = 2385
    Width = 960
    Height = 240
    TabIndex = 64
    Alignment = 2 'Center
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
    Caption = "High Rate"
    Index = 9
    ForeColor = &H80&
    Left = 3000
    Top = 2385
    Width = 930
    Height = 240
    TabIndex = 63
    Alignment = 2 'Center
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
    Caption = "Include Room Count"
    Index = 8
    ForeColor = &HC00000&
    Left = 5925
    Top = 1485
    Width = 1935
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
    Caption = "Multiple Persons"
    Index = 7
    ForeColor = &HC00000&
    Left = 5925
    Top = 1170
    Width = 1575
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
  Begin Label LblName
    Caption = "Extension"
    Index = 2
    ForeColor = &H400000&
    Left = 10800
    Top = 8025
    Width = 810
    Height = 240
    Visible = 0   'False
    TabIndex = 60
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
    Caption = "Room Category"
    Index = 1
    ForeColor = &HC00000&
    Left = 945
    Top = 1830
    Width = 1470
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
  Begin Label LblName
    Caption = "Room Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 945
    Top = 1515
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
End

Attribute VB_Name = "FrmRoomMast"

Private MasterFormExit As Integer

Private Sub Fgrid1_UnknownEvent_9 '10DCA50
  'Data Table: 4FADE0
  Dim var_88 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_A0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_F4 As MSHFlexGrid
  Dim var_114 As String
  loc_10DC748: Set var_88 = Me.TopCtrl1
  loc_10DC74E: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_10DC767: If (CStr() = "Browse") Then
  loc_10DC76A:   Exit Sub
  loc_10DC76B: End If
  loc_10DC78A: If (CLng(Me.FGrid1.Col) = 1) Then
  loc_10DC7A0:   var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DC7B8:   var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10DC7EF:   If (CStr(Me.FGrid1.TextMatrix)) = vbNullString) Then
  loc_10DC814:     Me.FGrid1.Col = CVar(CLng(Me.FGrid1.Col))
  loc_10DC833:     Me.FGrid1.CellFontName = "wingdings"
  loc_10DC84D:     Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_10DC874:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_10DC88A:       Me.FGrid1.CellForeColor = &HFF
  loc_10DC895:     Else
  loc_10DC8A8:       Me.FGrid1.CellForeColor = &HFF0000
  loc_10DC8B0:     End If
  loc_10DC8C3:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DC8DB:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10DC8E0:     var_114 = "ü"
  loc_10DC8EA:     Set var_F4 = Me.FGrid1
  loc_10DC8F0:     LateIdCallSt
  loc_10DC90B:   Else
  loc_10DC91E:     var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DC936:     var_E0 = CVar(CLng(Me.FGrid1.Col)) 'Long
  loc_10DC93B:     var_114 = vbNullString
  loc_10DC945:     Set var_F4 = Me.FGrid1
  loc_10DC94B:     LateIdCallSt
  loc_10DC982:     If (CLng(Me.FGrid1.Col) = 6) Then
  loc_10DC998:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DC99D:       var_E0 = 7
  loc_10DC9A6:       var_114 = vbNullString
  loc_10DC9B0:       Set var_A0 = Me.FGrid1
  loc_10DC9B6:       LateIdCallSt
  loc_10DC9DB:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DC9E0:       var_E0 = 8
  loc_10DC9E9:       var_114 = vbNullString
  loc_10DC9F3:       Set var_A0 = Me.FGrid1
  loc_10DC9F9:       LateIdCallSt
  loc_10DCA1E:       var_C0 = CVar(CLng(Me.FGrid1.Row)) 'Long
  loc_10DCA23:       var_E0 = 9
  loc_10DCA2C:       var_114 = vbNullString
  loc_10DCA36:       Set var_A0 = Me.FGrid1
  loc_10DCA3C:       LateIdCallSt
  loc_10DCA4E:     End If
  loc_10DCA4E:   End If
  loc_10DCA4E: End If
  loc_10DCA4E: Exit Sub
End Sub

Private Sub Form_Load() '1417460
  'Data Table: 4FADE0
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim unk_4FADED As Connection15
  Dim var_BC As Variant
  Dim var_F8 As Variant
  Dim var_100 As Variant
  Dim var_FC As DataGrid
  Dim var_108 As DataGrid
  Dim Me As Recordset15
  loc_14169D4: On Error Goto loc_1417458
  loc_14169E6: Me.LblUser.Left = CDbl(13500)
  loc_14169FD: Me.LblUser.Top = CDbl(7800)
  loc_1416A14: Me.LblLDt.Top = CDbl(8160)
  loc_1416A2B: Me.LblLDt.Left = CDbl(13500)
  loc_1416A3A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1416A4C: Set var_8C = Me.FGrid1
  loc_1416A52: var_8C.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1416A77: Proc_6_17_EAAE40(var_BC, MemVar_1F95078, "Select * from enviro WHERE logSITE_CODE=")
  loc_1416A8D: unk_4FADED.Execute CStr(var_F0 & var_BC), -1, var_8C
  loc_1416A98: Set var_88 = var_8C
  loc_1416AC1: If (Me.Recordset15.RecordCount > 0) Then
  loc_1416B07:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate1"))) <> vbNullString) Then
  loc_1416B44:     Set var_FC = Me.LblName
  loc_1416B4A:     Call 0.Method_Form_Load0 (9, var_100)
  loc_1416B52:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate1").Value)
  loc_1416BA2:     Set var_FC = Me.LblName
  loc_1416BA8:     Call 0.Method_Form_Load0 (&H21, var_100)
  loc_1416BB0:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate1").Value)
  loc_1416BC6:   End If
  loc_1416C09:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate2"))) <> vbNullString) Then
  loc_1416C46:     Set var_FC = Me.LblName
  loc_1416C4C:     Call 0.Method_Form_Load0 (&HA, var_100)
  loc_1416C54:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate2").Value)
  loc_1416CA4:     Set var_FC = Me.LblName
  loc_1416CAA:     Call 0.Method_Form_Load0 (&H20, var_100)
  loc_1416CB2:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate2").Value)
  loc_1416CC8:   End If
  loc_1416D0B:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate3"))) <> vbNullString) Then
  loc_1416D48:     Set var_FC = Me.LblName
  loc_1416D4E:     Call 0.Method_Form_Load0 (&HB, var_100)
  loc_1416D56:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate3").Value)
  loc_1416DA6:     Set var_FC = Me.LblName
  loc_1416DAC:     Call 0.Method_Form_Load0 (&H1F, var_100)
  loc_1416DB4:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate3").Value)
  loc_1416DCA:   End If
  loc_1416E0D:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate4"))) <> vbNullString) Then
  loc_1416E4A:     Set var_FC = Me.LblName
  loc_1416E50:     Call 0.Method_Form_Load0 (&HC, var_100)
  loc_1416E58:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate4").Value)
  loc_1416EA8:     Set var_FC = Me.LblName
  loc_1416EAE:     Call 0.Method_Form_Load0 (&H1E, var_100)
  loc_1416EB6:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate4").Value)
  loc_1416ECC:   End If
  loc_1416F0F:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate5"))) <> vbNullString) Then
  loc_1416F4C:     Set var_FC = Me.LblName
  loc_1416F52:     Call 0.Method_Form_Load0 (&HD, var_100)
  loc_1416F5A:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate5").Value)
  loc_1416F8D:     var_F8 = Me.Recordset15.Fields.Item("Rate5")
  loc_1416FAA:     Set var_FC = Me.LblName
  loc_1416FB0:     Call 0.Method_Form_Load0 (&H1D, var_100)
  loc_1416FB8:     var_100.Caption = CStr(var_F8.Value)
  loc_1416FCE:   End If
  loc_1416FCE: End If
  loc_1416FD3: Set var_88 = Nothing
  loc_1416FE5: Me.Srate.Top = CDbl(4035)
  loc_1416FFC: Me.Srate.Left = CDbl(990)
  loc_1417013: Me.Picture1.Top = CDbl(4125)
  loc_141702A: Me.Picture1.Left = CDbl(5595)
  loc_1417040: Set var_8C = Me.Txt
  loc_1417046: Call 0.Method_Form_Load0 (CInt(4), var_F8)
  loc_1417065: Me.DGRevenue.Left = CVar(var_F8.Left)
  loc_1417081: Set var_FC = Me.Txt
  loc_1417087: Call 0.Method_Form_Load0 (CInt(4), var_100)
  loc_14170A2: Set var_8C = Me.Txt
  loc_14170A8: Call 0.Method_Form_Load0 (CInt(4), var_F8)
  loc_14170C0: var_9C = CVar(((var_F8.Top + var_100.Height) + CDbl(&H1E))) 'Single
  loc_14170CF: Me.DGRevenue.Top = CVar(var_F8.Left)
  loc_14170EF: Set var_8C = Me.Txt
  loc_14170F5: Call 0.Method_Form_Load0 (CInt(1), var_F8)
  loc_1417114: Me.DGCategory.Left = CVar(var_F8.Left)
  loc_1417130: Set var_FC = Me.Txt
  loc_1417136: Call 0.Method_Form_Load0 (CInt(1), var_100)
  loc_141713E: var_104 = var_100.Height
  loc_1417151: Set var_8C = Me.Txt
  loc_1417157: Call 0.Method_Form_Load0 (CInt(1), var_F8)
  loc_141715F: var_F4 = var_F8.Top
  loc_141716F: var_9C = CVar(((var_F4 + var_104) + CDbl(&H1E))) 'Single
  loc_1417178: Set var_108 = Me.DGCategory
  loc_141717E: var_108.Top = CVar(var_F8.Left)
  loc_141719A: Set global_72 = New 
  loc_14171AC: Me.var_108.CursorLocation = 3
  loc_14171D6: var_BC = CVar("Select distinct Code As Code,Name,TaxStru From RevMast where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14171E0: Me.Open var_BC, CVar(MemVar_1F95044), 2
  loc_14171F4: CVarUnk
  loc_14171F9: VerifyVarObj
  loc_14171FF: Set var_8C = Me.DGRevenue
  loc_1417205: LateIdStAd
  loc_141722F: Me.DGRevenue.CursorLocation = 3
  loc_1417259: var_BC = CVar("Select distinct Code As Code,Name From Depart where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RestType='House Keeping' Order by Name") 'String
  loc_1417263: Me.Open var_BC, CVar(MemVar_1F95044), 2
  loc_1417277: CVarUnk
  loc_141727C: VerifyVarObj
  loc_1417288: LateIdStAd
  loc_14172A4: Set var_FC = Me.Txt
  loc_14172AA: Call 0.Method_Form_Load0 (CInt(5), var_100, var_104, Me.DGMaid, New, 3)
  loc_14172B2: -1 = var_100.Height
  loc_14172CB: Call 0.Method_Form_Load0 (CInt(5), var_F8, var_F4, Me.Txt)
  loc_14172D3: global_72 = var_F8.Top
  loc_14172DF: var_9C = CVar((var_F4 + var_104)) 'Single
  loc_14172EE: Me.DGMaid.Top = CVar(MemVar_1F95044)
  loc_141730E: Set var_8C = Me.Txt
  loc_1417314: Call 0.Method_Form_Load0 (CInt(5), var_F8, var_F4)
  loc_141731C: 3 = var_F8.Left
  loc_141732D: Set var_FC = Me.DGMaid
  loc_1417333: var_FC.Left = CVar(var_F4)
  loc_141735D: Me.var_FC.CursorLocation = 3
  loc_1417387: var_BC = CVar("Select distinct Code As Code,Name,Type From RoomCat where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Name") 'String
  loc_14173A5: CVarUnk
  loc_14173AA: VerifyVarObj
  loc_14173B6: LateIdStAd
  loc_14173E0: Me.DGCategory.CursorLocation = 3
  loc_141740A: var_BC = CVar("Select Code as SearchCode,* From RoomMast where type in ('RO','CO')  and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') Order by Code") 'String
  loc_1417414: r_BC, CVar(MemVar_1F95044), 2 var_BC, CVar(MemVar_1F95044), 2
  loc_141741F: Call Proc_26_47_10189C0(3, -1, Me.DGCategory, New)
  loc_1417447: Call Proc_26_43_E8B0FC(Proc_5_1_100EC1C("INI", Me, New), 3)
  loc_1417452: Call Proc_26_42_17CA254(-1)
  loc_1417457: Exit Sub
  loc_1417458: ' Referenced from: 14169D4
  loc_1417458: Proc_6_60_E63754(-1)
  loc_141745D: Exit Sub
End Sub

Private Sub Form_Resize() 'ED49C8
  'Data Table: 4FADE0
  Dim var_8C As Label
  Dim arg_68FE As Double
  loc_ED4926: Call 0.Method_arg_50 (var_88)
  loc_ED4938: Me.LblFormCaption.Caption = var_88
  loc_ED4951: Me.LblFormCaption.Left = CDbl(0)
  loc_ED495D: Set var_A0 = Me.TopCtrl1
  loc_ED4963: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_ED4970: Set var_8C = Me.TopCtrl1
  loc_ED4976: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_ED4990: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED49AB: Call 0.Method_arg_100 (var_B8)
  loc_ED49BD: Me.LblFormCaption.Width = var_B8
  loc_ED49C5: Exit Sub
  loc_ED49C6: arg_68FE = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E40BD8
  'Data Table: 4FADE0
  loc_E40BB3: Set global_72 = Nothing
  loc_E40BC5: Set global_68 = Nothing
  loc_E40BD1: MasterFormExit = 0
  loc_E40BD4: Exit Sub
  loc_E40BD5: CExtInstUnk
End Sub

Private Sub Form_Activate() 'E50938
  'Data Table: 4FADE0
  loc_E50908: On Error Goto loc_E50932
  loc_E5090F: Set var_88 = Me.TopCtrl1
  loc_E50915: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E5092A: If (CLng(CInt()) = &H2D) Then
  loc_E5092D:   Call TopCtrl1_UnknownEvent_15()
  loc_E50932:   ' Referenced from: E50908
  loc_E50932: End If
  loc_E50932: Proc_6_60_E63754()
  loc_E50937: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2B788
  'Data Table: 4FADE0
  loc_E2B760: On Error Goto loc_E2B780
  loc_E2B777: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2B77F: Exit Sub
  loc_E2B780: ' Referenced from: E2B760
  loc_E2B780: Proc_6_60_E63754(Shift)
  loc_E2B785: Exit Sub
End Sub

Private Sub CmdSave_Click() '1650F40
  'Data Table: 4FADE0
  Dim var_8C As Frame
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_A0 As Frame
  Dim unk_4FADED As Connection15
  Dim var_11C As TextBox
  Dim var_124 As TextBox
  Dim var_12C As TextBox
  Dim var_134 As TextBox
  Dim var_120 As Frame
  Dim var_128 As Label
  Dim var_130 As TextBox
  Dim var_5E4 As Double
  Dim var_23C As TextBox
  Dim var_5EC As Double
  Dim var_288 As TextBox
  Dim var_5F4 As Double
  Dim var_2D4 As TextBox
  Dim var_5FC As Double
  Dim var_320 As TextBox
  Dim var_604 As Double
  Dim var_36C As TextBox
  Dim var_60C As Double
  Dim var_3B8 As TextBox
  Dim var_614 As Double
  Dim var_108 As String
  Dim var_D4 As Variant
  Dim var_118 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_318 As Variant
  Dim var_344 As Variant
  Dim var_45C As Variant
  Dim var_47C As Variant
  loc_164FA03: If (Me.Srate.Visible = &HFF) Then
  loc_164FA12:   Me.Srate.Visible = False
  loc_164FA1A: End If
  loc_164FA38: Set var_8C = Me.Txt
  loc_164FA3E: Call 0.Method_CmdSave_Click0 (CInt(&H21), var_94, var_98, "Delete From RateList Where RoomNO='")
  loc_164FA46: var_118 = var_94.Text
  loc_164FA4F: var_9C = -1 & var_98
  loc_164FA7F: Proc_6_17_EAAE40(var_D4, Trim(CVar(Me.Srate.Tag)))
  loc_164FA95: unk_4FADED.Execute CStr(CVar(var_9C & "' And Code=") & var_D4), var_11C, 
  loc_164FACB: Set var_8C = Me.Txt
  loc_164FAD1: Call 0.Method_CmdSave_Click0 (CInt(&H24), var_94)
  loc_164FAF9: Set var_A0 = Me.Txt
  loc_164FAFF: Call 0.Method_CmdSave_Click0 (CInt(&H25), var_11C)
  loc_164FB28: Set var_120 = Me.Txt
  loc_164FB2E: Call 0.Method_CmdSave_Click0 (CInt(&H26), var_124)
  loc_164FB57: Set var_128 = Me.Txt
  loc_164FB5D: Call 0.Method_CmdSave_Click0 (CInt(&H27), var_12C)
  loc_164FB86: Set var_130 = Me.Txt
  loc_164FB8C: Call 0.Method_CmdSave_Click0 (CInt(&H28), var_134)
  loc_164FBCB: If (((((CDbl(Val(var_94.Text)) <> CDbl(0)) Or (CDbl(Val(var_11C.Text)) <> CDbl(0))) Or (CDbl(Val(var_124.Text)) <> CDbl(0))) Or (CDbl(Val(var_12C.Text)) <> CDbl(0))) Or (CDbl(Val(var_134.Text)) <> CDbl(0))) Then
  loc_164FBDC:   Set var_8C = Me.Txt
  loc_164FBE2:   Call 0.Method_CmdSave_Click0 (CInt(1), var_94)
  loc_164FBEA:   var_98 = var_94.Tag
  loc_164FC0B:   Set var_A0 = Me.Txt
  loc_164FC11:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_11C)
  loc_164FC19:   var_9C = var_11C.Text
  loc_164FC4A:   Set var_124 = Me.LblName
  loc_164FC50:   Call 0.Method_CmdSave_Click0 (&HE, var_128)
  loc_164FC6B:   Set var_12C = Me.Txt
  loc_164FC71:   Call 0.Method_CmdSave_Click0 (CInt(&H24), var_130)
  loc_164FC86:   var_5E4 = Val(var_130.Text)
  loc_164FC97:   Set var_134 = Me.Txt
  loc_164FC9D:   Call 0.Method_CmdSave_Click0 (CInt(&H25), var_23C)
  loc_164FCB2:   var_5EC = Val(var_23C.Text)
  loc_164FCC3:   Set var_284 = Me.Txt
  loc_164FCC9:   Call 0.Method_CmdSave_Click0 (CInt(&H26), var_288, var_28C)
  loc_164FCDE:   var_5F4 = Val(var_28C)
  loc_164FCEF:   Set var_2D0 = Me.Txt
  loc_164FCF5:   Call 0.Method_CmdSave_Click0 (CInt(&H27), var_2D4, var_2D8)
  loc_164FD0A:   var_5FC = Val(var_2D8)
  loc_164FD1B:   Set var_31C = Me.Txt
  loc_164FD21:   Call 0.Method_CmdSave_Click0 (CInt(&H28), var_320, var_324)
  loc_164FD36:   var_604 = Val(var_324)
  loc_164FD47:   Set var_368 = Me.Txt
  loc_164FD4D:   Call 0.Method_CmdSave_Click0 (CInt(&H38), var_36C, var_370)
  loc_164FD62:   var_60C = Val(var_370)
  loc_164FD73:   Set var_3B4 = Me.Txt
  loc_164FD79:   Call 0.Method_CmdSave_Click0 (CInt(&H39), var_3B8, var_3BC)
  loc_164FD8E:   var_614 = Val(var_3BC)
  loc_164FD9F:   Proc_6_7_F26918(var_49C, Date)
  loc_164FDA8:   Set var_4D0 = Me.TopCtrl1
  loc_164FDAE:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_164FDF2:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_164FE39:   var_1F8 = var_108 & Trim(CVar(var_98)) & "','" & CVar(var_9C) & "','" & Trim(CVar(Me.Srate.Tag)) & "','" & CVar(var_128.Caption) & "'," 
  loc_164FE94:   var_344 = var_1F8 & CVar(var_5E4) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_164FEEB:   var_47C = var_344 & "," & CVar(var_3B8.Text) & "," & CVar(var_614) & ",'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_164FF2C:   unk_4FADED.Execute CStr(var_47C & var_49C & ",'" & IIf((CStr(var_4E0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_5D8, -1
  loc_164FFD6: End If
  loc_164FFE4: Set var_8C = Me.Txt
  loc_164FFEA: Call 0.Method_CmdSave_Click0 (CInt(&H29), var_94, var_98)
  loc_164FFF2: var_5DC = var_94.Text
  loc_1650012: Set var_A0 = Me.Txt
  loc_1650018: Call 0.Method_CmdSave_Click0 (CInt(&H2A), var_11C, var_9C)
  loc_1650020: (CDbl(Val(var_98)) <> CDbl(0)) = var_11C.Text
  loc_1650041: Set var_120 = Me.Txt
  loc_1650047: Call 0.Method_CmdSave_Click0 (CInt(&H2B), var_124)
  loc_1650070: Set var_128 = Me.Txt
  loc_1650076: Call 0.Method_CmdSave_Click0 (CInt(&H2C), var_12C)
  loc_165009F: Set var_130 = Me.Txt
  loc_16500A5: Call 0.Method_CmdSave_Click0 (CInt(&H2D), var_134)
  loc_16500E4: If ((((var_5E4 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_124.Text)) <> CDbl(0))) Or (CDbl(Val(var_12C.Text)) <> CDbl(0))) Or (CDbl(Val(var_134.Text)) <> CDbl(0))) Then
  loc_16500F5:   Set var_8C = Me.Txt
  loc_16500FB:   Call 0.Method_CmdSave_Click0 (CInt(1), var_94)
  loc_1650103:   var_98 = var_94.Tag
  loc_1650124:   Set var_A0 = Me.Txt
  loc_165012A:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_11C)
  loc_1650132:   var_9C = var_11C.Text
  loc_1650163:   Set var_124 = Me.LblName
  loc_1650169:   Call 0.Method_CmdSave_Click0 (&HF, var_128)
  loc_1650184:   Set var_12C = Me.Txt
  loc_165018A:   Call 0.Method_CmdSave_Click0 (CInt(&H29), var_130)
  loc_165019F:   var_5E4 = Val(var_130.Text)
  loc_16501B0:   Set var_134 = Me.Txt
  loc_16501B6:   Call 0.Method_CmdSave_Click0 (CInt(&H2A), var_23C)
  loc_16501CB:   var_5EC = Val(var_23C.Text)
  loc_16501DC:   Set var_284 = Me.Txt
  loc_16501E2:   Call 0.Method_CmdSave_Click0 (CInt(&H2B), var_288, var_28C)
  loc_16501F7:   var_5F4 = Val(var_28C)
  loc_1650208:   Set var_2D0 = Me.Txt
  loc_165020E:   Call 0.Method_CmdSave_Click0 (CInt(&H2C), var_2D4, var_2D8)
  loc_1650223:   var_5FC = Val(var_2D8)
  loc_1650234:   Set var_31C = Me.Txt
  loc_165023A:   Call 0.Method_CmdSave_Click0 (CInt(&H2D), var_320, var_324)
  loc_165024F:   var_604 = Val(var_324)
  loc_1650260:   Set var_368 = Me.Txt
  loc_1650266:   Call 0.Method_CmdSave_Click0 (CInt(&H38), var_36C, var_370)
  loc_165027B:   var_60C = Val(var_370)
  loc_165028C:   Set var_3B4 = Me.Txt
  loc_1650292:   Call 0.Method_CmdSave_Click0 (CInt(&H39), var_3B8, var_3BC)
  loc_16502A7:   var_614 = Val(var_3BC)
  loc_16502B8:   Proc_6_7_F26918(var_49C, Date)
  loc_16502C1:   Set var_4D0 = Me.TopCtrl1
  loc_16502C7:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_165030B:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_1650352:   var_1F8 = var_108 & Trim(CVar(var_98)) & "','" & CVar(var_9C) & "','" & Trim(CVar(Me.Srate.Tag)) & "','" & CVar(var_128.Caption) & "'," 
  loc_16503AD:   var_344 = var_1F8 & CVar(var_5E4) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_1650404:   var_47C = var_344 & "," & CVar(var_3B8.Text) & "," & CVar(var_614) & ",'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_1650445:   unk_4FADED.Execute CStr(var_47C & var_49C & ",'" & IIf((CStr(var_4E0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_5D8, -1
  loc_16504EF: End If
  loc_16504FD: Set var_8C = Me.Txt
  loc_1650503: Call 0.Method_CmdSave_Click0 (CInt(&H2E), var_94, var_98)
  loc_165050B: var_5DC = var_94.Text
  loc_165052B: Set var_A0 = Me.Txt
  loc_1650531: Call 0.Method_CmdSave_Click0 (CInt(&H2F), var_11C, var_9C)
  loc_1650539: (CDbl(Val(var_98)) <> CDbl(0)) = var_11C.Text
  loc_165055A: Set var_120 = Me.Txt
  loc_1650560: Call 0.Method_CmdSave_Click0 (CInt(&H30), var_124)
  loc_1650589: Set var_128 = Me.Txt
  loc_165058F: Call 0.Method_CmdSave_Click0 (CInt(&H31), var_12C)
  loc_16505B8: Set var_130 = Me.Txt
  loc_16505BE: Call 0.Method_CmdSave_Click0 (CInt(&H32), var_134)
  loc_16505FD: If ((((var_5E4 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_124.Text)) <> CDbl(0))) Or (CDbl(Val(var_12C.Text)) <> CDbl(0))) Or (CDbl(Val(var_134.Text)) <> CDbl(0))) Then
  loc_165060E:   Set var_8C = Me.Txt
  loc_1650614:   Call 0.Method_CmdSave_Click0 (CInt(1), var_94)
  loc_165061C:   var_98 = var_94.Tag
  loc_165063D:   Set var_A0 = Me.Txt
  loc_1650643:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_11C)
  loc_165064B:   var_9C = var_11C.Text
  loc_165067C:   Set var_124 = Me.LblName
  loc_1650682:   Call 0.Method_CmdSave_Click0 (&H11, var_128)
  loc_165069D:   Set var_12C = Me.Txt
  loc_16506A3:   Call 0.Method_CmdSave_Click0 (CInt(&H2E), var_130)
  loc_16506B8:   var_5E4 = Val(var_130.Text)
  loc_16506C9:   Set var_134 = Me.Txt
  loc_16506CF:   Call 0.Method_CmdSave_Click0 (CInt(&H2F), var_23C)
  loc_16506E4:   var_5EC = Val(var_23C.Text)
  loc_16506F5:   Set var_284 = Me.Txt
  loc_16506FB:   Call 0.Method_CmdSave_Click0 (CInt(&H30), var_288, var_28C)
  loc_1650710:   var_5F4 = Val(var_28C)
  loc_1650721:   Set var_2D0 = Me.Txt
  loc_1650727:   Call 0.Method_CmdSave_Click0 (CInt(&H31), var_2D4, var_2D8)
  loc_165073C:   var_5FC = Val(var_2D8)
  loc_165074D:   Set var_31C = Me.Txt
  loc_1650753:   Call 0.Method_CmdSave_Click0 (CInt(&H32), var_320, var_324)
  loc_1650768:   var_604 = Val(var_324)
  loc_1650779:   Set var_368 = Me.Txt
  loc_165077F:   Call 0.Method_CmdSave_Click0 (CInt(&H38), var_36C, var_370)
  loc_1650794:   var_60C = Val(var_370)
  loc_16507A5:   Set var_3B4 = Me.Txt
  loc_16507AB:   Call 0.Method_CmdSave_Click0 (CInt(&H39), var_3B8, var_3BC)
  loc_16507C0:   var_614 = Val(var_3BC)
  loc_16507D1:   Proc_6_7_F26918(var_49C, Date)
  loc_16507DA:   Set var_4D0 = Me.TopCtrl1
  loc_16507E0:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_1650824:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_165086B:   var_1F8 = var_108 & Trim(CVar(var_98)) & "','" & CVar(var_9C) & "','" & Trim(CVar(Me.Srate.Tag)) & "','" & CVar(var_128.Caption) & "'," 
  loc_16508C6:   var_344 = var_1F8 & CVar(var_5E4) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_165091D:   var_47C = var_344 & "," & CVar(var_3B8.Text) & "," & CVar(var_614) & ",'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_165095E:   unk_4FADED.Execute CStr(var_47C & var_49C & ",'" & IIf((CStr(var_4E0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_5D8, -1
  loc_1650A08: End If
  loc_1650A16: Set var_8C = Me.Txt
  loc_1650A1C: Call 0.Method_CmdSave_Click0 (CInt(&H33), var_94, var_98)
  loc_1650A24: var_5DC = var_94.Text
  loc_1650A44: Set var_A0 = Me.Txt
  loc_1650A4A: Call 0.Method_CmdSave_Click0 (CInt(&H34), var_11C, var_9C)
  loc_1650A52: (CDbl(Val(var_98)) <> CDbl(0)) = var_11C.Text
  loc_1650A73: Set var_120 = Me.Txt
  loc_1650A79: Call 0.Method_CmdSave_Click0 (CInt(&H35), var_124)
  loc_1650AA2: Set var_128 = Me.Txt
  loc_1650AA8: Call 0.Method_CmdSave_Click0 (CInt(&H36), var_12C)
  loc_1650AD1: Set var_130 = Me.Txt
  loc_1650AD7: Call 0.Method_CmdSave_Click0 (CInt(&H37), var_134)
  loc_1650B16: If ((((var_5E4 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_124.Text)) <> CDbl(0))) Or (CDbl(Val(var_12C.Text)) <> CDbl(0))) Or (CDbl(Val(var_134.Text)) <> CDbl(0))) Then
  loc_1650B27:   Set var_8C = Me.Txt
  loc_1650B2D:   Call 0.Method_CmdSave_Click0 (CInt(1), var_94)
  loc_1650B56:   Set var_A0 = Me.Txt
  loc_1650B5C:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_11C)
  loc_1650B95:   Set var_124 = Me.LblName
  loc_1650B9B:   Call 0.Method_CmdSave_Click0 (&H12, var_128)
  loc_1650BB6:   Set var_12C = Me.Txt
  loc_1650BBC:   Call 0.Method_CmdSave_Click0 (CInt(&H33), var_130)
  loc_1650BE2:   Set var_134 = Me.Txt
  loc_1650BE8:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_23C)
  loc_1650BFD:   var_5EC = Val(var_23C.Text)
  loc_1650C0E:   Set var_284 = Me.Txt
  loc_1650C14:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_288, var_28C)
  loc_1650C29:   var_5F4 = Val(var_28C)
  loc_1650C3A:   Set var_2D0 = Me.Txt
  loc_1650C40:   Call 0.Method_CmdSave_Click0 (CInt(&H36), var_2D4, var_2D8)
  loc_1650C55:   var_5FC = Val(var_2D8)
  loc_1650C66:   Set var_31C = Me.Txt
  loc_1650C6C:   Call 0.Method_CmdSave_Click0 (CInt(&H37), var_320, var_324)
  loc_1650C81:   var_604 = Val(var_324)
  loc_1650C92:   Set var_368 = Me.Txt
  loc_1650C98:   Call 0.Method_CmdSave_Click0 (CInt(&H38), var_36C, var_370)
  loc_1650CAD:   var_60C = Val(var_370)
  loc_1650CBE:   Set var_3B4 = Me.Txt
  loc_1650CC4:   Call 0.Method_CmdSave_Click0 (CInt(&H39), var_3B8, var_3BC)
  loc_1650CD9:   var_614 = Val(var_3BC)
  loc_1650CEA:   Proc_6_7_F26918(var_49C, Date)
  loc_1650CF3:   Set var_4D0 = Me.TopCtrl1
  loc_1650CF9:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_614)
  loc_1650D3D:   var_108 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_1650D7B:   var_1D8 = var_108 & Trim(CVar(var_94.Tag)) & "','" & CVar(var_11C.Text) & "','" & Trim(CVar(Me.Srate.Tag)) & "','" & CVar(var_128.Caption) 
  loc_1650DD4:   var_318 = var_1D8 & "'," & CVar(Val(var_130.Text)) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," 
  loc_1650E2D:   var_45C = var_318 & CVar(var_36C.Text) & "," & CVar(var_3B8.Text) & "," & CVar(var_614) & ",'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) 
  loc_1650E77:   unk_4FADED.Execute CStr(var_45C & "'," & var_49C & ",'" & IIf((CStr(var_4E0) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_5D8, -1
  loc_1650F21: End If
  loc_1650F2E: Me.Srate.Tag = vbNullString
  loc_1650F3B: Set var_88 = Nothing
  loc_1650F3E: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12D51DC
  'Data Table: 4FADE0
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_12D4B5E: Set var_88 = Me.Txt
  loc_12D4B64: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12D4B72: Proc_6_74_E23240(var_8C)
  loc_12D4B7E: Call Proc_26_44_F209A0(var_8C)
  loc_12D4B86: var_92 = Index
  loc_12D4B91: If (var_92 = CInt(5)) Then
  loc_12D4BAB:   If (Me.RecordCount > 0) Then
  loc_12D4BB9:     Set var_8C = Me.FGPoint
  loc_12D4BD1:     Proc_6_137_1192FDC(Me.DGMaid, global_80, Index)
  loc_12D4BDF:   End If
  loc_12D4C2D:   Set var_88 = Me.Txt
  loc_12D4C33:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12D4C3B:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12D4C53:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12D4C56:     Exit Sub
  loc_12D4C57:   End If
  loc_12D4C64:   Set var_88 = Me.Txt
  loc_12D4C6A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D4C72:   var_A0 = var_8C.Text
  loc_12D4C84:   var_B0 = "Name"
  loc_12D4CBF:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12D4CC8:     Me.MoveFirst
  loc_12D4CEB:     Set var_88 = Me.Txt
  loc_12D4CF1:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12D4CF9:     0 = var_8C.Text
  loc_12D4D12:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_12D4D27:   End If
  loc_12D4D2A: Else
  loc_12D4D32:   If (var_92 = CInt(4)) Then
  loc_12D4D4C:     If (Me.RecordCount > 0) Then
  loc_12D4D5A:       Set var_8C = Me.FGPoint
  loc_12D4D72:       Proc_6_137_1192FDC(Me.DGRevenue, global_72)
  loc_12D4D80:     End If
  loc_12D4DCE:     Set var_88 = Me.Txt
  loc_12D4DD4:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12D4DDC:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12D4DF4:     If (Index Or (var_A0 = vbNullString)) Then
  loc_12D4DF7:       Exit Sub
  loc_12D4DF8:     End If
  loc_12D4E05:     Set var_88 = Me.Txt
  loc_12D4E0B:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D4E13:     var_A0 = var_8C.Text
  loc_12D4E25:     var_B0 = "Name"
  loc_12D4E60:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12D4E69:       Me.MoveFirst
  loc_12D4E8C:       Set var_88 = Me.Txt
  loc_12D4E92:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12D4E9A:       0 = var_8C.Text
  loc_12D4EB3:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_12D4EC8:     End If
  loc_12D4ECB:   Else
  loc_12D4ED3:     If (var_92 = CInt(1)) Then
  loc_12D4EED:       If (Me.RecordCount > 0) Then
  loc_12D4EFB:         Set var_8C = Me.FGPoint
  loc_12D4F13:         Proc_6_137_1192FDC(Me.DGCategory, global_76)
  loc_12D4F21:       End If
  loc_12D4F6F:       Set var_88 = Me.Txt
  loc_12D4F75:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12D4F7D:       ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_12D4F95:       If (Index Or (var_A0 = vbNullString)) Then
  loc_12D4F98:         Exit Sub
  loc_12D4F99:       End If
  loc_12D4FA6:       Set var_88 = Me.Txt
  loc_12D4FAC:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D4FB4:       var_A0 = var_8C.Text
  loc_12D4FC6:       var_B0 = "Name"
  loc_12D5001:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12D500A:         Me.MoveFirst
  loc_12D502D:         Set var_88 = Me.Txt
  loc_12D5033:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12D503B:         0 = var_8C.Text
  loc_12D5054:         Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_12D5069:       End If
  loc_12D506C:     Else
  loc_12D5074:       If (var_92 = CInt(6)) Then
  loc_12D5084:         ReDim var_F0(0 To 1)
  loc_12D509B:         var_F0(0) = "Yes"
  loc_12D50AA:         var_F0(1) = "No"
  loc_12D50C1:         global_88 = Array(var_F0)
  loc_12D50CC:         Set var_B4 = Me.ListView
  loc_12D50E7:         Set var_8C = Me.Txt
  loc_12D5101:         Set global_120 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_12D511F:         Set var_88 = Me.Txt
  loc_12D5125:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12D512D:         global_88 = var_8C.Text
  loc_12D513F:         Set var_90 = Me.Txt
  loc_12D5145:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12D514D:         var_B4.Tag = 2
  loc_12D5160:       End If
  loc_12D5160:     End If
  loc_12D5160:   End If
  loc_12D5160: End If
  loc_12D516F: Set var_88 = Me.Txt
  loc_12D5175: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D517D: var_8C.SelStart = 0
  loc_12D5196: Set var_88 = Me.Txt
  loc_12D519C: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12D51B7: Set var_90 = Me.Txt
  loc_12D51BD: Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12D51C5: var_B4.SelLength = Len(var_8C.Text)
  loc_12D51D8: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '127E5EC
  'Data Table: 4FADE0
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_AC As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_9C As DataGrid
  Dim var_10C As Variant
  loc_127E062: If (CLng(Shift) = &H1B) Then
  loc_127E065:   Call Proc_26_44_F209A0()
  loc_127E06A:   Exit Sub
  loc_127E06B: End If
  loc_127E06E: var_86 = KeyCode
  loc_127E079: If (var_86 = CInt(5)) Then
  loc_127E099:   Set var_A0 = Me.FGPoint
  loc_127E0A4:   Set var_9C = Nothing
  loc_127E0D6:   Proc_6_69_134A630(Me.DGMaid, Me.Txt, CInt(5), global_80, Shift, 0)
  loc_127E145:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127E16B:     Proc_6_138_106E830(Me.DGMaid, global_80, KeyCode, Me.FGPoint, 1)
  loc_127E179:   End If
  loc_127E17C: Else
  loc_127E184:   If (var_86 = CInt(4)) Then
  loc_127E1AF:     Set var_9C = Nothing
  loc_127E1E1:     Proc_6_69_134A630(Me.DGRevenue, Me.Txt, CInt(4), global_72, Shift, 0, 1)
  loc_127E250:     If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127E257:       Set var_9C = Me.DGRevenue
  loc_127E276:       Proc_6_138_106E830(var_9C, global_72, KeyCode, Me.FGPoint, var_9C, Me.FGPoint)
  loc_127E284:     End If
  loc_127E287:   Else
  loc_127E28F:     If (var_86 = CInt(1)) Then
  loc_127E29D:       Set var_AC = Me.Txt
  loc_127E2AF:       Set var_A0 = Me.FGPoint
  loc_127E2EC:       Proc_6_69_134A630(Me.DGCategory, var_AC, CInt(1), global_76, Shift, 0, 1, Nothing)
  loc_127E30B:       var_B4 = Me.RecordCount
  loc_127E35B:       If ((var_B4 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127E369:         Set var_90 = Me.FGPoint
  loc_127E381:         Proc_6_138_106E830(Me.DGCategory, global_76, KeyCode, var_90, var_A0, 0)
  loc_127E38F:       End If
  loc_127E392:     Else
  loc_127E39A:       If (var_86 = CInt(6)) Then
  loc_127E3BF:         Set var_8C = Me.Txt
  loc_127E3C5:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B4, 0)
  loc_127E3CD:         var_9C = var_90.Left
  loc_127E3DF:         Set var_9C = Me.Txt
  loc_127E3E5:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B8)
  loc_127E3ED:         var_A0 = var_A0.Top
  loc_127E3FF:         Set var_A8 = Me.Txt
  loc_127E405:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_BC)
  loc_127E40D:         0 = var_AC.Height
  loc_127E41F:         Set var_B0 = Me.Txt
  loc_127E425:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_127E42D:         var_C4 = var_C0.Width
  loc_127E475:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_127E499:       End If
  loc_127E499:     End If
  loc_127E499:   End If
  loc_127E499: End If
  loc_127E4B3: Set var_90 = Me.DGRevenue
  loc_127E4D0: var_10C = Me.DGCategory.Visible
  loc_127E4EA: var_92 = Me.FrmList.Visible
  loc_127E50A: If ((((CBool(Me.DGMaid.Visible) = 0) And (CBool(var_90.Visible) = 0)) And (CBool(var_10C) = 0)) And (var_92 = 0)) Then
  loc_127E52B:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H20))) Then
  loc_127E531:     Call Proc_26_40_10765A8(var_92, CInt(var_B4), CInt((var_B8 + var_BC)))
  loc_127E53C:     If (var_92 = &HFF) Then
  loc_127E54C:       Set var_8C = Me.Txt
  loc_127E552:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, vbNullString)
  loc_127E55A:       var_90.Text = CInt(var_C4)
  loc_127E566:       Exit Sub
  loc_127E567:     End If
  loc_127E59E:     If (MsgBox("Save Record ?", 4, "Save Data", var_10C, var_15C) = 6) Then
  loc_127E5A1:       Call TopCtrl1_UnknownEvent_16()
  loc_127E5A6:     End If
  loc_127E5A6:     Exit Sub
  loc_127E5A7:   End If
  loc_127E5BC:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_127E5C5:     Proc_6_75_E5335C(Shift, arg_14)
  loc_127E5CA:   End If
  loc_127E5DD:   If ((CLng(Shift) = &H26) And (KeyCode <> CInt(&H20))) Then
  loc_127E5E6:     Proc_6_76_E533C8(Shift, arg_14)
  loc_127E5EB:   End If
  loc_127E5EB: End If
  loc_127E5EB: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '123B5F0
  'Data Table: 4FADE0
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  loc_123B0B6: Proc_6_133_E7FB08(var_94)
  loc_123B0BF: arg_10 = CInt(var_94)
  loc_123B0C8: Proc_6_58_E06050(arg_10, arg_10)
  loc_123B0D0: var_96 = KeyAscii
  loc_123B0DB: If (var_96 = CInt(5)) Then
  loc_123B0FA:   If (CBool(Me.DGMaid.Visible) = &HFF) Then
  loc_123B10C:     var_A4 = "Name"
  loc_123B12B:     Proc_6_89_1470B00(Me.Txt, CInt(5), global_80, arg_10)
  loc_123B145:     Set var_AC = Me.FGPoint
  loc_123B15D:     Proc_6_138_106E830(Me.DGMaid, global_80, KeyAscii, var_AC)
  loc_123B16B:   End If
  loc_123B16E: Else
  loc_123B176:   If (var_96 = CInt(3)) Then
  loc_123B183:     Set var_9C = Me.Txt
  loc_123B189:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_123B1A4:     Proc_6_42_129B55C(var_AC, arg_10, 2, 0)
  loc_123B1B3:   Else
  loc_123B1BB:     If (var_96 = CInt(4)) Then
  loc_123B1DA:       If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_123B20B:         Proc_6_89_1470B00(Me.Txt, CInt(4), global_72, arg_10, "Name")
  loc_123B225:         Set var_AC = Me.FGPoint
  loc_123B23D:         Proc_6_138_106E830(Me.DGRevenue, global_72, KeyAscii, var_AC)
  loc_123B24B:       End If
  loc_123B24E:     Else
  loc_123B256:       If Not (var_96 = CInt(7)) Then
  loc_123B261:         If Not (var_96 = CInt(8)) Then
  loc_123B26C:           If Not (var_96 = CInt(9)) Then
  loc_123B277:             If Not (var_96 = CInt(&HA)) Then
  loc_123B282:               If Not (var_96 = CInt(&HB)) Then
  loc_123B28D:                 If Not (var_96 = CInt(&H24)) Then
  loc_123B298:                   If Not (var_96 = CInt(8)) Then
  loc_123B2A3:                     If Not (var_96 = CInt(&H26)) Then
  loc_123B2AE:                       If Not (var_96 = CInt(&H27)) Then
  loc_123B2B9:                         If (var_96 = CInt(&H28)) Then
  loc_123B2BC:                         End If
  loc_123B2BC:                       End If
  loc_123B2BC:                     End If
  loc_123B2BC:                   End If
  loc_123B2BC:                 End If
  loc_123B2BC:               End If
  loc_123B2BC:             End If
  loc_123B2BC:           End If
  loc_123B2BC:         End If
  loc_123B2C6:         Set var_9C = Me.Txt
  loc_123B2CC:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 0)
  loc_123B2E7:         Proc_6_42_129B55C(var_AC, arg_10, 6, 2)
  loc_123B2F6:       Else
  loc_123B2FE:         If Not (var_96 = CInt(&HC)) Then
  loc_123B309:           If Not (var_96 = CInt(&HD)) Then
  loc_123B314:             If Not (var_96 = CInt(&HE)) Then
  loc_123B31F:               If Not (var_96 = CInt(&HF)) Then
  loc_123B32A:                 If Not (var_96 = CInt(&H10)) Then
  loc_123B335:                   If Not (var_96 = CInt(&H29)) Then
  loc_123B340:                     If Not (var_96 = CInt(&H2A)) Then
  loc_123B34B:                       If Not (var_96 = CInt(&H2B)) Then
  loc_123B356:                         If Not (var_96 = CInt(&H2C)) Then
  loc_123B361:                           If (var_96 = CInt(&H2D)) Then
  loc_123B364:                           End If
  loc_123B364:                         End If
  loc_123B364:                       End If
  loc_123B364:                     End If
  loc_123B364:                   End If
  loc_123B364:                 End If
  loc_123B364:               End If
  loc_123B364:             End If
  loc_123B364:           End If
  loc_123B36E:           Set var_9C = Me.Txt
  loc_123B374:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 0)
  loc_123B38F:           Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_123B39E:         Else
  loc_123B3A6:           If Not (var_96 = CInt(&H11)) Then
  loc_123B3B1:             If Not (var_96 = CInt(&H12)) Then
  loc_123B3BC:               If Not (var_96 = CInt(&H13)) Then
  loc_123B3C7:                 If Not (var_96 = CInt(&H14)) Then
  loc_123B3D2:                   If Not (var_96 = CInt(&H15)) Then
  loc_123B3DD:                     If Not (var_96 = CInt(&H2E)) Then
  loc_123B3E8:                       If Not (var_96 = CInt(&H2F)) Then
  loc_123B3F3:                         If Not (var_96 = CInt(&H30)) Then
  loc_123B3FE:                           If Not (var_96 = CInt(&H31)) Then
  loc_123B409:                             If (var_96 = CInt(&H32)) Then
  loc_123B40C:                             End If
  loc_123B40C:                           End If
  loc_123B40C:                         End If
  loc_123B40C:                       End If
  loc_123B40C:                     End If
  loc_123B40C:                   End If
  loc_123B40C:                 End If
  loc_123B40C:               End If
  loc_123B40C:             End If
  loc_123B416:             Set var_9C = Me.Txt
  loc_123B41C:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_123B437:             Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_123B446:           Else
  loc_123B44E:             If Not (var_96 = CInt(&H16)) Then
  loc_123B459:               If Not (var_96 = CInt(&H17)) Then
  loc_123B464:                 If Not (var_96 = CInt(&H18)) Then
  loc_123B46F:                   If Not (var_96 = CInt(&H19)) Then
  loc_123B47A:                     If Not (var_96 = CInt(&H1A)) Then
  loc_123B485:                       If Not (var_96 = CInt(&H33)) Then
  loc_123B490:                         If Not (var_96 = CInt(&H34)) Then
  loc_123B49B:                           If Not (var_96 = CInt(&H35)) Then
  loc_123B4A6:                             If Not (var_96 = CInt(&H36)) Then
  loc_123B4B1:                               If (var_96 = CInt(&H37)) Then
  loc_123B4B4:                               End If
  loc_123B4B4:                             End If
  loc_123B4B4:                           End If
  loc_123B4B4:                         End If
  loc_123B4B4:                       End If
  loc_123B4B4:                     End If
  loc_123B4B4:                   End If
  loc_123B4B4:                 End If
  loc_123B4B4:               End If
  loc_123B4BE:               Set var_9C = Me.Txt
  loc_123B4C4:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_123B4DF:               Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_123B4EE:             Else
  loc_123B4F6:               If Not (var_96 = CInt(&H1B)) Then
  loc_123B501:                 If Not (var_96 = CInt(&H1C)) Then
  loc_123B50C:                   If Not (var_96 = CInt(&H38)) Then
  loc_123B517:                     If (var_96 = CInt(&H39)) Then
  loc_123B51A:                     End If
  loc_123B51A:                   End If
  loc_123B51A:                 End If
  loc_123B524:                 Set var_9C = Me.Txt
  loc_123B52A:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_123B545:                 Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_123B554:               Else
  loc_123B55C:                 If (var_96 = CInt(1)) Then
  loc_123B57B:                   If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_123B5AC:                     Proc_6_89_1470B00(Me.Txt, CInt(1), global_76, arg_10, "Name")
  loc_123B5DE:                     Proc_6_138_106E830(Me.DGCategory, global_76, KeyAscii, Me.FGPoint)
  loc_123B5EC:                   End If
  loc_123B5EC:                 End If
  loc_123B5EC:               End If
  loc_123B5EC:             End If
  loc_123B5EC:           End If
  loc_123B5EC:         End If
  loc_123B5EC:       End If
  loc_123B5EC:     End If
  loc_123B5EC:   End If
  loc_123B5EC: End If
  loc_123B5EC: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FE3124
  'Data Table: 4FADE0
  Dim var_86 As Integer
  loc_FE2F4F: var_86 = KeyCode
  loc_FE2F5A: If (var_86 = CInt(5)) Then
  loc_FE2F79:   If (CBool(Me.DGMaid.Visible) = &HFF) Then
  loc_FE2F8D:     var_A8 = "Name"
  loc_FE2FB5:     Proc_6_68_12A2818(Me.DGMaid, Me.Txt, CInt(5), global_80)
  loc_FE2FC8:   End If
  loc_FE2FCB: Else
  loc_FE2FD3:   If (var_86 = CInt(4)) Then
  loc_FE2FF2:     If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_FE3006:       var_A8 = "Name"
  loc_FE302E:       Proc_6_68_12A2818(Me.DGRevenue, Me.Txt, CInt(4), global_72, Shift)
  loc_FE3041:     End If
  loc_FE3044:   Else
  loc_FE304C:     If (var_86 = CInt(1)) Then
  loc_FE306B:       If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_FE307F:         var_A8 = "Name"
  loc_FE30A7:         Proc_6_68_12A2818(Me.DGCategory, Me.Txt, CInt(1), global_76, Shift)
  loc_FE30BA:       End If
  loc_FE30BD:     Else
  loc_FE30C5:       If (var_86 = CInt(6)) Then
  loc_FE30E3:         If (Me.FrmList.Visible = &HFF) Then
  loc_FE3112:           Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_120)
  loc_FE3122:         End If
  loc_FE3122:       End If
  loc_FE3122:     End If
  loc_FE3122:   End If
  loc_FE3122: End If
  loc_FE3122: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E50A04
  'Data Table: 4FADE0
  loc_E509E2: Set var_88 = Me.Txt
  loc_E509E8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E509F6: Proc_6_73_E23294(var_8C)
  loc_E50A02: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '14CDC64
  'Data Table: 4FADE0
  Dim var_86 As Integer
  Dim var_90 As Variant
  Dim arg_10 As Integer
  Dim Me As Recordset15
  Dim var_8C As Variant
  Dim var_98 As String
  Dim var_B0 As TextBox
  Dim var_FC As Double
  loc_14CCEE3: var_86 = Cancel
  loc_14CCEEE: If (var_86 = CInt(&H21)) Then
  loc_14CCEFC:   Set var_8C = Me.Txt
  loc_14CCF02:   Call 0.Method_Txt_Validate0 (CInt(&H21), var_90)
  loc_14CCF0A:   var_98 = "Room No."
  loc_14CCF2B:   If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_14CCF38:     Set var_8C = Me.Txt
  loc_14CCF3E:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CCF46:     var_90.SetFocus
  loc_14CCF54:     arg_10 = &HFF
  loc_14CCF57:     Exit Sub
  loc_14CCF58:   End If
  loc_14CCF5B:   Call Proc_26_40_10765A8(var_9A, arg_10)
  loc_14CCF66:   If (var_9A = &HFF) Then
  loc_14CCF6B:     arg_10 = &HFF
  loc_14CCF6E:     Exit Sub
  loc_14CCF6F:   End If
  loc_14CCF72: Else
  loc_14CCF7A:   If (var_86 = CInt(5)) Then
  loc_14CCF8A:     Set var_8C = Me.Txt
  loc_14CCF90:     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CCF98:     arg_10 = var_90.Text
  loc_14CCFC4:     If ((var_98 <> vbNullString) And (Me.EOF = 0)) Then
  loc_14CD002:       Set var_94 = Me.Txt
  loc_14CD008:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CD010:       var_B0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_14CD043:       var_90 = Me.Fields.Item("Code")
  loc_14CD061:       Set var_94 = Me.Txt
  loc_14CD067:       Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CD06F:       var_B0.Tag = CStr(var_90.Value)
  loc_14CD088:     Else
  loc_14CD095:       Set var_8C = Me.Txt
  loc_14CD09B:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD0BA:       If (var_90.Text <> vbNullString) Then
  loc_14CD0CA:         Set var_8C = Me.Txt
  loc_14CD0D0:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD0D8:         var_90.Text = vbNullString
  loc_14CD0F1:         Set var_8C = Me.Txt
  loc_14CD0F7:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD0FF:         var_90.Tag = vbNullString
  loc_14CD10B:       End If
  loc_14CD10B:     End If
  loc_14CD10E:   Else
  loc_14CD116:     If (var_86 = CInt(4)) Then
  loc_14CD124:       Set var_8C = Me.Txt
  loc_14CD12A:       Call 0.Method_Txt_Validate0 (CInt(4), var_90)
  loc_14CD153:       If (Proc_6_27_EA61EC(var_90, "Revenue Charge") = 0) Then
  loc_14CD160:         Set var_8C = Me.Txt
  loc_14CD166:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD16E:         var_90.SetFocus
  loc_14CD17C:         arg_10 = &HFF
  loc_14CD17F:         Exit Sub
  loc_14CD180:       End If
  loc_14CD194:       If (Me.EOF = 0) Then
  loc_14CD1D2:         Set var_94 = Me.Txt
  loc_14CD1D8:         Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Me.Fields.Item("Name").Value))
  loc_14CD1E0:         var_B0.Text = arg_10
  loc_14CD231:         Set var_94 = Me.Txt
  loc_14CD237:         Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CD23F:         var_B0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14CD272:         var_90 = Me.Fields.Item("TaxStru")
  loc_14CD291:         Set var_94 = Me.Txt
  loc_14CD297:         Call 0.Method_Txt_Validate0 (CInt(&H23), var_B0)
  loc_14CD29F:         var_B0.Text = CStr(var_90.Value)
  loc_14CD2B8:       Else
  loc_14CD2C5:         Set var_8C = Me.Txt
  loc_14CD2CB:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD2D3:         var_90.Text = vbNullString
  loc_14CD2EC:         Set var_8C = Me.Txt
  loc_14CD2F2:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD2FA:         var_90.Tag = vbNullString
  loc_14CD314:         Set var_8C = Me.Txt
  loc_14CD31A:         Call 0.Method_Txt_Validate0 (CInt(&H23), var_90)
  loc_14CD322:         var_90.Text = vbNullString
  loc_14CD32E:       End If
  loc_14CD331:     Else
  loc_14CD339:       If (var_86 = CInt(1)) Then
  loc_14CD347:         Set var_8C = Me.Txt
  loc_14CD34D:         Call 0.Method_Txt_Validate0 (CInt(1), var_90)
  loc_14CD376:         If (Proc_6_27_EA61EC(var_90, "Room Category") = 0) Then
  loc_14CD383:           Set var_8C = Me.Txt
  loc_14CD389:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD391:           var_90.SetFocus
  loc_14CD39F:           arg_10 = &HFF
  loc_14CD3A2:           Exit Sub
  loc_14CD3A3:         End If
  loc_14CD3B7:         If (Me.EOF = 0) Then
  loc_14CD3F5:           Set var_94 = Me.Txt
  loc_14CD3FB:           Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Me.Fields.Item("Name").Value))
  loc_14CD403:           var_B0.Text = arg_10
  loc_14CD454:           Set var_94 = Me.Txt
  loc_14CD45A:           Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CD462:           var_B0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_14CD495:           var_90 = Me.Fields.Item("Type")
  loc_14CD4B7:           If (var_90.Value = "RO") Then
  loc_14CD4C8:             Set var_8C = Me.Txt
  loc_14CD4CE:             Call 0.Method_Txt_Validate0 (CInt(&H22), var_90)
  loc_14CD4D6:             var_90.Text = "Room"
  loc_14CD4FF:             var_90 = Me.Fields.Item("Type")
  loc_14CD51E:             Set var_94 = Me.Txt
  loc_14CD524:             Call 0.Method_Txt_Validate0 (CInt(&H22), var_B0)
  loc_14CD52C:             var_B0.Tag = CStr(var_90.Value)
  loc_14CD550:             Set var_8C = Me.Txt
  loc_14CD556:             Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_14CD55E:             var_90.Text = "Yes"
  loc_14CD56D:           Else
  loc_14CD58A:             var_90 = Me.Fields.Item("Type")
  loc_14CD5AC:             If (var_90.Value = "CO") Then
  loc_14CD5BD:               Set var_8C = Me.Txt
  loc_14CD5C3:               Call 0.Method_Txt_Validate0 (CInt(&H22), var_90)
  loc_14CD5CB:               var_90.Text = "Conf. Hall"
  loc_14CD5F4:               var_90 = Me.Fields.Item("Type")
  loc_14CD613:               Set var_94 = Me.Txt
  loc_14CD619:               Call 0.Method_Txt_Validate0 (CInt(&H22), var_B0)
  loc_14CD621:               var_B0.Tag = CStr(var_90.Value)
  loc_14CD645:               Set var_8C = Me.Txt
  loc_14CD64B:               Call 0.Method_Txt_Validate0 (CInt(6), var_90)
  loc_14CD653:               var_90.Text = "No"
  loc_14CD65F:             End If
  loc_14CD65F:           End If
  loc_14CD662:         Else
  loc_14CD66F:           Set var_8C = Me.Txt
  loc_14CD675:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD67D:           var_90.Text = vbNullString
  loc_14CD696:           Set var_8C = Me.Txt
  loc_14CD69C:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD6A4:           var_90.Tag = vbNullString
  loc_14CD6B0:         End If
  loc_14CD6B3:       Else
  loc_14CD6BB:         If (var_86 = CInt(6)) Then
  loc_14CD6CB:           Set var_8C = Me.Txt
  loc_14CD6D1:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD6F0:           If (var_90.Text <> vbNullString) Then
  loc_14CD70B:             Set var_90 = Me.ListView.SelectedItem
  loc_14CD723:             Set var_94 = Me.Txt
  loc_14CD729:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_14CD731:             var_B0.Text = var_90.Text
  loc_14CD747:           End If
  loc_14CD74A:         Else
  loc_14CD752:           If Not (var_86 = CInt(7)) Then
  loc_14CD75D:             If Not (var_86 = CInt(9)) Then
  loc_14CD768:               If Not (var_86 = CInt(&HA)) Then
  loc_14CD773:                 If Not (var_86 = CInt(&HB)) Then
  loc_14CD77E:                   If Not (var_86 = CInt(8)) Then
  loc_14CD789:                     If Not (var_86 = CInt(&H24)) Then
  loc_14CD794:                       If Not (var_86 = CInt(8)) Then
  loc_14CD79F:                         If Not (var_86 = CInt(&H26)) Then
  loc_14CD7AA:                           If Not (var_86 = CInt(&H27)) Then
  loc_14CD7B5:                             If (var_86 = CInt(&H28)) Then
  loc_14CD7B8:                             End If
  loc_14CD7B8:                           End If
  loc_14CD7B8:                         End If
  loc_14CD7B8:                       End If
  loc_14CD7B8:                     End If
  loc_14CD7B8:                   End If
  loc_14CD7B8:                 End If
  loc_14CD7B8:               End If
  loc_14CD7B8:             End If
  loc_14CD7C5:             Set var_8C = Me.Txt
  loc_14CD7CB:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_14CD7D3:             var_98 = var_90.Text
  loc_14CD818:             Set var_94 = Me.Txt
  loc_14CD81E:             Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CD826:             var_B0.Text = 1
  loc_14CD849:           Else
  loc_14CD851:             If Not (var_86 = CInt(&HC)) Then
  loc_14CD85C:               If Not (var_86 = CInt(&HE)) Then
  loc_14CD867:                 If Not (var_86 = CInt(&HF)) Then
  loc_14CD872:                   If Not (var_86 = CInt(&H10)) Then
  loc_14CD87D:                     If Not (var_86 = CInt(&HD)) Then
  loc_14CD888:                       If Not (var_86 = CInt(&H29)) Then
  loc_14CD893:                         If Not (var_86 = CInt(&H2A)) Then
  loc_14CD89E:                           If Not (var_86 = CInt(&H2B)) Then
  loc_14CD8A9:                             If Not (var_86 = CInt(&H2C)) Then
  loc_14CD8B4:                               If (var_86 = CInt(&H2D)) Then
  loc_14CD8B7:                               End If
  loc_14CD8B7:                             End If
  loc_14CD8B7:                           End If
  loc_14CD8B7:                         End If
  loc_14CD8B7:                       End If
  loc_14CD8B7:                     End If
  loc_14CD8B7:                   End If
  loc_14CD8B7:                 End If
  loc_14CD8B7:               End If
  loc_14CD8C4:               Set var_8C = Me.Txt
  loc_14CD8CA:               Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CD8D2:               var_FC = var_90.Text
  loc_14CD917:               Set var_94 = Me.Txt
  loc_14CD91D:               Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CD925:               var_B0.Text = 1
  loc_14CD948:             Else
  loc_14CD950:               If Not (var_86 = CInt(&H11)) Then
  loc_14CD95B:                 If Not (var_86 = CInt(&H13)) Then
  loc_14CD966:                   If Not (var_86 = CInt(&H14)) Then
  loc_14CD971:                     If Not (var_86 = CInt(&H15)) Then
  loc_14CD97C:                       If Not (var_86 = CInt(&H12)) Then
  loc_14CD987:                         If Not (var_86 = CInt(&H2E)) Then
  loc_14CD992:                           If Not (var_86 = CInt(&H2F)) Then
  loc_14CD99D:                             If Not (var_86 = CInt(&H30)) Then
  loc_14CD9A8:                               If Not (var_86 = CInt(&H31)) Then
  loc_14CD9B3:                                 If (var_86 = CInt(&H32)) Then
  loc_14CD9B6:                                 End If
  loc_14CD9B6:                               End If
  loc_14CD9B6:                             End If
  loc_14CD9B6:                           End If
  loc_14CD9B6:                         End If
  loc_14CD9B6:                       End If
  loc_14CD9B6:                     End If
  loc_14CD9B6:                   End If
  loc_14CD9B6:                 End If
  loc_14CD9C3:                 Set var_8C = Me.Txt
  loc_14CD9C9:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CD9D1:                 var_FC = var_90.Text
  loc_14CDA16:                 Set var_94 = Me.Txt
  loc_14CDA1C:                 Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CDA24:                 var_B0.Text = 1
  loc_14CDA47:               Else
  loc_14CDA4F:                 If Not (var_86 = CInt(&H16)) Then
  loc_14CDA5A:                   If Not (var_86 = CInt(&H18)) Then
  loc_14CDA65:                     If Not (var_86 = CInt(&H19)) Then
  loc_14CDA70:                       If Not (var_86 = CInt(&H1A)) Then
  loc_14CDA7B:                         If Not (var_86 = CInt(&H17)) Then
  loc_14CDA86:                           If Not (var_86 = CInt(&H33)) Then
  loc_14CDA91:                             If Not (var_86 = CInt(&H34)) Then
  loc_14CDA9C:                               If Not (var_86 = CInt(&H35)) Then
  loc_14CDAA7:                                 If Not (var_86 = CInt(&H36)) Then
  loc_14CDAB2:                                   If (var_86 = CInt(&H37)) Then
  loc_14CDAB5:                                   End If
  loc_14CDAB5:                                 End If
  loc_14CDAB5:                               End If
  loc_14CDAB5:                             End If
  loc_14CDAB5:                           End If
  loc_14CDAB5:                         End If
  loc_14CDAB5:                       End If
  loc_14CDAB5:                     End If
  loc_14CDAB5:                   End If
  loc_14CDAC2:                   Set var_8C = Me.Txt
  loc_14CDAC8:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CDAD0:                   var_FC = var_90.Text
  loc_14CDB15:                   Set var_94 = Me.Txt
  loc_14CDB1B:                   Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CDB23:                   var_B0.Text = 1
  loc_14CDB46:                 Else
  loc_14CDB4E:                   If Not (var_86 = CInt(&H1B)) Then
  loc_14CDB59:                     If (var_86 = CInt(&H1C)) Then
  loc_14CDB5C:                     End If
  loc_14CDB69:                     Set var_8C = Me.Txt
  loc_14CDB6F:                     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_14CDB77:                     var_FC = var_90.Text
  loc_14CDBBC:                     Set var_94 = Me.Txt
  loc_14CDBC2:                     Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_14CDBCA:                     var_B0.Text = 1
  loc_14CDBED:                   Else
  loc_14CDBF5:                     If (var_86 = CInt(3)) Then
  loc_14CDC06:                       Set var_8C = Me.Txt
  loc_14CDC0C:                       Call 0.Method_Txt_Validate0 (CInt(3), var_90, var_98)
  loc_14CDC14:                       var_FC = var_90.Text
  loc_14CDC30:                       If (CDbl(Val(var_98)) = CDbl(0)) Then
  loc_14CDC45:                         Set var_8C = Me.Txt
  loc_14CDC4B:                         Call 0.Method_Txt_Validate0 (CInt(3), var_90)
  loc_14CDC53:                         var_90.Text = CStr(2)
  loc_14CDC62:                       End If
  loc_14CDC62:                     End If
  loc_14CDC62:                   End If
  loc_14CDC62:                 End If
  loc_14CDC62:               End If
  loc_14CDC62:             End If
  loc_14CDC62:           End If
  loc_14CDC62:         End If
  loc_14CDC62:       End If
  loc_14CDC62:     End If
  loc_14CDC62:   End If
  loc_14CDC62: End If
  loc_14CDC62: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'EB13D0
  'Data Table: 4FADE0
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_EB133C: On Error Goto loc_EB13C7
  loc_EB134C: Me.LblUser.Caption = vbNullString
  loc_EB1361: Me.LblLDt.Caption = vbNullString
  loc_EB138C: Call Proc_26_43_E8B0FC(Proc_5_1_100EC1C("ADD", Me))
  loc_EB1397: Call Proc_26_41_FEA718(global_68)
  loc_EB13A7: Set var_88 = Me.Txt
  loc_EB13AD: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H21))
  loc_EB13B5: var_94.SetFocus
  loc_EB13C1: Call Proc_26_46_126BB28(var_94)
  loc_EB13C6: Exit Sub
  loc_EB13C7: ' Referenced from: EB133C
  loc_EB13C7: Proc_6_60_E63754()
  loc_EB13CC: Exit Sub
  loc_EB13CD: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EDCDD4
  'Data Table: 4FADE0
  loc_EDCD28: On Error Goto loc_EDCDCB
  loc_EDCD62: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EDCD88:   Call Proc_26_43_E8B0FC(Proc_5_1_100EC1C("INI", Me))
  loc_EDCD93:   Call Proc_26_42_17CA254(global_68)
  loc_EDCD98: End If
  loc_EDCDB3: If (Me.Srate.Visible = &HFF) Then
  loc_EDCDC2:   Me.Srate.Visible = False
  loc_EDCDCA: End If
  loc_EDCDCA: Exit Sub
  loc_EDCDCB: ' Referenced from: EDCD28
  loc_EDCDCB: Proc_6_60_E63754()
  loc_EDCDD0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '1366024
  'Data Table: 4FADE0
  Dim var_9C As String
  Dim var_A4 As Variant
  Dim unk_4FADED As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Fields15
  Dim var_100 As Variant
  Dim var_120 As Variant
  Dim var_D4 As Variant
  loc_13657FC: On Error Goto loc_1365FCB
  loc_136580D: If (Proc_183_56_FE8B08(global_68) = &HFF) Then
  loc_1365810:   Exit Sub
  loc_1365811: End If
  loc_136584C: Set var_A0 = Me.Txt
  loc_1365852: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H21), var_A4, var_A8, "Select Count(*) from PayCharge where (LOGSITE_CODE='" & MemVar_1F95078 & "') and RoomNo='", var_D4, -1)
  loc_1365873: unk_4FADED.Execute var_DC & var_A8 & "'", 0, var_F0
  loc_136587B: var_100 = var_A4.Text.Fields
  loc_1365883:  = var_DC.Item()
  loc_136588B:  = var_F0.Value
  loc_13658BC: If (var_100 > 0) Then
  loc_13658D2:   var_D4 = "Sorry! Related Record Exist "
  loc_13658D8:   MsgBox(var_D4, &H40, var_100, var_120, var_140)
  loc_13658E8:   Exit Sub
  loc_13658E9: End If
  loc_1365924: Set var_A0 = Me.Txt
  loc_136592A: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H21), var_A4, var_A8, "Select Count(*) from RoomOcc where  (LOGSITE_CODE='" & MemVar_1F95078 & "') and RoomNo='", var_D4, -1)
  loc_136594B: unk_4FADED.Execute var_DC & var_A8 & "'", 0, var_F0
  loc_1365953: var_100 = var_A4.Text.Fields
  loc_136595B:  = var_DC.Item()
  loc_1365963:  = var_F0.Value
  loc_1365994: If (var_100 > 0) Then
  loc_13659AA:   var_D4 = "Sorry! Related Record Exist "
  loc_13659B0:   MsgBox(var_D4, &H40, var_100, var_120, var_140)
  loc_13659C0:   Exit Sub
  loc_13659C1: End If
  loc_13659FC: Set var_A0 = Me.Txt
  loc_1365A02: Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(&H21), var_A4, var_A8, "Select Count(*) from Booking where (LOGSITE_CODE='" & MemVar_1F95078 & "') and RoomNo='", var_D4, -1)
  loc_1365A23: unk_4FADED.Execute var_DC & var_A8 & "'", 0, var_F0
  loc_1365A2B: var_100 = var_A4.Text.Fields
  loc_1365A33:  = var_DC.Item()
  loc_1365A3B:  = var_F0.Value
  loc_1365A6C: If (var_100 > 0) Then
  loc_1365A88:   MsgBox("Sorry! Related Record Exist ", &H40, var_100, var_120, var_140)
  loc_1365A98:   Exit Sub
  loc_1365A99: End If
  loc_1365AD0: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_120, var_140) = 6) Then
  loc_1365AD5:   var_96 = 0
  loc_1365AE1:   unk_4FADED.BeginTrans var_144
  loc_1365AE8:   var_96 = &HFF
  loc_1365AFC:   var_94 = Me.Bookmark 'Variant
  loc_1365B56:   unk_4FADED.Execute CStr("Delete From RoomMast Where Code='" & Me.Fields.Item("SearchCode").Value & "' AND TYPE='RO'"), var_140, -1
  loc_1365BA1:   var_16C = 0
  loc_1365BB4:   var_164 = 0
  loc_1365BBF:   var_160 = 0
  loc_1365BD2:   var_158 = 0
  loc_1365BDD:   var_154 = 0
  loc_1365BF0:   var_14C = 0
  loc_1365C35:   Proc_154_5_10E3BD4(MemVar_1F95044, "RoomMast", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), "Type", &HC8, "RO")
  loc_1365CB3:   unk_4FADED.Execute CStr("Delete From RoomMast1 Where RoomCode='" & Me.Fields.Item("SearchCode").Value & "'"), var_140, -1
  loc_1365CFE:   var_16C = 0
  loc_1365D11:   var_164 = 0
  loc_1365D1C:   var_160 = 0
  loc_1365D2F:   var_158 = 0
  loc_1365D3A:   var_154 = 0
  loc_1365D4D:   var_14C = 0
  loc_1365D96:   Proc_154_5_10E3BD4(MemVar_1F95044, "RoomMast1", "RoomCode", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1365E06:   var_120 = "Delete From RateList Where RoomNo='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_1365E14:   unk_4FADED.Execute CStr(var_120), var_140, -1
  loc_1365E5F:   var_16C = 0
  loc_1365E72:   var_164 = 0
  loc_1365E7D:   var_160 = 0
  loc_1365E90:   var_158 = 0
  loc_1365E9B:   var_154 = 0
  loc_1365EAE:   var_14C = 0
  loc_1365EEE:   var_9C = "RateList"
  loc_1365EF7:   Proc_154_5_10E3BD4(MemVar_1F95044, var_9C, "RoomNo", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_1365F25:   unk_4FADED.CommitTrans
  loc_1365F2C:   var_96 = 0
  loc_1365F3A:   Me.Requery -1
  loc_1365F4A:   Me.Requery -1
  loc_1365F6A:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_1365F77:     Me.Bookmark = var_94
  loc_1365F7F:   Else
  loc_1365F93:     If (Me.EOF = 0) Then
  loc_1365F9C:       Me.MoveLast
  loc_1365FA1:     End If
  loc_1365FA1:   End If
  loc_1365FA1:   Call Proc_26_42_17CA254(var_96, var_14C, 0, var_154, var_158)
  loc_1365FC2:   Proc_5_0_1107AD0(&HFF, Me, global_68, 0)
  loc_1365FCA: End If
  loc_1365FCA: Exit Sub
  loc_1365FCB: ' Referenced from: 13657FC
  loc_1365FD1: If (var_96 = &HFF) Then
  loc_1365FDA:   unk_4FADED.RollbackTrans
  loc_1365FDF: End If
  loc_1365FE7: Set var_A0 = Err()
  loc_1365FED: Call 0.Method_arg_2C (var_9C, 0, var_160)
  loc_136600E: MsgBox(CVar(var_9C), &H30, " Deletion Error ", var_120, var_140)
  loc_1366021: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FA5038
  'Data Table: 4FADE0
  Dim var_88 As Label
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_FA4EB8: On Error Goto loc_FA4FF5
  loc_FA4EC8: Me.LblUser.Caption = vbNullString
  loc_FA4EDD: Me.LblLDt.Caption = vbNullString
  loc_FA4EF3: If (Proc_183_55_FE8490(global_68) = &HFF) Then
  loc_FA4EF6:   Exit Sub
  loc_FA4EF7: End If
  loc_FA4F0E: If (Me.RecordCount > 0) Then
  loc_FA4F34:   Call Proc_26_43_E8B0FC(Proc_5_1_100EC1C("EDIT", Me))
  loc_FA4F4D:   Set var_88 = Me.Txt
  loc_FA4F53:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H21), var_98)
  loc_FA4F5B:   var_90 = var_98.Text
  loc_FA4F66:   global_84 = var_90
  loc_FA4F81:   Set var_88 = Me.Txt
  loc_FA4F87:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H21), var_98)
  loc_FA4F8F:   var_98.Enabled = False
  loc_FA4FA6:   Set var_88 = Me.Txt
  loc_FA4FAC:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FA4FB4:   var_98.SetFocus
  loc_FA4FC3: Else
  loc_FA4FE4:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_FA4FF4: End If
  loc_FA4FF4: Exit Sub
  loc_FA4FF5: ' Referenced from: FA4EB8
  loc_FA4FFD: Set var_88 = Err()
  loc_FA5003: Call 0.Method_arg_2C (var_90)
  loc_FA5024: MsgBox(CVar(var_90), &H30, " Editing Error ", var_F8, var_118)
  loc_FA5037: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16768
  'Data Table: 4FADE0
  loc_E1675D: Me.Global.Unload Me
  loc_E16765: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC8C8C
  'Data Table: 4FADE0
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC8BEC: On Error Goto loc_EC8C84
  loc_EC8C06: If (Me.RecordCount <= 0) Then
  loc_EC8C0F:   var_B8 = "Information"
  loc_EC8C2A:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC8C3A:   Exit Sub
  loc_EC8C3B: End If
  loc_EC8C42: var_10C = "Select RoomMast.Code as SearchCode,RoomMast.Code, RoomMast.Name,RoomCat.Name Category,Depart.Name as [Maid Station],RoomMast.MultPer [Max Person],RoomMast.InclCount [Incl. Room Count],RoomMast.DoorLockID FROM RoomMast Left Join RoomCat On RoomCat.Code=RoomMast.RoomCat Left Join Depart ON RoomMast.MaidStation = Depart.Code where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_EC8C49: MemVar_1F950E4 = var_10C & "' or RoomMast.LOGSITE_CODE='HO') and RoomMast.Type in ('RO','CO')  Order by RoomMast.Name"
  loc_EC8C56: MemVar_1F95120 = Me
  loc_EC8C63: Proc_6_126_F1C850("1000,1600,2400,2400,800,1000,1500")
  loc_EC8C7E: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC8C83: Exit Sub
  loc_EC8C84: ' Referenced from: EC8BEC
  loc_EC8C84: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC8C89: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2D4E8
  'Data Table: 4FADE0
  loc_E2D4D8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D4E0: Call Proc_26_42_17CA254(global_68)
  loc_E2D4E5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2D488
  'Data Table: 4FADE0
  loc_E2D478: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D480: Call Proc_26_42_17CA254(global_68)
  loc_E2D485: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D428
  'Data Table: 4FADE0
  loc_E2D418: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D420: Call Proc_26_42_17CA254(global_68)
  loc_E2D425: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D3C8
  'Data Table: 4FADE0
  loc_E2D3B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D3C0: Call Proc_26_42_17CA254(global_68)
  loc_E2D3C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '14BBC8C
  'Data Table: 4FADE0
  Dim var_B4 As String
  Dim var_C8 As String
  Dim var_CC As String
  Dim unk_4FADED As Connection15
  Dim var_C0 As Variant
  Dim var_AC As Recordset15
  Dim var_A8 As Recordset15
  Dim var_100 As Recordset15
  Dim var_E0 As Variant
  Dim var_BC As Fields15
  Dim var_110 As String
  Dim var_F0 As Variant
  Dim var_120 As Variant
  Dim var_140 As String
  Dim var_C4 As String
  Dim var_B0 As Recordset15
  Dim var_9C As Recordset15
  Dim var_FA As Integer
  loc_14BAFA8: On Error Goto loc_14BBC83
  loc_14BAFAF: Set var_9C = New 
  loc_14BAFBA: Set var_9C = Proc_3_21_10D001C(var_9C)
  loc_14BAFD1: var_B4 = "SELECT R.Code AS RoomCode, R.Name AS RoomName, R.Extension, R.MultPer, R.MaidStation, R.InclCount, roomcat.Name AS Roomcategory FROM (RoomMast AS R LEFT JOIN roomcat ON R.RoomCat = roomcat.Code)" & "where (R.LOGSITE_CODE='"
  loc_14BAFF0: Set var_BC = Me.Txt
  loc_14BAFF6: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H21), var_C0, var_C4, var_B4 & MemVar_1F95078 & "' or R.LOGSITE_CODE='HO') and R.code='")
  loc_14BAFFE: var_F0 = Me.Txt.Text
  loc_14BB007: var_CC = -1 & var_C4
  loc_14BB017: unk_4FADED.Execute var_CC & "'", var_F4, 
  loc_14BB022: Set var_A8 = var_F4
  loc_14BB047: var_B4 = "SELECT RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT LEFT JOIN roomcat ON (RT.RoomCat = Roomcat.Code) " & "where (RT.LOGSITE_CODE='"
  loc_14BB06C: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H21), var_C0)
  loc_14BB074: var_C4 = var_C0.Text
  loc_14BB0B1: unk_4FADED.Execute var_B4 & MemVar_1F95078 & "' or RT.LOGSITE_CODE='HO') and RT.ROOMNO='" & var_C4 & "' AND RT.CODE='*'", var_F0, -1
  loc_14BB0D9: If (Me.Txt.RecordCount <= 0) Then
  loc_14BB0E3:   var_B4 = "SELECT roomcat.Name AS Roomcategory, RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT LEFT JOIN roomcat ON (RT.RoomCat = Roomcat.Code)" & "where (RT.LOGSITE_CODE='"
  loc_14BB0F1:   var_C8 = var_B4 & MemVar_1F95078 & "' or LOGSITE_CODE='HO') AND RT.ROOMCat='"
  loc_14BB102:   Set var_BC = Me.Txt
  loc_14BB108:   Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(1), var_C0, var_C4)
  loc_14BB110:   var_C8 = var_C0.Tag
  loc_14BB14D:   unk_4FADED.Execute var_BC & var_C4 & "' AND RT.CODE='*' AND RT.RoomNo ='*****'", var_F0, -1
  loc_14BB158:   Set var_AC = var_BC
  loc_14BB161: End If
  loc_14BB175: If (var_A8.RecordCount > 0) Then
  loc_14BB18C:   If (var_AC.RecordCount > 0) Then
  loc_14BB192:     var_AC.MoveFirst
  loc_14BB197:     ' Referenced from: 14BB721
  loc_14BB1A6:     If Not(var_AC.EOF) Then
  loc_14BB1AC:       Set var_100 = var_9C 
  loc_14BB1BB:       var_100.AddNew var_E0, var_110
  loc_14BB1E2:       var_F0 = var_A8.Fields.Item("RoomCode").Value
  loc_14BB1F4:       var_100.Collect = "Code"
  loc_14BB225:       var_F0 = var_A8.Fields.Item("RoomName").Value
  loc_14BB237:       var_100.Collect = "RoomName"
  loc_14BB268:       var_F0 = var_A8.Fields.Item("RoomCategory").Value
  loc_14BB27A:       var_100.Collect = "RoomCategory"
  loc_14BB2AB:       var_F0 = var_A8.Fields.Item("Extension").Value
  loc_14BB2BD:       var_100.Collect = "Extention"
  loc_14BB2EE:       var_F0 = var_A8.Fields.Item("MultPer").Value
  loc_14BB300:       var_100.Collect = "MultiPer"
  loc_14BB337:       var_120 = CVar(Proc_6_38_E69628(CVar(var_A8.Fields.Item("MaidStation")), CVar(var_A8.Fields.Item("MaidStation")), CVar(var_A8.Fields.Item("MaidStation")), CVar(var_A8.Fields.Item("MaidStation")))) 'String
  loc_14BB344:       var_100.Collect = "MaidStation"
  loc_14BB3B9:       var_100.Collect = "InclCount"
  loc_14BB3FA:       var_120 = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("OccType")), IIf((var_A8.Fields.Item("InclCount").Value = "Y"), "Yes", "No"), var_120)) 'String
  loc_14BB407:       var_100.Collect = "OccType"
  loc_14BB43C:       Proc_6_39_E7D3A0(var_120, CVar(var_AC.Fields.Item("Rate1")), var_120)
  loc_14BB46E:       var_100.Collect = "Rate1"
  loc_14BB4A7:       Proc_6_39_E7D3A0(var_120, CVar(var_AC.Fields.Item("Rate2")), Format(var_120, "0.00"), 1)
  loc_14BB4D9:       var_100.Collect = "Rate2"
  loc_14BB512:       Proc_6_39_E7D3A0(var_120, CVar(var_AC.Fields.Item("Rate3")), Format(var_120, "0.00"), 1, 1)
  loc_14BB544:       var_100.Collect = "Rate3"
  loc_14BB57D:       Proc_6_39_E7D3A0(var_120, CVar(var_AC.Fields.Item("Rate4")), Format(var_120, "0.00"), 1, 1)
  loc_14BB5AF:       var_100.Collect = "Rate4"
  loc_14BB5E8:       Proc_6_39_E7D3A0(var_120, CVar(var_AC.Fields.Item("Rate5")), Format(var_120, "0.00"), 1, 1)
  loc_14BB61A:       var_100.Collect = "Rate5"
  loc_14BB653:       Proc_6_39_E7D3A0(var_120, CVar(var_AC.Fields.Item("RateW")), Format(var_120, "0.00"), 1, 1)
  loc_14BB685:       var_100.Collect = "WeekRate"
  loc_14BB69B:       var_E0 = "RateM"
  loc_14BB6AF:       var_C0 = var_AC.Fields.Item(var_E0)
  loc_14BB6B7:       var_F0 = CVar(var_C0) 'Address
  loc_14BB6BE:       Proc_6_39_E7D3A0(var_120, var_F0, Format(var_120, "0.00"), 1, 1)
  loc_14BB6CD:       var_110 = "0.00"
  loc_14BB6D2:       var_130 = var_110
  loc_14BB6DE:       var_150 = Format(var_120, var_130)
  loc_14BB6E7:       var_140 = "MonRate"
  loc_14BB6F0:       var_100.Collect = var_140
  loc_14BB70E:       var_100.Update var_E0, var_110
  loc_14BB715:       Set var_100 = Nothing 
  loc_14BB71C:       var_AC.MoveNext
  loc_14BB721:       GoTo loc_14BB197
  loc_14BB724:     End If
  loc_14BB724:   End If
  loc_14BB724: End If
  loc_14BB742: Set var_BC = Me.Txt
  loc_14BB748: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(&H21), var_C0, var_B4, "Select ROOMFEATURE.Name as RoomFeature From RoomMast1 R1 left join ROOMFEATURE on R1.RoomFeat=ROOMFEATURE.code where R1.RoomCode='", var_F0, -1, var_F4)
  loc_14BB750: var_150 = var_C0.Text
  loc_14BB769: unk_4FADED.Execute 1 & var_B4 & "'", 1, 1
  loc_14BB774: Set var_B0 = var_F4
  loc_14BB7A0: If (var_B0.RecordCount > 0) Then
  loc_14BB7A6:   var_B0.MoveFirst
  loc_14BB7AB:   ' Referenced from: 14BB829
  loc_14BB7BA:   If Not(var_B0.EOF) Then
  loc_14BB7C8:     var_9C.AddNew var_E0, var_110
  loc_14BB7D0:     var_E0 = "RoomFeature"
  loc_14BB7E4:     var_C0 = var_B0.Fields.Item(var_E0)
  loc_14BB7F5:     var_120 = CVar(Proc_6_38_E69628(CVar(var_C0), CVar(var_C0))) 'String
  loc_14BB7F9:     var_110 = "RoomFeature"
  loc_14BB802:     var_9C.Collect = var_110
  loc_14BB81C:     var_9C.Update var_E0, var_110
  loc_14BB824:     var_B0.MoveNext
  loc_14BB829:     GoTo loc_14BB7AB
  loc_14BB82C:   End If
  loc_14BB82C: End If
  loc_14BB832: var_F8 = var_9C.RecordCount
  loc_14BB840: If (var_F8 <= 0) Then
  loc_14BB849:   Call 0.Method_arg_50 (var_B4, var_120)
  loc_14BB864:   var_F0 = "** No Records Found to Print **"
  loc_14BB86A:   MsgBox(var_F0, &H40, CVar(var_B4), var_130, var_150)
  loc_14BB87A:   Exit Sub
  loc_14BB87B: End If
  loc_14BB891: Set var_BC = var_9C 
  loc_14BB89D: var_FA = CreateFieldDefFile(var_BC, MemVar_1F950B4 & "\RoomMast.ttx", &HFF)
  loc_14BB8A7: Set var_9C = var_BC
  loc_14BB8AD: var_E0 = CVar(var_FA) 'Integer
  loc_14BB8B0: var_98 = var_E0 'Variant
  loc_14BB8CC: var_B4 = MemVar_1F950B4 & "\RoomMast.RPT"
  loc_14BB8D5: Call 0.Method_arg_1C (var_B4, var_E0, var_BC)
  loc_14BB8E0: MemVar_1F951E8 = var_BC
  loc_14BB8FB: Call 0.Method_arg_90 (var_BC, var_F8, var_9E, 1)
  loc_14BB903: Call 0.Method_arg_24 (var_FA, var_F0)
  loc_14BB90F: For var_194 =  To CInt(var_F8): var_BC = var_194 'Integer
  loc_14BB928:   Call 0.Method_arg_90 (var_BC, CLng(var_9E))
  loc_14BB930:   Call 0.Method_arg_20 (var_C0)
  loc_14BB938:   Call 0.Method_arg_30 (var_B4)
  loc_14BB940:   var_198 = var_B4
  loc_14BB952:   If (var_198 = "Title") Then
  loc_14BB968:     Call 0.Method_arg_90 (var_BC, CLng(var_9E))
  loc_14BB970:     Call 0.Method_arg_20 (var_C0)
  loc_14BB978:     Call 0.Method_arg_38 ("'ROOM MASTER'")
  loc_14BB987:   Else
  loc_14BB98F:     If (var_198 = "rate1") Then
  loc_14BB9A1:       Set var_BC = Me.LblName
  loc_14BB9A7:       Call 0.Method_TopCtrl1_UnknownEvent_140 (9, var_C0)
  loc_14BB9D2:       Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14BB9DA:       Call 0.Method_arg_20 (var_19C)
  loc_14BB9E2:       Call 0.Method_arg_38 ("'" & var_C0.Caption & "'")
  loc_14BB9FE:     Else
  loc_14BBA06:       If (var_198 = "rate2") Then
  loc_14BBA18:         Set var_BC = Me.LblName
  loc_14BBA1E:         Call 0.Method_TopCtrl1_UnknownEvent_140 (&HA, var_C0)
  loc_14BBA49:         Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14BBA51:         Call 0.Method_arg_20 (var_19C)
  loc_14BBA59:         Call 0.Method_arg_38 ("'" & var_C0.Caption & "'")
  loc_14BBA75:       Else
  loc_14BBA7D:         If (var_198 = "rate3") Then
  loc_14BBA8F:           Set var_BC = Me.LblName
  loc_14BBA95:           Call 0.Method_TopCtrl1_UnknownEvent_140 (&HB, var_C0)
  loc_14BBAC0:           Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14BBAC8:           Call 0.Method_arg_20 (var_19C)
  loc_14BBAD0:           Call 0.Method_arg_38 ("'" & var_C0.Caption & "'")
  loc_14BBAEC:         Else
  loc_14BBAF4:           If (var_198 = "rate4") Then
  loc_14BBB06:             Set var_BC = Me.LblName
  loc_14BBB0C:             Call 0.Method_TopCtrl1_UnknownEvent_140 (&HC, var_C0)
  loc_14BBB37:             Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14BBB3F:             Call 0.Method_arg_20 (var_19C)
  loc_14BBB47:             Call 0.Method_arg_38 ("'" & var_C0.Caption & "'")
  loc_14BBB63:           Else
  loc_14BBB6B:             If (var_198 = "rate5") Then
  loc_14BBB7D:               Set var_BC = Me.LblName
  loc_14BBB83:               Call 0.Method_TopCtrl1_UnknownEvent_140 (&HD, var_C0)
  loc_14BBB8B:               var_B4 = var_C0.Caption
  loc_14BBBAE:               Call 0.Method_arg_90 (var_F4, CLng(var_9E))
  loc_14BBBB6:               Call 0.Method_arg_20 (var_19C)
  loc_14BBBBE:               Call 0.Method_arg_38 ("'" & var_B4 & "'")
  loc_14BBBD7:             End If
  loc_14BBBD7:           End If
  loc_14BBBD7:         End If
  loc_14BBBD7:       End If
  loc_14BBBD7:     End If
  loc_14BBBD7:   End If
  loc_14BBBDA: Next var_194 'Integer
  loc_14BBBF8: Call 0.Method_arg_64 (var_BC, CVar(var_9C))
  loc_14BBC00: Call 0.Method_arg_2C (var_110)
  loc_14BBC0E: Call 0.Method_arg_150 (var_140)
  loc_14BBC19: Call 0.Method_arg_50 (var_B4)
  loc_14BBC23: Set var_C0 = Nothing
  loc_14BBC3D: Set var_BC = MemVar_1F951E8 
  loc_14BBC49: Proc_6_99_1484404(var_BC, 0, var_B4)
  loc_14BBC54: MemVar_1F951E8 = var_BC
  loc_14BBC67: Set var_9C = Nothing
  loc_14BBC6F: Set var_AC = Nothing
  loc_14BBC77: Set var_B0 = Nothing
  loc_14BBC7F: Set var_A8 = Nothing
  loc_14BBC82: Exit Sub
  loc_14BBC83: ' Referenced from: 14BAFA8
  loc_14BBC83: Proc_6_60_E63754(&HFF)
  loc_14BBC88: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E3F020
  'Data Table: 4FADE0
  Dim Me As Recordset15
  loc_E3EFF7: Me.Requery -1
  loc_E3F007: Me.Requery -1
  loc_E3F017: Me.Requery -1
  loc_E3F01C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '17FADD0
  'Data Table: 4FADE0
  Dim unk_4FADED As Connection15
  Dim var_C0 As String
  Dim var_D0 As String
  Dim var_B8 As Variant
  Dim var_D4 As String
  Dim var_118 As Variant
  Dim var_F8 As Variant
  Dim var_128 As Variant
  Dim var_E8 As Variant
  Dim var_138 As Variant
  Dim var_CC As String
  Dim var_164 As Variant
  Dim var_18C As TextBox
  Dim var_1D4 As TextBox
  Dim var_7B4 As Double
  Dim var_21C As TextBox
  Dim var_278 As TextBox
  Dim var_2D4 As Variant
  Dim Me As Recordset15
  Dim var_390 As Fields15
  Dim var_3A4 As Variant
  Dim var_61C As TextBox
  Dim var_7BC As Double
  Dim var_158 As Variant
  Dim var_148 As Variant
  Dim var_19C As Variant
  Dim var_1BC As Variant
  Dim var_1CC As Variant
  Dim var_214 As Variant
  Dim var_270 As Variant
  Dim var_28C As Variant
  Dim var_36C As Variant
  Dim var_38C As Variant
  Dim var_3E4 As Variant
  Dim var_43C As Variant
  Dim var_494 As Variant
  Dim var_5C4 As Variant
  Dim var_70C As Variant
  Dim var_788 As String
  Dim var_BC As Variant
  Dim var_15C As Variant
  Dim var_108 As Variant
  Dim var_AE As Integer
  Dim var_220 As String
  Dim var_7DC As Double
  Dim var_7E4 As Double
  Dim var_2C4 As TextBox
  Dim var_7EC As Double
  Dim var_32C As TextBox
  Dim var_7F4 As Double
  Dim var_7FC As Double
  Dim var_240 As Variant
  Dim var_2F4 As Variant
  Dim var_B4 As MSHFlexGrid
  loc_17F8D28: On Error Goto loc_17FAD7B
  loc_17F8D2F: var_86 = CByte(0) 'Byte
  loc_17F8D3E: Set var_B4 = Me.Txt
  loc_17F8D44: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21))
  loc_17F8D55: Set var_BC = var_B8
  loc_17F8D6D: If (Proc_6_27_EA61EC(var_BC, "Room No.") = 0) Then
  loc_17F8D77:   Call Txt_GotFocus(CInt(&H21))
  loc_17F8D7C:   Exit Sub
  loc_17F8D7D: End If
  loc_17F8D80: Call Proc_26_40_10765A8(var_C2)
  loc_17F8D8B: If (var_C2 = &HFF) Then
  loc_17F8D8E:   Exit Sub
  loc_17F8D8F: End If
  loc_17F8D98: unk_4FADED.BeginTrans var_C8
  loc_17F8DA1: var_86 = CByte(1) 'Byte
  loc_17F8DD1: Set var_B4 = Me.Txt
  loc_17F8DD7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, var_CC, "Delete From RateList Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RoomNO='")
  loc_17F8DDF: var_F8 = var_B8.Text
  loc_17F8DE8: var_D4 = -1 & var_CC
  loc_17F8DF8: unk_4FADED.Execute var_D4 & "' And Code='*'", var_BC, var_B8
  loc_17F8E3F: Set var_B4 = Me.Txt
  loc_17F8E45: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, CVar("Delete From ROOMMast1 Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and RoomCode='"))
  loc_17F8E73: unk_4FADED.Execute CStr(var_158 & Trim(CVar(var_B8)) & "'"), -1, var_BC
  loc_17F8EBE: Set var_B4 = Me.Txt
  loc_17F8EC4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, CVar("Delete From ROOMMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  and Code='"))
  loc_17F8EF2: unk_4FADED.Execute CStr(var_158 & Trim(CVar(var_B8)) & "' AND TYPE='RO'"), -1, var_BC
  loc_17F8F22: Set var_B4 = Me.Txt
  loc_17F8F28: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_B8)
  loc_17F8F40: Set var_BC = Me.Txt
  loc_17F8F46: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21))
  loc_17F8F4E: var_F8 = CVar(var_15C) 'Address
  loc_17F8F68: Set var_160 = Me.Txt
  loc_17F8F6E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_164)
  loc_17F8F89: Set var_188 = Me.Txt
  loc_17F8F8F: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_18C)
  loc_17F8FAA: Set var_1D0 = Me.Txt
  loc_17F8FB0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_1D4)
  loc_17F8FC5: var_7B4 = Val(var_1D4.Text)
  loc_17F8FD6: Set var_218 = Me.Txt
  loc_17F8FDC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_21C, var_220)
  loc_17F8FF2: Proc_6_17_EAAE40(var_240, CVar(var_220))
  loc_17F9005: Set var_274 = Me.Txt
  loc_17F900B: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_278)
  loc_17F9013: var_27C = var_278.Tag
  loc_17F9023: Set var_2C0 = Me.Txt
  loc_17F9029: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_2C4)
  loc_17F9058: Set var_328 = Me.Txt
  loc_17F905E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_32C)
  loc_17F909F: var_3A4 = Me.Fields.Item("TaxStru")
  loc_17F90B7: Set var_3E8 = Me.Txt
  loc_17F90BD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_3EC)
  loc_17F90DC: Set var_440 = Me.Txt
  loc_17F90E2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_444)
  loc_17F9101: Set var_498 = Me.Txt
  loc_17F9107: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_49C)
  loc_17F9126: Set var_4F0 = Me.Txt
  loc_17F912C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H20), var_4F4)
  loc_17F914E: Proc_6_7_F26918(var_5E4, Date)
  loc_17F9161: Set var_618 = Me.Txt
  loc_17F9167: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_61C)
  loc_17F916F: var_620 = var_61C.Text
  loc_17F917C: var_7BC = Val(var_620)
  loc_17F919E: var_66C = Me.Picture1.Tag
  loc_17F91D1: Set var_730 = Me.Txt
  loc_17F91D7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H3A), var_734)
  loc_17F91FF: var_CC = "Insert Into RoomMast(Type,Code,Name,RoomCat,MultPer,RevCode,MaidStation,InclCount,RestCode,TaxStru,ConRoom1,ConRoom2,ConRoom3,ConRoom4,Site_Code,U_Name,U_EntDt,U_AE,Extension,PicPath,LogSite_Code,DoorLockID)Values('" & var_B8.Tag
  loc_17F9206: var_118 = CVar(var_CC & "','") 'String
  loc_17F925F: var_270 = var_118 & Trim(var_F8) & "','" & CVar(var_164.Text) & "','" & CVar(var_18C.Tag) & "'," & CVar(var_21C.Tag) & "," & var_240 & ",'" 
  loc_17F9292: var_38C = var_270 & CVar(var_27C) & "','" & Left(Trim(CVar(var_2C4)), 1) & "','" & Left(Ucase(CVar(var_32C)), 4) & "','" 
  loc_17F92A2: var_3E4 = var_38C & var_3A4.Value & "','" 
  loc_17F92C2: var_494 = var_3E4 & Trim(CVar(var_3EC)) & "','" & Trim(CVar(var_444)) & "','" 
  loc_17F9308: var_5C4 = var_494 & Trim(CVar(var_49C)) & "','" & Trim(CVar(var_4F4)) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_17F9346: var_70C = var_5C4 & var_5E4 & ",'A'," & CVar(var_7BC) & ",'" & IIf((Me.Picture1.Visible = &HFF), CVar(var_66C), vbNullString) & "','" & CVar(MemVar_1F95078) 
  loc_17F9363: var_788 = CStr(var_70C & "','" & Trim(CVar(var_734)) & "')")
  loc_17F936D: unk_4FADED.Execute var_788, var_7A8, -1
  loc_17F944F: Set var_B4 = Me.TopCtrl1
  loc_17F9455: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7AC)
  loc_17F945D: var_C0 = CStr(var_7BC)
  loc_17F946E: If (var_C0 = "Add") Then
  loc_17F949B:   Set var_B4 = Me.Txt
  loc_17F94A1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_C0, "Select Count(*) from RoomMast where RoomCat='", var_F8, -1)
  loc_17F94A9:   var_BC = var_B8.Tag
  loc_17F94B9:   var_D0 = var_15C & var_C0 & "'"
  loc_17F94C2:   unk_4FADED.Execute var_D0, 0, var_160
  loc_17F94CA:   var_15C = var_BC.Fields
  loc_17F94D2:    = var_15C.Item()
  loc_17F94E1:   Proc_6_39_E7D3A0(var_118)
  loc_17F94EA:   var_AE = CInt(var_118)
  loc_17F951F:   var_C0 = CStr(var_AE)
  loc_17F953B:   Set var_B4 = Me.Txt
  loc_17F9541:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_D0, "Update Roomcat set NoRooms=" & var_C0 & " Where Code='", var_F8)
  loc_17F9549:   -1 = var_B8.Tag
  loc_17F9562:   unk_4FADED.Execute var_BC & var_D0 & "'", var_AE, CVar(var_160)
  loc_17F9585: Else
  loc_17F95AF:   Set var_B4 = Me.Txt
  loc_17F95B5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_C0, "Select Count(*) from RoomMast where RoomCat='", var_F8)
  loc_17F95BD:   -1 = var_B8.Tag
  loc_17F95CD:   var_D0 = var_BC & var_C0 & "'"
  loc_17F95D6:   unk_4FADED.Execute var_D0, var_15C, 0
  loc_17F95E6:    = var_15C.Item()
  loc_17F95F5:   Proc_6_39_E7D3A0(var_118)
  loc_17F95FE:   var_AE = CInt(var_118)
  loc_17F964F:   Set var_B4 = Me.Txt
  loc_17F9655:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8, var_D0, "Update Roomcat set NoRooms=" & CStr(var_AE) & " Where Code='", var_F8)
  loc_17F965D:   -1 = var_B8.Tag
  loc_17F966D:   var_220 = var_BC & var_D0 & "'"
  loc_17F9676:   unk_4FADED.Execute var_220, var_AE, CVar(var_BC.Fields)
  loc_17F9696: End If
  loc_17F96A4: Set var_B4 = Me.Txt
  loc_17F96AA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_B8)
  loc_17F96D2: Set var_BC = Me.Txt
  loc_17F96D8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_15C)
  loc_17F9701: Set var_160 = Me.Txt
  loc_17F9707: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_164)
  loc_17F9730: Set var_188 = Me.Txt
  loc_17F9736: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_18C)
  loc_17F975F: Set var_1D0 = Me.Txt
  loc_17F9765: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_1D4)
  loc_17F97A4: If (((((CDbl(Val(var_B8.Text)) <> CDbl(0)) Or (CDbl(Val(var_15C.Text)) <> CDbl(0))) Or (CDbl(Val(var_164.Text)) <> CDbl(0))) Or (CDbl(Val(var_18C.Text)) <> CDbl(0))) Or (CDbl(Val(var_1D4.Text)) <> CDbl(0))) Then
  loc_17F97B5:   Set var_B4 = Me.Txt
  loc_17F97BB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_17F97C3:   var_C0 = var_B8.Tag
  loc_17F97E4:   Set var_BC = Me.Txt
  loc_17F97EA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_15C)
  loc_17F97F2:   var_CC = var_15C.Text
  loc_17F9803:   Set var_160 = Me.LblName
  loc_17F9809:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_164)
  loc_17F9824:   Set var_188 = Me.Txt
  loc_17F982A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_18C)
  loc_17F983F:   var_7B4 = Val(var_18C.Text)
  loc_17F9850:   Set var_1D0 = Me.Txt
  loc_17F9856:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1D4)
  loc_17F986B:   var_7BC = Val(var_1D4.Text)
  loc_17F987C:   Set var_218 = Me.Txt
  loc_17F9882:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_21C, var_220)
  loc_17F9897:   var_7DC = Val(var_220)
  loc_17F98A8:   Set var_274 = Me.Txt
  loc_17F98AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_278, var_27C)
  loc_17F98C3:   var_7E4 = Val(var_27C)
  loc_17F98D4:   Set var_2C0 = Me.Txt
  loc_17F98DA:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_2C4, var_620)
  loc_17F98EF:   var_7EC = Val(var_620)
  loc_17F9900:   Set var_328 = Me.Txt
  loc_17F9906:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_32C, var_66C)
  loc_17F991B:   var_7F4 = Val(var_66C)
  loc_17F992C:   Set var_390 = Me.Txt
  loc_17F9932:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_3A4, var_788)
  loc_17F9947:   var_7FC = Val(var_788)
  loc_17F9958:   Proc_6_7_F26918(var_38C, Date)
  loc_17F9961:   Set var_3E8 = Me.TopCtrl1
  loc_17F9967:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7FC)
  loc_17F99AB:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_17F9A01:   var_214 = var_E8 & Trim(CVar(var_C0)) & "','" & CVar(var_CC) & "','*','" & CVar(var_164.Caption) & "'," & CVar(var_7B4) & "," & CVar(var_21C.Text) 
  loc_17F9A65:   var_2F4 = var_214 & "," & CVar(var_278.Text) & "," & CVar(var_2C4.Text) & "," & CVar(var_32C.Text) & "," & CVar(var_3A4.Text) & "," & CVar(var_7FC) 
  loc_17F9AAB:   var_43C = var_2F4 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_38C & ",'" & IIf((CStr(var_3E4) = "Add"), "A", "E") 
  loc_17F9AD5:   unk_4FADED.Execute CStr(var_43C & "','" & CVar(MemVar_1F95078) & "')"), var_494, -1
  loc_17F9B75: End If
  loc_17F9B83: Set var_B4 = Me.Txt
  loc_17F9B89: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_B8, var_C0)
  loc_17F9B91: var_3EC = var_B8.Text
  loc_17F9BB1: Set var_BC = Me.Txt
  loc_17F9BB7: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_15C, var_CC)
  loc_17F9BBF: (CDbl(Val(var_C0)) <> CDbl(0)) = var_15C.Text
  loc_17F9BE0: Set var_160 = Me.Txt
  loc_17F9BE6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_164)
  loc_17F9C0F: Set var_188 = Me.Txt
  loc_17F9C15: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_18C)
  loc_17F9C3E: Set var_1D0 = Me.Txt
  loc_17F9C44: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_1D4)
  loc_17F9C83: If ((((var_7B4 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_164.Text)) <> CDbl(0))) Or (CDbl(Val(var_18C.Text)) <> CDbl(0))) Or (CDbl(Val(var_1D4.Text)) <> CDbl(0))) Then
  loc_17F9C94:   Set var_B4 = Me.Txt
  loc_17F9C9A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_17F9CA2:   var_C0 = var_B8.Tag
  loc_17F9CC3:   Set var_BC = Me.Txt
  loc_17F9CC9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_15C)
  loc_17F9CD1:   var_CC = var_15C.Text
  loc_17F9CE2:   Set var_160 = Me.LblName
  loc_17F9CE8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HF, var_164)
  loc_17F9D03:   Set var_188 = Me.Txt
  loc_17F9D09:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_18C)
  loc_17F9D1E:   var_7B4 = Val(var_18C.Text)
  loc_17F9D2F:   Set var_1D0 = Me.Txt
  loc_17F9D35:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_1D4)
  loc_17F9D4A:   var_7BC = Val(var_1D4.Text)
  loc_17F9D5B:   Set var_218 = Me.Txt
  loc_17F9D61:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_21C, var_220)
  loc_17F9D76:   var_7DC = Val(var_220)
  loc_17F9D87:   Set var_274 = Me.Txt
  loc_17F9D8D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_278, var_27C)
  loc_17F9DA2:   var_7E4 = Val(var_27C)
  loc_17F9DB3:   Set var_2C0 = Me.Txt
  loc_17F9DB9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_2C4, var_620)
  loc_17F9DCE:   var_7EC = Val(var_620)
  loc_17F9DDF:   Set var_328 = Me.Txt
  loc_17F9DE5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_32C, var_66C)
  loc_17F9DFA:   var_7F4 = Val(var_66C)
  loc_17F9E0B:   Set var_390 = Me.Txt
  loc_17F9E11:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_3A4, var_788)
  loc_17F9E26:   var_7FC = Val(var_788)
  loc_17F9E37:   Proc_6_7_F26918(var_38C, Date)
  loc_17F9E40:   Set var_3E8 = Me.TopCtrl1
  loc_17F9E46:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7FC)
  loc_17F9E8A:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_17F9EE0:   var_214 = var_E8 & Trim(CVar(var_C0)) & "','" & CVar(var_CC) & "','*','" & CVar(var_164.Caption) & "'," & CVar(var_7B4) & "," & CVar(var_21C.Text) 
  loc_17F9F44:   var_2F4 = var_214 & "," & CVar(var_278.Text) & "," & CVar(var_2C4.Text) & "," & CVar(var_32C.Text) & "," & CVar(var_3A4.Text) & "," & CVar(var_7FC) 
  loc_17F9F8A:   var_43C = var_2F4 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_38C & ",'" & IIf((CStr(var_3E4) = "Add"), "A", "E") 
  loc_17F9FB4:   unk_4FADED.Execute CStr(var_43C & "','" & CVar(MemVar_1F95078) & "')"), var_494, -1
  loc_17FA054: End If
  loc_17FA062: Set var_B4 = Me.Txt
  loc_17FA068: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_B8, var_C0)
  loc_17FA070: var_3EC = var_B8.Text
  loc_17FA090: Set var_BC = Me.Txt
  loc_17FA096: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_15C, var_CC)
  loc_17FA09E: (CDbl(Val(var_C0)) <> CDbl(0)) = var_15C.Text
  loc_17FA0BF: Set var_160 = Me.Txt
  loc_17FA0C5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_164)
  loc_17FA0EE: Set var_188 = Me.Txt
  loc_17FA0F4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_18C)
  loc_17FA11D: Set var_1D0 = Me.Txt
  loc_17FA123: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_1D4)
  loc_17FA162: If ((((var_7B4 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_164.Text)) <> CDbl(0))) Or (CDbl(Val(var_18C.Text)) <> CDbl(0))) Or (CDbl(Val(var_1D4.Text)) <> CDbl(0))) Then
  loc_17FA173:   Set var_B4 = Me.Txt
  loc_17FA179:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_17FA181:   var_C0 = var_B8.Tag
  loc_17FA1A2:   Set var_BC = Me.Txt
  loc_17FA1A8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_15C)
  loc_17FA1B0:   var_CC = var_15C.Text
  loc_17FA1C1:   Set var_160 = Me.LblName
  loc_17FA1C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&H11, var_164)
  loc_17FA1E2:   Set var_188 = Me.Txt
  loc_17FA1E8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_18C)
  loc_17FA1FD:   var_7B4 = Val(var_18C.Text)
  loc_17FA20E:   Set var_1D0 = Me.Txt
  loc_17FA214:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_1D4)
  loc_17FA229:   var_7BC = Val(var_1D4.Text)
  loc_17FA23A:   Set var_218 = Me.Txt
  loc_17FA240:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_21C, var_220)
  loc_17FA255:   var_7DC = Val(var_220)
  loc_17FA266:   Set var_274 = Me.Txt
  loc_17FA26C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_278, var_27C)
  loc_17FA281:   var_7E4 = Val(var_27C)
  loc_17FA292:   Set var_2C0 = Me.Txt
  loc_17FA298:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_2C4, var_620)
  loc_17FA2AD:   var_7EC = Val(var_620)
  loc_17FA2BE:   Set var_328 = Me.Txt
  loc_17FA2C4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_32C, var_66C)
  loc_17FA2D9:   var_7F4 = Val(var_66C)
  loc_17FA2EA:   Set var_390 = Me.Txt
  loc_17FA2F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_3A4, var_788)
  loc_17FA305:   var_7FC = Val(var_788)
  loc_17FA316:   Proc_6_7_F26918(var_38C, Date)
  loc_17FA31F:   Set var_3E8 = Me.TopCtrl1
  loc_17FA325:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7FC)
  loc_17FA369:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_17FA3BF:   var_214 = var_E8 & Trim(CVar(var_C0)) & "','" & CVar(var_CC) & "','*','" & CVar(var_164.Caption) & "'," & CVar(var_7B4) & "," & CVar(var_21C.Text) 
  loc_17FA423:   var_2F4 = var_214 & "," & CVar(var_278.Text) & "," & CVar(var_2C4.Text) & "," & CVar(var_32C.Text) & "," & CVar(var_3A4.Text) & "," & CVar(var_7FC) 
  loc_17FA469:   var_43C = var_2F4 & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_38C & ",'" & IIf((CStr(var_3E4) = "Add"), "A", "E") 
  loc_17FA493:   unk_4FADED.Execute CStr(var_43C & "','" & CVar(MemVar_1F95078) & "')"), var_494, -1
  loc_17FA533: End If
  loc_17FA541: Set var_B4 = Me.Txt
  loc_17FA547: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_B8, var_C0)
  loc_17FA54F: var_3EC = var_B8.Text
  loc_17FA56F: Set var_BC = Me.Txt
  loc_17FA575: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_15C, var_CC)
  loc_17FA57D: (CDbl(Val(var_C0)) <> CDbl(0)) = var_15C.Text
  loc_17FA59E: Set var_160 = Me.Txt
  loc_17FA5A4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_164)
  loc_17FA5CD: Set var_188 = Me.Txt
  loc_17FA5D3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_18C)
  loc_17FA5FC: Set var_1D0 = Me.Txt
  loc_17FA602: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_1D4)
  loc_17FA641: If ((((var_7B4 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_164.Text)) <> CDbl(0))) Or (CDbl(Val(var_18C.Text)) <> CDbl(0))) Or (CDbl(Val(var_1D4.Text)) <> CDbl(0))) Then
  loc_17FA652:   Set var_B4 = Me.Txt
  loc_17FA658:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_B8)
  loc_17FA681:   Set var_BC = Me.Txt
  loc_17FA687:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_15C)
  loc_17FA6A0:   Set var_160 = Me.LblName
  loc_17FA6A6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&H12, var_164)
  loc_17FA6C1:   Set var_188 = Me.Txt
  loc_17FA6C7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_18C)
  loc_17FA6ED:   Set var_1D0 = Me.Txt
  loc_17FA6F3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_1D4)
  loc_17FA708:   var_7BC = Val(var_1D4.Text)
  loc_17FA719:   Set var_218 = Me.Txt
  loc_17FA71F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_21C, var_220)
  loc_17FA734:   var_7DC = Val(var_220)
  loc_17FA745:   Set var_274 = Me.Txt
  loc_17FA74B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_278, var_27C)
  loc_17FA760:   var_7E4 = Val(var_27C)
  loc_17FA771:   Set var_2C0 = Me.Txt
  loc_17FA777:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_2C4, var_620)
  loc_17FA78C:   var_7EC = Val(var_620)
  loc_17FA79D:   Set var_328 = Me.Txt
  loc_17FA7A3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_32C, var_66C)
  loc_17FA7B8:   var_7F4 = Val(var_66C)
  loc_17FA7C9:   Set var_390 = Me.Txt
  loc_17FA7CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_3A4, var_788)
  loc_17FA7E4:   var_7FC = Val(var_788)
  loc_17FA7EA:   var_36C = Date
  loc_17FA7F5:   Proc_6_7_F26918(var_38C, var_36C)
  loc_17FA7FE:   Set var_3E8 = Me.TopCtrl1
  loc_17FA804:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_7FC)
  loc_17FA848:   var_E8 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_17FA88A:   var_1CC = var_E8 & Trim(CVar(var_B8.Tag)) & "','" & CVar(var_15C.Text) & "','*','" & CVar(var_164.Caption) & "'," & CVar(Val(var_18C.Text)) 
  loc_17FA8CF:   var_28C = var_1CC & "," & CVar(var_21C.Text) & "," & CVar(var_278.Text) & "," & CVar(var_2C4.Text) & "," 
  loc_17FA8EE:   var_2D4 = var_28C & CVar(var_32C.Text) & "," & CVar(var_3A4.Text) 
  loc_17FA948:   var_43C = var_2D4 & "," & CVar(var_7FC) & ",'" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," & var_38C & ",'" & IIf((CStr(var_3E4) = "Add"), "A", "E") 
  loc_17FA972:   unk_4FADED.Execute CStr(var_43C & "','" & CVar(MemVar_1F95078) & "')"), var_494, -1
  loc_17FAA12: End If
  loc_17FAA33: var_148 = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_17FAA3D: For var_81C = 1 To "','": var_9C = var_81C 'Variant
  loc_17FAA48:   var_E8 = CVar(CLng(var_9C)) 'Long
  loc_17FAA8A:   Set var_B8 = Me.FGrid1
  loc_17FAAB9:   If (1 And (CStr(var_B8.TextMatrix)) = "ü")) Then
  loc_17FAAC7:     Set var_B4 = Me.Txt
  loc_17FAACD:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, CVar(CLng(var_9C)), (CStr(Me.FGrid1.TextMatrix)) <> vbNullString), 2)
  loc_17FAADC:     var_108 = Trim(CVar(var_B8))
  loc_17FAAE6:     var_1BC = CVar(CLng(var_9C)) 'Long
  loc_17FAAFE:     var_138 = Me.FGrid1.TextMatrix)
  loc_17FAB27:     var_19C = Me.FGrid1.TextMatrix)
  loc_17FAB41:     Proc_6_7_F26918(var_28C, Date, var_19C, 2, CVar(CLng(var_9C)), var_138)
  loc_17FAB4A:     Set var_160 = Me.TopCtrl1
  loc_17FAB50:     Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(0)
  loc_17FAB73:     var_C0 = CStr(var_2D4)
  loc_17FAB94:     var_E8 = "Insert Into RoomMast1(RoomCode,Sno,RoomFeat,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code)Values('"
  loc_17FAB9C:     var_118 = var_E8 & var_108 
  loc_17FABA5:     var_128 = var_118 & "'," 
  loc_17FABEA:     var_240 = var_128 & CVar(CStr(var_138)) & ",'" & CVar(CStr(var_19C)) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) 
  loc_17FAC34:     unk_4FADED.Execute CStr(var_240 & "'," & var_28C & ",'" & IIf((var_C0 = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_36C, -1
  loc_17FAC8C:   End If
  loc_17FAC8F: Next var_81C 'Variant
  loc_17FAC9B: unk_4FADED.CommitTrans
  loc_17FACA5: Set var_AC = Nothing
  loc_17FACAC: var_86 = CByte(0) 'Byte
  loc_17FACBB: Me.Requery -1
  loc_17FACDF: Set var_B4 = Me.Txt
  loc_17FACE5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H21), var_B8, var_C0, "SearchCode='")
  loc_17FACED: 0 = var_B8.Text
  loc_17FAD06: Me.Find 1 & var_C0 & "'", var_E8, 
  loc_17FAD1F: Set var_B4 = Me.TopCtrl1
  loc_17FAD25: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_17FAD3E: If (CStr() = "Add") Then
  loc_17FAD41:   Call TopCtrl1_UnknownEvent_A()
  loc_17FAD46:   Exit Sub
  loc_17FAD47: End If
  loc_17FAD5C: var_C0 = "INI"
  loc_17FAD6A: Call Proc_26_43_E8B0FC(Proc_5_1_100EC1C(var_C0, Me))
  loc_17FAD75: Call Proc_26_42_17CA254(global_68)
  loc_17FAD7A: Exit Sub
  loc_17FAD7B: ' Referenced from: 17F8D28
  loc_17FAD84: If (CInt(var_86) = 1) Then
  loc_17FAD8D:   unk_4FADED.RollbackTrans
  loc_17FAD92: End If
  loc_17FAD9A: Set var_B4 = Err()
  loc_17FADA0: Call 0.Method_arg_2C (var_C0)
  loc_17FADB9: MsgBox(CVar(var_C0), &H10, var_108, var_118, var_128)
  loc_17FADCC: Exit Sub
End Sub

Private Sub Label4_Click() 'DFFB7C
  'Data Table: 4FADE0
  loc_DFFB74: Call Picture1_DblClick()
  loc_DFFB79: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 'F35A34
  'Data Table: 4FADE0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3592B: Me.DGRevenue.Visible = False
  loc_F3594A: If (Me.RecordCount > 0) Then
  loc_F35989:   Set var_B4 = Me.Txt
  loc_F3598F:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(4), var_B8)
  loc_F35997:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F359CA:   var_B0 = Me.Fields.Item("Name")
  loc_F359E9:   Set var_B4 = Me.Txt
  loc_F359EF:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(4), var_B8)
  loc_F359F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F35A0D: End If
  loc_F35A18: Set var_A8 = Me.Txt
  loc_F35A1E: Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(4))
  loc_F35A26: var_B0.SetFocus
  loc_F35A32: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_1F 'EA1B7C
  'Data Table: 4FADE0
  Dim var_A8 As Variant
  loc_EA1AFC: Set var_88 = Me.DGRevenue
  loc_EA1B26: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA1B2E: Set var_BC = Me.DGRevenue
  loc_EA1B6A: Proc_6_138_106E830(Me.DGRevenue, global_72, CInt(4), Me.FGPoint)
  loc_EA1B78: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_9 'F37B34
  'Data Table: 4FADE0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F37A2B: Me.DGCategory.Visible = False
  loc_F37A4A: If (Me.RecordCount > 0) Then
  loc_F37A89:   Set var_B4 = Me.Txt
  loc_F37A8F:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(1), var_B8)
  loc_F37A97:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F37ACA:   var_B0 = Me.Fields.Item("Name")
  loc_F37AE9:   Set var_B4 = Me.Txt
  loc_F37AEF:   Call 0.Method_DGCategory_UnknownEvent_90 (CInt(1), var_B8)
  loc_F37AF7:   var_B8.Text = CStr(var_B0.Value)
  loc_F37B0D: End If
  loc_F37B18: Set var_A8 = Me.Txt
  loc_F37B1E: Call 0.Method_DGCategory_UnknownEvent_90 (CInt(1))
  loc_F37B26: var_B0.SetFocus
  loc_F37B32: Exit Sub
End Sub

Private Sub DGCategory_UnknownEvent_1F 'F0329C
  'Data Table: 4FADE0
  Dim var_9C As DataGrid
  Dim var_BC As Variant
  loc_F031C4: Set var_88 = Me.DGCategory
  loc_F031DD: Me.DGCategory.InsertColumnLabels DGCategory.DispID_1D, 
  loc_F03216: If (CDbl(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF)))) < CDbl(CLng(var_AC))) Then
  loc_F0321D:   Set var_88 = Me.DGCategory
  loc_F03247:   var_BC = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_F0324F:   Set var_9C = Me.DGCategory
  loc_F03264: End If
  loc_F0328B: Proc_6_138_106E830(Me.DGCategory, global_76, CInt(1), Me.FGPoint)
  loc_F03299: Exit Sub
End Sub

Private Sub DGMaid_UnknownEvent_9 'F35FB4
  'Data Table: 4FADE0
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F35EAB: Me.DGMaid.Visible = False
  loc_F35ECA: If (Me.RecordCount > 0) Then
  loc_F35F09:   Set var_B4 = Me.Txt
  loc_F35F0F:   Call 0.Method_DGMaid_UnknownEvent_90 (CInt(5), var_B8)
  loc_F35F17:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F35F4A:   var_B0 = Me.Fields.Item("Name")
  loc_F35F69:   Set var_B4 = Me.Txt
  loc_F35F6F:   Call 0.Method_DGMaid_UnknownEvent_90 (CInt(5), var_B8)
  loc_F35F77:   var_B8.Text = CStr(var_B0.Value)
  loc_F35F8D: End If
  loc_F35F98: Set var_A8 = Me.Txt
  loc_F35F9E: Call 0.Method_DGMaid_UnknownEvent_90 (CInt(5))
  loc_F35FA6: var_B0.SetFocus
  loc_F35FB2: Exit Sub
End Sub

Private Sub DGMaid_UnknownEvent_1F 'F0287C
  'Data Table: 4FADE0
  Dim var_9C As DataGrid
  Dim var_BC As Variant
  loc_F027A4: Set var_88 = Me.DGMaid
  loc_F027BD: Me.DGMaid.InsertColumnLabels DGMaid.DispID_1D, 
  loc_F027F6: If (CDbl(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF)))) < CDbl(CLng(var_AC))) Then
  loc_F027FD:   Set var_88 = Me.DGMaid
  loc_F02827:   var_BC = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_F0282F:   Set var_9C = Me.DGMaid
  loc_F02844: End If
  loc_F0286B: Proc_6_138_106E830(Me.DGMaid, global_80, CInt(5), Me.FGPoint)
  loc_F02879: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F5CF74
  'Data Table: 4FADE0
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F5CE96: If (Me.ListView.ListItems.Count > 0) Then
  loc_F5CE9D:   Set var_A8 = Me.ListView
  loc_F5CEE7:   Set var_C0 = Me.Txt
  loc_F5CEED:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F5CEF5:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F5CF15: End If
  loc_F5CF21: Me.FrmList.Visible = False
  loc_F5CF51: Set var_9C = Me.Txt
  loc_F5CF57: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F5CF5F: var_A8.SetFocus
  loc_F5CF73: Exit Sub
End Sub

Private Sub CmdRate_Click() '15B3CA4
  'Data Table: 4FADE0
  Dim var_9C As Variant
  Dim var_8C As String
  Dim var_174 As String
  Dim var_178 As Variant
  Dim var_180 As Variant
  Dim var_EC As Variant
  Dim var_10C As Variant
  Dim var_12C As Variant
  Dim var_16C As Variant
  Dim unk_4FADED As Connection15
  Dim var_170 As String
  Dim var_188 As Variant
  Dim var_88 As Recordset15
  loc_15B2A48: On Error Goto loc_15B3C9D
  loc_15B2A5F: var_CC = "Rate Category"
  loc_15B2A65: var_9C = "Rate Category (A-Z)"
  loc_15B2AAA: var_8C = var_170
  loc_15B2ABE: If (Trim(InputBox(InputBox(var_9C, var_CC, var_EC, var_10C, var_12C, var_14C, var_16C), var_CC, var_EC, var_10C, var_12C, var_14C, var_16C)) = vbNullString) Then
  loc_15B2AC1:   Exit Sub
  loc_15B2AC2: End If
  loc_15B2ADF: var_8C = var_170
  loc_15B2AE5: var_174 = CStr(Trim(var_8C))
  loc_15B2AF3: Me.Srate.Tag = var_174
  loc_15B2B20: If (Me.Srate.Visible = 0) Then
  loc_15B2B2F:   Me.Srate.Visible = True
  loc_15B2B37: End If
  loc_15B2B42: Set var_178 = Me.Txt
  loc_15B2B48: Call 0.Method_CmdRate_Click0 (CInt(&H24), var_180)
  loc_15B2B50: var_180.SetFocus
  loc_15B2B7C: Set var_178 = Me.Txt
  loc_15B2B82: Call 0.Method_CmdRate_Click0 (CInt(1), var_180, var_170, "Select * from RateList where Roomcat=")
  loc_15B2B8A: var_1DC = var_180.Tag
  loc_15B2B98: Proc_6_17_EAAE40(var_CC, CVar(var_170), -1)
  loc_15B2BB8: Set var_184 = Me.Txt
  loc_15B2BBE: Call 0.Method_CmdRate_Click0 (CInt(&H21), var_188)
  loc_15B2BCD: Proc_6_17_EAAE40(var_14C, CVar(var_188))
  loc_15B2C08: Proc_6_17_EAAE40(var_1B8, Trim(var_174))
  loc_15B2C1E: unk_4FADED.Execute CStr(var_1E0 & var_CC & " And RoomNo=" & var_14C & " And Code=" & var_1B8), var_174, 
  loc_15B2C29: Set var_88 = var_1E0
  loc_15B2C59: ' Referenced from: 15B3C91
  loc_15B2C6B: If Not(Me.Recordset15.EOF) Then
  loc_15B2CAD:   If (Me.Recordset15.Fields.Item("OccType").Value = "Single") Then
  loc_15B2CE7:     Set var_184 = Me.LblName
  loc_15B2CED:     Call 0.Method_CmdRate_Click0 (&HE, var_188)
  loc_15B2CF5:     var_188.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OccType")))
  loc_15B2D5E:     Set var_184 = Me.Txt
  loc_15B2D64:     Call 0.Method_CmdRate_Click0 (CInt(&H24), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_15B2D6C:     var_188.Text = 1
  loc_15B2DDB:     Set var_184 = Me.Txt
  loc_15B2DE1:     Call 0.Method_CmdRate_Click0 (CInt(&H25), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")))
  loc_15B2DE9:     var_188.Text = 1
  loc_15B2E58:     Set var_184 = Me.Txt
  loc_15B2E5E:     Call 0.Method_CmdRate_Click0 (CInt(&H26), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_15B2E66:     var_188.Text = 1
  loc_15B2ED5:     Set var_184 = Me.Txt
  loc_15B2EDB:     Call 0.Method_CmdRate_Click0 (CInt(&H27), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_15B2EE3:     var_188.Text = 1
  loc_15B2F52:     Set var_184 = Me.Txt
  loc_15B2F58:     Call 0.Method_CmdRate_Click0 (CInt(&H28), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_15B2F60:     var_188.Text = 1
  loc_15B2FCF:     Set var_184 = Me.Txt
  loc_15B2FD5:     Call 0.Method_CmdRate_Click0 (CInt(&H38), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_15B2FDD:     var_188.Text = 1
  loc_15B304C:     Set var_184 = Me.Txt
  loc_15B3052:     Call 0.Method_CmdRate_Click0 (CInt(&H39), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_15B305A:     var_188.Text = 1
  loc_15B3074:   End If
  loc_15B30B3:   If (Me.Recordset15.Fields.Item("OccType").Value = "Multiple") Then
  loc_15B30ED:     Set var_184 = Me.LblName
  loc_15B30F3:     Call 0.Method_CmdRate_Click0 (&HF, var_188)
  loc_15B30FB:     var_188.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_15B3164:     Set var_184 = Me.Txt
  loc_15B316A:     Call 0.Method_CmdRate_Click0 (CInt(&H29), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_15B3172:     var_188.Text = 1
  loc_15B31E1:     Set var_184 = Me.Txt
  loc_15B31E7:     Call 0.Method_CmdRate_Click0 (CInt(&H2A), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_15B31EF:     var_188.Text = 1
  loc_15B325E:     Set var_184 = Me.Txt
  loc_15B3264:     Call 0.Method_CmdRate_Click0 (CInt(&H2B), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_15B326C:     var_188.Text = 1
  loc_15B32DB:     Set var_184 = Me.Txt
  loc_15B32E1:     Call 0.Method_CmdRate_Click0 (CInt(&H2C), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_15B32E9:     var_188.Text = 1
  loc_15B3358:     Set var_184 = Me.Txt
  loc_15B335E:     Call 0.Method_CmdRate_Click0 (CInt(&H2D), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_15B3366:     var_188.Text = 1
  loc_15B33D5:     Set var_184 = Me.Txt
  loc_15B33DB:     Call 0.Method_CmdRate_Click0 (CInt(&H38), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_15B33E3:     var_188.Text = 1
  loc_15B3452:     Set var_184 = Me.Txt
  loc_15B3458:     Call 0.Method_CmdRate_Click0 (CInt(&H39), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_15B3460:     var_188.Text = 1
  loc_15B347A:   End If
  loc_15B34B9:   If (Me.Recordset15.Fields.Item("OccType").Value = "Extra Person") Then
  loc_15B34F3:     Set var_184 = Me.LblName
  loc_15B34F9:     Call 0.Method_CmdRate_Click0 (&H11, var_188)
  loc_15B3501:     var_188.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_15B356A:     Set var_184 = Me.Txt
  loc_15B3570:     Call 0.Method_CmdRate_Click0 (CInt(&H2E), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_15B3578:     var_188.Text = 1
  loc_15B35E7:     Set var_184 = Me.Txt
  loc_15B35ED:     Call 0.Method_CmdRate_Click0 (CInt(&H2F), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_15B35F5:     var_188.Text = 1
  loc_15B3664:     Set var_184 = Me.Txt
  loc_15B366A:     Call 0.Method_CmdRate_Click0 (CInt(&H30), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_15B3672:     var_188.Text = 1
  loc_15B36E1:     Set var_184 = Me.Txt
  loc_15B36E7:     Call 0.Method_CmdRate_Click0 (CInt(&H31), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_15B36EF:     var_188.Text = 1
  loc_15B375E:     Set var_184 = Me.Txt
  loc_15B3764:     Call 0.Method_CmdRate_Click0 (CInt(&H32), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_15B376C:     var_188.Text = 1
  loc_15B37DB:     Set var_184 = Me.Txt
  loc_15B37E1:     Call 0.Method_CmdRate_Click0 (CInt(&H38), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_15B37E9:     var_188.Text = 1
  loc_15B3858:     Set var_184 = Me.Txt
  loc_15B385E:     Call 0.Method_CmdRate_Click0 (CInt(&H39), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_15B3866:     var_188.Text = 1
  loc_15B3880:   End If
  loc_15B38BF:   If (Me.Recordset15.Fields.Item("OccType").Value = "Weekend") Then
  loc_15B38F9:     Set var_184 = Me.LblName
  loc_15B38FF:     Call 0.Method_CmdRate_Click0 (&H12, var_188)
  loc_15B3907:     var_188.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_15B3970:     Set var_184 = Me.Txt
  loc_15B3976:     Call 0.Method_CmdRate_Click0 (CInt(&H33), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_15B397E:     var_188.Text = 1
  loc_15B39ED:     Set var_184 = Me.Txt
  loc_15B39F3:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_15B39FB:     var_188.Text = 1
  loc_15B3A6A:     Set var_184 = Me.Txt
  loc_15B3A70:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_15B3A78:     var_188.Text = 1
  loc_15B3AE7:     Set var_184 = Me.Txt
  loc_15B3AED:     Call 0.Method_CmdRate_Click0 (CInt(&H36), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_15B3AF5:     var_188.Text = 1
  loc_15B3B64:     Set var_184 = Me.Txt
  loc_15B3B6A:     Call 0.Method_CmdRate_Click0 (CInt(&H37), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_15B3B72:     var_188.Text = 1
  loc_15B3BE1:     Set var_184 = Me.Txt
  loc_15B3BE7:     Call 0.Method_CmdRate_Click0 (CInt(&H38), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_15B3BEF:     var_188.Text = 1
  loc_15B3C5E:     Set var_184 = Me.Txt
  loc_15B3C64:     Call 0.Method_CmdRate_Click0 (CInt(&H39), var_188, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_15B3C6C:     var_188.Text = 1
  loc_15B3C86:   End If
  loc_15B3C8C:   var_88.MoveNext
  loc_15B3C91:   GoTo loc_15B2C59
  loc_15B3C94: End If
  loc_15B3C99: Set var_88 = Nothing
  loc_15B3C9C: Exit Sub
  loc_15B3C9D: ' Referenced from: 15B2A48
  loc_15B3C9D: Proc_6_60_E63754(1)
  loc_15B3CA2: Exit Sub
End Sub

Private Sub Picture1_DblClick() '105DE34
  'Data Table: 4FADE0
  Dim var_9C As String
  Dim var_C4 As Variant
  Dim var_88 As CommonDialog
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_D4 As String
  loc_105DBEC: On Error Goto loc_105DDD5
  loc_105DBF3: Set var_88 = Me.TopCtrl1
  loc_105DBF9: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_105DC0D: Set var_A0 = Me.TopCtrl1
  loc_105DC13: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005((CStr() <> "Add"))
  loc_105DC39: If ( And (CStr() <> "Edit")) Then
  loc_105DC3C:   Exit Sub
  loc_105DC3D: End If
  loc_105DC4D: Me.CDlg.Filter = "*.*"
  loc_105DC65: Me.CDlg.Action = 1
  loc_105DC77: Me.CDlg.FileName = 
  loc_105DC7F: var_9C = CStr()
  loc_105DC8C: Me.Picture1.Tag = var_9C
  loc_105DCA8: Me.CDlg.FileName = 
  loc_105DCB0: var_B0 = CVar(CStr()) 'String
  loc_105DCB6: var_E4 = Trim(var_B0)
  loc_105DCBF: Set var_A0 = Me.CDlg
  loc_105DCC5: var_A0.FileName = 
  loc_105DCE3: var_F4 = Right(var_E4, 3)
  loc_105DD1E: var_D4 = "AVI"
  loc_105DD4C: If CBool((Ucase(var_F4) = "DAT") Or (Ucase(Right(Trim(CVar(CStr())), 3)) = var_D4)) Then
  loc_105DD5D:   var_C4 = "Invalid Format"
  loc_105DD68:   MsgBox(var_C4, &H40, var_B0, var_E4, var_F4)
  loc_105DD7B: Else
  loc_105DD92:   Set var_88 = Me.CDlg
  loc_105DD98:   var_88.FileName = var_C4
  loc_105DDA0:   var_B0 = CVar(CStr(var_D4)) 'String
  loc_105DDAA:   Me.var_88.LoadPicture var_B0, var_194, var_1A4, var_A0, 
  loc_105DDBF:   Me.Picture1.Picture = var_A0
  loc_105DDD4: End If
  loc_105DDD4: Exit Sub
  loc_105DDD5: ' Referenced from: 105DBEC
  loc_105DDDD: Set var_88 = Err()
  loc_105DDE3: Call 0.Method_arg_1C (var_1B0)
  loc_105DDF4: If (var_1B0 <> 0) Then
  loc_105DE0D:   Set var_88 = Err()
  loc_105DE13:   Call 0.Method_arg_2C (var_9C, 0, var_B0)
  loc_105DE1E:   MsgBox(CVar(var_9C), var_E4, var_F4, , )
  loc_105DE31: End If
  loc_105DE31: Exit Sub
  loc_105DE32: ThisVCallAd
End Sub

Private Sub FGPoint_UnknownEvent_9 'E848D0
  'Data Table: 4FADE0
  loc_E8487C: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_E8487F:   Call DGRevenue_UnknownEvent_9()
  loc_E84884: End If
  loc_E848A0: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_E848A3:   Call DGCategory_UnknownEvent_9()
  loc_E848A8: End If
  loc_E848C4: If (CBool(Me.DGMaid.Visible) = &HFF) Then
  loc_E848C7:   Call DGMaid_UnknownEvent_9()
  loc_E848CC: End If
  loc_E848CC: Exit Sub
  loc_E848CD: Set var_B4 = 
End Sub

Public Function MasterFormExitGet() '4FC3D4
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4FC3E3
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E93FA8
  'Data Table: 4FADE0
  Dim Me As Recordset15
  loc_E93F36: On Error Goto loc_E93F9F
  loc_E93F3F: Me.MoveFirst
  loc_E93F69: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E93F91: Proc_5_0_1107AD0(&HFF, Me, global_68)
  loc_E93F99: Call Proc_26_42_17CA254(0)
  loc_E93F9E: Exit Sub
  loc_E93F9F: ' Referenced from: E93F36
  loc_E93F9F: Proc_6_60_E63754(var_A0)
  loc_E93FA4: Exit Sub
End Sub

Public Sub Proc_26_40_10765A8
  'Data Table: 4FADE0
  Dim var_B4 As TextBox
  Dim unk_4FADED As Connection15
  Dim var_DC As Fields15
  Dim var_F0 As Field20
  loc_1076348: Set var_9C = Me.TopCtrl1
  loc_107634E: Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1076367: If (CStr() = "Add") Then
  loc_10763A5:   Set var_9C = Me.Txt
  loc_10763AB:   Call 0.Method_Proc_26_40_10765A80 (CInt(&H21), var_B4, var_B8, "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and type='RO' AND Code='", var_AC, -1)
  loc_10763CC:   unk_4FADED.Execute var_DC & var_B8 & "'", 0, var_F0
  loc_10763DC:    = var_DC.Item()
  loc_10763E4:    = var_F0.Value
  loc_1076415:   If (var_B4.Text.Fields > 0) Then
  loc_1076433:     var_AC = "Duplicate Room No."
  loc_1076439:     MsgBox(var_AC, &H40, "Information", var_120, var_140)
  loc_1076454:     Set var_9C = Me.Txt
  loc_107645A:     Call 0.Method_Proc_26_40_10765A80 (CInt(&H21))
  loc_1076462:     var_B4.SetFocus
  loc_1076473:     Proc_26_40_10765A8 = &HFF
  loc_1076479:   End If
  loc_107647C: Else
  loc_10764B7:   Set var_9C = Me.Txt
  loc_10764BD:   Call 0.Method_Proc_26_40_10765A80 (CInt(&H22), var_B4, var_B8, "Select Count(*) From RoomMast Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  and Type='", var_AC, -1)
  loc_10764EF:   unk_4FADED.Execute var_DC & var_B8 & "' And Code <>'" & global_84 & "'", 0, var_F0
  loc_10764FF:    = var_DC.Item(var_B4)
  loc_1076507:    = var_F0.Value
  loc_107653C:   If (var_B4.Text.Fields > 0) Then
  loc_1076560:     MsgBox("Duplicate Room No.", &H40, "Information", var_120, var_140)
  loc_107657B:     Set var_9C = Me.Txt
  loc_1076581:     Call 0.Method_Proc_26_40_10765A80 (CInt(&H21))
  loc_1076589:     var_B4.SetFocus
  loc_107659A:     Proc_26_40_10765A8 = &HFF
  loc_10765A0:   End If
  loc_10765A0: End If
  loc_10765A0: Proc_26_40_10765A8 = var_B4
End Sub

Public Sub Proc_26_41_FEA718
  'Data Table: 4FADE0
  Dim var_98 As TextBox
  Dim var_D0 As String
  Dim var_F8 As TextBox
  Dim var_B0 As Variant
  Dim var_F4 As Image
  Dim var_8C As Image
  loc_FEA546: global_84 = vbNullString
  loc_FEA558: Set var_8C = Me.Txt
  loc_FEA55E: Call 0.Method_Proc_26_41_FEA718C (var_8E, var_86)
  loc_FEA56E: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FEA584:   Set var_8C = Me.Txt
  loc_FEA58A:   Call 0.Method_Proc_26_41_FEA7180 (CInt(var_86), var_98)
  loc_FEA592:   var_98.Text = vbNullString
  loc_FEA5AE:   Set var_8C = Me.Txt
  loc_FEA5B4:   Call 0.Method_Proc_26_41_FEA7180 (CInt(var_86), var_98)
  loc_FEA5BC:   var_98.Tag = vbNullString
  loc_FEA5CB: Next var_92 'Byte
  loc_FEA5DF: Set var_8C = Me.Txt
  loc_FEA5E5: Call 0.Method_Proc_26_41_FEA7180 (CInt(6), var_98)
  loc_FEA609: For var_9C = CByte(9) To (CInt(var_88) = &H1C): var_88 = var_9C 'Byte
  loc_FEA61F:   Set var_8C = Me.Txt
  loc_FEA625:   Call 0.Method_Proc_26_41_FEA7180 (CInt(var_88), var_98)
  loc_FEA647:   var_D0 = "0.00"
  loc_FEA675:   Set var_F4 = Me.Txt
  loc_FEA67B:   Call 0.Method_Proc_26_41_FEA7180 (CInt(var_88), var_F8, CStr(Format(CVar(Val("No")), var_D0)), 1)
  loc_FEA683:   var_F8.Text = 1
  loc_FEA6A6: Next var_9C 'Byte
  loc_FEA6CA: Me.Global.LoadPicture var_B0, var_D0, var_114, var_124, var_134
  loc_FEA6DF: Me.Picture1.Picture = var_8C
  loc_FEA6F8: Me.Picture1.Tag = vbNullString
  loc_FEA70C: Me.Picture1.Visible = True
  loc_FEA714: Exit Sub
End Sub

Public Sub Proc_26_42_17CA254
  'Data Table: 4FADE0
  Dim var_8A As Integer
  Dim var_D4 As String
  Dim var_B0 As Variant
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_B4 As Variant
  Dim var_E4 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_108 As String
  Dim unk_4FADED As Connection15
  Dim var_9C As Recordset15
  Dim var_C4 As Variant
  Dim var_12C As Variant
  Dim var_144 As String
  Dim var_118 As Variant
  Dim var_88 As Recordset15
  Dim var_154 As Variant
  Dim var_130 As Variant
  Dim var_90 As Recordset15
  Dim var_94 As Recordset15
  Dim var_128 As Variant
  loc_17C821C: On Error Goto loc_17CA24B
  loc_17C827A: unk_4FADED.Execute CStr("Select U_Name,U_AE,U_EntDt From roommast where Code='" & Me.Fields.Item("Code").Value & "'  "), var_128, -1
  loc_17C8285: Set var_9C = var_12C
  loc_17C8342: var_194 = IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_AE")), var_9C.Fields) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_17C8387: Me.LblUser.Caption = CStr(1 & CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_Name")), var_194)))
  loc_17C83F9: var_12C = var_9C.Fields
  loc_17C8415: var_144 = "entdt : "
  loc_17C841A: var_128 = var_144
  loc_17C8462: var_194 = IIf((Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_12C.Item("U_AE"))) = "E"), "Last Update : ", var_128))
  loc_17C84A7: Me.LblLDt.Caption = CStr(var_194 & CVar(Proc_6_38_E69628(CVar(var_9C.Fields.Item("U_EntDt")))))
  loc_17C84F6: If (Me.RecordCount > 0) Then
  loc_17C8506:   var_D4 = "SELECT RoomMast.*, Depart.Name as Department FROM RoomMast LEFT JOIN Depart ON RoomMast.MaidStation = Depart.Code where ROOMMAST.TYPE='RO' AND RoomMast.Code='"
  loc_17C854F:   unk_4FADED.Execute CStr(var_D4 & Me.Fields.Item("SearchCode").Value & "'"), var_128, -1
  loc_17C855A:   Set var_88 = var_12C
  loc_17C8588:   If (var_88.RecordCount > 0) Then
  loc_17C858B:     Call Proc_26_41_FEA718(var_12C)
  loc_17C8590:     ' Referenced from: 17C91B3
  loc_17C8596:     var_1F2 = var_88.EOF
  loc_17C859F:     If Not(var_1F2) Then
  loc_17C85B1:       var_A0 = var_88.Fields
  loc_17C85CA:       var_118 = IsNull(CVar(var_A0.Item("PicPath")))
  loc_17C85D1:       var_D4 = "PicPath"
  loc_17C85FC:       var_F4 = vbNullString
  loc_17C861E:       If CBool(var_118 Or (Trim(CVar(var_88.Fields.Item(var_D4))) = var_F4)) Then
  loc_17C863F:         Me.Global.LoadPicture var_B0, var_D4, var_F4, var_118, var_144
  loc_17C8654:         Me.Picture1.Picture = var_A0
  loc_17C8663:       Else
  loc_17C8689:         var_E4 = Trim(CVar(var_88.Fields.Item("PicPath")))
  loc_17C8691:         var_F4 = "PicPath"
  loc_17C86CF:         var_128 = Ucase(Right(var_E4, 3))
  loc_17C86D7:         var_D4 = "DAT"
  loc_17C86FF:         var_118 = "AVI"
  loc_17C8729:         If CBool((var_128 = var_D4) Or (Ucase(Right(Trim(CVar(var_88.Fields.Item(var_F4))), 3)) = var_118)) Then
  loc_17C8738:           Me.Picture1.Visible = False
  loc_17C8743:         Else
  loc_17C877B:           Me.Picture1.Tag = CStr(var_88.Fields.Item("PicPath").Value)
  loc_17C8798:           var_B0 = "PicPath"
  loc_17C87AC:           var_B4 = var_88.Fields.Item(var_B0)
  loc_17C87C6:           Call 0.Method_Proc_26_42_17CA2544 (CStr(var_B4.Value), var_1F2)
  loc_17C87DB:           If var_1F2 Then
  loc_17C87F8:             Set var_A0 = Me.Picture1
  loc_17C8810:             Me.Global.LoadPicture CVar(Me.Picture1.Tag), var_B0, var_D4, var_F4, var_118
  loc_17C881F:             Set var_130 = Me.Picture1
  loc_17C8825:             var_130.Picture = var_B4
  loc_17C883A:             Set var_A0 = Me.Picture1
  loc_17C8840:             var_A0.Refresh
  loc_17C884B:           Else
  loc_17C8869:             Me.Global.LoadPicture var_B0, var_D4, var_F4, var_118, var_144
  loc_17C887E:             Me.Picture1.Picture = var_A0
  loc_17C888A:           End If
  loc_17C888A:         End If
  loc_17C888A:       End If
  loc_17C889C:       var_A0 = var_88.Fields
  loc_17C88C3:       Set var_12C = Me.Txt
  loc_17C88C9:       Call 0.Method_Proc_26_42_17CA2540 (CInt(&H21), var_130, CStr(var_A0.Item("Code").Value))
  loc_17C88D1:       var_130.Text = var_A0
  loc_17C8901:       var_B4 = var_88.Fields.Item("Name")
  loc_17C8920:       Set var_12C = Me.Txt
  loc_17C8926:       Call 0.Method_Proc_26_42_17CA2540 (CInt(0), var_130, CStr(var_B4.Value))
  loc_17C892E:       var_130.Text = var_B4
  loc_17C897D:       Set var_12C = Me.Txt
  loc_17C8983:       Call 0.Method_Proc_26_42_17CA2540 (CInt(&H22), var_130)
  loc_17C898B:       var_130.Tag = CStr(var_88.Fields.Item("Type").Value)
  loc_17C89BB:       var_B4 = var_88.Fields.Item("Type")
  loc_17C89DD:       If (var_B4.Value = "RO") Then
  loc_17C89EE:         Set var_A0 = Me.Txt
  loc_17C89F4:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H22), var_B4)
  loc_17C89FC:         var_B4.Text = "Room"
  loc_17C8A0B:       Else
  loc_17C8A25:         var_B4 = var_88.Fields.Item("Type")
  loc_17C8A47:         If (var_B4.Value = "CO") Then
  loc_17C8A58:           Set var_A0 = Me.Txt
  loc_17C8A5E:           Call 0.Method_Proc_26_42_17CA2540 (CInt(&H22), var_B4)
  loc_17C8A66:           var_B4.Text = "Conf. Room"
  loc_17C8A72:         End If
  loc_17C8A72:       End If
  loc_17C8AAB:       Set var_12C = Me.Txt
  loc_17C8AB1:       Call 0.Method_Proc_26_42_17CA2540 (CInt(1), var_130)
  loc_17C8AB9:       var_130.Tag = CStr(var_88.Fields.Item("RoomCat").Value)
  loc_17C8AF0:       var_A0 = var_88.Fields
  loc_17C8B07:       Proc_6_17_EAAE40(var_E4, CVar(var_A0.Item("RoomCat")), "Select Name From roomcat where code=", var_128)
  loc_17C8B0F:       var_104 = -1 & var_E4 
  loc_17C8B1D:       unk_4FADED.Execute CStr(Right(var_E4, 3)), var_12C, var_A0
  loc_17C8B28:       Set var_90 = var_12C
  loc_17C8B54:       If (var_90.RecordCount > 0) Then
  loc_17C8B71:         var_B4 = var_90.Fields.Item("Name")
  loc_17C8B90:         Set var_12C = Me.Txt
  loc_17C8B96:         Call 0.Method_Proc_26_42_17CA2540 (CInt(1), var_130)
  loc_17C8B9E:         var_130.Text = CStr(var_B4.Value)
  loc_17C8BB7:       Else
  loc_17C8BC5:         Set var_A0 = Me.Txt
  loc_17C8BCB:         Call 0.Method_Proc_26_42_17CA2540 (CInt(1), var_B4)
  loc_17C8BD3:         var_B4.Text = vbNullString
  loc_17C8BDF:       End If
  loc_17C8C15:       Set var_12C = Me.Txt
  loc_17C8C1B:       Call 0.Method_Proc_26_42_17CA2540 (CInt(&H3A), var_130)
  loc_17C8C23:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DoorLockID")))
  loc_17C8C6D:       Set var_12C = Me.Txt
  loc_17C8C73:       Call 0.Method_Proc_26_42_17CA2540 (CInt(2), var_130)
  loc_17C8C7B:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Extension")))
  loc_17C8CC5:       Set var_12C = Me.Txt
  loc_17C8CCB:       Call 0.Method_Proc_26_42_17CA2540 (CInt(5), var_130)
  loc_17C8CD3:       var_130.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("MaidStation")))
  loc_17C8D1D:       Set var_12C = Me.Txt
  loc_17C8D23:       Call 0.Method_Proc_26_42_17CA2540 (CInt(5), var_130)
  loc_17C8D2B:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Department")))
  loc_17C8D5E:       var_C4 = CVar(var_88.Fields.Item("MultPer")) 'Address
  loc_17C8D65:       Proc_6_39_E7D3A0(var_E4)
  loc_17C8D7C:       Set var_12C = Me.Txt
  loc_17C8D82:       Call 0.Method_Proc_26_42_17CA2540 (CInt(3), var_130)
  loc_17C8D8A:       var_130.Text = CStr(var_E4)
  loc_17C8DD8:       Set var_12C = Me.Txt
  loc_17C8DDE:       Call 0.Method_Proc_26_42_17CA2540 (CInt(4), var_130)
  loc_17C8DE6:       var_130.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("RevCode")))
  loc_17C8E36:       var_12C = var_88.Fields
  loc_17C8E3E:       var_130 = var_12C.Item("RevCode")
  loc_17C8E46:       var_E4 = CVar(var_130) 'Address
  loc_17C8E77:       If CBool(Not(IsNull(CVar(var_88.Fields.Item("RevCode")))) And (Trim(var_E4) <> vbNullString)) Then
  loc_17C8EAB:         var_C4 = CVar(var_88.Fields.Item("RevCode")) 'Address
  loc_17C8EB2:         Proc_6_17_EAAE40(var_E4, var_C4, "Select Name,TaxStru From RevMast where code=", var_128)
  loc_17C8EBA:         var_104 = -1 & var_E4 
  loc_17C8EC8:         unk_4FADED.Execute CStr(Trim(var_E4)), var_12C, var_C4
  loc_17C8ED3:         Set var_94 = var_12C
  loc_17C8EFF:         If (var_94.RecordCount > 0) Then
  loc_17C8F38:           Set var_12C = Me.Txt
  loc_17C8F3E:           Call 0.Method_Proc_26_42_17CA2540 (CInt(&H23), var_130)
  loc_17C8F46:           var_130.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("TaxStru")))
  loc_17C8F90:           Set var_12C = Me.Txt
  loc_17C8F96:           Call 0.Method_Proc_26_42_17CA2540 (CInt(4), var_130)
  loc_17C8F9E:           var_130.Text = Proc_6_38_E69628(CVar(var_94.Fields.Item("Name")))
  loc_17C8FB2:         End If
  loc_17C8FB2:       End If
  loc_17C8FDE:       var_154 = "No"
  loc_17C901D:       Set var_12C = Me.Txt
  loc_17C9023:       Call 0.Method_Proc_26_42_17CA2540 (CInt(6), var_130)
  loc_17C902B:       var_130.Text = CStr(IIf((var_88.Fields.Item("InclCount").Value = "Y"), "Yes", var_154))
  loc_17C9081:       Set var_12C = Me.Txt
  loc_17C9087:       Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1D), var_130)
  loc_17C908F:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConRoom1")))
  loc_17C90D9:       Set var_12C = Me.Txt
  loc_17C90DF:       Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1E), var_130)
  loc_17C90E7:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConRoom2")))
  loc_17C9131:       Set var_12C = Me.Txt
  loc_17C9137:       Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1F), var_130)
  loc_17C913F:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConRoom3")))
  loc_17C9189:       Set var_12C = Me.Txt
  loc_17C918F:       Call 0.Method_Proc_26_42_17CA2540 (CInt(&H20), var_130)
  loc_17C9197:       var_130.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConRoom4")))
  loc_17C91AE:       var_88.MoveNext
  loc_17C91B3:       GoTo loc_17C8590
  loc_17C91B6:     End If
  loc_17C91B6:   End If
  loc_17C91CA:   var_108 = "Select RateList.* From RateList Left Join RoomMAst on RateList.RoomNO=Roommast.Code where (RoomMast.LOGSITE_CODE='" & MemVar_1F95078
  loc_17C9201:   var_104 = CVar(var_108 & "' or RoomMast.LOGSITE_CODE='HO')  and RateLIst.Code='*' and RateList.roomno='") & Me.Fields.Item("SearchCode").Value 
  loc_17C9218:   unk_4FADED.Execute CStr(var_104 & "'"), var_154, -1
  loc_17C9223:   Set var_90 = var_12C
  loc_17C9257:   If (var_90.RecordCount > 0) Then
  loc_17C925A:     ' Referenced from: 17CA220
  loc_17C9269:     If Not(var_90.EOF) Then
  loc_17C92A8:       If (var_90.Fields.Item("OccType").Value = "Single") Then
  loc_17C92DF:         Set var_12C = Me.LblName
  loc_17C92E5:         Call 0.Method_Proc_26_42_17CA2540 (&HE, var_130)
  loc_17C92ED:         var_130.Caption = Proc_6_38_E69628(CVar(var_90.Fields.Item("OccType")))
  loc_17C9353:         Set var_12C = Me.Txt
  loc_17C9359:         Call 0.Method_Proc_26_42_17CA2540 (CInt(7), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_17C9361:         var_130.Text = 1
  loc_17C93CD:         Set var_12C = Me.Txt
  loc_17C93D3:         Call 0.Method_Proc_26_42_17CA2540 (CInt(8), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17C93DB:         var_130.Text = 1
  loc_17C9447:         Set var_12C = Me.Txt
  loc_17C944D:         Call 0.Method_Proc_26_42_17CA2540 (CInt(9), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17C9455:         var_130.Text = 1
  loc_17C94C1:         Set var_12C = Me.Txt
  loc_17C94C7:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&HA), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17C94CF:         var_130.Text = 1
  loc_17C953B:         Set var_12C = Me.Txt
  loc_17C9541:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&HB), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17C9549:         var_130.Text = 1
  loc_17C95B5:         Set var_12C = Me.Txt
  loc_17C95BB:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1B), var_130, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17C95C3:         var_130.Text = 1
  loc_17C962F:         Set var_12C = Me.Txt
  loc_17C9635:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1C), var_130, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17C963D:         var_130.Text = 1
  loc_17C9657:       End If
  loc_17C9693:       If (var_90.Fields.Item("OccType").Value = "Multiple") Then
  loc_17C96CA:         Set var_12C = Me.LblName
  loc_17C96D0:         Call 0.Method_Proc_26_42_17CA2540 (&HF, var_130)
  loc_17C96D8:         var_130.Caption = Proc_6_38_E69628(CVar(var_90.Fields.Item("OccType")), 1)
  loc_17C973E:         Set var_12C = Me.Txt
  loc_17C9744:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&HC), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_17C974C:         var_130.Text = 1
  loc_17C97B8:         Set var_12C = Me.Txt
  loc_17C97BE:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&HD), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17C97C6:         var_130.Text = 1
  loc_17C9832:         Set var_12C = Me.Txt
  loc_17C9838:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&HE), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17C9840:         var_130.Text = 1
  loc_17C98AC:         Set var_12C = Me.Txt
  loc_17C98B2:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&HF), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17C98BA:         var_130.Text = 1
  loc_17C9926:         Set var_12C = Me.Txt
  loc_17C992C:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H10), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17C9934:         var_130.Text = 1
  loc_17C99A0:         Set var_12C = Me.Txt
  loc_17C99A6:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1B), var_130, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17C99AE:         var_130.Text = 1
  loc_17C9A1A:         Set var_12C = Me.Txt
  loc_17C9A20:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1C), var_130, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17C9A28:         var_130.Text = 1
  loc_17C9A42:       End If
  loc_17C9A7E:       If (var_90.Fields.Item("OccType").Value = "Extra Person") Then
  loc_17C9AB5:         Set var_12C = Me.LblName
  loc_17C9ABB:         Call 0.Method_Proc_26_42_17CA2540 (&H11, var_130)
  loc_17C9AC3:         var_130.Caption = Proc_6_38_E69628(CVar(var_90.Fields.Item("OccType")), 1)
  loc_17C9B29:         Set var_12C = Me.Txt
  loc_17C9B2F:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H11), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_17C9B37:         var_130.Text = 1
  loc_17C9BA3:         Set var_12C = Me.Txt
  loc_17C9BA9:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H12), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17C9BB1:         var_130.Text = 1
  loc_17C9C1D:         Set var_12C = Me.Txt
  loc_17C9C23:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H13), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17C9C2B:         var_130.Text = 1
  loc_17C9C97:         Set var_12C = Me.Txt
  loc_17C9C9D:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H14), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17C9CA5:         var_130.Text = 1
  loc_17C9D11:         Set var_12C = Me.Txt
  loc_17C9D17:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H15), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17C9D1F:         var_130.Text = 1
  loc_17C9D8B:         Set var_12C = Me.Txt
  loc_17C9D91:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1B), var_130, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17C9D99:         var_130.Text = 1
  loc_17C9E05:         Set var_12C = Me.Txt
  loc_17C9E0B:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1C), var_130, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17C9E13:         var_130.Text = 1
  loc_17C9E2D:       End If
  loc_17C9E69:       If (var_90.Fields.Item("OccType").Value = "Weekend") Then
  loc_17C9EA0:         Set var_12C = Me.LblName
  loc_17C9EA6:         Call 0.Method_Proc_26_42_17CA2540 (&H12, var_130)
  loc_17C9EAE:         var_130.Caption = Proc_6_38_E69628(CVar(var_90.Fields.Item("OccType")), 1)
  loc_17C9F14:         Set var_12C = Me.Txt
  loc_17C9F1A:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H16), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_17C9F22:         var_130.Text = 1
  loc_17C9F8E:         Set var_12C = Me.Txt
  loc_17C9F94:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H17), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17C9F9C:         var_130.Text = 1
  loc_17CA008:         Set var_12C = Me.Txt
  loc_17CA00E:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H18), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_17CA016:         var_130.Text = 1
  loc_17CA082:         Set var_12C = Me.Txt
  loc_17CA088:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H19), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17CA090:         var_130.Text = 1
  loc_17CA0FC:         Set var_12C = Me.Txt
  loc_17CA102:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1A), var_130, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_17CA10A:         var_130.Text = 1
  loc_17CA176:         Set var_12C = Me.Txt
  loc_17CA17C:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1B), var_130, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17CA184:         var_130.Text = 1
  loc_17CA1F0:         Set var_12C = Me.Txt
  loc_17CA1F6:         Call 0.Method_Proc_26_42_17CA2540 (CInt(&H1C), var_130, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_17CA1FE:         var_130.Text = 1
  loc_17CA218:       End If
  loc_17CA21B:       var_90.MoveNext
  loc_17CA220:       GoTo loc_17C925A
  loc_17CA223:     End If
  loc_17CA223:   End If
  loc_17CA225:   var_8A = 0
  loc_17CA22B: Else
  loc_17CA22B:   Call Proc_26_41_FEA718(var_8A, 1)
  loc_17CA230: End If
  loc_17CA230: Call Proc_26_46_126BB28(var_12C)
  loc_17CA235: Call Proc_26_44_F209A0()
  loc_17CA23F: Set var_88 = Nothing
  loc_17CA247: Set var_90 = Nothing
  loc_17CA24A: Exit Sub
  loc_17CA24B: ' Referenced from: 17C821C
  loc_17CA24B: Proc_6_60_E63754()
  loc_17CA250: Exit Sub
End Sub

Public Sub Proc_26_43_E8B0FC(arg_C) 'E8B0FC
  'Data Table: 4FADE0
  Dim var_98 As TextBox
  Dim var_8C As CommandButton
  loc_E8B096: Set var_8C = Me.Txt
  loc_E8B09C: Call 0.Method_Proc_26_43_E8B0FCC (var_8E, var_86)
  loc_E8B0AC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8B0C2:   Set var_8C = Me.Txt
  loc_E8B0C8:   Call 0.Method_Proc_26_43_E8B0FC0 (CInt(var_86), var_98)
  loc_E8B0D0:   var_98.Enabled = arg_C
  loc_E8B0DF: Next var_92 'Byte
  loc_E8B0F2: Me.CmdRate.Enabled = arg_C
  loc_E8B0FA: Exit Sub
End Sub

Public Sub Proc_26_44_F209A0
  'Data Table: 4FADE0
  loc_F208B0: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_F208C2:   Me.DGRevenue.Visible = False
  loc_F208CA: End If
  loc_F208E6: If (CBool(Me.DGCategory.Visible) = &HFF) Then
  loc_F208F8:   Me.DGCategory.Visible = False
  loc_F20900: End If
  loc_F2091B: If (Me.FrmList.Visible = &HFF) Then
  loc_F2092A:   Me.FrmList.Visible = False
  loc_F20932: End If
  loc_F2094E: If (CBool(Me.DGMaid.Visible) = &HFF) Then
  loc_F20960:   Me.DGMaid.Visible = False
  loc_F20968: End If
  loc_F20984: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F20996:   Me.FGPoint.Visible = False
  loc_F2099E: End If
  loc_F2099E: Exit Sub
End Sub

Public Sub Proc_26_45_EE17AC(arg_C) 'EE17AC
  'Data Table: 4FADE0
  Dim var_8C As TextBox
  loc_EE1700: Call Proc_26_44_F209A0()
  loc_EE1710: Set var_88 = Me.Txt
  loc_EE1716: Call 0.Method_Proc_26_45_EE17AC0 (CInt(0))
  loc_EE173F: If (Proc_6_27_EA61EC(var_8C, "RoomName") = 0) Then
  loc_EE1742:   Exit Sub
  loc_EE1743: End If
  loc_EE177A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE177D:   Call TopCtrl1_UnknownEvent_16()
  loc_EE1785: Else
  loc_EE178F:   Set var_88 = Me.Txt
  loc_EE1795:   Call 0.Method_Proc_26_45_EE17AC0 (arg_C, var_8C)
  loc_EE179D:   var_8C.SetFocus
  loc_EE17A9: End If
  loc_EE17A9: Exit Sub
End Sub

Public Sub Proc_26_46_126BB28
  'Data Table: 4FADE0
  Dim var_8C As Integer
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim unk_4FADED As Connection15
  Dim var_E4 As Variant
  Dim var_C8 As Variant
  Dim var_104 As String
  Dim var_AC As Variant
  Dim var_F4 As Variant
  Dim var_128 As Variant
  Dim var_88 As Recordset15
  Dim Me As Recordset15
  Dim var_1AC As Recordset15
  loc_126B5BC: On Error Goto loc_126BB20
  loc_126B5C1: var_8C = 1
  loc_126B5C8: var_8A = CByte(1) 'Byte
  loc_126B5DF: Me.FGrid1.Rows = 1
  loc_126B5E7: var_9C = vbNullString
  loc_126B5F1: Set var_B0 = Me.FGrid1
  loc_126B60F: Set var_B0 = Me.FGrid1
  loc_126B615: var_B0.FixedRows = 1
  loc_126B641: unk_4FADED.Execute "SELECT * FROM ROOMFEATURE where (LOGSITE_CODE='" & MemVar_1F95078 & "') ORDER BY NAME", var_C8, -1
  loc_126B64C: Set var_88 = var_B0
  loc_126B673: If (Me.Recordset15.RecordCount > 0) Then
  loc_126B680:   Call {33AD4F92-6699-11CF-B70C00AA0060D393}.DispID_68030005(Me.TopCtrl1)
  loc_126B699:   If (CStr(FGrid1.DispID_10000) = "Add") Then
  loc_126B6B6:     For var_D0 = CByte(1) To CByte(Me.TopCtrl1.RecordCount): var_8A = var_D0 'Byte
  loc_126B6C0:       Set var_D4 = Me.FGrid1
  loc_126B6C8:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_126B6D0:       var_E4 = CVar(CLng(0)) 'Long
  loc_126B6DB:       var_C8 = CVar(CStr(var_8A)) 'String
  loc_126B6E2:       LateIdCallSt
  loc_126B6F2:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_126B6FA:       var_E4 = CVar(CLng(1)) 'Long
  loc_126B6FF:       var_104 = vbNullString
  loc_126B708:       LateIdCallSt
  loc_126B715:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_126B71D:       var_F4 = CVar(CLng(2)) 'Long
  loc_126B750:       var_128 = CVar(CStr(Me.FGrid1.Fields.Item("Code").Value)) 'String
  loc_126B757:       LateIdCallSt
  loc_126B772:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_126B77A:       var_F4 = CVar(CLng(3)) 'Long
  loc_126B7AD:       var_128 = CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)) 'String
  loc_126B7B4:       LateIdCallSt
  loc_126B7CC:       Set var_D4 = Nothing 
  loc_126B7D6:       Me.Recordset15.MoveNext
  loc_126B7DB:       var_9C = vbNullString
  loc_126B7E5:       Set var_B0 = Me.FGrid1
  loc_126B7F9:     Next var_D0 'Byte
  loc_126B802:   Else
  loc_126B81C:     For var_12C = CByte(1) To CByte(var_88.RecordCount):   var_8A = var_12C 'Byte
  loc_126B82E:       var_9C = CVar(CLng(var_8A)) 'Long
  loc_126B836:       var_E4 = CVar(CLng(0)) 'Long
  loc_126B841:       var_C8 = CVar(CStr(var_8A)) 'String
  loc_126B848:       LateIdCallSt
  loc_126B85C:       var_CC = Me.RecordCount
  loc_126B86A:       If (var_CC > 0) Then
  loc_126B891:         var_9C = "SearchCode"
  loc_126B8B0:         var_C8 = CVar(Me.Fields.Item(var_9C)) 'Address
  loc_126B8B7:         Proc_6_17_EAAE40(var_128, var_C8, CVar("SELECT * FROM ROOMMAST1 WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "') and ROOMCODE="), var_1A8, -1, var_1AC)
  loc_126B8CF:         var_E4 = "Code"
  loc_126B8F5:         Proc_6_17_EAAE40(var_188, CVar(Me.Recordset15.Fields.Item(var_E4)), var_CC & var_128 & " AND RoomFeat=", Me.FGrid1)
  loc_126B90B:         unk_4FADED.Execute CStr(var_C8 & var_188), var_E4, var_9C
  loc_126B913:         CByte(1) = var_1AC.RecordCount
  loc_126B946:         If (var_CC <= 0) Then
  loc_126B94E:           var_9C = CVar(CLng(var_8A)) 'Long
  loc_126B956:           var_E4 = CVar(CLng(1)) 'Long
  loc_126B95B:           var_104 = vbNullString
  loc_126B964:           LateIdCallSt
  loc_126B96F:         Else
  loc_126B981:           Me.FGrid1.Col = CVar(CLng(1))
  loc_126B999:           Me.FGrid1.CellFontName = "wingdings"
  loc_126B9B3:           Me.FGrid1.CellFontSize = CVar(CDbl(&H12))
  loc_126B9CE:           Me.FGrid1.CellForeColor = &HFF0000
  loc_126B9DB:           var_9C = CVar(CLng(var_8A)) 'Long
  loc_126B9E3:           var_E4 = CVar(CLng(1)) 'Long
  loc_126B9E8:           var_104 = "ü"
  loc_126B9F1:           LateIdCallSt
  loc_126B9F9:         End If
  loc_126B9F9:       End If
  loc_126B9FE:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_126BA06:       var_F4 = CVar(CLng(2)) 'Long
  loc_126BA39:       var_128 = CVar(CStr(Me.Recordset15.Fields.Item("Code").Value)) 'String
  loc_126BA40:       LateIdCallSt
  loc_126BA5B:       var_AC = CVar(CLng(var_8A)) 'Long
  loc_126BA63:       var_F4 = CVar(CLng(3)) 'Long
  loc_126BA96:       var_128 = CVar(CStr(Me.Recordset15.Fields.Item("Name").Value)) 'String
  loc_126BA9D:       LateIdCallSt
  loc_126BAB5:       Set var_130 = Nothing 
  loc_126BABF:       Me.Recordset15.MoveNext
  loc_126BAC4:       var_9C = vbNullString
  loc_126BACE:       Set var_B0 = Me.FGrid1
  loc_126BAF8:       var_9C = CVar((CLng(Me.FGrid1.Rows) - 1)) 'Long
  loc_126BB07:       Me.FGrid1.Row = var_9C
  loc_126BB19:     Next var_12C 'Byte
  loc_126BB1F:   End If
  loc_126BB1F: End If
  loc_126BB1F: Exit Sub
  loc_126BB20: ' Referenced from: 126B5BC
  loc_126BB20: Proc_6_60_E63754()
  loc_126BB25: Exit Sub
End Sub

Public Sub Proc_26_47_10189C0
  'Data Table: 4FADE0
  Dim var_98 As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As String
  loc_10187A3: Me.FGrid1.Row = 0
  loc_10187BE: Me.FGrid1.Col = 0
  loc_10187C6: var_98 = 0
  loc_10187D5: var_BC = CVar(CInt(3)) 'Integer
  loc_10187DD: Set var_AC = Me.FGrid1
  loc_10187E3: LateIdCallSt
  loc_1018801: Me.FGrid1.Row = 1
  loc_101881C: Me.FGrid1.Cols = 4
  loc_1018821: var_98 = 0
  loc_101882A: var_BC = 0
  loc_1018833: var_E0 = "Sr No"
  loc_101883C: LateIdCallSt
  loc_1018844: var_98 = 0
  loc_1018853: var_BC = CVar(CInt(3)) 'Integer
  loc_101885A: LateIdCallSt
  loc_1018862: var_98 = 0
  loc_101886B: var_BC = 0
  loc_1018877: LateIdCallSt
  loc_101887F: var_98 = 0
  loc_1018888: var_BC = 1
  loc_1018891: var_E0 = vbNullString
  loc_101889A: LateIdCallSt
  loc_10188A2: var_98 = 1
  loc_10188AB: var_BC = &H1F4
  loc_10188B7: LateIdCallSt
  loc_10188BF: var_98 = 0
  loc_10188C8: var_BC = 2
  loc_10188D1: var_E0 = "Code"
  loc_10188DA: LateIdCallSt
  loc_10188E2: var_98 = 2
  loc_10188EB: var_BC = 0
  loc_10188F7: LateIdCallSt
  loc_10188FF: var_98 = 0
  loc_1018908: var_BC = 3
  loc_1018911: var_E0 = "Room Feature"
  loc_101891A: LateIdCallSt
  loc_1018922: var_98 = 3
  loc_1018931: var_BC = CVar(CInt(1)) 'Integer
  loc_1018938: LateIdCallSt
  loc_1018940: var_98 = 3
  loc_101894F: var_BC = CVar(CInt(1)) 'Integer
  loc_1018956: LateIdCallSt
  loc_101895E: var_98 = 3
  loc_1018967: var_BC = &HE74
  loc_1018973: LateIdCallSt
  loc_101897D: Set var_D0 = Nothing 
  loc_10189A0: If (CLng(Me.FGrid1.Rows) = 1) Then
  loc_10189A3:   var_98 = vbNullString
  loc_10189AD:   Set var_AC = Me.FGrid1
  loc_10189BE: End If
  loc_10189BE: Exit Sub
  loc_10189BF: Result FGrid1.DispID_10000 End Sub 'Long
End Sub
