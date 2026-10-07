VERSION 5.00
Begin VB.Form FrmRoomCatMast
  Caption = "Room Category Master"
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
  ClientWidth = 11880
  ClientHeight = 7305
  LockControls = -1  'True
  BeginProperty Font
    Name = "Tahoma"
    Size = 9.75
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TextBox Txt
    Index = 56
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 4095
    Top = 2070
    Width = 1755
    Height = 285
    TabIndex = 110
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 11880
    Height = 450
    TabIndex = 109
  End
  Begin TextBox Txt
    Index = 55
    BackColor = &HFFFFFF&
    Left = 12930
    Top = 7740
    Width = 1320
    Height = 255
    Visible = 0   'False
    TabIndex = 103
    BorderStyle = 0 'None
    MaxLength = 3
    Appearance = 0 'Flat
  End
  Begin PictureBox Picture3
    Picture = "FrmRoomCatMast.frx":0
    Left = 13005
    Top = 1875
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 102
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin MSFlexGrid FGPoint
    Left = 11250
    Top = 5325
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 99
  End
  Begin Frame FrmList
    Left = 10860
    Top = 3435
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 100
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
    Begin ListView ListView
      Left = 30
      Top = 60
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 101
    End
  End
  Begin DataGrid DGRevenue
    Left = 10830
    Top = 2865
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 98
  End
  Begin DataGrid DGHelp
    Left = 10830
    Top = 2430
    Width = 4230
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 97
  End
  Begin TextBox Txt
    Index = 54
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 1755
    Width = 3285
    Height = 285
    TabIndex = 4
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
  Begin Frame SRate
    Caption = "Frame1"
    BackColor = &HC0C0C0&
    ForeColor = &H80000008&
    Left = 9585
    Top = 4380
    Width = 8655
    Height = 2655
    Visible = 0   'False
    TabIndex = 76
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
    BorderStyle = 0 'None
    Begin CommandButton cmdSave
      Caption = "Save/Exit"
      Left = 6690
      Top = 2145
      Width = 1890
      Height = 405
      TabIndex = 33
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
    Begin TextBox Txt
      Index = 32
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 33
      BackColor = &HFFFFFF&
      Left = 3540
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 34
      BackColor = &HFFFFFF&
      Left = 4740
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 35
      BackColor = &HFFFFFF&
      Left = 5940
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 36
      BackColor = &HFFFFFF&
      Left = 7140
      Top = 750
      Width = 1065
      Height = 255
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
      Index = 37
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 38
      BackColor = &HFFFFFF&
      Left = 3540
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 39
      BackColor = &HFFFFFF&
      Left = 4740
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 40
      BackColor = &HFFFFFF&
      Left = 5940
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 41
      BackColor = &HFFFFFF&
      Left = 7140
      Top = 1020
      Width = 1065
      Height = 255
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
      Index = 42
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 47
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 1560
      Width = 1065
      Height = 255
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
      Index = 43
      BackColor = &HFFFFFF&
      Left = 3540
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 48
      BackColor = &HFFFFFF&
      Left = 3540
      Top = 1560
      Width = 1065
      Height = 255
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
      Index = 44
      BackColor = &HFFFFFF&
      Left = 4740
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 49
      BackColor = &HFFFFFF&
      Left = 4740
      Top = 1560
      Width = 1065
      Height = 255
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
      Index = 45
      BackColor = &HFFFFFF&
      Left = 5940
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 50
      BackColor = &HFFFFFF&
      Left = 5940
      Top = 1560
      Width = 1065
      Height = 255
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
      Index = 46
      BackColor = &HFFFFFF&
      Left = 7140
      Top = 1290
      Width = 1065
      Height = 255
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
      Index = 51
      BackColor = &HFFFFFF&
      Left = 7140
      Top = 1560
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
    Begin TextBox Txt
      Index = 52
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 2025
      Width = 1050
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
      Index = 53
      BackColor = &HFFFFFF&
      Left = 2325
      Top = 2295
      Width = 1050
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
    Begin Label LblName
      Caption = "(+/-)"
      Index = 35
      ForeColor = &H400000&
      Left = 1245
      Top = 1575
      Width = 390
      Height = 195
      TabIndex = 96
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
      Index = 33
      ForeColor = &H0&
      Left = 2325
      Top = 270
      Width = 945
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
    Begin Label LblName
      Caption = "Rack Rate"
      Index = 32
      ForeColor = &H0&
      Left = 3540
      Top = 270
      Width = 990
      Height = 240
      TabIndex = 88
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
      Index = 31
      ForeColor = &H0&
      Left = 4740
      Top = 270
      Width = 1035
      Height = 240
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
      Caption = "Disc2 Rate"
      Index = 30
      ForeColor = &H0&
      Left = 5940
      Top = 270
      Width = 1035
      Height = 240
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
    Begin Label LblName
      Caption = "Disc3 Rate"
      Index = 29
      ForeColor = &H0&
      Left = 7140
      Top = 270
      Width = 1035
      Height = 240
      TabIndex = 85
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
      Index = 28
      ForeColor = &H0&
      Left = 375
      Top = 780
      Width = 570
      Height = 240
      TabIndex = 84
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
      Index = 27
      ForeColor = &H0&
      Left = 375
      Top = 1050
      Width = 750
      Height = 240
      TabIndex = 83
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
      Index = 26
      ForeColor = &H0&
      Left = 375
      Top = 255
      Width = 1575
      Height = 240
      TabIndex = 82
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
      Index = 25
      ForeColor = &H0&
      Left = 375
      Top = 1320
      Width = 1245
      Height = 240
      TabIndex = 81
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
      Index = 24
      ForeColor = &H0&
      Left = 375
      Top = 1590
      Width = 900
      Height = 240
      TabIndex = 80
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
    Begin Shape Shape4
      Left = 105
      Top = 210
      Width = 8445
      Height = 1710
    End
    Begin Shape Shape3
      Left = 105
      Top = 585
      Width = 8445
      Height = 1335
    End
    Begin Label Label2
      Caption = "Tariff"
      BackColor = &HD0EAE6&
      Left = 120
      Top = 0
      Width = 555
      Height = 330
      TabIndex = 79
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
      Index = 23
      ForeColor = &H0&
      Left = 375
      Top = 2025
      Width = 1230
      Height = 240
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
      Caption = "Monthly Rate"
      Index = 22
      ForeColor = &H0&
      Left = 375
      Top = 2295
      Width = 1305
      Height = 240
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
  End
  Begin CommandButton CmdRate
    Caption = "Season &Rate"
    Left = 12195
    Top = 8055
    Width = 1890
    Height = 405
    Visible = 0   'False
    TabIndex = 90
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
    Style = 1
  End
  Begin TextBox Txt
    Index = 31
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 1125
    Width = 1680
    Height = 285
    Visible = 0   'False
    TabIndex = 0
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
    Index = 30
    BackColor = &HFFFFFF&
    Left = 12930
    Top = 7470
    Width = 1320
    Height = 255
    Visible = 0   'False
    TabIndex = 55
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
    Index = 29
    BackColor = &HFFFFFF&
    Left = 12930
    Top = 7200
    Width = 1320
    Height = 255
    Visible = 0   'False
    TabIndex = 54
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
    Index = 28
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 4200
    Width = 1065
    Height = 285
    TabIndex = 53
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
    Left = 7890
    Top = 3885
    Width = 1065
    Height = 285
    TabIndex = 52
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
    Left = 6660
    Top = 4200
    Width = 1065
    Height = 285
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
    Index = 22
    BackColor = &HFFFFFF&
    Left = 6660
    Top = 3885
    Width = 1065
    Height = 285
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
    Index = 26
    BackColor = &HFFFFFF&
    Left = 5445
    Top = 4200
    Width = 1065
    Height = 285
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 5445
    Top = 3885
    Width = 1065
    Height = 285
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
    Index = 25
    BackColor = &HFFFFFF&
    Left = 4245
    Top = 4200
    Width = 1065
    Height = 285
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
    Index = 20
    BackColor = &HFFFFFF&
    Left = 4245
    Top = 3885
    Width = 1065
    Height = 285
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
    Index = 24
    BackColor = &HFFFFFF&
    Left = 3030
    Top = 4200
    Width = 1065
    Height = 285
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 3030
    Top = 3885
    Width = 1065
    Height = 285
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
    Index = 18
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 17
    BackColor = &HFFFFFF&
    Left = 6660
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 16
    BackColor = &HFFFFFF&
    Left = 5445
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 4245
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 14
    BackColor = &HFFFFFF&
    Left = 3030
    Top = 3570
    Width = 1065
    Height = 285
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
    Index = 13
    BackColor = &HFFFFFF&
    Left = 7890
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 12
    BackColor = &HFFFFFF&
    Left = 6660
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 11
    BackColor = &HFFFFFF&
    Left = 5445
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 10
    BackColor = &HFFFFFF&
    Left = 4245
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 9
    BackColor = &HFFFFFF&
    Left = 3030
    Top = 3255
    Width = 1065
    Height = 285
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7965
    Top = 2070
    Width = 1065
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
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 2070
    Width = 630
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 5445
    Top = 1440
    Width = 405
    Height = 285
    TabIndex = 3
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7965
    Top = 1755
    Width = 1065
    Height = 285
    TabIndex = 8
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7965
    Top = 1440
    Width = 1065
    Height = 285
    TabIndex = 7
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7965
    Top = 1125
    Width = 1065
    Height = 285
    TabIndex = 6
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
    Left = 10995
    Top = 465
    Width = 405
    Height = 255
    Visible = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
    MaxLength = 25
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 1440
    Width = 1035
    Height = 285
    TabIndex = 2
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2565
    Top = 1125
    Width = 3285
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
  Begin Label LblName
    Caption = "MapCode"
    Index = 36
    ForeColor = &HC00000&
    Left = 3285
    Top = 2100
    Width = 795
    Height = 225
    TabIndex = 111
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
  Begin Image Image2
    Picture = "FrmRoomCatMast.frx":34E
    Left = 2265
    Top = 3210
    Width = 360
    Height = 360
  End
  Begin Image Image1
    Picture = "FrmRoomCatMast.frx":A50
    Left = 2265
    Top = 3600
    Width = 360
    Height = 360
  End
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 5565
    Top = 6390
    Width = 2790
    Height = 285
    TabIndex = 108
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
    Left = 1605
    Top = 6390
    Width = 2880
    Height = 255
    TabIndex = 107
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
    TabIndex = 106
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
  Begin Label Label1
    Caption = "(Y)es/(N)o"
    Index = 3
    ForeColor = &H0&
    Left = 14295
    Top = 7755
    Width = 900
    Height = 195
    Visible = 0   'False
    TabIndex = 105
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
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
  Begin Label LblLedgerAc
    Caption = "Active"
    Index = 4
    ForeColor = &H0&
    Left = 11220
    Top = 7740
    Width = 630
    Height = 240
    Visible = 0   'False
    TabIndex = 104
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
    Caption = "(+/-)"
    Index = 37
    ForeColor = &H400000&
    Left = 2640
    Top = 4215
    Width = 360
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
  Begin Label LblName
    Caption = "Name"
    Index = 0
    ForeColor = &H0&
    Left = 10800
    Top = 8505
    Width = 495
    Height = 240
    Visible = 0   'False
    TabIndex = 94
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
  Begin Label LblName
    Caption = "Short Name"
    Index = 1
    ForeColor = &HC00000&
    Left = 945
    Top = 1440
    Width = 1125
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
  Begin Label LblName
    Caption = "Multiple Persons"
    Index = 7
    ForeColor = &HC00000&
    Left = 945
    Top = 2070
    Width = 1575
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
    Caption = "Revenue Charge"
    Index = 34
    ForeColor = &HC00000&
    Left = 945
    Top = 1755
    Width = 1590
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
    Caption = "Room Type"
    Index = 21
    ForeColor = &HC00000&
    Left = 945
    Top = 1125
    Width = 1080
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
    Caption = "Monthly Rate"
    Index = 20
    ForeColor = &H0&
    Left = 11220
    Top = 7470
    Width = 1305
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
  Begin Label LblName
    Caption = "Weekly Rate"
    Index = 19
    ForeColor = &H0&
    Left = 11220
    Top = 7200
    Width = 1230
    Height = 240
    Visible = 0   'False
    TabIndex = 73
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
    Index = 0
    BackColor = &HF8DEE0&
    ForeColor = &H80&
    Left = 1365
    Top = 2415
    Width = 540
    Height = 270
    TabIndex = 72
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
    Left = 1275
    Top = 2700
    Width = 7995
    Height = 390
    BorderWidth = 2
    FillColor = &HC00000&
  End
  Begin Label LblName
    Caption = "Weekend"
    Index = 18
    ForeColor = &HC00000&
    Left = 1650
    Top = 4230
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
    Caption = "Extra Person"
    Index = 17
    ForeColor = &HC00000&
    Left = 1650
    Top = 3915
    Width = 1215
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
    Caption = "Occupancy Type"
    Index = 16
    ForeColor = &H80&
    Left = 1395
    Top = 2760
    Width = 1575
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
    Caption = "Multiple"
    Index = 15
    ForeColor = &HC00000&
    Left = 1785
    Top = 5430
    Width = 765
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
    Caption = "Single"
    Index = 14
    ForeColor = &HC00000&
    Left = 765
    Top = 5535
    Width = 615
    Height = 240
    Visible = 0   'False
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
    Caption = "Disc3 Rate"
    Index = 13
    ForeColor = &H80&
    Left = 7890
    Top = 2775
    Width = 990
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
  Begin Label LblName
    Caption = "Disc2 Rate"
    Index = 12
    ForeColor = &H80&
    Left = 6660
    Top = 2775
    Width = 990
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
  Begin Label LblName
    Caption = "Disc1 Rate"
    Index = 11
    ForeColor = &H80&
    Left = 5445
    Top = 2775
    Width = 990
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
  Begin Label LblName
    Caption = "Rack Rate"
    Index = 10
    ForeColor = &H80&
    Left = 4245
    Top = 2775
    Width = 960
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
  Begin Label LblName
    Caption = "High Rate"
    Index = 9
    ForeColor = &H80&
    Left = 3120
    Top = 2775
    Width = 930
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
    Caption = "Include Room Count"
    Index = 8
    ForeColor = &HC00000&
    Left = 5985
    Top = 2070
    Width = 1935
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
    Caption = "No. of Rooms"
    Index = 6
    ForeColor = &HC00000&
    Left = 4140
    Top = 1440
    Width = 1260
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
  Begin Label LblName
    Caption = "Minimum Advance"
    Index = 5
    ForeColor = &HC00000&
    Left = 5985
    Top = 1755
    Width = 1770
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
    Caption = "Cancellation Charge"
    Index = 4
    ForeColor = &HC00000&
    Left = 5985
    Top = 1440
    Width = 1950
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
  Begin Label LblName
    Caption = "Retention Charge"
    Index = 3
    ForeColor = &HC00000&
    Left = 5985
    Top = 1125
    Width = 1665
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
  Begin Label LblName
    Caption = "Max Person"
    Index = 2
    ForeColor = &H0&
    Left = 9780
    Top = 510
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 56
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
  End
End

Attribute VB_Name = "FrmRoomCatMast"

Private MasterFormExit As Integer
Private global_72 As Recordset15

Private Sub Form_Load() '13CE254
  'Data Table: 4D2550
  Dim var_8C As Variant
  Dim var_9C As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_B0 As String
  Dim unk_4D255E As Connection15
  Dim var_F8 As Variant
  Dim var_100 As Variant
  Dim var_FC As DataGrid
  Dim var_108 As DataGrid
  Dim var_F0 As Variant
  Dim var_128 As Variant
  Dim Me As Recordset15
  loc_13CD8C4: On Error Goto loc_13CE24C
  loc_13CD8D6: Me.LblUser.Left = CDbl(13500)
  loc_13CD8ED: Me.LblUser.Top = CDbl(7800)
  loc_13CD904: Me.LblLDt.Top = CDbl(8160)
  loc_13CD91B: Me.LblLDt.Left = CDbl(13500)
  loc_13CD92A: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_13CD939: Set var_8C = Me.TopCtrl1
  loc_13CD93F: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_8001000B("AEDP")
  loc_13CD94D: Call 0.Method_arg_50 (var_B0)
  loc_13CD955: var_C0 = CVar(var_B0) 'String
  loc_13CD95D: Set var_8C = Me.TopCtrl1
  loc_13CD963: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030007(var_C0)
  loc_13CD98B: Proc_6_17_EAAE40(var_C0, MemVar_1F95078, "Select * from enviro WHERE LogSite_Code=")
  loc_13CD9A1: unk_4D255E.Execute CStr(var_F0 & var_C0), -1, var_8C
  loc_13CD9AC: Set var_88 = var_8C
  loc_13CD9D5: If (Me.Recordset15.RecordCount > 0) Then
  loc_13CDA1B:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate1"))) <> vbNullString) Then
  loc_13CDA58:     Set var_FC = Me.LblName
  loc_13CDA5E:     Call 0.Method_Form_Load0 (9, var_100)
  loc_13CDA66:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate1").Value)
  loc_13CDAB6:     Set var_FC = Me.LblName
  loc_13CDABC:     Call 0.Method_Form_Load0 (&H21, var_100)
  loc_13CDAC4:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate1").Value)
  loc_13CDADA:   End If
  loc_13CDB1D:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate2"))) <> vbNullString) Then
  loc_13CDB5A:     Set var_FC = Me.LblName
  loc_13CDB60:     Call 0.Method_Form_Load0 (&HA, var_100)
  loc_13CDB68:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate2").Value)
  loc_13CDBB8:     Set var_FC = Me.LblName
  loc_13CDBBE:     Call 0.Method_Form_Load0 (&H20, var_100)
  loc_13CDBC6:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate2").Value)
  loc_13CDBDC:   End If
  loc_13CDC1F:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate3"))) <> vbNullString) Then
  loc_13CDC5C:     Set var_FC = Me.LblName
  loc_13CDC62:     Call 0.Method_Form_Load0 (&HB, var_100)
  loc_13CDC6A:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate3").Value)
  loc_13CDCBA:     Set var_FC = Me.LblName
  loc_13CDCC0:     Call 0.Method_Form_Load0 (&H1F, var_100)
  loc_13CDCC8:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate3").Value)
  loc_13CDCDE:   End If
  loc_13CDD21:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate4"))) <> vbNullString) Then
  loc_13CDD5E:     Set var_FC = Me.LblName
  loc_13CDD64:     Call 0.Method_Form_Load0 (&HC, var_100)
  loc_13CDD6C:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate4").Value)
  loc_13CDDBC:     Set var_FC = Me.LblName
  loc_13CDDC2:     Call 0.Method_Form_Load0 (&H1E, var_100)
  loc_13CDDCA:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate4").Value)
  loc_13CDDE0:   End If
  loc_13CDE23:   If CBool(Trim(CVar(Me.Recordset15.Fields.Item("Rate5"))) <> vbNullString) Then
  loc_13CDE60:     Set var_FC = Me.LblName
  loc_13CDE66:     Call 0.Method_Form_Load0 (&HD, var_100)
  loc_13CDE6E:     var_100.Caption = CStr(Me.Recordset15.Fields.Item("Rate5").Value)
  loc_13CDEA1:     var_F8 = Me.Recordset15.Fields.Item("Rate5")
  loc_13CDEBE:     Set var_FC = Me.LblName
  loc_13CDEC4:     Call 0.Method_Form_Load0 (&H1D, var_100)
  loc_13CDECC:     var_100.Caption = CStr(var_F8.Value)
  loc_13CDEE2:   End If
  loc_13CDEE2: End If
  loc_13CDEE7: Set var_88 = Nothing
  loc_13CDEF8: Set var_8C = Me.Txt
  loc_13CDEFE: Call 0.Method_Form_Load0 (CInt(&H36), var_F8)
  loc_13CDF1D: Me.DGRevenue.Left = CVar(var_F8.Left)
  loc_13CDF39: Set var_FC = Me.Txt
  loc_13CDF3F: Call 0.Method_Form_Load0 (CInt(&H36), var_100)
  loc_13CDF47: var_104 = var_100.Height
  loc_13CDF5A: Set var_8C = Me.Txt
  loc_13CDF60: Call 0.Method_Form_Load0 (CInt(&H36), var_F8)
  loc_13CDF68: var_F4 = var_F8.Top
  loc_13CDF78: var_9C = CVar(((var_F4 + var_104) + CDbl(&H1E))) 'Single
  loc_13CDF81: Set var_108 = Me.DGRevenue
  loc_13CDF87: var_108.Top = CVar(var_F8.Left)
  loc_13CDFA3: Set global_72 = New 
  loc_13CDFB8: Me.var_108.CursorLocation = 3
  loc_13CDFF1: var_D0 = (Trim(MemVar_1F95078) + "FOM")
  loc_13CDFFE: var_128 = "Select distinct Code,Name,TaxStru From RevMast WHERE DESKCODE='" & Trim(CVar(Me.Recordset15.Fields.Item("Rate5"))) & "' AND (LOGSITE_CODE='" 
  loc_13CE01F: Me.Recordset15.Open var_128 & CVar(MemVar_1F95078) & "' or LOGSITE_CODE='HO')  AND FLAGTYPE='FOM' AND FLAGAMR='Detail' Order by Name", CVar(MemVar_1F95044), 2
  loc_13CE03F: CVarUnk
  loc_13CE044: VerifyVarObj
  loc_13CE04A: Set var_8C = Me.DGRevenue
  loc_13CE050: LateIdStAd
  loc_13CE072: Call 0.Method_Form_Load0 (CInt(0), var_F8, var_F4, Me.Txt)
  loc_13CE07A: global_72 = var_F8.Left
  loc_13CE091: Me.DGHelp.Left = CVar(var_F4)
  loc_13CE0AD: Set var_FC = Me.Txt
  loc_13CE0B3: Call 0.Method_Form_Load0 (CInt(0), var_100, var_104)
  loc_13CE0BB: 3 = var_100.Height
  loc_13CE0CE: Set var_8C = Me.Txt
  loc_13CE0D4: Call 0.Method_Form_Load0 (CInt(0), var_F8)
  loc_13CE0EC: var_9C = CVar(((var_F8.Top + var_104) + CDbl(&H1E))) 'Single
  loc_13CE0F5: Set var_108 = Me.DGHelp
  loc_13CE0FB: var_108.Top = CVar(var_F8.Top)
  loc_13CE129: Me.var_108.CursorLocation = 3
  loc_13CE153: var_C0 = CVar("Select distinct Code As Code,Name From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_13CE171: CVarUnk
  loc_13CE176: VerifyVarObj
  loc_13CE17C: Set var_8C = Me.DGHelp
  loc_13CE182: LateIdStAd
  loc_13CE1AC: Me.DGHelp.CursorLocation = 3
  loc_13CE1D6: var_C0 = CVar("Select distinct Code as SearchCode,* From RoomCat WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_13CE1E0: r_C0, CVar(MemVar_1F95044), 2 var_C0, CVar(MemVar_1F95044), 2
  loc_13CE1FA: Me.SRate.Top = CDbl(1575)
  loc_13CE210: Me.SRate.Left = CDbl(&H3C)
  loc_13CE23B: Call Proc_23_40_EC2A2C(Proc_5_1_100EC1C("INI", Me, New, 3, -1), Me, New)
  loc_13CE246: Call Proc_23_39_1714F58(3, -1)
  loc_13CE24B: Exit Sub
  loc_13CE24C: ' Referenced from: 13CD8C4
  loc_13CE24C: Proc_6_60_E63754(-1)
  loc_13CE251: Exit Sub
End Sub

Private Sub Form_Resize() 'ED9798
  'Data Table: 4D2550
  Dim var_8C As Label
  loc_ED96F6: Call 0.Method_arg_50 (var_88)
  loc_ED9708: Me.LblFormCaption.Caption = var_88
  loc_ED9721: Me.LblFormCaption.Left = CDbl(0)
  loc_ED972D: Set var_A0 = Me.TopCtrl1
  loc_ED9733: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010006()
  loc_ED9740: Set var_8C = Me.TopCtrl1
  loc_ED9746: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_80010004()
  loc_ED9760: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_ED977B: Call 0.Method_arg_100 (var_B8)
  loc_ED978D: Me.LblFormCaption.Width = var_B8
  loc_ED9795: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E40EF8
  'Data Table: 4D2550
  loc_E40ED3: Set global_68 = Nothing
  loc_E40EE5: Set global_64 = Nothing
  loc_E40EF1: MasterFormExit = 0
  loc_E40EF4: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5A534
  'Data Table: 4D2550
  loc_E5A4FC: Set var_88 = Me.TopCtrl1
  loc_E5A502: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_E5A525: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5A52D:   Call Form_Unload(&HFF)
  loc_E5A532: End If
  loc_E5A532: Exit Sub
End Sub

Private Sub Form_Activate() 'E4F550
  'Data Table: 4D2550
  loc_E4F520: On Error Goto loc_E4F54A
  loc_E4F527: Set var_88 = Me.TopCtrl1
  loc_E4F52D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030000()
  loc_E4F542: If (CLng(CInt()) = &H2D) Then
  loc_E4F545:   Call TopCtrl1_UnknownEvent_15()
  loc_E4F54A:   ' Referenced from: E4F520
  loc_E4F54A: End If
  loc_E4F54A: Proc_6_60_E63754()
  loc_E4F54F: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2607C
  'Data Table: 4D2550
  loc_E26061: If (MasterFormExit = &HFF) Then
  loc_E26071:   Me.Global.Unload Me
  loc_E26079: End If
  loc_E26079: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E2AE8C
  'Data Table: 4D2550
  loc_E2AE64: On Error Goto loc_E2AE84
  loc_E2AE7B: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E2AE83: Exit Sub
  loc_E2AE84: ' Referenced from: E2AE64
  loc_E2AE84: Proc_6_60_E63754(Shift)
  loc_E2AE89: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_9 'F56FE0
  'Data Table: 4D2550
  Dim var_A8 As Variant
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F56EC9: Set var_A8 = Me.DGRevenue
  loc_F56ECF: var_A8.Visible = False
  loc_F56EF1: If (Me.var_A8.RecordCount > 0) Then
  loc_F56F33:   Set var_B4 = Me.Txt
  loc_F56F39:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(&H36), var_B8)
  loc_F56F41:   var_B8.Tag = CStr(Me.Recordset15.Fields.Item("Code").Value)
  loc_F56F77:   var_B0 = Me.Recordset15.Fields.Item("Name")
  loc_F56F96:   Set var_B4 = Me.Txt
  loc_F56F9C:   Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(&H36), var_B8)
  loc_F56FA4:   var_B8.Text = CStr(var_B0.Value)
  loc_F56FBA: End If
  loc_F56FC5: Set var_A8 = Me.Txt
  loc_F56FCB: Call 0.Method_DGRevenue_UnknownEvent_90 (CInt(&H36))
  loc_F56FD3: var_B0.SetFocus
  loc_F56FDF: Exit Sub
End Sub

Private Sub DGRevenue_UnknownEvent_1F 'EA93B8
  'Data Table: 4D2550
  Dim var_A8 As Variant
  loc_EA9334: Set var_88 = Me.DGRevenue
  loc_EA935E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA9366: Set var_BC = Me.DGRevenue
  loc_EA93A6: Proc_6_138_106E830(Me.DGRevenue, global_72, CInt(&H36), Me.FGPoint)
  loc_EA93B4: Exit Sub
  loc_EA93B5: StAryRecCopy
End Sub

Private Sub DGHelp_UnknownEvent_9 'F39294
  'Data Table: 4D2550
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3918B: Me.DGHelp.Visible = False
  loc_F391AA: If (Me.RecordCount > 0) Then
  loc_F391E9:   Set var_B4 = Me.Txt
  loc_F391EF:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F391F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3922A:   var_B0 = Me.Fields.Item("Name")
  loc_F39249:   Set var_B4 = Me.Txt
  loc_F3924F:   Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0), var_B8)
  loc_F39257:   var_B8.Text = CStr(var_B0.Value)
  loc_F3926D: End If
  loc_F39278: Set var_A8 = Me.Txt
  loc_F3927E: Call 0.Method_DGHelp_UnknownEvent_90 (CInt(0))
  loc_F39286: var_B0.SetFocus
  loc_F39292: Exit Sub
End Sub

Private Sub DGHelp_UnknownEvent_1F 'EA2F64
  'Data Table: 4D2550
  Dim var_A8 As Variant
  loc_EA2EE4: Set var_88 = Me.DGHelp
  loc_EA2F0E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_EA2F16: Set var_BC = Me.DGHelp
  loc_EA2F52: Proc_6_138_106E830(Me.DGHelp, global_68, CInt(0), Me.FGPoint)
  loc_EA2F60: Exit Sub
  loc_EA2F61: StAryRecMove
End Sub

Private Sub FGPoint_UnknownEvent_9 'E646D0
  'Data Table: 4D2550
  loc_E646A0: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_E646A3:   Call DGHelp_UnknownEvent_9()
  loc_E646A8: End If
  loc_E646C4: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_E646C7:   Call DGRevenue_UnknownEvent_9()
  loc_E646CC: End If
  loc_E646CC: Exit Sub
End Sub

Private Sub CmdRate_Click() '16391D0
  'Data Table: 4D2550
  Dim var_A4 As String
  Dim var_B4 As Variant
  Dim var_8C As String
  Dim var_178 As String
  Dim var_90 As Variant
  Dim var_180 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_174 As Variant
  Dim unk_4D255E As Connection15
  Dim var_19C As Variant
  Dim var_88 As Recordset15
  loc_1637C1C: On Error Goto loc_16391C9
  loc_1637C23: Set var_90 = Me.TopCtrl1
  loc_1637C29: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_1637C31: var_A4 = CStr()
  loc_1637C42: If (var_A4 = "Add") Then
  loc_1637C45:   Exit Sub
  loc_1637C46: End If
  loc_1637C5A: var_D4 = "Rate Category"
  loc_1637C60: var_B4 = "Rate Category (A-Z)"
  loc_1637CA5: var_8C = var_A4
  loc_1637CB9: If (Trim(InputBox(InputBox(var_B4, var_D4, var_F4, var_114, var_134, var_154, var_174), var_D4, var_F4, var_114, var_134, var_154, var_174)) = vbNullString) Then
  loc_1637CBC:   Exit Sub
  loc_1637CBD: End If
  loc_1637CDA: var_8C = var_A4
  loc_1637CE0: var_178 = CStr(Trim(var_8C))
  loc_1637CEE: Me.SRate.Tag = var_178
  loc_1637D1B: If (Me.SRate.Visible = 0) Then
  loc_1637D2A:   Me.SRate.Visible = True
  loc_1637D32: End If
  loc_1637D3D: Set var_90 = Me.Txt
  loc_1637D43: Call 0.Method_CmdRate_Click0 (CInt(&H20), var_180)
  loc_1637D4B: var_180.SetFocus
  loc_1637D77: Set var_90 = Me.Txt
  loc_1637D7D: Call 0.Method_CmdRate_Click0 (CInt(0), var_180, var_A4, "Select * from RateList where Roomcat=")
  loc_1637D85: var_194 = var_180.Tag
  loc_1637D93: Proc_6_17_EAAE40(var_D4, CVar(var_A4), -1)
  loc_1637DCE: Proc_6_17_EAAE40(var_154, Trim(var_178))
  loc_1637DE4: unk_4D255E.Execute CStr(var_198 & var_D4 & " And RoomNo='*****' And Code=" & var_154), var_178, 
  loc_1637DEF: Set var_88 = var_198
  loc_1637E23: Set var_90 = Me.Txt
  loc_1637E29: Call 0.Method_CmdRate_Click0 (CInt(&H20), var_180)
  loc_1637E31: var_180.Text = vbNullString
  loc_1637E4B: Set var_90 = Me.Txt
  loc_1637E51: Call 0.Method_CmdRate_Click0 (CInt(&H21), var_180)
  loc_1637E59: var_180.Text = vbNullString
  loc_1637E73: Set var_90 = Me.Txt
  loc_1637E79: Call 0.Method_CmdRate_Click0 (CInt(&H22), var_180)
  loc_1637E81: var_180.Text = vbNullString
  loc_1637E9B: Set var_90 = Me.Txt
  loc_1637EA1: Call 0.Method_CmdRate_Click0 (CInt(&H23), var_180)
  loc_1637EA9: var_180.Text = vbNullString
  loc_1637EC3: Set var_90 = Me.Txt
  loc_1637EC9: Call 0.Method_CmdRate_Click0 (CInt(&H24), var_180)
  loc_1637ED1: var_180.Text = vbNullString
  loc_1637EEB: Set var_90 = Me.Txt
  loc_1637EF1: Call 0.Method_CmdRate_Click0 (CInt(&H34), var_180)
  loc_1637EF9: var_180.Text = vbNullString
  loc_1637F13: Set var_90 = Me.Txt
  loc_1637F19: Call 0.Method_CmdRate_Click0 (CInt(&H35), var_180)
  loc_1637F21: var_180.Text = vbNullString
  loc_1637F3B: Set var_90 = Me.Txt
  loc_1637F41: Call 0.Method_CmdRate_Click0 (CInt(&H25), var_180)
  loc_1637F49: var_180.Text = vbNullString
  loc_1637F63: Set var_90 = Me.Txt
  loc_1637F69: Call 0.Method_CmdRate_Click0 (CInt(&H26), var_180)
  loc_1637F71: var_180.Text = vbNullString
  loc_1637F8B: Set var_90 = Me.Txt
  loc_1637F91: Call 0.Method_CmdRate_Click0 (CInt(&H27), var_180)
  loc_1637F99: var_180.Text = vbNullString
  loc_1637FB3: Set var_90 = Me.Txt
  loc_1637FB9: Call 0.Method_CmdRate_Click0 (CInt(&H28), var_180)
  loc_1637FC1: var_180.Text = vbNullString
  loc_1637FDB: Set var_90 = Me.Txt
  loc_1637FE1: Call 0.Method_CmdRate_Click0 (CInt(&H29), var_180)
  loc_1637FE9: var_180.Text = vbNullString
  loc_1638003: Set var_90 = Me.Txt
  loc_1638009: Call 0.Method_CmdRate_Click0 (CInt(&H2A), var_180)
  loc_1638011: var_180.Text = vbNullString
  loc_163802B: Set var_90 = Me.Txt
  loc_1638031: Call 0.Method_CmdRate_Click0 (CInt(&H2B), var_180)
  loc_1638039: var_180.Text = vbNullString
  loc_1638053: Set var_90 = Me.Txt
  loc_1638059: Call 0.Method_CmdRate_Click0 (CInt(&H2C), var_180)
  loc_1638061: var_180.Text = vbNullString
  loc_163807B: Set var_90 = Me.Txt
  loc_1638081: Call 0.Method_CmdRate_Click0 (CInt(&H2D), var_180)
  loc_1638089: var_180.Text = vbNullString
  loc_16380A3: Set var_90 = Me.Txt
  loc_16380A9: Call 0.Method_CmdRate_Click0 (CInt(&H2E), var_180)
  loc_16380B1: var_180.Text = vbNullString
  loc_16380CB: Set var_90 = Me.Txt
  loc_16380D1: Call 0.Method_CmdRate_Click0 (CInt(&H2F), var_180)
  loc_16380D9: var_180.Text = vbNullString
  loc_16380F3: Set var_90 = Me.Txt
  loc_16380F9: Call 0.Method_CmdRate_Click0 (CInt(&H30), var_180)
  loc_1638101: var_180.Text = vbNullString
  loc_163811B: Set var_90 = Me.Txt
  loc_1638121: Call 0.Method_CmdRate_Click0 (CInt(&H31), var_180)
  loc_1638129: var_180.Text = vbNullString
  loc_1638143: Set var_90 = Me.Txt
  loc_1638149: Call 0.Method_CmdRate_Click0 (CInt(&H32), var_180)
  loc_1638151: var_180.Text = vbNullString
  loc_163816B: Set var_90 = Me.Txt
  loc_1638171: Call 0.Method_CmdRate_Click0 (CInt(&H33), var_180)
  loc_1638179: var_180.Text = vbNullString
  loc_1638185: ' Referenced from: 16391BD
  loc_1638197: If Not(Me.Recordset15.EOF) Then
  loc_16381D9:   If (Me.Recordset15.Fields.Item("OccType").Value = "Single") Then
  loc_1638213:     Set var_198 = Me.LblName
  loc_1638219:     Call 0.Method_CmdRate_Click0 (&HE, var_19C)
  loc_1638221:     var_19C.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OccType")))
  loc_163828A:     Set var_198 = Me.Txt
  loc_1638290:     Call 0.Method_CmdRate_Click0 (CInt(&H20), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_1638298:     var_19C.Text = 1
  loc_1638307:     Set var_198 = Me.Txt
  loc_163830D:     Call 0.Method_CmdRate_Click0 (CInt(&H21), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")))
  loc_1638315:     var_19C.Text = 1
  loc_1638384:     Set var_198 = Me.Txt
  loc_163838A:     Call 0.Method_CmdRate_Click0 (CInt(&H22), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_1638392:     var_19C.Text = 1
  loc_1638401:     Set var_198 = Me.Txt
  loc_1638407:     Call 0.Method_CmdRate_Click0 (CInt(&H23), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_163840F:     var_19C.Text = 1
  loc_163847E:     Set var_198 = Me.Txt
  loc_1638484:     Call 0.Method_CmdRate_Click0 (CInt(&H24), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_163848C:     var_19C.Text = 1
  loc_16384FB:     Set var_198 = Me.Txt
  loc_1638501:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_1638509:     var_19C.Text = 1
  loc_1638578:     Set var_198 = Me.Txt
  loc_163857E:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_1638586:     var_19C.Text = 1
  loc_16385A0:   End If
  loc_16385DF:   If (Me.Recordset15.Fields.Item("OccType").Value = "Multiple") Then
  loc_1638619:     Set var_198 = Me.LblName
  loc_163861F:     Call 0.Method_CmdRate_Click0 (&HF, var_19C)
  loc_1638627:     var_19C.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_1638690:     Set var_198 = Me.Txt
  loc_1638696:     Call 0.Method_CmdRate_Click0 (CInt(&H25), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_163869E:     var_19C.Text = 1
  loc_163870D:     Set var_198 = Me.Txt
  loc_1638713:     Call 0.Method_CmdRate_Click0 (CInt(&H26), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_163871B:     var_19C.Text = 1
  loc_163878A:     Set var_198 = Me.Txt
  loc_1638790:     Call 0.Method_CmdRate_Click0 (CInt(&H27), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_1638798:     var_19C.Text = 1
  loc_1638807:     Set var_198 = Me.Txt
  loc_163880D:     Call 0.Method_CmdRate_Click0 (CInt(&H28), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_1638815:     var_19C.Text = 1
  loc_1638884:     Set var_198 = Me.Txt
  loc_163888A:     Call 0.Method_CmdRate_Click0 (CInt(&H29), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_1638892:     var_19C.Text = 1
  loc_1638901:     Set var_198 = Me.Txt
  loc_1638907:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_163890F:     var_19C.Text = 1
  loc_163897E:     Set var_198 = Me.Txt
  loc_1638984:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_163898C:     var_19C.Text = 1
  loc_16389A6:   End If
  loc_16389E5:   If (Me.Recordset15.Fields.Item("OccType").Value = "Extra Person") Then
  loc_1638A1F:     Set var_198 = Me.LblName
  loc_1638A25:     Call 0.Method_CmdRate_Click0 (&H11, var_19C)
  loc_1638A2D:     var_19C.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_1638A96:     Set var_198 = Me.Txt
  loc_1638A9C:     Call 0.Method_CmdRate_Click0 (CInt(&H2A), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_1638AA4:     var_19C.Text = 1
  loc_1638B13:     Set var_198 = Me.Txt
  loc_1638B19:     Call 0.Method_CmdRate_Click0 (CInt(&H2B), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_1638B21:     var_19C.Text = 1
  loc_1638B90:     Set var_198 = Me.Txt
  loc_1638B96:     Call 0.Method_CmdRate_Click0 (CInt(&H2C), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_1638B9E:     var_19C.Text = 1
  loc_1638C0D:     Set var_198 = Me.Txt
  loc_1638C13:     Call 0.Method_CmdRate_Click0 (CInt(&H2D), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_1638C1B:     var_19C.Text = 1
  loc_1638C8A:     Set var_198 = Me.Txt
  loc_1638C90:     Call 0.Method_CmdRate_Click0 (CInt(&H2E), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_1638C98:     var_19C.Text = 1
  loc_1638D07:     Set var_198 = Me.Txt
  loc_1638D0D:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_1638D15:     var_19C.Text = 1
  loc_1638D84:     Set var_198 = Me.Txt
  loc_1638D8A:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_1638D92:     var_19C.Text = 1
  loc_1638DAC:   End If
  loc_1638DEB:   If (Me.Recordset15.Fields.Item("OccType").Value = "Weekend") Then
  loc_1638E25:     Set var_198 = Me.LblName
  loc_1638E2B:     Call 0.Method_CmdRate_Click0 (&H12, var_19C)
  loc_1638E33:     var_19C.Caption = Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("OccType")), 1)
  loc_1638E9C:     Set var_198 = Me.Txt
  loc_1638EA2:     Call 0.Method_CmdRate_Click0 (CInt(&H2F), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate1")), "0.00")))
  loc_1638EAA:     var_19C.Text = 1
  loc_1638F19:     Set var_198 = Me.Txt
  loc_1638F1F:     Call 0.Method_CmdRate_Click0 (CInt(&H30), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate2")), "0.00")), 1)
  loc_1638F27:     var_19C.Text = 1
  loc_1638F96:     Set var_198 = Me.Txt
  loc_1638F9C:     Call 0.Method_CmdRate_Click0 (CInt(&H31), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate3")), "0.00")), 1)
  loc_1638FA4:     var_19C.Text = 1
  loc_1639013:     Set var_198 = Me.Txt
  loc_1639019:     Call 0.Method_CmdRate_Click0 (CInt(&H32), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate4")), "0.00")), 1)
  loc_1639021:     var_19C.Text = 1
  loc_1639090:     Set var_198 = Me.Txt
  loc_1639096:     Call 0.Method_CmdRate_Click0 (CInt(&H33), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("Rate5")), "0.00")), 1)
  loc_163909E:     var_19C.Text = 1
  loc_163910D:     Set var_198 = Me.Txt
  loc_1639113:     Call 0.Method_CmdRate_Click0 (CInt(&H34), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateW")), "0.00")), 1)
  loc_163911B:     var_19C.Text = 1
  loc_163918A:     Set var_198 = Me.Txt
  loc_1639190:     Call 0.Method_CmdRate_Click0 (CInt(&H35), var_19C, CStr(Format(CVar(Me.Recordset15.Fields.Item("RateM")), "0.00")), 1)
  loc_1639198:     var_19C.Text = 1
  loc_16391B2:   End If
  loc_16391B8:   var_88.MoveNext
  loc_16391BD:   GoTo loc_1638185
  loc_16391C0: End If
  loc_16391C5: Set var_88 = Nothing
  loc_16391C8: Exit Sub
  loc_16391C9: ' Referenced from: 1637C1C
  loc_16391C9: Proc_6_60_E63754(1)
  loc_16391CE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F1EB50
  'Data Table: 4D2550
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_F1EA4C: On Error Goto loc_F1EB4A
  loc_F1EA5C: Me.LblUser.Caption = vbNullString
  loc_F1EA71: Me.LblLDt.Caption = vbNullString
  loc_F1EA9C: Call Proc_23_40_EC2A2C(Proc_5_1_100EC1C("ADD", Me))
  loc_F1EAA7: Call Proc_23_38_FA1038(global_64)
  loc_F1EABA: Set var_88 = Me.Txt
  loc_F1EAC0: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1F), var_94)
  loc_F1EAC8: var_94.Text = "Room"
  loc_F1EAE2: Set var_88 = Me.Txt
  loc_F1EAE8: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1F), var_94)
  loc_F1EAF0: var_94.Tag = "RO"
  loc_F1EB0A: Set var_88 = Me.Txt
  loc_F1EB10: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(8), var_94)
  loc_F1EB18: var_94.Text = "Yes"
  loc_F1EB2F: Set var_88 = Me.Txt
  loc_F1EB35: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0))
  loc_F1EB3D: var_94.SetFocus
  loc_F1EB49: Exit Sub
  loc_F1EB4A: ' Referenced from: F1EA4C
  loc_F1EB4A: Proc_6_60_E63754(var_94)
  loc_F1EB4F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'EA0958
  'Data Table: 4D2550
  loc_EA08E0: On Error Goto loc_EA0951
  loc_EA091A: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E4, var_104) = 6) Then
  loc_EA0940:   Call Proc_23_40_EC2A2C(Proc_5_1_100EC1C("INI", Me))
  loc_EA094B:   Call Proc_23_39_1714F58(global_64)
  loc_EA0950: End If
  loc_EA0950: Exit Sub
  loc_EA0951: ' Referenced from: EA08E0
  loc_EA0951: Proc_6_60_E63754()
  loc_EA0956: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '122D5B4
  'Data Table: 4D2550
  Dim var_9C As Variant
  Dim Me As Recordset15
  Dim var_96 As Integer
  Dim unk_4D255E As Connection15
  Dim var_118 As Variant
  Dim var_B4 As String
  loc_122D0C8: On Error Goto loc_122D55A
  loc_122D0D8: Me.LblUser.Caption = vbNullString
  loc_122D0ED: Me.LblLDt.Caption = vbNullString
  loc_122D103: If (Proc_183_56_FE8B08(global_64) = &HFF) Then
  loc_122D106:   Exit Sub
  loc_122D107: End If
  loc_122D139: var_D4 = "Room Master"
  loc_122D181: If (Proc_6_108_101061C(MemVar_1F95044, "RoomMast", "RoomCat", CStr(Me.Fields.Item("Code").Value)) = 0) Then
  loc_122D184:   Exit Sub
  loc_122D185: End If
  loc_122D1BC: If (MsgBox("Delete Record ?", &H24, "Confirmation", var_118, var_138) = 6) Then
  loc_122D1C1:   var_96 = 0
  loc_122D1CD:   unk_4D255E.BeginTrans var_D0
  loc_122D1D4:   var_96 = &HFF
  loc_122D1E8:   var_94 = Me.Bookmark 'Variant
  loc_122D242:   unk_4D255E.Execute CStr("Delete From RoomCat Where Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_138, -1
  loc_122D28D:   var_168 = 0
  loc_122D2A0:   var_160 = 0
  loc_122D2AB:   var_15C = 0
  loc_122D2BE:   var_154 = 0
  loc_122D2C9:   var_150 = 0
  loc_122D2DC:   var_148 = 0
  loc_122D325:   Proc_154_5_10E3BD4(MemVar_1F95044, "RoomCat", "Code", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_122D395:   var_118 = "Delete From RateList Where RoomCat='" & Me.Fields.Item("SearchCode").Value & "'" 
  loc_122D3A3:   unk_4D255E.Execute CStr(var_118), var_138, -1
  loc_122D3EE:   var_168 = 0
  loc_122D401:   var_160 = 0
  loc_122D40C:   var_15C = 0
  loc_122D41F:   var_154 = 0
  loc_122D42A:   var_150 = 0
  loc_122D43D:   var_148 = 0
  loc_122D47D:   var_B4 = "RateList"
  loc_122D486:   Proc_154_5_10E3BD4(MemVar_1F95044, var_B4, "RoomCat", &HC8, CStr(Me.Fields.Item("SearchCode").Value), 0, 0, 0)
  loc_122D4B4:   unk_4D255E.CommitTrans
  loc_122D4BB:   var_96 = 0
  loc_122D4C9:   Me.Requery -1
  loc_122D4D9:   Me.Requery -1
  loc_122D4F9:   If (CVar(Me.RecordCount) >= var_94) Then
  loc_122D506:     Me.Bookmark = var_94
  loc_122D50E:   Else
  loc_122D522:     If (Me.EOF = 0) Then
  loc_122D52B:       Me.MoveLast
  loc_122D530:     End If
  loc_122D530:   End If
  loc_122D530:   Call Proc_23_39_1714F58(var_96, var_148, 0, var_150, var_154)
  loc_122D551:   Proc_5_0_1107AD0(&HFF, Me, global_64, 0)
  loc_122D559: End If
  loc_122D559: Exit Sub
  loc_122D55A: ' Referenced from: 122D0C8
  loc_122D560: If (var_96 = &HFF) Then
  loc_122D569:   unk_4D255E.RollbackTrans
  loc_122D56E: End If
  loc_122D576: Set var_9C = Err()
  loc_122D57C: Call 0.Method_arg_2C (var_B4, 0, var_15C)
  loc_122D59D: MsgBox(CVar(var_B4), &H30, " Deletion Error ", var_118, var_138)
  loc_122D5B0: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F6D598
  'Data Table: 4D2550
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F6D468: On Error Goto loc_F6D554
  loc_F6D479: If (Proc_183_55_FE8490(global_64) = &HFF) Then
  loc_F6D47C:   Exit Sub
  loc_F6D47D: End If
  loc_F6D494: If (Me.RecordCount > 0) Then
  loc_F6D4BA:   Call Proc_23_40_EC2A2C(Proc_5_1_100EC1C("EDIT", Me))
  loc_F6D4D3:   Set var_90 = Me.Txt
  loc_F6D4D9:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F6D4E1:   var_8C = var_98.Text
  loc_F6D4EC:   global_76 = var_8C
  loc_F6D505:   Set var_90 = Me.Txt
  loc_F6D50B:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F6D513:   var_98.SetFocus
  loc_F6D522: Else
  loc_F6D543:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F6D553: End If
  loc_F6D553: Exit Sub
  loc_F6D554: ' Referenced from: F6D468
  loc_F6D55C: Set var_90 = Err()
  loc_F6D562: Call 0.Method_arg_2C (var_8C)
  loc_F6D583: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F6D596: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E16048
  'Data Table: 4D2550
  loc_E1603D: Me.Global.Unload Me
  loc_E16045: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EC8D70
  'Data Table: 4D2550
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EC8CD0: On Error Goto loc_EC8D68
  loc_EC8CEA: If (Me.RecordCount <= 0) Then
  loc_EC8CF3:   var_B8 = "Information"
  loc_EC8D0E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EC8D1E:   Exit Sub
  loc_EC8D1F: End If
  loc_EC8D26: var_10C = "Select distinct Code As SearchCode,Name as RoomCategory,ShortName,CAST(RetChg AS VARCHAR(11)) AS RetChg,CAST(CancelChg AS vARcHAR(11)) AS CancelChg,CAST(NoRooms as VARCHAR(5)) AS NoRooms,cast(MinAdv as VarChar(11)) as MinAdv FROM RoomCat where (LOGSITE_CODE='" & MemVar_1F95078
  loc_EC8D2D: MemVar_1F950E4 = var_10C & "' or LOGSITE_CODE='HO') Order by Name"
  loc_EC8D3A: MemVar_1F95120 = Me
  loc_EC8D47: Proc_6_126_F1C850("2000,2000,1000,1000,1000,1000")
  loc_EC8D62: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EC8D67: Exit Sub
  loc_EC8D68: ' Referenced from: EC8CD0
  loc_EC8D68: Proc_6_60_E63754(MemVar_1F950E4)
  loc_EC8D6D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2D9C8
  'Data Table: 4D2550
  loc_E2D9B8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D9C0: Call Proc_23_39_1714F58(global_64)
  loc_E2D9C5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2D968
  'Data Table: 4D2550
  loc_E2D958: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D960: Call Proc_23_39_1714F58(global_64)
  loc_E2D965: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2D908
  'Data Table: 4D2550
  loc_E2D8F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D900: Call Proc_23_39_1714F58(global_64)
  loc_E2D905: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D8A8
  'Data Table: 4D2550
  loc_E2D898: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D8A0: Call Proc_23_39_1714F58(global_64)
  loc_E2D8A5: Exit Sub
  loc_E2D8A6: CExtInstUnk
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '14977E4
  'Data Table: 4D2550
  Dim var_B0 As String
  Dim var_C8 As String
  Dim unk_4D255E As Connection15
  Dim var_BC As Variant
  Dim var_AC As Recordset15
  Dim var_A8 As Recordset15
  Dim var_FC As Recordset15
  Dim var_DC As Variant
  Dim var_B8 As Fields15
  Dim var_10C As String
  Dim var_EC As Variant
  Dim var_13C As String
  Dim var_11C As Variant
  Dim var_9C As Recordset15
  Dim var_F6 As Integer
  Dim var_C0 As String
  loc_1496B84: On Error Goto loc_14977DE
  loc_1496B8B: Set var_9C = New 
  loc_1496B96: Set var_9C = Proc_3_22_10F931C(var_9C)
  loc_1496BAD: var_B0 = "SELECT R.ShortName, R.Name AS RoomName, R.MaxPerson,R.RetChg,R.CancelChg,R.MinAdv,R.NoRooms,R.MultPer,R.InclCount,RevMast.Name as RevCharge FROM (RoomCat AS R LEFT JOIN RevMast ON R.RevCode = RevMast.Code)" & "where (R.LOGSITE_CODE='"
  loc_1496BCC: Set var_B8 = Me.Txt
  loc_1496BD2: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_BC, var_C0, var_B0 & MemVar_1F95078 & "' or R.LOGSITE_CODE='HO') and R.code='")
  loc_1496BDA: var_EC = Me.Txt.Tag
  loc_1496BE3: var_C8 = -1 & var_C0
  loc_1496BF3: unk_4D255E.Execute var_C8 & "'", var_F0, 
  loc_1496BFE: Set var_A8 = var_F0
  loc_1496C23: var_B0 = "SELECT RT.Rate1, RT.Rate2, RT.Rate3, RT.Rate4, RT.Rate5, RT.OccType, RT.RateW, RT.RateM FROM RateList AS RT " & "where (RT.LOGSITE_CODE='"
  loc_1496C42: Set var_B8 = Me.Txt
  loc_1496C48: Call 0.Method_TopCtrl1_UnknownEvent_140 (CInt(0), var_BC)
  loc_1496C60: var_88 = var_B0 & MemVar_1F95078 & "' or RT.LOGSITE_CODE='HO')  and RT.RoomCat='" & var_BC.Tag & "' AND RT.CODE='*'AND RT.RoomNo ='*****'"
  loc_1496C8D: unk_4D255E.Execute var_88, var_EC, -1
  loc_1496CB5: If (var_B8.RecordCount <= 0) Then
  loc_1496CBF:   var_B0 = "SELECT 0 AS Rate1, 0 AS Rate2, 0 AS Rate3, 0 AS Rate4, 0 AS Rate5, '' AS OccType, 0 AS RateW, 0 AS RateM FROM RateList where (LOGSITE_CODE='" & MemVar_1F95078
  loc_1496CE2:   unk_4D255E.Execute var_B0 & "' or LOGSITE_CODE='HO') ", var_EC, -1
  loc_1496CED:   Set var_AC = var_B8
  loc_1496CF6: End If
  loc_1496D0A: If (var_A8.RecordCount > 0) Then
  loc_1496D21:   If (var_AC.RecordCount > 0) Then
  loc_1496D27:     var_AC.MoveFirst
  loc_1496D2C:     ' Referenced from: 149738C
  loc_1496D3B:     If Not(var_AC.EOF) Then
  loc_1496D41:       Set var_FC = var_9C 
  loc_1496D50:       var_FC.AddNew var_DC, var_10C
  loc_1496D77:       var_EC = var_A8.Fields.Item("ShortName").Value
  loc_1496D89:       var_FC.Collect = "ShortName"
  loc_1496DBA:       var_EC = var_A8.Fields.Item("RoomName").Value
  loc_1496DCC:       var_FC.Collect = "RoomCatName"
  loc_1496DFD:       var_EC = var_A8.Fields.Item("RevCharge").Value
  loc_1496E0F:       var_FC.Collect = "RevCharge"
  loc_1496E59:       var_12C = Format(CVar(var_A8.Fields.Item("RetChg")), "0.00")
  loc_1496E6B:       var_FC.Collect = "RetenCharge"
  loc_1496EB7:       var_12C = Format(CVar(var_A8.Fields.Item("CancelChg")), "0.00")
  loc_1496EC9:       var_FC.Collect = "CancelCharge"
  loc_1496F15:       var_12C = Format(CVar(var_A8.Fields.Item("MINADV")), "0.00")
  loc_1496F27:       var_FC.Collect = "MinAdvance"
  loc_1496F5A:       var_EC = var_A8.Fields.Item("noRooms").Value
  loc_1496F6C:       var_FC.Collect = "NoRoom"
  loc_1496F9D:       var_EC = var_A8.Fields.Item("MultPer").Value
  loc_1496FAF:       var_FC.Collect = "MultiPer"
  loc_1497008:       var_12C = (var_A8.Fields.Item("InclCount").Value = "Y") 'Variant
  loc_1497024:       var_FC.Collect = "InclCount"
  loc_1497065:       var_11C = CVar(Proc_6_38_E69628(CVar(var_AC.Fields.Item("OccType")), IIf(var_12C, "Yes", "No"), CVar(var_AC.Fields.Item("OccType")), CVar(var_AC.Fields.Item("OccType")), var_12C, 1, 1)) 'String
  loc_1497072:       var_FC.Collect = "OccType"
  loc_14970A7:       Proc_6_39_E7D3A0(var_11C, CVar(var_AC.Fields.Item("Rate1")), var_11C, var_12C, 1)
  loc_14970D9:       var_FC.Collect = "Rate1"
  loc_1497112:       Proc_6_39_E7D3A0(var_11C, CVar(var_AC.Fields.Item("Rate2")), Format(var_11C, "0.00"), 1, 1)
  loc_1497144:       var_FC.Collect = "Rate2"
  loc_149717D:       Proc_6_39_E7D3A0(var_11C, CVar(var_AC.Fields.Item("Rate3")), Format(var_11C, "0.00"), 1, 1)
  loc_14971AF:       var_FC.Collect = "Rate3"
  loc_14971E8:       Proc_6_39_E7D3A0(var_11C, CVar(var_AC.Fields.Item("Rate4")), Format(var_11C, "0.00"), 1, 1)
  loc_149721A:       var_FC.Collect = "Rate4"
  loc_1497253:       Proc_6_39_E7D3A0(var_11C, CVar(var_AC.Fields.Item("Rate5")), Format(var_11C, "0.00"), 1, 1)
  loc_1497285:       var_FC.Collect = "Rate5"
  loc_14972BE:       Proc_6_39_E7D3A0(var_11C, CVar(var_AC.Fields.Item("RateW")), Format(var_11C, "0.00"), 1, 1)
  loc_14972F0:       var_FC.Collect = "WeekRate"
  loc_1497306:       var_DC = "RateM"
  loc_149731A:       var_BC = var_AC.Fields.Item(var_DC)
  loc_1497329:       Proc_6_39_E7D3A0(var_11C, CVar(var_BC), Format(var_11C, "0.00"), 1, 1)
  loc_1497338:       var_10C = "0.00"
  loc_149733D:       var_12C = var_10C
  loc_1497349:       var_14C = Format(var_11C, var_12C)
  loc_1497352:       var_13C = "MonRate"
  loc_149735B:       var_FC.Collect = var_13C
  loc_1497379:       var_FC.Update var_DC, var_10C
  loc_1497380:       Set var_FC = Nothing 
  loc_1497387:       var_AC.MoveNext
  loc_149738C:       GoTo loc_1496D2C
  loc_149738F:     End If
  loc_149738F:   End If
  loc_149738F: End If
  loc_1497395: var_F4 = var_9C.RecordCount
  loc_14973A3: If (var_F4 <= 0) Then
  loc_14973AC:   Call 0.Method_arg_50 (var_B0, var_14C, 1, 1)
  loc_14973CD:   MsgBox("** No Records Found to Print **", &H40, CVar(var_B0), var_12C, var_14C)
  loc_14973DD:   Exit Sub
  loc_14973DE: End If
  loc_14973F4: Set var_B8 = var_9C 
  loc_1497400: var_F6 = CreateFieldDefFile(var_B8, MemVar_1F950B4 & "\RoomCategory.ttx", &HFF, 1)
  loc_149740A: Set var_9C = var_B8
  loc_1497410: var_DC = CVar(var_F6) 'Integer
  loc_1497413: var_98 = var_DC 'Variant
  loc_149742F: var_B0 = MemVar_1F950B4 & "\RoomCategory.RPT"
  loc_1497438: Call 0.Method_arg_1C (var_B0, var_DC, var_B8, var_F6)
  loc_1497443: MemVar_1F951E8 = var_B8
  loc_149745E: Call 0.Method_arg_90 (var_B8, var_F4, var_9E, 1)
  loc_1497466: Call 0.Method_arg_24 (var_12C, 1)
  loc_1497472: For var_190 =  To CInt(var_F4): 1 = var_190 'Integer
  loc_149748B:   Call 0.Method_arg_90 (var_B8, CLng(var_9E))
  loc_1497493:   Call 0.Method_arg_20 (var_BC)
  loc_149749B:   Call 0.Method_arg_30 (var_B0)
  loc_14974A3:   var_194 = var_B0
  loc_14974B5:   If (var_194 = "Title") Then
  loc_14974CB:     Call 0.Method_arg_90 (var_B8, CLng(var_9E))
  loc_14974D3:     Call 0.Method_arg_20 (var_BC)
  loc_14974DB:     Call 0.Method_arg_38 ("'ROOM CATEGORY MASTER'")
  loc_14974EA:   Else
  loc_14974F2:     If (var_194 = "rate1") Then
  loc_1497504:       Set var_B8 = Me.LblName
  loc_149750A:       Call 0.Method_TopCtrl1_UnknownEvent_140 (9, var_BC)
  loc_1497535:       Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_149753D:       Call 0.Method_arg_20 (var_198)
  loc_1497545:       Call 0.Method_arg_38 ("'" & var_BC.Caption & "'")
  loc_1497561:     Else
  loc_1497569:       If (var_194 = "rate2") Then
  loc_149757B:         Set var_B8 = Me.LblName
  loc_1497581:         Call 0.Method_TopCtrl1_UnknownEvent_140 (&HA, var_BC)
  loc_14975AC:         Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_14975B4:         Call 0.Method_arg_20 (var_198)
  loc_14975BC:         Call 0.Method_arg_38 ("'" & var_BC.Caption & "'")
  loc_14975D8:       Else
  loc_14975E0:         If (var_194 = "rate3") Then
  loc_14975F2:           Set var_B8 = Me.LblName
  loc_14975F8:           Call 0.Method_TopCtrl1_UnknownEvent_140 (&HB, var_BC)
  loc_1497623:           Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_149762B:           Call 0.Method_arg_20 (var_198)
  loc_1497633:           Call 0.Method_arg_38 ("'" & var_BC.Caption & "'")
  loc_149764F:         Else
  loc_1497657:           If (var_194 = "rate4") Then
  loc_1497669:             Set var_B8 = Me.LblName
  loc_149766F:             Call 0.Method_TopCtrl1_UnknownEvent_140 (&HC, var_BC)
  loc_149769A:             Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_14976A2:             Call 0.Method_arg_20 (var_198)
  loc_14976AA:             Call 0.Method_arg_38 ("'" & var_BC.Caption & "'")
  loc_14976C6:           Else
  loc_14976CE:             If (var_194 = "rate5") Then
  loc_14976E0:               Set var_B8 = Me.LblName
  loc_14976E6:               Call 0.Method_TopCtrl1_UnknownEvent_140 (&HD, var_BC)
  loc_14976EE:               var_B0 = var_BC.Caption
  loc_1497711:               Call 0.Method_arg_90 (var_F0, CLng(var_9E))
  loc_1497719:               Call 0.Method_arg_20 (var_198)
  loc_1497721:               Call 0.Method_arg_38 ("'" & var_B0 & "'")
  loc_149773A:             End If
  loc_149773A:           End If
  loc_149773A:         End If
  loc_149773A:       End If
  loc_149773A:     End If
  loc_149773A:   End If
  loc_149773D: Next var_190 'Integer
  loc_149775B: Call 0.Method_arg_64 (var_B8, CVar(var_9C))
  loc_1497763: Call 0.Method_arg_2C (var_10C)
  loc_1497771: Call 0.Method_arg_150 (var_13C)
  loc_149777C: Call 0.Method_arg_50 (var_B0)
  loc_1497786: Set var_BC = Nothing
  loc_14977A0: Set var_B8 = MemVar_1F951E8 
  loc_14977AC: Proc_6_99_1484404(var_B8, 0, var_B0)
  loc_14977B7: MemVar_1F951E8 = var_B8
  loc_14977CA: Set var_9C = Nothing
  loc_14977D2: Set var_AC = Nothing
  loc_14977DA: Set var_A8 = Nothing
  loc_14977DD: Exit Sub
  loc_14977DE: ' Referenced from: 1496B84
  loc_14977DE: Proc_6_60_E63754(&HFF)
  loc_14977E3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E239CC
  'Data Table: 4D2550
  Dim Me As Recordset15
  loc_E239B3: Me.Requery -1
  loc_E239C6: Me.Recordset15.Requery -1
  loc_E239CB: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1752BF4
  'Data Table: 4D2550
  Dim var_B4 As String
  Dim var_EC As Variant
  Dim var_CC As String
  Dim unk_4D255E As Connection15
  Dim var_A8 As Variant
  Dim var_AC As Variant
  Dim var_B0 As Field20
  Dim var_100 As String
  Dim var_110 As Variant
  Dim var_DC As Variant
  Dim var_120 As Variant
  Dim Me As Recordset15
  Dim var_12C As TextBox
  Dim var_140 As TextBox
  Dim var_154 As TextBox
  Dim var_168 As TextBox
  Dim var_378 As Double
  Dim var_180 As TextBox
  Dim var_380 As Double
  Dim var_198 As TextBox
  Dim var_388 As Double
  Dim var_1B0 As TextBox
  Dim var_390 As Double
  Dim var_1C8 As TextBox
  Dim var_398 As Double
  Dim var_C8 As Variant
  Dim var_308 As Variant
  Dim var_160 As String
  Dim var_174 As String
  Dim var_178 As String
  Dim var_18C As String
  Dim var_190 As String
  Dim var_1A8 As String
  Dim var_1C0 As String
  Dim var_200 As Variant
  Dim var_2D0 As Variant
  Dim var_348 As Variant
  Dim var_34C As String
  Dim var_3CC As TextBox
  Dim var_184 As String
  Dim var_19C As String
  Dim var_1B4 As String
  Dim var_318 As Variant
  Dim var_36C As Variant
  Dim var_1CC As String
  Dim var_448 As Double
  Dim var_450 As Double
  Dim var_438 As String
  Dim var_280 As Variant
  loc_1750FCC: On Error Goto loc_1752BA1
  loc_1750FD3: var_86 = CByte(0) 'Byte
  loc_1750FE2: Set var_A8 = Me.Txt
  loc_1750FE8: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_1751011: If (Proc_6_27_EA61EC(var_AC, "Name") = 0) Then
  loc_175101B:   Call Txt_GotFocus()
  loc_1751020:   Exit Sub
  loc_1751021: End If
  loc_1751024: Call Proc_23_37_1093BD0(var_B6, CInt(0))
  loc_175102F: If (var_B6 = &HFF) Then
  loc_1751032:   Exit Sub
  loc_1751033: End If
  loc_1751037: Set var_A8 = Me.TopCtrl1
  loc_175103D: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_AC)
  loc_1751056: If (CStr() = "Add") Then
  loc_175105F:   var_EC = 0
  loc_175107C:   var_B4 = "Select IsNull(Max(CAST(SUBSTRING(Code,3,3) AS INT)),1)+1 AS MyCode From RoomCat WHERE SITE_CODE='" & MemVar_1F95070
  loc_175108C:   unk_4D255E.Execute CStr() & "'", var_C8, -1
  loc_1751094:   var_A8 = var_A8.Fields
  loc_175109C:   var_EC = var_AC.Item(var_AC)
  loc_17510A4:   var_B0 = var_B0.Value
  loc_17510DD:   var_110 = CVar(Proc_6_45_EADFB8(MemVar_1F95070, 2)) 'String
  loc_175110B:   var_120 = (1 + Format(CStr(var_FC), "000"))
  loc_1751116:   global_56 = CStr(var_120)
  loc_175112B: Else
  loc_1751148:   var_AC = Me.Fields.Item("SearchCode")
  loc_1751150:   var_C8 = var_AC.Value
  loc_175115F:   global_56 = CStr(var_C8)
  loc_1751170: End If
  loc_1751179: unk_4D255E.BeginTrans var_124
  loc_1751182: var_86 = CByte(1) 'Byte
  loc_17511AD: unk_4D255E.Execute "Delete From RateList Where RoomCat='" & global_56 & "' and RoomNo='*****' AND Code='*'", var_C8, -1
  loc_17511C9: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(Me.TopCtrl1)
  loc_17511D1: var_B4 = CStr(1)
  loc_17511E2: If (var_B4 = "Add") Then
  loc_17511F3:   Set var_A8 = Me.Txt
  loc_17511F9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_AC, var_B4)
  loc_1751201:   var_110 = var_AC.Tag
  loc_1751214:   Set var_B0 = Me.Txt
  loc_175121A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_12C)
  loc_1751235:   Set var_13C = Me.Txt
  loc_175123B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_140)
  loc_1751256:   Set var_150 = Me.Txt
  loc_175125C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H36), var_154)
  loc_1751277:   Set var_164 = Me.Txt
  loc_175127D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_168)
  loc_1751292:   var_378 = Val(var_168.Text)
  loc_17512A3:   Set var_17C = Me.Txt
  loc_17512A9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_180, var_184)
  loc_17512BE:   var_380 = Val(var_184)
  loc_17512CF:   Set var_194 = Me.Txt
  loc_17512D5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_198, var_19C)
  loc_17512EA:   var_388 = Val(var_19C)
  loc_17512FB:   Set var_1AC = Me.Txt
  loc_1751301:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_1B0, var_1B4)
  loc_1751316:   var_390 = Val(var_1B4)
  loc_1751327:   Set var_1C4 = Me.Txt
  loc_175132D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1C8, var_1CC)
  loc_1751350:   Set var_1DC = Me.Txt
  loc_1751356:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1E0)
  loc_175137D:   Proc_6_7_F26918(var_280, Date)
  loc_175138D:   Set var_2F4 = Me.Txt
  loc_1751393:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H38), var_2F8)
  loc_17513A2:   Proc_6_17_EAAE40(var_318, CVar(var_2F8))
  loc_17513BB:   var_CC = "Insert Into RoomCat(Type,Code,Name,ShortName,RevCode,RetChg,CancelChg,MinAdv,NoRooms,MultPer,InclCount,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code,MapCode) Values('" & var_B4
  loc_17513C2:   var_100 = var_CC & "','"
  loc_17513F6:   var_160 = var_100 & global_56 & "','" & var_12C.Text & "','" & var_140.Text & "','" & var_154.Tag
  loc_1751409:   var_178 = var_160 & "'," & CStr(var_180.Text)
  loc_175141C:   var_190 = var_178 & "," & CStr(var_198.Text)
  loc_175142F:   var_1A8 = var_190 & "," & CStr(var_1B0.Text)
  loc_1751475:   var_200 = CVar(var_1A8 & "," & CStr(var_1C8.Text) & "," & CStr(Val(var_1CC)) & ",'") & Left(CVar(var_1E0), 1) & "','" & CVar(MemVar_1F95070) 
  loc_17514C4:   var_348 = var_200 & "','" & CVar(MemVar_1F950C8) & "'," & var_280 & ",'A','" & CVar(MemVar_1F95078) & "'," & var_318 & ")" 
  loc_17514D2:   unk_4D255E.Execute CStr(var_348), var_36C, -1
  loc_1751579: Else
  loc_1751587:   Set var_A8 = Me.Txt
  loc_175158D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_AC, var_B4)
  loc_1751595:   var_370 = var_AC.Text
  loc_17515A8:   Set var_B0 = Me.Txt
  loc_17515AE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_12C, var_100)
  loc_17515B6:   var_398 = var_12C.Text
  loc_17515C9:   Set var_13C = Me.Txt
  loc_17515CF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H36), var_140)
  loc_17515EA:   Set var_150 = Me.Txt
  loc_17515F0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_154)
  loc_1751605:   var_378 = Val(var_154.Text)
  loc_1751616:   Set var_164 = Me.Txt
  loc_175161C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(4), var_168, var_160)
  loc_1751631:   var_380 = Val(var_160)
  loc_1751642:   Set var_17C = Me.Txt
  loc_1751648:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(5), var_180, var_178)
  loc_175165D:   var_388 = Val(var_178)
  loc_175166E:   Set var_194 = Me.Txt
  loc_1751674:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(6), var_198, var_190)
  loc_1751689:   var_390 = Val(var_190)
  loc_175169A:   Set var_1AC = Me.Txt
  loc_17516A0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(7), var_1B0, var_1A8)
  loc_17516B5:   var_398 = Val(var_1A8)
  loc_17516C3:   Set var_1C4 = Me.Txt
  loc_17516C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(8), var_1C8)
  loc_17516DD:   var_FC = Left(CVar(var_1C8), 1)
  loc_17516F0:   Proc_6_7_F26918(var_280, Date)
  loc_1751700:   Set var_1DC = Me.Txt
  loc_1751706:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H37), var_1E0)
  loc_175170E:   var_2D0 = CVar(var_1E0) 'Address
  loc_1751725:   Set var_2F4 = Me.Txt
  loc_175172B:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H38), var_2F8)
  loc_175173A:   Proc_6_17_EAAE40(var_348, CVar(var_2F8))
  loc_175174D:   Set var_370 = Me.Txt
  loc_1751753:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_3CC)
  loc_175175B:   var_1C0 = var_3CC.Tag
  loc_1751774:   var_CC = "Update RoomCat Set Name='" & var_B4
  loc_17517B6:   var_174 = var_CC & "', ShortName='" & var_100 & "',RevCode='" & var_140.Tag & "', RetChg=" & CStr(var_168.Text) & ",CancelChg=" & CStr(var_180.Text)
  loc_17517F6:   var_110 = CVar(var_174 & ", MinAdv=" & CStr(var_198.Text) & ",NoRooms=" & CStr(var_1B0.Text) & ", MultPer=" & CStr(var_398) & ",InclCount='") 'String
  loc_175180F:   var_200 = var_110 & var_FC & "',Site_Code='" & CVar(MemVar_1F95070) 
  loc_1751845:   var_308 = var_200 & "',U_Name='" & CVar(MemVar_1F950C8) & "', U_EntDt=" & var_280 & ", U_AE='E',ActiveYN='" & CVar(Proc_6_38_E69628(var_2D0, var_398)) 
  loc_1751895:   unk_4D255E.Execute CStr(var_308 & "',MapCode=" & var_348 & " Where Code='" & CVar(global_56) & "' and Type='" & CVar(var_1C0) & "'"), var_42C, -1
  loc_1751941: End If
  loc_175194F: Set var_A8 = Me.Txt
  loc_1751955: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_AC, var_B4)
  loc_175195D: var_430 = var_AC.Text
  loc_175197D: Set var_B0 = Me.Txt
  loc_1751983: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_12C, var_CC)
  loc_175198B: (CDbl(Val(var_B4)) <> CDbl(0)) = var_12C.Text
  loc_17519AC: Set var_13C = Me.Txt
  loc_17519B2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_140)
  loc_17519DB: Set var_150 = Me.Txt
  loc_17519E1: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_154)
  loc_1751A0A: Set var_164 = Me.Txt
  loc_1751A10: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_168)
  loc_1751A4F: If ((((var_FC Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_140.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Or (CDbl(Val(var_168.Text)) <> CDbl(0))) Then
  loc_1751A5E:   Set var_A8 = Me.LblName
  loc_1751A64:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HE, var_AC)
  loc_1751A6C:   var_CC = var_AC.Caption
  loc_1751A7F:   Set var_B0 = Me.Txt
  loc_1751A85:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(9), var_12C)
  loc_1751A9A:   var_378 = Val(var_12C.Text)
  loc_1751AAB:   Set var_13C = Me.Txt
  loc_1751AB1:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HA), var_140)
  loc_1751AC6:   var_380 = Val(var_140.Text)
  loc_1751AD7:   Set var_150 = Me.Txt
  loc_1751ADD:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HB), var_154, var_160)
  loc_1751AF2:   var_388 = Val(var_160)
  loc_1751B03:   Set var_164 = Me.Txt
  loc_1751B09:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HC), var_168, var_178)
  loc_1751B1E:   var_390 = Val(var_178)
  loc_1751B2F:   Set var_17C = Me.Txt
  loc_1751B35:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_180, var_190)
  loc_1751B4A:   var_398 = Val(var_190)
  loc_1751B5B:   Set var_194 = Me.Txt
  loc_1751B61:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_198, var_1A8)
  loc_1751B76:   var_448 = Val(var_1A8)
  loc_1751B87:   Set var_1AC = Me.Txt
  loc_1751B8D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_1B0, var_1C0)
  loc_1751BA2:   var_450 = Val(var_1C0)
  loc_1751BB3:   Proc_6_7_F26918(var_FC, Date)
  loc_1751BBC:   Set var_1C4 = Me.TopCtrl1
  loc_1751BC2:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_450)
  loc_1751C10:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_COde) Values ('" & global_56
  loc_1751C6A:   var_18C = var_B4 & "','*****','*','" & var_CC & "'," & CStr(var_378) & "," & CStr(var_154.Text) & "," & CStr(var_168.Text) & "," & CStr(var_180.Text)
  loc_1751CBF:   var_438 = var_18C & "," & CStr(var_198.Text) & "," & CStr(var_1B0.Text) & "," & CStr(var_450) & ",'" & MemVar_1F95070 & "','" & MemVar_1F950C8
  loc_1751D06:   unk_4D255E.Execute CStr(CVar(var_438 & "',") & var_FC & ",'" & IIf((CStr(var_200) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_2D0, -1
  loc_1751DA2: End If
  loc_1751DB0: Set var_A8 = Me.Txt
  loc_1751DB6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_AC, var_B4)
  loc_1751DBE: var_1C8 = var_AC.Text
  loc_1751DDE: Set var_B0 = Me.Txt
  loc_1751DE4: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_12C, var_CC)
  loc_1751DEC: (CDbl(Val(var_B4)) <> CDbl(0)) = var_12C.Text
  loc_1751E0D: Set var_13C = Me.Txt
  loc_1751E13: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_140)
  loc_1751E3C: Set var_150 = Me.Txt
  loc_1751E42: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_154)
  loc_1751E6B: Set var_164 = Me.Txt
  loc_1751E71: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_168)
  loc_1751EB0: If ((((var_378 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_140.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Or (CDbl(Val(var_168.Text)) <> CDbl(0))) Then
  loc_1751EBF:   Set var_A8 = Me.LblName
  loc_1751EC5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&HF, var_AC)
  loc_1751ECD:   var_CC = var_AC.Caption
  loc_1751EE0:   Set var_B0 = Me.Txt
  loc_1751EE6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_12C)
  loc_1751EFB:   var_378 = Val(var_12C.Text)
  loc_1751F0C:   Set var_13C = Me.Txt
  loc_1751F12:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HF), var_140)
  loc_1751F27:   var_380 = Val(var_140.Text)
  loc_1751F38:   Set var_150 = Me.Txt
  loc_1751F3E:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H10), var_154, var_160)
  loc_1751F53:   var_388 = Val(var_160)
  loc_1751F64:   Set var_164 = Me.Txt
  loc_1751F6A:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H11), var_168, var_178)
  loc_1751F7F:   var_390 = Val(var_178)
  loc_1751F90:   Set var_17C = Me.Txt
  loc_1751F96:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H12), var_180, var_190)
  loc_1751FAB:   var_398 = Val(var_190)
  loc_1751FBC:   Set var_194 = Me.Txt
  loc_1751FC2:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_198, var_1A8)
  loc_1751FD7:   var_448 = Val(var_1A8)
  loc_1751FE8:   Set var_1AC = Me.Txt
  loc_1751FEE:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_1B0, var_1C0)
  loc_1752003:   var_450 = Val(var_1C0)
  loc_1752014:   Proc_6_7_F26918(var_FC, Date)
  loc_175201D:   Set var_1C4 = Me.TopCtrl1
  loc_1752023:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_450)
  loc_1752071:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_56
  loc_17520CB:   var_18C = var_B4 & "','*****','*','" & var_CC & "'," & CStr(var_378) & "," & CStr(var_154.Text) & "," & CStr(var_168.Text) & "," & CStr(var_180.Text)
  loc_1752120:   var_438 = var_18C & "," & CStr(var_198.Text) & "," & CStr(var_1B0.Text) & "," & CStr(var_450) & ",'" & MemVar_1F95070 & "','" & MemVar_1F950C8
  loc_1752167:   unk_4D255E.Execute CStr(CVar(var_438 & "',") & var_FC & ",'" & IIf((CStr(var_200) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_2D0, -1
  loc_1752203: End If
  loc_1752211: Set var_A8 = Me.Txt
  loc_1752217: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_AC, var_B4)
  loc_175221F: var_1C8 = var_AC.Text
  loc_175223F: Set var_B0 = Me.Txt
  loc_1752245: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_12C, var_CC)
  loc_175224D: (CDbl(Val(var_B4)) <> CDbl(0)) = var_12C.Text
  loc_175226E: Set var_13C = Me.Txt
  loc_1752274: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_140)
  loc_175229D: Set var_150 = Me.Txt
  loc_17522A3: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_154)
  loc_17522CC: Set var_164 = Me.Txt
  loc_17522D2: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_168)
  loc_1752311: If ((((var_378 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_140.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Or (CDbl(Val(var_168.Text)) <> CDbl(0))) Then
  loc_1752320:   Set var_A8 = Me.LblName
  loc_1752326:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&H11, var_AC)
  loc_175232E:   var_CC = var_AC.Caption
  loc_1752341:   Set var_B0 = Me.Txt
  loc_1752347:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H13), var_12C)
  loc_175235C:   var_378 = Val(var_12C.Text)
  loc_175236D:   Set var_13C = Me.Txt
  loc_1752373:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_140)
  loc_1752388:   var_380 = Val(var_140.Text)
  loc_1752399:   Set var_150 = Me.Txt
  loc_175239F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_154, var_160)
  loc_17523B4:   var_388 = Val(var_160)
  loc_17523C5:   Set var_164 = Me.Txt
  loc_17523CB:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H16), var_168, var_178)
  loc_17523E0:   var_390 = Val(var_178)
  loc_17523F1:   Set var_17C = Me.Txt
  loc_17523F7:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H17), var_180, var_190)
  loc_175240C:   var_398 = Val(var_190)
  loc_175241D:   Set var_194 = Me.Txt
  loc_1752423:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_198, var_1A8)
  loc_1752438:   var_448 = Val(var_1A8)
  loc_1752449:   Set var_1AC = Me.Txt
  loc_175244F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_1B0, var_1C0)
  loc_1752464:   var_450 = Val(var_1C0)
  loc_1752475:   Proc_6_7_F26918(var_FC, Date)
  loc_175247E:   Set var_1C4 = Me.TopCtrl1
  loc_1752484:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_450)
  loc_17524D2:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_56
  loc_175252C:   var_18C = var_B4 & "','*****','*','" & var_CC & "'," & CStr(var_378) & "," & CStr(var_154.Text) & "," & CStr(var_168.Text) & "," & CStr(var_180.Text)
  loc_1752581:   var_438 = var_18C & "," & CStr(var_198.Text) & "," & CStr(var_1B0.Text) & "," & CStr(var_450) & ",'" & MemVar_1F95070 & "','" & MemVar_1F950C8
  loc_17525C8:   unk_4D255E.Execute CStr(CVar(var_438 & "',") & var_FC & ",'" & IIf((CStr(var_200) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_2D0, -1
  loc_1752664: End If
  loc_1752672: Set var_A8 = Me.Txt
  loc_1752678: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_AC, var_B4)
  loc_1752680: var_1C8 = var_AC.Text
  loc_17526A0: Set var_B0 = Me.Txt
  loc_17526A6: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_12C, var_CC)
  loc_17526AE: (CDbl(Val(var_B4)) <> CDbl(0)) = var_12C.Text
  loc_17526CF: Set var_13C = Me.Txt
  loc_17526D5: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_140)
  loc_17526FE: Set var_150 = Me.Txt
  loc_1752704: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_154)
  loc_175272D: Set var_164 = Me.Txt
  loc_1752733: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_168)
  loc_1752772: If ((((var_378 Or (CDbl(Val(var_CC)) <> CDbl(0))) Or (CDbl(Val(var_140.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Or (CDbl(Val(var_168.Text)) <> CDbl(0))) Then
  loc_1752781:   Set var_A8 = Me.LblName
  loc_1752787:   Call 0.Method_TopCtrl1_UnknownEvent_160 (&H12, var_AC)
  loc_17527A2:   Set var_B0 = Me.Txt
  loc_17527A8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H18), var_12C)
  loc_17527BD:   var_378 = Val(var_12C.Text)
  loc_17527CE:   Set var_13C = Me.Txt
  loc_17527D4:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H19), var_140)
  loc_17527E9:   var_380 = Val(var_140.Text)
  loc_17527FA:   Set var_150 = Me.Txt
  loc_1752800:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1A), var_154, var_160)
  loc_1752815:   var_388 = Val(var_160)
  loc_1752826:   Set var_164 = Me.Txt
  loc_175282C:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1B), var_168, var_178)
  loc_1752841:   var_390 = Val(var_178)
  loc_1752852:   Set var_17C = Me.Txt
  loc_1752858:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1C), var_180, var_190)
  loc_175286D:   var_398 = Val(var_190)
  loc_175287E:   Set var_194 = Me.Txt
  loc_1752884:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1D), var_198, var_1A8)
  loc_1752899:   var_448 = Val(var_1A8)
  loc_17528AA:   Set var_1AC = Me.Txt
  loc_17528B0:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1E), var_1B0, var_1C0)
  loc_17528C5:   var_450 = Val(var_1C0)
  loc_17528D6:   Proc_6_7_F26918(var_FC, Date)
  loc_17528DF:   Set var_1C4 = Me.TopCtrl1
  loc_17528E5:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_450)
  loc_1752933:   var_B4 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('" & global_56
  loc_1752981:   var_184 = var_B4 & "','*****','*','" & var_AC.Caption & "'," & CStr(var_378) & "," & CStr(var_154.Text) & "," & CStr(var_168.Text) & ","
  loc_17529D4:   var_34C = var_184 & CStr(var_180.Text) & "," & CStr(var_198.Text) & "," & CStr(var_1B0.Text) & "," & CStr(var_450) & ",'" & MemVar_1F95070
  loc_17529E9:   var_110 = CVar(var_34C & "','" & MemVar_1F950C8 & "',") 'String
  loc_17529EF:   var_120 = var_110 & var_FC 
  loc_17529F3:   var_DC = ",'"
  loc_1752A29:   unk_4D255E.Execute CStr(var_120 & var_DC & IIf((CStr(var_200) = "Add"), "A", "E") & "','" & CVar(MemVar_1F95078) & "')"), var_2D0, -1
  loc_1752AC5: End If
  loc_1752ACB: unk_4D255E.CommitTrans
  loc_1752AD4: var_86 = CByte(0) 'Byte
  loc_1752AE3: Me.Requery -1
  loc_1752AF3: Me.Requery -1
  loc_1752AFC: Set var_A8 = Me.DGHelp
  loc_1752B35: Me.Find "SearchCode='" & global_56 & "'", 0, 1
  loc_1752B45: Set var_A8 = Me.TopCtrl1
  loc_1752B4B: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_DC)
  loc_1752B64: If (CStr(DGHelp.DispID_FFFF) = "Add") Then
  loc_1752B67:   Call TopCtrl1_UnknownEvent_A()
  loc_1752B6C:   Exit Sub
  loc_1752B6D: End If
  loc_1752B82: var_B4 = "INI"
  loc_1752B90: Call Proc_23_40_EC2A2C(Proc_5_1_100EC1C(var_B4, Me, global_64), var_1C8)
  loc_1752B9B: Call Proc_23_39_1714F58(var_378)
  loc_1752BA0: Exit Sub
  loc_1752BA1: ' Referenced from: 1750FCC
  loc_1752BAA: If (CInt(var_86) = 1) Then
  loc_1752BB3:   unk_4D255E.RollbackTrans
  loc_1752BB8: End If
  loc_1752BC0: Set var_A8 = Err()
  loc_1752BC6: Call 0.Method_arg_2C (var_B4)
  loc_1752BDF: MsgBox(CVar(var_B4), &H10, var_FC, var_110, var_120)
  loc_1752BF2: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '12A6840
  'Data Table: 4D2550
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As String
  Dim var_90 As Fields15
  Dim var_B4 As Variant
  loc_12A6246: Set var_88 = Me.Txt
  loc_12A624C: Call 0.Method_Txt_GotFocus0 (Index)
  loc_12A625A: Proc_6_74_E23240(var_8C)
  loc_12A6266: Call Proc_23_41_EF4268(var_8C)
  loc_12A626E: var_92 = Index
  loc_12A6279: If (var_92 = CInt(0)) Then
  loc_12A6293:   If (Me.RecordCount > 0) Then
  loc_12A62A1:     Set var_8C = Me.FGPoint
  loc_12A62B9:     Proc_6_137_1192FDC(Me.DGHelp, global_68, Index)
  loc_12A62C7:   End If
  loc_12A62CA: Else
  loc_12A62D2:   If (var_92 = CInt(&H36)) Then
  loc_12A62EF:     If (Me.Recordset15.RecordCount > 0) Then
  loc_12A62FD:       Set var_8C = Me.FGPoint
  loc_12A6319:       Proc_6_137_1192FDC(Me.DGRevenue, global_72, Index)
  loc_12A6327:     End If
  loc_12A637E:     Set var_88 = Me.Txt
  loc_12A6384:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((global_72.RecordCount = 0) Or ((Me.Recordset15.EOF = &HFF) Or (Me.Recordset15.BOF = &HFF))))
  loc_12A638C:     var_8C = var_8C.Text
  loc_12A63A4:     If (var_8C Or (var_A0 = vbNullString)) Then
  loc_12A63A7:       Exit Sub
  loc_12A63A8:     End If
  loc_12A63B5:     Set var_88 = Me.Txt
  loc_12A63BB:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A63C3:     var_A0 = var_8C.Text
  loc_12A63D5:     var_B0 = "Name"
  loc_12A6413:     If CBool(CVar(var_A0) <> Me.Recordset15.Fields.Item(var_B0).Value) Then
  loc_12A641F:       Me.Recordset15.MoveFirst
  loc_12A6442:       Set var_88 = Me.Txt
  loc_12A6448:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12A6450:       0 = var_8C.Text
  loc_12A646C:       Me.Recordset15.Find 1 & var_A0 & "'", var_B0, var_92
  loc_12A6481:     End If
  loc_12A6484:   Else
  loc_12A648C:     If (var_92 = CInt(0)) Then
  loc_12A64DD:       Set var_88 = Me.Txt
  loc_12A64E3:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A6503:       If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_12A6506:         Exit Sub
  loc_12A6507:       End If
  loc_12A6514:       Set var_88 = Me.Txt
  loc_12A651A:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A6522:       var_A0 = var_8C.Text
  loc_12A6534:       var_B0 = "Name"
  loc_12A656F:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_12A6578:         Me.MoveFirst
  loc_12A659B:         Set var_88 = Me.Txt
  loc_12A65A1:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_12A65A9:         0 = var_8C.Text
  loc_12A65C2:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_12A65D7:       End If
  loc_12A65DA:     Else
  loc_12A65E2:       If (var_92 = CInt(8)) Then
  loc_12A65F2:         ReDim var_F0(0 To 1)
  loc_12A6609:         var_F0(0) = "Yes"
  loc_12A6618:         var_F0(1) = "No"
  loc_12A662F:         global_80 = Array(var_F0)
  loc_12A663A:         Set var_B4 = Me.ListView
  loc_12A6655:         Set var_8C = Me.Txt
  loc_12A666F:         Set global_96 = Proc_6_66_F0048C(var_B4, var_8C, Index)
  loc_12A668D:         Set var_88 = Me.Txt
  loc_12A6693:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12A669B:         global_80 = var_8C.Text
  loc_12A66AD:         Set var_90 = Me.Txt
  loc_12A66B3:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12A66BB:         var_B4.Tag = 2
  loc_12A66D1:       Else
  loc_12A66D9:         If (var_92 = CInt(&H1F)) Then
  loc_12A66E9:           ReDim var_F0(0 To 1)
  loc_12A6700:           var_F0(0) = "Room"
  loc_12A670F:           var_F0(1) = "Conf. Hall"
  loc_12A6726:           global_80 = Array(var_F0)
  loc_12A6731:           Set var_B4 = Me.ListView
  loc_12A674C:           Set var_8C = Me.Txt
  loc_12A6766:           Set global_96 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_80)
  loc_12A6784:           Set var_88 = Me.Txt
  loc_12A678A:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_12A6792:           2 = var_8C.Text
  loc_12A67A4:           Set var_90 = Me.Txt
  loc_12A67AA:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_A0)
  loc_12A67B2:           var_B4.Tag = global_80
  loc_12A67C5:         End If
  loc_12A67C5:       End If
  loc_12A67C5:     End If
  loc_12A67C5:   End If
  loc_12A67C5: End If
  loc_12A67D4: Set var_88 = Me.Txt
  loc_12A67DA: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A67E2: var_8C.SelStart = 0
  loc_12A67FB: Set var_88 = Me.Txt
  loc_12A6801: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_12A681C: Set var_90 = Me.Txt
  loc_12A6822: Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_12A682A: var_B4.SelLength = Len(var_8C.Text)
  loc_12A683D: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11D2AF8
  'Data Table: 4D2550
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_9C As TextBox
  Dim var_A8 As TextBox
  Dim var_C0 As TextBox
  Dim var_8C As DataGrid
  Dim var_98 As Frame
  loc_11D26BA: If (CLng(Shift) = &H1B) Then
  loc_11D26BD:   Call Proc_23_41_EF4268()
  loc_11D26C2:   Exit Sub
  loc_11D26C3: End If
  loc_11D26C6: var_88 = KeyCode
  loc_11D26D1: If (var_88 = CInt(&H36)) Then
  loc_11D26F1:   Set var_9C = Me.FGPoint
  loc_11D26FC:   Set var_98 = Nothing
  loc_11D272E:   Proc_6_69_134A630(Me.DGRevenue, Me.Txt, KeyCode, global_72, Shift, 0)
  loc_11D27A0:   If ((Me.FGPoint.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11D27CA:     Proc_6_138_106E830(Me.DGRevenue, global_72, KeyCode, Me.FGPoint, 1)
  loc_11D27D8:   End If
  loc_11D27DB: Else
  loc_11D27E3:   If (var_88 = CInt(0)) Then
  loc_11D27EA:     Set var_9C = Me.DGHelp
  loc_11D27F8:     Set var_A8 = Me.FGPoint
  loc_11D2803:     Set var_98 = var_A8
  loc_11D2835:     Proc_6_79_11AD564(var_9C, Me.Txt, CInt(0), global_68, Shift, 0, 1)
  loc_11D2852:     var_B0 = Me.RecordCount
  loc_11D28A2:     If ((var_B0 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_11D28A9:       Set var_98 = Me.DGHelp
  loc_11D28B0:       Set var_90 = Me.FGPoint
  loc_11D28C8:       Proc_6_138_106E830(var_98, global_68, KeyCode, var_90, var_98)
  loc_11D28D6:     End If
  loc_11D28D9:   Else
  loc_11D28E1:     If Not (var_88 = CInt(8)) Then
  loc_11D28EC:       If (var_88 = CInt(&H1F)) Then
  loc_11D28EF:       End If
  loc_11D2911:       Set var_8C = Me.Txt
  loc_11D2917:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_B0, 0)
  loc_11D291F:       var_98 = var_90.Left
  loc_11D2931:       Set var_98 = Me.Txt
  loc_11D2937:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_B8)
  loc_11D293F:       var_9C = var_9C.Top
  loc_11D2951:       Set var_A4 = Me.Txt
  loc_11D2957:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_BC)
  loc_11D295F:       0 = var_A8.Height
  loc_11D2971:       Set var_AC = Me.Txt
  loc_11D2977:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_C0)
  loc_11D297F:       var_C4 = var_C0.Width
  loc_11D29C7:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11D29EB:     End If
  loc_11D29EB:   End If
  loc_11D29EB: End If
  loc_11D2A41: If (((CBool(Me.DGRevenue.Visible) = 0) And (CBool(Me.DGHelp.Visible) = 0)) And (Me.FrmList.Visible = 0)) Then
  loc_11D2A62:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(&H1E))) Then
  loc_11D2A6B:     Call Txt_Validate(KeyCode)
  loc_11D2A76:     If (var_86 = &HFF) Then
  loc_11D2A79:       Exit Sub
  loc_11D2A7A:     End If
  loc_11D2AB1:     If (MsgBox("Save Record ?", 4, "Save Data", var_13C, var_15C) = 6) Then
  loc_11D2AB4:       Call TopCtrl1_UnknownEvent_16()
  loc_11D2AB9:     End If
  loc_11D2AB9:     Exit Sub
  loc_11D2ABA:   End If
  loc_11D2ACF:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11D2AD8:     Proc_6_75_E5335C(Shift, arg_14, var_86, CInt(var_B0))
  loc_11D2ADD:   End If
  loc_11D2AE7:   If (CLng(Shift) = &H26) Then
  loc_11D2AF0:     Proc_6_76_E533C8(Shift, arg_14, CInt((var_B8 + var_BC)))
  loc_11D2AF5:   End If
  loc_11D2AF5: End If
  loc_11D2AF5: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '11B53D4
  'Data Table: 4D2550
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_AC As TextBox
  loc_11B4F9A: Proc_6_133_E7FB08(var_94)
  loc_11B4FA3: arg_10 = CInt(var_94)
  loc_11B4FAC: Proc_6_58_E06050(arg_10, arg_10)
  loc_11B4FB4: var_96 = KeyAscii
  loc_11B4FBF: If (var_96 = CInt(&H36)) Then
  loc_11B4FDE:   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_11B4FF0:     var_A4 = "Name"
  loc_11B5013:     Proc_6_89_1470B00(Me.Txt, CInt(&H36), global_72, arg_10)
  loc_11B502D:     Set var_AC = Me.FGPoint
  loc_11B5049:     Proc_6_138_106E830(Me.DGRevenue, global_72, KeyAscii, var_AC)
  loc_11B5057:   End If
  loc_11B505A: Else
  loc_11B5062:   If Not (var_96 = CInt(3)) Then
  loc_11B506D:     If Not (var_96 = CInt(4)) Then
  loc_11B5078:       If (var_96 = CInt(5)) Then
  loc_11B507B:       End If
  loc_11B507B:     End If
  loc_11B5085:     Set var_9C = Me.Txt
  loc_11B508B:     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, var_A4)
  loc_11B50A6:     Proc_6_42_129B55C(var_AC, arg_10, 5, 2)
  loc_11B50B5:   Else
  loc_11B50BD:     If Not (var_96 = CInt(6)) Then
  loc_11B50C8:       If (var_96 = CInt(7)) Then
  loc_11B50CB:       End If
  loc_11B50D5:       Set var_9C = Me.Txt
  loc_11B50DB:       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 0)
  loc_11B50F6:       Proc_6_42_129B55C(var_AC, arg_10, 3)
  loc_11B5105:     Else
  loc_11B510D:       If Not (var_96 = CInt(9)) Then
  loc_11B5118:         If Not (var_96 = CInt(&HA)) Then
  loc_11B5123:           If Not (var_96 = CInt(&HB)) Then
  loc_11B512E:             If Not (var_96 = CInt(&HC)) Then
  loc_11B5139:               If (var_96 = CInt(&HD)) Then
  loc_11B513C:               End If
  loc_11B513C:             End If
  loc_11B513C:           End If
  loc_11B513C:         End If
  loc_11B5146:         Set var_9C = Me.Txt
  loc_11B514C:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 0)
  loc_11B5167:         Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_11B5176:       Else
  loc_11B517E:         If Not (var_96 = CInt(&HE)) Then
  loc_11B5189:           If Not (var_96 = CInt(&HF)) Then
  loc_11B5194:             If Not (var_96 = CInt(&H10)) Then
  loc_11B519F:               If Not (var_96 = CInt(&H11)) Then
  loc_11B51AA:                 If (var_96 = CInt(&H12)) Then
  loc_11B51AD:                 End If
  loc_11B51AD:               End If
  loc_11B51AD:             End If
  loc_11B51AD:           End If
  loc_11B51B7:           Set var_9C = Me.Txt
  loc_11B51BD:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_11B51D8:           Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_11B51E7:         Else
  loc_11B51EF:           If Not (var_96 = CInt(&H13)) Then
  loc_11B51FA:             If Not (var_96 = CInt(&H14)) Then
  loc_11B5205:               If Not (var_96 = CInt(&H15)) Then
  loc_11B5210:                 If Not (var_96 = CInt(&H16)) Then
  loc_11B521B:                   If (var_96 = CInt(&H17)) Then
  loc_11B521E:                   End If
  loc_11B521E:                 End If
  loc_11B521E:               End If
  loc_11B521E:             End If
  loc_11B5228:             Set var_9C = Me.Txt
  loc_11B522E:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_11B5249:             Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_11B5258:           Else
  loc_11B5260:             If Not (var_96 = CInt(&H18)) Then
  loc_11B526B:               If Not (var_96 = CInt(&H19)) Then
  loc_11B5276:                 If Not (var_96 = CInt(&H1A)) Then
  loc_11B5281:                   If Not (var_96 = CInt(&H1B)) Then
  loc_11B528C:                     If (var_96 = CInt(&H1C)) Then
  loc_11B528F:                     End If
  loc_11B528F:                   End If
  loc_11B528F:                 End If
  loc_11B528F:               End If
  loc_11B5299:               Set var_9C = Me.Txt
  loc_11B529F:               Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_11B52BA:               Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_11B52C9:             Else
  loc_11B52D1:               If Not (var_96 = CInt(&H1D)) Then
  loc_11B52DC:                 If (var_96 = CInt(&H1E)) Then
  loc_11B52DF:                 End If
  loc_11B52E9:                 Set var_9C = Me.Txt
  loc_11B52EF:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, 2)
  loc_11B530A:                 Proc_6_42_129B55C(var_AC, arg_10, 6)
  loc_11B5319:               Else
  loc_11B5321:                 If (var_96 = CInt(&H37)) Then
  loc_11B534D:                   If (Ucase(Chr(CLng(arg_10))) = "Y") Then
  loc_11B535D:                     Set var_9C = Me.Txt
  loc_11B5363:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, "Yes")
  loc_11B536B:                     var_AC.Text = 2
  loc_11B537A:                   Else
  loc_11B53A3:                     If (Ucase(Chr(CLng(arg_10))) = "N") Then
  loc_11B53B3:                       Set var_9C = Me.Txt
  loc_11B53B9:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_AC, "No")
  loc_11B53C1:                       var_AC.Text = var_96
  loc_11B53CD:                     End If
  loc_11B53CD:                   End If
  loc_11B53CF:                   arg_10 = 0
  loc_11B53D2:                 End If
  loc_11B53D2:               End If
  loc_11B53D2:             End If
  loc_11B53D2:           End If
  loc_11B53D2:         End If
  loc_11B53D2:       End If
  loc_11B53D2:     End If
  loc_11B53D2:   End If
  loc_11B53D2: End If
  loc_11B53D2: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'FA9314
  'Data Table: 4D2550
  Dim var_86 As Integer
  loc_FA918B: var_86 = KeyCode
  loc_FA9196: If (var_86 = CInt(&H36)) Then
  loc_FA91B5:   If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_FA91C9:     var_A8 = "Name"
  loc_FA91F5:     Proc_6_68_12A2818(Me.DGRevenue, Me.Txt, CInt(&H36), global_72)
  loc_FA9208:   End If
  loc_FA920B: Else
  loc_FA9213:   If (var_86 = CInt(0)) Then
  loc_FA9232:     If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_FA923F:       var_A8 = "Name"
  loc_FA925E:       Proc_6_80_FF1F20(Me.Txt, CInt(0), global_68, Shift)
  loc_FA9290:       Proc_6_138_106E830(Me.DGHelp, global_68, KeyCode, Me.FGPoint)
  loc_FA929E:     End If
  loc_FA92A1:   Else
  loc_FA92A9:     If Not (var_86 = CInt(8)) Then
  loc_FA92B4:       If (var_86 = CInt(&H1F)) Then
  loc_FA92B7:       End If
  loc_FA92D2:       If (Me.FrmList.Visible = &HFF) Then
  loc_FA9301:         Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_96)
  loc_FA9311:       End If
  loc_FA9311:     End If
  loc_FA9311:   End If
  loc_FA9311: End If
  loc_FA9311: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E503EC
  'Data Table: 4D2550
  loc_E503CA: Set var_88 = Me.Txt
  loc_E503D0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E503DE: Proc_6_73_E23294(var_8C)
  loc_E503EA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '1394758
  'Data Table: 4D2550
  Dim var_86 As Integer
  Dim arg_10 As Integer
  Dim var_8C As Variant
  Dim var_90 As Variant
  Dim var_98 As String
  Dim var_B0 As TextBox
  Dim var_10C As Double
  loc_1393E7B: var_86 = Cancel
  loc_1393E86: If (var_86 = CInt(&H36)) Then
  loc_1393E94:   Set var_8C = Me.Txt
  loc_1393E9A:   Call 0.Method_Txt_Validate0 (CInt(&H36), var_90)
  loc_1393EC3:   If (Proc_6_27_EA61EC(var_90, "Revenue Charge") = 0) Then
  loc_1393EC8:     arg_10 = &HFF
  loc_1393ECB:     Exit Sub
  loc_1393ECC:   End If
  loc_1393ED8:   var_9A = global_72.EOF
  loc_1393EE3:   If (var_9A = 0) Then
  loc_1393F24:     Set var_94 = Me.Txt
  loc_1393F2A:     Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Me.Recordset15.Fields.Item("Name").Value))
  loc_1393F32:     var_B0.Text = arg_10
  loc_1393F68:     var_90 = Me.Recordset15.Fields.Item("Code")
  loc_1393F86:     Set var_94 = Me.Txt
  loc_1393F8C:     Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_1393F94:     var_B0.Tag = CStr(var_90.Value)
  loc_1393FAD:   Else
  loc_1393FBA:     Set var_8C = Me.Txt
  loc_1393FC0:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1393FC8:     var_90.Text = vbNullString
  loc_1393FE1:     Set var_8C = Me.Txt
  loc_1393FE7:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1393FEF:     var_90.Tag = vbNullString
  loc_1393FFB:   End If
  loc_1393FFE: Else
  loc_1394006:   If (var_86 = CInt(&H37)) Then
  loc_1394013:     Set var_8C = Me.Txt
  loc_1394019:     Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1394054:     If (Ucase(Left(CVar(var_90), 1)) = "Y") Then
  loc_1394064:       Set var_8C = Me.Txt
  loc_139406A:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1394072:       var_90.Text = "Yes"
  loc_1394081:     Else
  loc_139408E:       Set var_8C = Me.Txt
  loc_1394094:       Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139409C:       var_90.Text = "No"
  loc_13940A8:     End If
  loc_13940AB:   Else
  loc_13940B3:     If (var_86 = CInt(0)) Then
  loc_13940C1:       Set var_8C = Me.Txt
  loc_13940C7:       Call 0.Method_Txt_Validate0 (CInt(0), var_90)
  loc_13940CF:       var_98 = "Name"
  loc_13940F0:       If (Proc_6_27_EA61EC(var_90, var_98) = 0) Then
  loc_13940FD:         Set var_8C = Me.Txt
  loc_1394103:         Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139410B:         var_90.SetFocus
  loc_1394119:         arg_10 = &HFF
  loc_139411C:         Exit Sub
  loc_139411D:       End If
  loc_1394120:       Call Proc_23_37_1093BD0(var_9A, arg_10)
  loc_139412B:       If (var_9A = &HFF) Then
  loc_1394130:         arg_10 = &HFF
  loc_1394133:         Exit Sub
  loc_1394134:       End If
  loc_1394137:     Else
  loc_139413F:       If (var_86 = CInt(8)) Then
  loc_139414F:         Set var_8C = Me.Txt
  loc_1394155:         Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_139415D:         arg_10 = var_90.Text
  loc_1394174:         If (var_98 <> vbNullString) Then
  loc_139418F:           Set var_90 = Me.ListView.SelectedItem
  loc_13941A7:           Set var_94 = Me.Txt
  loc_13941AD:           Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_13941B5:           var_B0.Text = var_90.Text
  loc_13941CB:         End If
  loc_13941CE:       Else
  loc_13941D6:         If (var_86 = CInt(&H1F)) Then
  loc_13941E6:           Set var_8C = Me.Txt
  loc_13941EC:           Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139420B:           If (var_90.Text <> vbNullString) Then
  loc_1394226:             Set var_90 = Me.ListView.SelectedItem
  loc_139423E:             Set var_94 = Me.Txt
  loc_1394244:             Call 0.Method_Txt_Validate0 (Cancel, var_B0)
  loc_139424C:             var_B0.Text = var_90.Text
  loc_139426F:             Set var_8C = Me.Txt
  loc_1394275:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1394294:             If (var_90.Text = "Room") Then
  loc_13942A4:               Set var_8C = Me.Txt
  loc_13942AA:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13942B2:               var_90.Tag = "RO"
  loc_13942C1:             Else
  loc_13942CE:               Set var_8C = Me.Txt
  loc_13942D4:               Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13942F3:               If (var_90.Text = "Conf. Hall") Then
  loc_1394303:                 Set var_8C = Me.Txt
  loc_1394309:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1394311:                 var_90.Tag = "CO"
  loc_1394320:               Else
  loc_139432D:                 Set var_8C = Me.Txt
  loc_1394333:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_139433B:                 var_90.Text = vbNullString
  loc_1394354:                 Set var_8C = Me.Txt
  loc_139435A:                 Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_1394362:                 var_90.Tag = vbNullString
  loc_139436E:               End If
  loc_139436E:             End If
  loc_139436E:           End If
  loc_1394371:         Else
  loc_1394379:           If Not (var_86 = CInt(9)) Then
  loc_1394384:             If Not (var_86 = CInt(&HB)) Then
  loc_139438F:               If Not (var_86 = CInt(&HC)) Then
  loc_139439A:                 If Not (var_86 = CInt(&HD)) Then
  loc_13943A5:                   If (var_86 = CInt(&HA)) Then
  loc_13943A8:                   End If
  loc_13943A8:                 End If
  loc_13943A8:               End If
  loc_13943A8:             End If
  loc_13943B5:             Set var_8C = Me.Txt
  loc_13943BB:             Call 0.Method_Txt_Validate0 (Cancel, var_90)
  loc_13943C3:             var_98 = var_90.Text
  loc_1394408:             Set var_94 = Me.Txt
  loc_139440E:             Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_1394416:             var_B0.Text = 1
  loc_1394439:           Else
  loc_1394441:             If Not (var_86 = CInt(&HE)) Then
  loc_139444C:               If Not (var_86 = CInt(&H10)) Then
  loc_1394457:                 If Not (var_86 = CInt(&H11)) Then
  loc_1394462:                   If Not (var_86 = CInt(&H12)) Then
  loc_139446D:                     If (var_86 = CInt(&HF)) Then
  loc_1394470:                     End If
  loc_1394470:                   End If
  loc_1394470:                 End If
  loc_1394470:               End If
  loc_139447D:               Set var_8C = Me.Txt
  loc_1394483:               Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_139448B:               var_10C = var_90.Text
  loc_13944D0:               Set var_94 = Me.Txt
  loc_13944D6:               Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_13944DE:               var_B0.Text = 1
  loc_1394501:             Else
  loc_1394509:               If Not (var_86 = CInt(&H13)) Then
  loc_1394514:                 If Not (var_86 = CInt(&H15)) Then
  loc_139451F:                   If Not (var_86 = CInt(&H16)) Then
  loc_139452A:                     If Not (var_86 = CInt(&H17)) Then
  loc_1394535:                       If (var_86 = CInt(&H14)) Then
  loc_1394538:                       End If
  loc_1394538:                     End If
  loc_1394538:                   End If
  loc_1394538:                 End If
  loc_1394545:                 Set var_8C = Me.Txt
  loc_139454B:                 Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_1394553:                 var_10C = var_90.Text
  loc_1394598:                 Set var_94 = Me.Txt
  loc_139459E:                 Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_13945A6:                 var_B0.Text = 1
  loc_13945C9:               Else
  loc_13945D1:                 If Not (var_86 = CInt(&H18)) Then
  loc_13945DC:                   If Not (var_86 = CInt(&H1A)) Then
  loc_13945E7:                     If Not (var_86 = CInt(&H1B)) Then
  loc_13945F2:                       If Not (var_86 = CInt(&H1C)) Then
  loc_13945FD:                         If (var_86 = CInt(&H19)) Then
  loc_1394600:                         End If
  loc_1394600:                       End If
  loc_1394600:                     End If
  loc_1394600:                   End If
  loc_139460D:                   Set var_8C = Me.Txt
  loc_1394613:                   Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_139461B:                   var_10C = var_90.Text
  loc_1394660:                   Set var_94 = Me.Txt
  loc_1394666:                   Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_139466E:                   var_B0.Text = 1
  loc_1394691:                 Else
  loc_1394699:                   If Not (var_86 = CInt(3)) Then
  loc_13946A4:                     If Not (var_86 = CInt(4)) Then
  loc_13946AF:                       If Not (var_86 = CInt(5)) Then
  loc_13946BA:                         If Not (var_86 = CInt(&H1D)) Then
  loc_13946C5:                           If (var_86 = CInt(&H1E)) Then
  loc_13946C8:                           End If
  loc_13946C8:                         End If
  loc_13946C8:                       End If
  loc_13946C8:                     End If
  loc_13946D5:                     Set var_8C = Me.Txt
  loc_13946DB:                     Call 0.Method_Txt_Validate0 (Cancel, var_90, var_98)
  loc_13946E3:                     var_10C = var_90.Text
  loc_1394728:                     Set var_94 = Me.Txt
  loc_139472E:                     Call 0.Method_Txt_Validate0 (Cancel, var_B0, CStr(Format(CVar(Val(var_98)), "0.00")), 1)
  loc_1394736:                     var_B0.Text = 1
  loc_1394756:                   End If
  loc_1394756:                 End If
  loc_1394756:               End If
  loc_1394756:             End If
  loc_1394756:           End If
  loc_1394756:         End If
  loc_1394756:       End If
  loc_1394756:     End If
  loc_1394756:   End If
  loc_1394756: End If
  loc_1394756: Exit Sub
End Sub

Private Sub CmdSave_Click() '162CB4C
  'Data Table: 4D2550
  Dim var_8C As Frame
  Dim var_94 As TextBox
  Dim var_9C As String
  Dim var_A0 As Frame
  Dim var_104 As String
  Dim unk_4D255E As Connection15
  Dim var_13C As TextBox
  Dim var_144 As TextBox
  Dim var_14C As TextBox
  Dim var_154 As TextBox
  Dim var_140 As Label
  Dim var_148 As TextBox
  Dim var_598 As Double
  Dim var_150 As TextBox
  Dim var_5A0 As Double
  Dim var_23C As TextBox
  Dim var_5A8 As Double
  Dim var_288 As TextBox
  Dim var_5B0 As Double
  Dim var_2D4 As TextBox
  Dim var_5B8 As Double
  Dim var_320 As TextBox
  Dim var_5C0 As Double
  Dim var_36C As TextBox
  Dim var_5C8 As Double
  Dim var_D4 As Variant
  Dim var_138 As Variant
  Dim var_1D8 As Variant
  Dim var_1F8 As Variant
  Dim var_344 As Variant
  Dim var_508 As Variant
  loc_162B6FB: If (Me.SRate.Visible = &HFF) Then
  loc_162B70A:   Me.SRate.Visible = False
  loc_162B712: End If
  loc_162B730: Set var_8C = Me.Txt
  loc_162B736: Call 0.Method_CmdSave_Click0 (CInt(0), var_94, var_98, "Delete From RateList Where RoomCat='")
  loc_162B73E: var_138 = var_94.Tag
  loc_162B747: var_9C = -1 & var_98
  loc_162B777: Proc_6_17_EAAE40(var_D4, Trim(CVar(Me.SRate.Tag)))
  loc_162B796: unk_4D255E.Execute CStr(CVar(var_9C & "' And Code=") & var_D4 & " and RoomNo= '*****'"), var_13C, 
  loc_162B7CE: Set var_8C = Me.Txt
  loc_162B7D4: Call 0.Method_CmdSave_Click0 (CInt(&H20), var_94)
  loc_162B7FC: Set var_A0 = Me.Txt
  loc_162B802: Call 0.Method_CmdSave_Click0 (CInt(&H21), var_13C)
  loc_162B82B: Set var_140 = Me.Txt
  loc_162B831: Call 0.Method_CmdSave_Click0 (CInt(&H22), var_144)
  loc_162B85A: Set var_148 = Me.Txt
  loc_162B860: Call 0.Method_CmdSave_Click0 (CInt(&H23), var_14C)
  loc_162B889: Set var_150 = Me.Txt
  loc_162B88F: Call 0.Method_CmdSave_Click0 (CInt(&H24), var_154)
  loc_162B8CE: If (((((CDbl(Val(var_94.Text)) <> CDbl(0)) Or (CDbl(Val(var_13C.Text)) <> CDbl(0))) Or (CDbl(Val(var_144.Text)) <> CDbl(0))) Or (CDbl(Val(var_14C.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Then
  loc_162B8DF:   Set var_8C = Me.Txt
  loc_162B8E5:   Call 0.Method_CmdSave_Click0 (CInt(0), var_94)
  loc_162B8ED:   var_98 = var_94.Tag
  loc_162B90D:   var_9C = Me.SRate.Tag
  loc_162B92C:   Set var_13C = Me.LblName
  loc_162B932:   Call 0.Method_CmdSave_Click0 (&HE, var_140)
  loc_162B94D:   Set var_144 = Me.Txt
  loc_162B953:   Call 0.Method_CmdSave_Click0 (CInt(&H20), var_148)
  loc_162B968:   var_598 = Val(var_148.Text)
  loc_162B979:   Set var_14C = Me.Txt
  loc_162B97F:   Call 0.Method_CmdSave_Click0 (CInt(&H21), var_150)
  loc_162B994:   var_5A0 = Val(var_150.Text)
  loc_162B9A5:   Set var_154 = Me.Txt
  loc_162B9AB:   Call 0.Method_CmdSave_Click0 (CInt(&H22), var_23C, var_240)
  loc_162B9C0:   var_5A8 = Val(var_240)
  loc_162B9D1:   Set var_284 = Me.Txt
  loc_162B9D7:   Call 0.Method_CmdSave_Click0 (CInt(&H23), var_288, var_28C)
  loc_162B9EC:   var_5B0 = Val(var_28C)
  loc_162B9FD:   Set var_2D0 = Me.Txt
  loc_162BA03:   Call 0.Method_CmdSave_Click0 (CInt(&H24), var_2D4, var_2D8)
  loc_162BA18:   var_5B8 = Val(var_2D8)
  loc_162BA29:   Set var_31C = Me.Txt
  loc_162BA2F:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_320, var_324)
  loc_162BA44:   var_5C0 = Val(var_324)
  loc_162BA55:   Set var_368 = Me.Txt
  loc_162BA5B:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_36C, var_370)
  loc_162BA70:   var_5C8 = Val(var_370)
  loc_162BA81:   Proc_6_7_F26918(var_450, Date)
  loc_162BA8A:   Set var_484 = Me.TopCtrl1
  loc_162BA90:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_5C8)
  loc_162BAD4:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_162BB1C:   var_1F8 = var_104 & Trim(CVar(var_98)) & "','*****','" & Trim(CVar(var_9C)) & "','" & CVar(var_140.Caption) & "'," & CVar(var_598) & "," 
  loc_162BB77:   var_344 = var_1F8 & CVar(var_23C.Text) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_162BBD1:   var_508 = var_344 & "," & CVar(var_5C8) & ",'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," & var_450 & ",'" & IIf((CStr(var_494) = "Add"), "A", "E") 
  loc_162BBFB:   unk_4D255E.Execute CStr(var_508 & "','" & CVar(MemVar_1F95078) & "')"), var_58C, -1
  loc_162BC9B: End If
  loc_162BCA9: Set var_8C = Me.Txt
  loc_162BCAF: Call 0.Method_CmdSave_Click0 (CInt(&H25), var_94, var_98)
  loc_162BCB7: var_590 = var_94.Text
  loc_162BCD7: Set var_A0 = Me.Txt
  loc_162BCDD: Call 0.Method_CmdSave_Click0 (CInt(&H26), var_13C, var_9C)
  loc_162BCE5: (CDbl(Val(var_98)) <> CDbl(0)) = var_13C.Text
  loc_162BD06: Set var_140 = Me.Txt
  loc_162BD0C: Call 0.Method_CmdSave_Click0 (CInt(&H27), var_144)
  loc_162BD35: Set var_148 = Me.Txt
  loc_162BD3B: Call 0.Method_CmdSave_Click0 (CInt(&H28), var_14C)
  loc_162BD64: Set var_150 = Me.Txt
  loc_162BD6A: Call 0.Method_CmdSave_Click0 (CInt(&H29), var_154)
  loc_162BDA9: If ((((var_598 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_144.Text)) <> CDbl(0))) Or (CDbl(Val(var_14C.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Then
  loc_162BDBA:   Set var_8C = Me.Txt
  loc_162BDC0:   Call 0.Method_CmdSave_Click0 (CInt(0), var_94)
  loc_162BDC8:   var_98 = var_94.Tag
  loc_162BDE8:   var_9C = Me.SRate.Tag
  loc_162BE07:   Set var_13C = Me.LblName
  loc_162BE0D:   Call 0.Method_CmdSave_Click0 (&HF, var_140)
  loc_162BE28:   Set var_144 = Me.Txt
  loc_162BE2E:   Call 0.Method_CmdSave_Click0 (CInt(&H25), var_148)
  loc_162BE43:   var_598 = Val(var_148.Text)
  loc_162BE54:   Set var_14C = Me.Txt
  loc_162BE5A:   Call 0.Method_CmdSave_Click0 (CInt(&H26), var_150)
  loc_162BE6F:   var_5A0 = Val(var_150.Text)
  loc_162BE80:   Set var_154 = Me.Txt
  loc_162BE86:   Call 0.Method_CmdSave_Click0 (CInt(&H27), var_23C, var_240)
  loc_162BE9B:   var_5A8 = Val(var_240)
  loc_162BEAC:   Set var_284 = Me.Txt
  loc_162BEB2:   Call 0.Method_CmdSave_Click0 (CInt(&H28), var_288, var_28C)
  loc_162BEC7:   var_5B0 = Val(var_28C)
  loc_162BED8:   Set var_2D0 = Me.Txt
  loc_162BEDE:   Call 0.Method_CmdSave_Click0 (CInt(&H29), var_2D4, var_2D8)
  loc_162BEF3:   var_5B8 = Val(var_2D8)
  loc_162BF04:   Set var_31C = Me.Txt
  loc_162BF0A:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_320, var_324)
  loc_162BF1F:   var_5C0 = Val(var_324)
  loc_162BF30:   Set var_368 = Me.Txt
  loc_162BF36:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_36C, var_370)
  loc_162BF4B:   var_5C8 = Val(var_370)
  loc_162BF5C:   Proc_6_7_F26918(var_450, Date)
  loc_162BF65:   Set var_484 = Me.TopCtrl1
  loc_162BF6B:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_5C8)
  loc_162BFAF:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_162BFF7:   var_1F8 = var_104 & Trim(CVar(var_98)) & "','*****','" & Trim(CVar(var_9C)) & "','" & CVar(var_140.Caption) & "'," & CVar(var_598) & "," 
  loc_162C052:   var_344 = var_1F8 & CVar(var_23C.Text) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_162C0AC:   var_508 = var_344 & "," & CVar(var_5C8) & ",'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," & var_450 & ",'" & IIf((CStr(var_494) = "Add"), "A", "E") 
  loc_162C0D6:   unk_4D255E.Execute CStr(var_508 & "','" & CVar(MemVar_1F95078) & "')"), var_58C, -1
  loc_162C176: End If
  loc_162C184: Set var_8C = Me.Txt
  loc_162C18A: Call 0.Method_CmdSave_Click0 (CInt(&H2A), var_94, var_98)
  loc_162C192: var_590 = var_94.Text
  loc_162C1B2: Set var_A0 = Me.Txt
  loc_162C1B8: Call 0.Method_CmdSave_Click0 (CInt(&H2B), var_13C, var_9C)
  loc_162C1C0: (CDbl(Val(var_98)) <> CDbl(0)) = var_13C.Text
  loc_162C1E1: Set var_140 = Me.Txt
  loc_162C1E7: Call 0.Method_CmdSave_Click0 (CInt(&H2C), var_144)
  loc_162C210: Set var_148 = Me.Txt
  loc_162C216: Call 0.Method_CmdSave_Click0 (CInt(&H2D), var_14C)
  loc_162C23F: Set var_150 = Me.Txt
  loc_162C245: Call 0.Method_CmdSave_Click0 (CInt(&H2E), var_154)
  loc_162C284: If ((((var_598 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_144.Text)) <> CDbl(0))) Or (CDbl(Val(var_14C.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Then
  loc_162C295:   Set var_8C = Me.Txt
  loc_162C29B:   Call 0.Method_CmdSave_Click0 (CInt(0), var_94)
  loc_162C2A3:   var_98 = var_94.Tag
  loc_162C2C3:   var_9C = Me.SRate.Tag
  loc_162C2E2:   Set var_13C = Me.LblName
  loc_162C2E8:   Call 0.Method_CmdSave_Click0 (&H11, var_140)
  loc_162C303:   Set var_144 = Me.Txt
  loc_162C309:   Call 0.Method_CmdSave_Click0 (CInt(&H2A), var_148)
  loc_162C31E:   var_598 = Val(var_148.Text)
  loc_162C32F:   Set var_14C = Me.Txt
  loc_162C335:   Call 0.Method_CmdSave_Click0 (CInt(&H2B), var_150)
  loc_162C34A:   var_5A0 = Val(var_150.Text)
  loc_162C35B:   Set var_154 = Me.Txt
  loc_162C361:   Call 0.Method_CmdSave_Click0 (CInt(&H2C), var_23C, var_240)
  loc_162C376:   var_5A8 = Val(var_240)
  loc_162C387:   Set var_284 = Me.Txt
  loc_162C38D:   Call 0.Method_CmdSave_Click0 (CInt(&H2D), var_288, var_28C)
  loc_162C3A2:   var_5B0 = Val(var_28C)
  loc_162C3B3:   Set var_2D0 = Me.Txt
  loc_162C3B9:   Call 0.Method_CmdSave_Click0 (CInt(&H2E), var_2D4, var_2D8)
  loc_162C3CE:   var_5B8 = Val(var_2D8)
  loc_162C3DF:   Set var_31C = Me.Txt
  loc_162C3E5:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_320, var_324)
  loc_162C3FA:   var_5C0 = Val(var_324)
  loc_162C40B:   Set var_368 = Me.Txt
  loc_162C411:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_36C, var_370)
  loc_162C426:   var_5C8 = Val(var_370)
  loc_162C437:   Proc_6_7_F26918(var_450, Date)
  loc_162C440:   Set var_484 = Me.TopCtrl1
  loc_162C446:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_5C8)
  loc_162C48A:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_162C4D2:   var_1F8 = var_104 & Trim(CVar(var_98)) & "','*****','" & Trim(CVar(var_9C)) & "','" & CVar(var_140.Caption) & "'," & CVar(var_598) & "," 
  loc_162C52D:   var_344 = var_1F8 & CVar(var_23C.Text) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_162C587:   var_508 = var_344 & "," & CVar(var_5C8) & ",'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," & var_450 & ",'" & IIf((CStr(var_494) = "Add"), "A", "E") 
  loc_162C5B1:   unk_4D255E.Execute CStr(var_508 & "','" & CVar(MemVar_1F95078) & "')"), var_58C, -1
  loc_162C651: End If
  loc_162C65F: Set var_8C = Me.Txt
  loc_162C665: Call 0.Method_CmdSave_Click0 (CInt(&H2F), var_94, var_98)
  loc_162C66D: var_590 = var_94.Text
  loc_162C68D: Set var_A0 = Me.Txt
  loc_162C693: Call 0.Method_CmdSave_Click0 (CInt(&H30), var_13C, var_9C)
  loc_162C69B: (CDbl(Val(var_98)) <> CDbl(0)) = var_13C.Text
  loc_162C6BC: Set var_140 = Me.Txt
  loc_162C6C2: Call 0.Method_CmdSave_Click0 (CInt(&H31), var_144)
  loc_162C6EB: Set var_148 = Me.Txt
  loc_162C6F1: Call 0.Method_CmdSave_Click0 (CInt(&H32), var_14C)
  loc_162C71A: Set var_150 = Me.Txt
  loc_162C720: Call 0.Method_CmdSave_Click0 (CInt(&H33), var_154)
  loc_162C75F: If ((((var_598 Or (CDbl(Val(var_9C)) <> CDbl(0))) Or (CDbl(Val(var_144.Text)) <> CDbl(0))) Or (CDbl(Val(var_14C.Text)) <> CDbl(0))) Or (CDbl(Val(var_154.Text)) <> CDbl(0))) Then
  loc_162C770:   Set var_8C = Me.Txt
  loc_162C776:   Call 0.Method_CmdSave_Click0 (CInt(0), var_94)
  loc_162C7BD:   Set var_13C = Me.LblName
  loc_162C7C3:   Call 0.Method_CmdSave_Click0 (&H12, var_140)
  loc_162C7DE:   Set var_144 = Me.Txt
  loc_162C7E4:   Call 0.Method_CmdSave_Click0 (CInt(&H2F), var_148)
  loc_162C80A:   Set var_14C = Me.Txt
  loc_162C810:   Call 0.Method_CmdSave_Click0 (CInt(&H30), var_150)
  loc_162C825:   var_5A0 = Val(var_150.Text)
  loc_162C836:   Set var_154 = Me.Txt
  loc_162C83C:   Call 0.Method_CmdSave_Click0 (CInt(&H31), var_23C, var_240)
  loc_162C851:   var_5A8 = Val(var_240)
  loc_162C862:   Set var_284 = Me.Txt
  loc_162C868:   Call 0.Method_CmdSave_Click0 (CInt(&H32), var_288, var_28C)
  loc_162C87D:   var_5B0 = Val(var_28C)
  loc_162C88E:   Set var_2D0 = Me.Txt
  loc_162C894:   Call 0.Method_CmdSave_Click0 (CInt(&H33), var_2D4, var_2D8)
  loc_162C8A9:   var_5B8 = Val(var_2D8)
  loc_162C8BA:   Set var_31C = Me.Txt
  loc_162C8C0:   Call 0.Method_CmdSave_Click0 (CInt(&H34), var_320, var_324)
  loc_162C8D5:   var_5C0 = Val(var_324)
  loc_162C8E6:   Set var_368 = Me.Txt
  loc_162C8EC:   Call 0.Method_CmdSave_Click0 (CInt(&H35), var_36C, var_370)
  loc_162C901:   var_5C8 = Val(var_370)
  loc_162C912:   Proc_6_7_F26918(var_450, Date)
  loc_162C91B:   Set var_484 = Me.TopCtrl1
  loc_162C921:   Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005(var_5C8)
  loc_162C965:   var_104 = "Insert Into rateList(RoomCat,RoomNo,Code,OccType,rate1,rate2,Rate3,Rate4,rate5,RateW,RateM,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) Values ('"
  loc_162C9A4:   var_1D8 = var_104 & Trim(CVar(var_94.Tag)) & "','*****','" & Trim(CVar(Me.SRate.Tag)) & "','" & CVar(var_140.Caption) & "'," & CVar(Val(var_148.Text)) 
  loc_162CA08:   var_344 = var_1D8 & "," & CVar(var_23C.Text) & "," & CVar(var_288.Text) & "," & CVar(var_2D4.Text) & "," & CVar(var_320.Text) & "," & CVar(var_36C.Text) 
  loc_162CA62:   var_508 = var_344 & "," & CVar(var_5C8) & ",'" & CVar(MemVar_1F95078) & "','" & CVar(MemVar_1F950C8) & "'," & var_450 & ",'" & IIf((CStr(var_494) = "Add"), "A", "E") 
  loc_162CA8C:   unk_4D255E.Execute CStr(var_508 & "','" & CVar(MemVar_1F95078) & "')"), var_58C, -1
  loc_162CB2C: End If
  loc_162CB39: Me.SRate.Tag = vbNullString
  loc_162CB46: Set var_88 = Nothing
  loc_162CB49: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F56B9C
  'Data Table: 4D2550
  Dim var_9C As Variant
  Dim var_A8 As Variant
  Dim var_C4 As TextBox
  loc_F56ABE: If (Me.ListView.ListItems.Count > 0) Then
  loc_F56AC5:   Set var_A8 = Me.ListView
  loc_F56B0F:   Set var_C0 = Me.Txt
  loc_F56B15:   Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A8.Tag))), var_C4)
  loc_F56B1D:   var_C4.Text = Me.ListView.SelectedItem.Text
  loc_F56B3D: End If
  loc_F56B49: Me.FrmList.Visible = False
  loc_F56B79: Set var_9C = Me.Txt
  loc_F56B7F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(Me.ListView.Tag))), var_A8)
  loc_F56B87: var_A8.SetFocus
  loc_F56B9B: Exit Sub
End Sub

Public Function MasterFormExitGet() '4D36EC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4D36FB
  MasterFormExit = Value
End Sub

Public Sub SEARCHBACK(MyValue) 'E96170
  'Data Table: 4D2550
  Dim Me As Recordset15
  loc_E960FE: On Error Goto loc_E96167
  loc_E96107: Me.MoveFirst
  loc_E96131: Me.Find "SearchCode='" & MyValue & "'", 0, 1
  loc_E96159: Proc_5_0_1107AD0(&HFF, Me, global_64)
  loc_E96161: Call Proc_23_39_1714F58(0)
  loc_E96166: Exit Sub
  loc_E96167: ' Referenced from: E960FE
  loc_E96167: Proc_6_60_E63754(var_A0)
  loc_E9616C: Exit Sub
End Sub

Public Sub Proc_23_37_1093BD0
  'Data Table: 4D2550
  Dim Me As Recordset15
  Dim var_B8 As TextBox
  Dim unk_4D255E As Connection15
  Dim var_E0 As Fields15
  Dim var_F4 As Field20
  loc_1093963: If (Me.RecordCount = 0) Then
  loc_1093966:   Proc_23_37_1093BD0 = 
  loc_109396C: End If
  loc_1093970: Set var_A0 = Me.TopCtrl1
  loc_1093976: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_68030005()
  loc_109398F: If (CStr() = "Add") Then
  loc_10939CD:   Set var_A0 = Me.Txt
  loc_10939D3:   Call 0.Method_Proc_23_37_1093BD00 (CInt(0), var_B8, var_BC, "Select Count(*) From RoomCat Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_10939F4:   unk_4D255E.Execute var_E0 & var_BC & "'", 0, var_F4
  loc_1093A04:    = var_E0.Item()
  loc_1093A0C:    = var_F4.Value
  loc_1093A3D:   If (var_B8.Text.Fields > 0) Then
  loc_1093A5B:     var_B0 = "Duplicate Name"
  loc_1093A61:     MsgBox(var_B0, &H40, "Information", var_124, var_144)
  loc_1093A7C:     Set var_A0 = Me.Txt
  loc_1093A82:     Call 0.Method_Proc_23_37_1093BD00 (CInt(0))
  loc_1093A8A:     var_B8.SetFocus
  loc_1093A9B:     Proc_23_37_1093BD0 = &HFF
  loc_1093AA1:   End If
  loc_1093AA4: Else
  loc_1093ADF:   Set var_A0 = Me.Txt
  loc_1093AE5:   Call 0.Method_Proc_23_37_1093BD00 (CInt(0), var_B8, var_BC, "Select Count(*) From RoomCat Where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Name='", var_B0, -1)
  loc_1093B17:   unk_4D255E.Execute var_E0 & var_BC & "' And Name <>'" & global_76 & "'", 0, var_F4
  loc_1093B27:    = var_E0.Item(var_B8)
  loc_1093B2F:    = var_F4.Value
  loc_1093B64:   If (var_B8.Text.Fields > 0) Then
  loc_1093B88:     MsgBox("Duplicate Name", &H40, "Information", var_124, var_144)
  loc_1093BA3:     Set var_A0 = Me.Txt
  loc_1093BA9:     Call 0.Method_Proc_23_37_1093BD00 (CInt(0))
  loc_1093BB1:     var_B8.SetFocus
  loc_1093BC2:     Proc_23_37_1093BD0 = &HFF
  loc_1093BC8:   End If
  loc_1093BC8: End If
  loc_1093BC8: Proc_23_37_1093BD0 = var_B8
End Sub

Public Sub Proc_23_38_FA1038
  'Data Table: 4D2550
  Dim var_98 As TextBox
  Dim var_F8 As TextBox
  loc_FA0ECE: global_76 = vbNullString
  loc_FA0EE0: Set var_8C = Me.Txt
  loc_FA0EE6: Call 0.Method_Proc_23_38_FA1038C (var_8E, var_86)
  loc_FA0EF6: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FA0F0C:   Set var_8C = Me.Txt
  loc_FA0F12:   Call 0.Method_Proc_23_38_FA10380 (CInt(var_86), var_98)
  loc_FA0F1A:   var_98.Text = vbNullString
  loc_FA0F36:   Set var_8C = Me.Txt
  loc_FA0F3C:   Call 0.Method_Proc_23_38_FA10380 (CInt(var_86), var_98)
  loc_FA0F44:   var_98.Tag = vbNullString
  loc_FA0F53: Next var_92 'Byte
  loc_FA0F67: Set var_8C = Me.Txt
  loc_FA0F6D: Call 0.Method_Proc_23_38_FA10380 (CInt(8), var_98)
  loc_FA0F91: For var_9C = CByte(9) To (CInt(var_88) = &H1C): var_88 = var_9C 'Byte
  loc_FA0FA7:   Set var_8C = Me.Txt
  loc_FA0FAD:   Call 0.Method_Proc_23_38_FA10380 (CInt(var_88), var_98)
  loc_FA0FFD:   Set var_F4 = Me.Txt
  loc_FA1003:   Call 0.Method_Proc_23_38_FA10380 (CInt(var_88), var_F8, CStr(Format(CVar(Val("No")), "0.00")), 1)
  loc_FA100B:   var_F8.Text = 1
  loc_FA102E: Next var_9C 'Byte
  loc_FA1034: Exit Sub
End Sub

Public Sub Proc_23_39_1714F58
  'Data Table: 4D2550
  Dim Me As Recordset15
  Dim var_98 As Fields15
  Dim var_AC As Variant
  Dim var_DC As Variant
  Dim unk_4D255E As Connection15
  Dim var_94 As Recordset15
  Dim var_124 As Fields15
  Dim var_8A As Integer
  Dim var_88 As Recordset15
  Dim var_128 As Variant
  Dim var_90 As Recordset15
  loc_1713394: On Error Goto loc_1714F4F
  loc_17133ED: unk_4D255E.Execute CStr("Select U_Name,U_AE,U_EntDt From RoomCat where Code='" & Me.Fields.Item("Code").Value & "'  "), var_120, -1
  loc_17133F8: Set var_94 = var_124
  loc_171344C: var_124 = var_94.Fields
  loc_17134B5: var_18C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_124.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_17134FA: Me.LblUser.Caption = CStr(var_124 & CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("U_Name")), var_18C)))
  loc_171356C: var_124 = var_94.Fields
  loc_1713574: var_128 = var_124.Item("U_AE")
  loc_171358D: var_120 = "entdt : "
  loc_17135D5: var_18C = IIf((Proc_6_38_E69628(CVar(var_94.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_128)) = "E"), "Last Update : ", var_120))
  loc_171361A: Me.LblLDt.Caption = CStr(var_18C & CVar(Proc_6_38_E69628(CVar(var_94.Fields.Item("U_EntDt")))))
  loc_1713654: var_8A = 1
  loc_171366E: If (Me.RecordCount > 0) Then
  loc_17136C7:   unk_4D255E.Execute CStr("Select RoomCat.* From RoomCat where RoomCat.Code='" & Me.Fields.Item("SearchCode").Value & "'"), var_120, -1
  loc_17136D2:   Set var_88 = var_124
  loc_1713700:   If (var_88.RecordCount > 0) Then
  loc_1713703:     Call Proc_23_38_FA1038(var_124)
  loc_1713708:     ' Referenced from: 1713ECE
  loc_1713717:     If Not(var_88.EOF) Then
  loc_1713756:       If (var_88.Fields.Item("Type").Value = "RO") Then
  loc_1713773:         var_AC = var_88.Fields.Item("Type")
  loc_1713792:         Set var_124 = Me.Txt
  loc_1713798:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1F), var_128)
  loc_17137A0:         var_128.Tag = CStr(var_AC.Value)
  loc_17137C4:         Set var_98 = Me.Txt
  loc_17137CA:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1F), var_AC)
  loc_17137D2:         var_AC.Text = "Room"
  loc_17137E1:       Else
  loc_171381D:         If (var_88.Fields.Item("Type").Value = "CO") Then
  loc_171383A:           var_AC = var_88.Fields.Item("Type")
  loc_1713859:           Set var_124 = Me.Txt
  loc_171385F:           Call 0.Method_Proc_23_39_1714F580 (CInt(&H1F), var_128)
  loc_1713867:           var_128.Tag = CStr(var_AC.Value)
  loc_171388B:           Set var_98 = Me.Txt
  loc_1713891:           Call 0.Method_Proc_23_39_1714F580 (CInt(&H1F), var_AC)
  loc_1713899:           var_AC.Text = "Conf. Hall"
  loc_17138A5:         End If
  loc_17138A5:       End If
  loc_17138DE:       Set var_124 = Me.Txt
  loc_17138E4:       Call 0.Method_Proc_23_39_1714F580 (CInt(0), var_128)
  loc_17138EC:       var_128.Tag = CStr(var_88.Fields.Item("Code").Value)
  loc_1713938:       Set var_124 = Me.Txt
  loc_171393E:       Call 0.Method_Proc_23_39_1714F580 (CInt(&H37), var_128)
  loc_1713946:       var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ActiveYN")))
  loc_1713993:       Set var_124 = Me.Txt
  loc_1713999:       Call 0.Method_Proc_23_39_1714F580 (CInt(0), var_128)
  loc_17139A1:       var_128.Text = CStr(var_88.Fields.Item("Name").Value)
  loc_17139F0:       Set var_124 = Me.Txt
  loc_17139F6:       Call 0.Method_Proc_23_39_1714F580 (CInt(1), var_128)
  loc_17139FE:       var_128.Text = CStr(var_88.Fields.Item("ShortName").Value)
  loc_1713A2B:       var_AC = var_88.Fields.Item("RevCode")
  loc_1713A50:       Call 0.Method_Proc_23_39_1714F580 (CInt(&H36), var_128)
  loc_1713A58:       var_128.Tag = Proc_6_38_E69628(CVar(var_AC))
  loc_1713A7A:       Set var_98 = Me.Txt
  loc_1713A80:       Call 0.Method_Proc_23_39_1714F580 (CInt(&H36), var_AC)
  loc_1713A9F:       If (var_AC.Tag <> vbNullString) Then
  loc_1713AE1:         var_DC = "Select Name from RevMast where Code=(select revcode from roomcat where code='" & Me.Fields.Item("SearchCode").Value 
  loc_1713AF8:         unk_4D255E.Execute CStr(var_DC & "')"), var_120, -1
  loc_1713B03:         Set var_90 = Me.Txt
  loc_1713B31:         If (var_90.RecordCount > 0) Then
  loc_1713B73:           Call 0.Method_Proc_23_39_1714F580 (CInt(&H36), var_128, CStr(var_90.Fields.Item(0).Value))
  loc_1713B7B:           var_128.Text = Me.Txt
  loc_1713B91:         End If
  loc_1713B91:       End If
  loc_1713BE3:       Set var_124 = Me.Txt
  loc_1713BE9:       Call 0.Method_Proc_23_39_1714F580 (CInt(3), var_128, CStr(Format(CVar(var_88.Fields.Item("RetChg")), "0.00")))
  loc_1713BF1:       var_128.Text = 1
  loc_1713C5D:       Set var_124 = Me.Txt
  loc_1713C63:       Call 0.Method_Proc_23_39_1714F580 (CInt(4), var_128, CStr(Format(CVar(var_88.Fields.Item("CancelChg")), "0.00")), 1)
  loc_1713C6B:       var_128.Text = 1
  loc_1713CD7:       Set var_124 = Me.Txt
  loc_1713CDD:       Call 0.Method_Proc_23_39_1714F580 (CInt(5), var_128, CStr(Format(CVar(var_88.Fields.Item("MINADV")), "0.00")), 1)
  loc_1713CE5:       var_128.Text = 1
  loc_1713D42:       Set var_124 = Me.Txt
  loc_1713D48:       Call 0.Method_Proc_23_39_1714F580 (CInt(6), var_128, CStr(Val(CStr(var_88.Fields.Item("noRooms").Value))))
  loc_1713D50:       var_128.Text = 1
  loc_1713DAD:       Set var_124 = Me.Txt
  loc_1713DB3:       Call 0.Method_Proc_23_39_1714F580 (CInt(7), var_128)
  loc_1713DBB:       var_128.Text = CStr(Val(CStr(var_88.Fields.Item("MultPer").Value)))
  loc_1713E0C:       var_120 = "Yes"
  loc_1713E40:       Set var_124 = Me.Txt
  loc_1713E46:       Call 0.Method_Proc_23_39_1714F580 (CInt(8), var_128)
  loc_1713E4E:       var_128.Text = CStr(IIf((var_88.Fields.Item("InclCount").Value = "Y"), var_120, "No"))
  loc_1713EA4:       Set var_124 = Me.Txt
  loc_1713EAA:       Call 0.Method_Proc_23_39_1714F580 (CInt(&H38), var_128)
  loc_1713EB2:       var_128.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MapCode")))
  loc_1713EC9:       var_88.MoveNext
  loc_1713ECE:       GoTo loc_1713708
  loc_1713ED1:     End If
  loc_1713ED1:   End If
  loc_1713F10:   var_DC = "Select RateList.* From RateList Left Join RoomCat on RateList.RoomCat=RoomCat.Code where RateList.RoomCat='" & Me.Fields.Item("SearchCode").Value 
  loc_1713F27:   unk_4D255E.Execute CStr(var_DC & "' ANd RoomNo='*****' and RateList.Code='*'"), var_120, -1
  loc_1713F32:   Set var_90 = var_124
  loc_1713F60:   If (var_90.RecordCount > 0) Then
  loc_1713F63:     ' Referenced from: 1714F29
  loc_1713F72:     If Not(var_90.EOF) Then
  loc_1713FB1:       If (var_90.Fields.Item("OccType").Value = "Single") Then
  loc_1713FE8:         Set var_124 = Me.LblName
  loc_1713FEE:         Call 0.Method_Proc_23_39_1714F580 (&HE, var_128)
  loc_1713FF6:         var_128.Caption = Proc_6_38_E69628(CVar(var_90.Fields.Item("OccType")), var_124)
  loc_171405C:         Set var_124 = Me.Txt
  loc_1714062:         Call 0.Method_Proc_23_39_1714F580 (CInt(9), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_171406A:         var_128.Text = 1
  loc_17140D6:         Set var_124 = Me.Txt
  loc_17140DC:         Call 0.Method_Proc_23_39_1714F580 (CInt(&HA), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17140E4:         var_128.Text = 1
  loc_1714150:         Set var_124 = Me.Txt
  loc_1714156:         Call 0.Method_Proc_23_39_1714F580 (CInt(&HB), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_171415E:         var_128.Text = 1
  loc_17141CA:         Set var_124 = Me.Txt
  loc_17141D0:         Call 0.Method_Proc_23_39_1714F580 (CInt(&HC), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17141D8:         var_128.Text = 1
  loc_1714244:         Set var_124 = Me.Txt
  loc_171424A:         Call 0.Method_Proc_23_39_1714F580 (CInt(&HD), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_1714252:         var_128.Text = 1
  loc_17142BE:         Set var_124 = Me.Txt
  loc_17142C4:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1D), var_128, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17142CC:         var_128.Text = 1
  loc_1714338:         Set var_124 = Me.Txt
  loc_171433E:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1E), var_128, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_1714346:         var_128.Text = 1
  loc_1714360:       End If
  loc_171439C:       If (var_90.Fields.Item("OccType").Value = "Multiple") Then
  loc_17143D3:         Set var_124 = Me.LblName
  loc_17143D9:         Call 0.Method_Proc_23_39_1714F580 (&HF, var_128)
  loc_17143E1:         var_128.Caption = Proc_6_38_E69628(CVar(var_90.Fields.Item("OccType")), 1)
  loc_1714447:         Set var_124 = Me.Txt
  loc_171444D:         Call 0.Method_Proc_23_39_1714F580 (CInt(&HE), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_1714455:         var_128.Text = 1
  loc_17144C1:         Set var_124 = Me.Txt
  loc_17144C7:         Call 0.Method_Proc_23_39_1714F580 (CInt(&HF), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17144CF:         var_128.Text = 1
  loc_171453B:         Set var_124 = Me.Txt
  loc_1714541:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H10), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_1714549:         var_128.Text = 1
  loc_17145B5:         Set var_124 = Me.Txt
  loc_17145BB:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H11), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17145C3:         var_128.Text = 1
  loc_171462F:         Set var_124 = Me.Txt
  loc_1714635:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H12), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_171463D:         var_128.Text = 1
  loc_17146A9:         Set var_124 = Me.Txt
  loc_17146AF:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1D), var_128, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_17146B7:         var_128.Text = 1
  loc_1714723:         Set var_124 = Me.Txt
  loc_1714729:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1E), var_128, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_1714731:         var_128.Text = 1
  loc_171474B:       End If
  loc_1714787:       If (var_90.Fields.Item("OccType").Value = "Extra Person") Then
  loc_17147BE:         Set var_124 = Me.LblName
  loc_17147C4:         Call 0.Method_Proc_23_39_1714F580 (&H11, var_128)
  loc_17147CC:         var_128.Caption = Proc_6_38_E69628(CVar(var_90.Fields.Item("OccType")), 1)
  loc_1714832:         Set var_124 = Me.Txt
  loc_1714838:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H13), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_1714840:         var_128.Text = 1
  loc_17148AC:         Set var_124 = Me.Txt
  loc_17148B2:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H14), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_17148BA:         var_128.Text = 1
  loc_1714926:         Set var_124 = Me.Txt
  loc_171492C:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H15), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_1714934:         var_128.Text = 1
  loc_17149A0:         Set var_124 = Me.Txt
  loc_17149A6:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H16), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_17149AE:         var_128.Text = 1
  loc_1714A1A:         Set var_124 = Me.Txt
  loc_1714A20:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H17), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_1714A28:         var_128.Text = 1
  loc_1714A94:         Set var_124 = Me.Txt
  loc_1714A9A:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1D), var_128, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_1714AA2:         var_128.Text = 1
  loc_1714B0E:         Set var_124 = Me.Txt
  loc_1714B14:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1E), var_128, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_1714B1C:         var_128.Text = 1
  loc_1714B36:       End If
  loc_1714B72:       If (var_90.Fields.Item("OccType").Value = "Weekend") Then
  loc_1714BA9:         Set var_124 = Me.LblName
  loc_1714BAF:         Call 0.Method_Proc_23_39_1714F580 (&H12, var_128)
  loc_1714BB7:         var_128.Caption = Proc_6_38_E69628(CVar(var_90.Fields.Item("OccType")), 1)
  loc_1714C1D:         Set var_124 = Me.Txt
  loc_1714C23:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H18), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate1")), "0.00")))
  loc_1714C2B:         var_128.Text = 1
  loc_1714C97:         Set var_124 = Me.Txt
  loc_1714C9D:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H19), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate2")), "0.00")), 1)
  loc_1714CA5:         var_128.Text = 1
  loc_1714D11:         Set var_124 = Me.Txt
  loc_1714D17:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1A), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate3")), "0.00")), 1)
  loc_1714D1F:         var_128.Text = 1
  loc_1714D8B:         Set var_124 = Me.Txt
  loc_1714D91:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1B), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate4")), "0.00")), 1)
  loc_1714D99:         var_128.Text = 1
  loc_1714E05:         Set var_124 = Me.Txt
  loc_1714E0B:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1C), var_128, CStr(Format(CVar(var_90.Fields.Item("Rate5")), "0.00")), 1)
  loc_1714E13:         var_128.Text = 1
  loc_1714E7F:         Set var_124 = Me.Txt
  loc_1714E85:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1D), var_128, CStr(Format(CVar(var_90.Fields.Item("RateW")), "0.00")), 1)
  loc_1714E8D:         var_128.Text = 1
  loc_1714EF9:         Set var_124 = Me.Txt
  loc_1714EFF:         Call 0.Method_Proc_23_39_1714F580 (CInt(&H1E), var_128, CStr(Format(CVar(var_90.Fields.Item("RateM")), "0.00")), 1)
  loc_1714F07:         var_128.Text = 1
  loc_1714F21:       End If
  loc_1714F24:       var_90.MoveNext
  loc_1714F29:       GoTo loc_1713F63
  loc_1714F2C:     End If
  loc_1714F2C:   End If
  loc_1714F2E:   var_8A = 0
  loc_1714F34: Else
  loc_1714F34:   Call Proc_23_38_FA1038(var_8A, 1)
  loc_1714F39: End If
  loc_1714F39: Call Proc_23_41_EF4268(var_8A)
  loc_1714F43: Set var_88 = Nothing
  loc_1714F4B: Set var_90 = Nothing
  loc_1714F4E: Exit Sub
  loc_1714F4F: ' Referenced from: 1713394
  loc_1714F4F: Proc_6_60_E63754()
  loc_1714F54: Exit Sub
End Sub

Public Sub Proc_23_40_EC2A2C(arg_C) 'EC2A2C
  'Data Table: 4D2550
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim arg_35FF As Double
  loc_EC2992: Set var_8C = Me.Txt
  loc_EC2998: Call 0.Method_Proc_23_40_EC2A2CC (var_8E, var_86)
  loc_EC29A8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EC29BE:   Set var_8C = Me.Txt
  loc_EC29C4:   Call 0.Method_Proc_23_40_EC2A2C0 (CInt(var_86), var_98)
  loc_EC29CC:   var_98.Enabled = arg_C
  loc_EC29DB: Next var_92 'Byte
  loc_EC29EE: Me.CmdRate.Enabled = arg_C
  loc_EC2A11: If (Me.SRate.Visible = &HFF) Then
  loc_EC2A20:   Me.SRate.Visible = False
  loc_EC2A28: End If
  loc_EC2A28: Exit Sub
  loc_EC2A29: arg_35FF = 
End Sub

Public Sub Proc_23_41_EF4268
  'Data Table: 4D2550
  loc_EF41AC: If (CBool(Me.DGHelp.Visible) = &HFF) Then
  loc_EF41BE:   Me.DGHelp.Visible = False
  loc_EF41C6: End If
  loc_EF41E2: If (CBool(Me.DGRevenue.Visible) = &HFF) Then
  loc_EF41F4:   Me.DGRevenue.Visible = False
  loc_EF41FC: End If
  loc_EF4217: If (Me.FrmList.Visible = &HFF) Then
  loc_EF4226:   Me.FrmList.Visible = False
  loc_EF422E: End If
  loc_EF424A: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EF425C:   Me.FGPoint.Visible = False
  loc_EF4264: End If
  loc_EF4264: Exit Sub
End Sub

Public Sub Proc_23_42_EE0FCC(arg_C) 'EE0FCC
  'Data Table: 4D2550
  Dim var_8C As TextBox
  loc_EE0F20: Call Proc_23_41_EF4268()
  loc_EE0F30: Set var_88 = Me.Txt
  loc_EE0F36: Call 0.Method_Proc_23_42_EE0FCC0 (CInt(0))
  loc_EE0F5F: If (Proc_6_27_EA61EC(var_8C, "RoomCatName") = 0) Then
  loc_EE0F62:   Exit Sub
  loc_EE0F63: End If
  loc_EE0F9A: If (MsgBox("Save Record ?", 4, "Save Data", var_F4, var_114) = 6) Then
  loc_EE0F9D:   Call TopCtrl1_UnknownEvent_16()
  loc_EE0FA5: Else
  loc_EE0FAF:   Set var_88 = Me.Txt
  loc_EE0FB5:   Call 0.Method_Proc_23_42_EE0FCC0 (arg_C, var_8C)
  loc_EE0FBD:   var_8C.SetFocus
  loc_EE0FC9: End If
  loc_EE0FC9: Exit Sub
End Sub
