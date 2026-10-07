VERSION 5.00
Begin VB.Form CompMast
  Caption = "Company Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "CompMast.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 12990
  ClientHeight = 9705
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 36
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 5415
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 23
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
  Begin TextBox Txt
    Index = 35
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 5100
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 22
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
  Begin TextBox Txt
    Index = 33
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3975
    Top = 2010
    Width = 1905
    Height = 285
    TabIndex = 6
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
    Index = 34
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 4785
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 21
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
  Begin MainCtrl tOPCtrl1
    Left = 0
    Top = 0
    Width = 12990
    Height = 450
    TabIndex = 92
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 4470
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
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
    Index = 32
    BackColor = &HFFFFFF&
    Left = 16470
    Top = 3135
    Width = 4140
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    PasswordChar = "*"
    MaxLength = 15
  End
  Begin TextBox Txt
    Index = 31
    BackColor = &HFFFFFF&
    Left = 1740
    Top = 2325
    Width = 550
    Height = 285
    Enabled = 0   'False
    Text = "Yes"
    TabIndex = 83
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
  Begin TextBox TxtGrid1
    Index = 2
    BackColor = &HFF8080&
    ForeColor = &HC00000&
    Left = 10815
    Top = 735
    Width = 1020
    Height = 240
    Visible = 0   'False
    TabIndex = 82
    BorderStyle = 0 'None
    Appearance = 0 'Flat
  End
  Begin TextBox TxtGrid1
    Index = 1
    BackColor = &HFF8080&
    ForeColor = &HFF0000&
    Left = 3540
    Top = 6045
    Width = 1020
    Height = 240
    Visible = 0   'False
    TabIndex = 27
    BorderStyle = 0 'None
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
  Begin MSHFlexGrid Fgrid1
    Left = 3495
    Top = 5745
    Width = 4035
    Height = 3105
    Visible = 0   'False
    TabIndex = 26
  End
  Begin PictureBox Picture2
    Picture = "CompMast.frx":442
    Left = 17670
    Top = 3765
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 79
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin PictureBox Picture1
    Picture = "CompMast.frx":790
    Left = 17670
    Top = 3495
    Width = 300
    Height = 270
    Visible = 0   'False
    TabIndex = 78
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 14325
    Top = 6435
    Width = 1875
    Height = 1725
    Visible = 0   'False
    TabIndex = 76
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 225
      Top = 105
      Width = 1800
      Height = 1815
      TabStop = 0   'False
      TabIndex = 77
    End
  End
  Begin DataGrid DgUser
    Left = 9000
    Top = 8895
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 73
  End
  Begin DataGrid DGUnderAc
    Left = 9615
    Top = 8610
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 45
  End
  Begin DataGrid DGAcName
    Left = 9585
    Top = 7965
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 46
  End
  Begin MSFlexGrid FGPoint
    Left = 14265
    Top = 4890
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 75
  End
  Begin DataGrid DGCity
    Left = 9210
    Top = 7605
    Width = 4845
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 74
  End
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    Left = 16470
    Top = 4095
    Width = 1905
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 24
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
    Index = 24
    BackColor = &HFFFFFF&
    Left = 16485
    Top = 4455
    Width = 1905
    Height = 255
    Enabled = 0   'False
    TabIndex = 25
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
    Index = 28
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 4155
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 19
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
    Index = 27
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 2880
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 36
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 26
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 2610
    Width = 3195
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 35
    BorderStyle = 0 'None
    MaxLength = 35
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 1740
    Top = 2010
    Width = 550
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
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
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 3840
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
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
    ForeColor = &HC00000&
    Left = 7575
    Top = 3525
    Width = 4035
    Height = 285
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
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 3210
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 2895
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 15
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 1950
    Width = 4035
    Height = 285
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 1635
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 1320
    Width = 4035
    Height = 285
    Enabled = 0   'False
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 2265
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 2580
    Width = 4035
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
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
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 2340
    Width = 1530
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 34
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 23
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 2070
    Width = 1530
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 33
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
    Index = 22
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 1800
    Width = 1530
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 32
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 1530
    Width = 1530
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 31
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1740
    Top = 1695
    Width = 4140
    Height = 285
    TabIndex = 3
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    Left = 1320
    Top = 3840
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 10
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
  Begin TextBox txtCurrBal
    ForeColor = &HC00000&
    Left = 3870
    Top = 3000
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 53
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
  End
  Begin TextBox Txt
    Index = 30
    BackColor = &HFFFFFF&
    Left = 16065
    Top = 3795
    Width = 975
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 52
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
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 780
    Top = 3000
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 37
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1740
    Top = 1380
    Width = 4140
    Height = 285
    TabIndex = 2
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
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8025
    Top = 1005
    Width = 3585
    Height = 285
    Enabled = 0   'False
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
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7575
    Top = 1005
    Width = 420
    Height = 285
    Enabled = 0   'False
    Text = "Mr."
    TabIndex = 8
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1740
    Top = 750
    Width = 1410
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
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 1260
    Width = 3195
    Height = 255
    Visible = 0   'False
    TabIndex = 30
    BorderStyle = 0 'None
    MaxLength = 35
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
    Left = 1740
    Top = 1065
    Width = 4140
    Height = 285
    TabIndex = 1
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 720
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 29
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 14
    BackColor = &HFFFFFF&
    Left = 16545
    Top = 450
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 28
    BorderStyle = 0 'None
    MaxLength = 20
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
  Begin MSHFlexGrid FGrid
    Left = 240
    Top = 3540
    Width = 5715
    Height = 1215
    TabIndex = 80
  End
  Begin MSHFlexGrid FgridPlan
    Left = 11640
    Top = 1005
    Width = 4305
    Height = 7320
    TabIndex = 81
  End
  Begin MSHFlexGrid FGridIncl
    Left = 7575
    Top = 5745
    Width = 3960
    Height = 2175
    TabIndex = 93
  End
  Begin Label Lbl
    Caption = "Trade Name"
    Index = 34
    ForeColor = &HC00000&
    Left = 6120
    Top = 5445
    Width = 1170
    Height = 240
    TabIndex = 97
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
    Caption = "Legal Name"
    Index = 33
    ForeColor = &HC00000&
    Left = 6120
    Top = 5130
    Width = 1155
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
    Caption = "Map Code"
    Index = 32
    ForeColor = &HC00000&
    Left = 2985
    Top = 2025
    Width = 960
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
  Begin Label Lbl
    Caption = "GSTIN"
    Index = 31
    ForeColor = &HC00000&
    Left = 6120
    Top = 4815
    Width = 600
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4125
    Top = 7470
    Width = 2790
    Height = 285
    TabIndex = 91
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
    Left = 750
    Top = 7470
    Width = 2880
    Height = 255
    TabIndex = 90
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
    Top = 345
    Width = 180
    Height = 540
    TabIndex = 89
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
  Begin Label Lbl
    Caption = "PAN No."
    Index = 13
    ForeColor = &HC00000&
    Left = 6120
    Top = 4485
    Width = 780
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 1
    BackColor = &HC0FFFF&
    ForeColor = &HC0&
    Left = 2310
    Top = 2340
    Width = 645
    Height = 285
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
  Begin Label LblYN
    Caption = "Yes/No"
    Index = 0
    BackColor = &HC0FFFF&
    ForeColor = &HC0&
    Left = 2310
    Top = 2025
    Width = 645
    Height = 285
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
  Begin Label Lbl
    Caption = "Web Password"
    Index = 30
    ForeColor = &H0&
    Left = 14925
    Top = 3150
    Width = 1275
    Height = 240
    Visible = 0   'False
    TabIndex = 85
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
    Caption = "Active"
    Index = 29
    ForeColor = &HC00000&
    Left = 240
    Top = 2340
    Width = 585
    Height = 240
    TabIndex = 84
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
    Caption = "Commission"
    Index = 28
    ForeColor = &H0&
    Left = 14910
    Top = 4095
    Width = 1035
    Height = 240
    Visible = 0   'False
    TabIndex = 72
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
    Caption = "Contract Type"
    Index = 27
    ForeColor = &H0&
    Left = 14910
    Top = 4365
    Width = 1200
    Height = 240
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
    Caption = "Discount Type"
    Index = 26
    ForeColor = &HC00000&
    Left = 6120
    Top = 4155
    Width = 1335
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
  Begin Label Lbl
    Caption = "Black Listed By"
    Index = 25
    ForeColor = &H0&
    Left = 14880
    Top = 2910
    Width = 1245
    Height = 240
    Visible = 0   'False
    TabIndex = 69
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
    Caption = "BlackList Reason"
    Index = 24
    ForeColor = &H0&
    Left = 14880
    Top = 2640
    Width = 1410
    Height = 240
    Visible = 0   'False
    TabIndex = 68
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
    Caption = "Allow Credit"
    Index = 23
    ForeColor = &HC00000&
    Left = 225
    Top = 2025
    Width = 1170
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
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &HC00000&
    Left = 6120
    Top = 2895
    Width = 1140
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
    Caption = "Contact Person"
    Index = 3
    ForeColor = &HC00000&
    Left = 6120
    Top = 1005
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
    Caption = "Address"
    Index = 4
    ForeColor = &HC00000&
    Left = 6120
    Top = 1320
    Width = 750
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
    Caption = "City Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 6120
    Top = 2250
    Width = 975
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
    Caption = "Mobile No."
    Index = 8
    ForeColor = &HC00000&
    Left = 6120
    Top = 3210
    Width = 1020
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
    Caption = "Fax No."
    Index = 9
    ForeColor = &HC00000&
    Left = 6120
    Top = 3525
    Width = 735
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
  Begin Label Lbl
    Caption = "E-Mail"
    Index = 10
    ForeColor = &HC00000&
    Left = 6120
    Top = 3840
    Width = 585
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
  Begin Label Lbl
    Caption = "PinCode"
    Index = 1
    ForeColor = &HC00000&
    Left = 6120
    Top = 2580
    Width = 810
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
    Caption = "Black Listed"
    Index = 22
    ForeColor = &H0&
    Left = 14880
    Top = 2370
    Width = 990
    Height = 240
    Visible = 0   'False
    TabIndex = 58
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
    Caption = "Credit Limit"
    Index = 21
    ForeColor = &H0&
    Left = 14880
    Top = 2100
    Width = 975
    Height = 240
    Visible = 0   'False
    TabIndex = 57
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
    Caption = "Interest"
    Index = 20
    ForeColor = &H0&
    Left = 14880
    Top = 1830
    Width = 660
    Height = 240
    Visible = 0   'False
    TabIndex = 56
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
    Caption = "Credit days"
    Index = 19
    ForeColor = &H0&
    Left = 14880
    Top = 1545
    Width = 960
    Height = 240
    Visible = 0   'False
    TabIndex = 55
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
    Caption = "Company Type"
    Index = 18
    ForeColor = &HC00000&
    Left = 225
    Top = 1695
    Width = 1425
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
    Caption = "Account Nature"
    Index = 6
    ForeColor = &HC00000&
    Left = 15615
    Top = 3465
    Width = 1455
    Height = 240
    Visible = 0   'False
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
  Begin Shape Shape2
    BorderColor = &HC00000&
    Left = 540
    Top = 2715
    Width = 5100
    Height = 660
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblOpBalType
    Caption = "Dr/Cr"
    ForeColor = &H80&
    Left = 1980
    Top = 3015
    Width = 480
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
  Begin Label LblCurBalType
    Caption = "Dr/Cr"
    ForeColor = &H80&
    Left = 5070
    Top = 3015
    Width = 480
    Height = 240
    Visible = 0   'False
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
    Caption = "Opening Balance"
    Index = 17
    ForeColor = &H4000&
    Left = 600
    Top = 2745
    Width = 1650
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
    Caption = "Current Balance"
    Index = 16
    ForeColor = &H4000&
    Left = 3600
    Top = 2745
    Width = 1545
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
    Caption = "Code"
    Index = 15
    ForeColor = &HC00000&
    Left = 225
    Top = 750
    Width = 495
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
    Caption = "Remark"
    Index = 14
    ForeColor = &H0&
    Left = 14925
    Top = 1260
    Width = 660
    Height = 240
    Visible = 0   'False
    TabIndex = 43
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
  Begin Label LblNature
    Caption = "Nature"
    ForeColor = &HFF&
    Left = 2385
    Top = 2700
    Width = 1395
    Height = 240
    TabIndex = 42
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
  Begin Label Lbl
    Caption = "LST No."
    Index = 12
    ForeColor = &H0&
    Left = 14880
    Top = 720
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 41
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
    Caption = "CST No."
    Index = 11
    ForeColor = &H0&
    Left = 14880
    Top = 450
    Width = 705
    Height = 240
    Visible = 0   'False
    TabIndex = 40
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
    Caption = "Under Group"
    Index = 2
    ForeColor = &HC00000&
    Left = 225
    Top = 1380
    Width = 1215
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
  Begin Label Lbl
    Caption = "Company Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 225
    Top = 1065
    Width = 1515
    Height = 240
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
End

Attribute VB_Name = "CompMast"

Private global_56 As Integer
Private global_54 As Integer
Private global_52 As Integer
Private global_64 As Long

Private Sub DGUser_UnknownEvent_9 'FEE1B8
  'Data Table: 54721C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FEDFE4: On Error Goto loc_FEE153
  loc_FEDFF6: Me.DgUser.Visible = False
  loc_FEE007: var_AC = Me.RecordCount
  loc_FEE015: If (var_AC > 0) Then
  loc_FEE067:   Set var_CC = Me.Txt
  loc_FEE06D:   Call 0.Method_DGUser_UnknownEvent_90 (CInt(CStr(Me.DgUser.Tag)), var_D0)
  loc_FEE075:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEE0CD:   Set var_B4 = Me.DgUser
  loc_FEE0E4:   Set var_CC = Me.Txt
  loc_FEE0EA:   Call 0.Method_DGUser_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FEE0F2:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FEE112: End If
  loc_FEE127: var_C8 = CStr(Me.DgUser.Tag)
  loc_FEE130: Set var_B0 = Me.Txt
  loc_FEE136: Call 0.Method_DGUser_UnknownEvent_90 (CInt(var_C8))
  loc_FEE13E: var_B4.SetFocus
  loc_FEE152: Exit Sub
  loc_FEE153: ' Referenced from: FEDFE4
  loc_FEE15B: Set var_A8 = Err()
  loc_FEE161: Call 0.Method_arg_1C (var_AC)
  loc_FEE172: If (var_AC <> 0) Then
  loc_FEE17D:   Set var_A8 = Err()
  loc_FEE183:   Call 0.Method_arg_2C (var_C8)
  loc_FEE1A4:   MsgBox(CVar(var_C8), &H40, "Validation", var_F4, var_114)
  loc_FEE1B7: End If
  loc_FEE1B7: Exit Sub
End Sub

Private Sub DGUser_UnknownEvent_1F 'E76C90
  'Data Table: 54721C
  loc_E76C4E: Proc_6_153_E91D24(Me.DgUser, arg_14)
  loc_E76C65: Set var_8C = Me.FGPoint
  loc_E76C81: Proc_6_138_106E830(Me.DgUser, global_128, CInt(&H1B))
  loc_E76C8F: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'EAF220
  'Data Table: 54721C
  loc_EAF1A8: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_EAF1AB:   Call DGUnderAc_UnknownEvent_9()
  loc_EAF1B0: End If
  loc_EAF1CC: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_EAF1CF:   Call DGAcName_UnknownEvent_9()
  loc_EAF1D4: End If
  loc_EAF1F0: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_EAF1F3:   Call DGCity_UnknownEvent_9()
  loc_EAF1F8: End If
  loc_EAF214: If (CBool(Me.DgUser.Visible) = &HFF) Then
  loc_EAF217:   Call DGUser_UnknownEvent_9()
  loc_EAF21C: End If
  loc_EAF21C: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'FAC9E8
  'Data Table: 54721C
  Dim var_A0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_100 As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FAC868: On Error Goto loc_FAC981
  loc_FAC875: Set var_88 = Me.TxtGrid
  loc_FAC87B: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_FAC889: Proc_183_28_E216B0(var_8C)
  loc_FAC895: Call Proc_22_81_F6CE40(var_8C)
  loc_FAC8AD: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FAC8C8: var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FAC8D1: Set var_8C = Me.FGrid
  loc_FAC8EF: var_100 = Me.FGrid.TextMatrix)
  loc_FAC8FA: var_10C = CStr(var_100)
  loc_FAC906: Set var_104 = Me.TxtGrid
  loc_FAC90C: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_10C)
  loc_FAC914: var_108.Tag = CVar(CLng(var_8C.Col))
  loc_FAC945: var_110 = CLng(Me.FGrid.Col)
  loc_FAC955: If (var_110 = CLng(2)) Then
  loc_FAC966:   Set var_88 = Me.TxtGrid
  loc_FAC96C:   Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &HF)
  loc_FAC974:   var_8C.MaxLength = var_110
  loc_FAC980: End If
  loc_FAC980: Exit Sub
  loc_FAC981: ' Referenced from: FAC868
  loc_FAC989: Set var_88 = Err()
  loc_FAC98F: Call 0.Method_arg_1C (var_114)
  loc_FAC9A0: If (var_114 <> 0) Then
  loc_FAC9AB:   Set var_88 = Err()
  loc_FAC9B1:   Call 0.Method_arg_2C (var_10C)
  loc_FAC9D2:   MsgBox(CVar(var_10C), &H40, "Validation", var_100, var_124)
  loc_FAC9E5: End If
  loc_FAC9E5: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1026304
  'Data Table: 54721C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_10260DC: On Error Goto loc_102629D
  loc_10260E9: If (CLng(Shift) = &H1B) Then
  loc_10260F8:   Set var_88 = Me.TxtGrid
  loc_10260FE:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_1026106:   var_90 = var_8C.Tag
  loc_1026117:   Set var_94 = Me.TxtGrid
  loc_102611D:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1026125:   var_98.Text = var_90
  loc_1026141:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1026151:   Set var_88 = Me.TxtGrid
  loc_1026157:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_102615F:   var_8C.Visible = False
  loc_102616F:   Set var_88 = Me.FGrid
  loc_1026180:   Exit Sub
  loc_1026181: End If
  loc_1026194: var_AC = CLng(Me.FGrid.Col)
  loc_10261A4: If Not (var_AC = CLng(1)) Then
  loc_10261AE:   If Not (var_AC = CLng(2)) Then
  loc_10261B8:     If Not (var_AC = CLng(4)) Then
  loc_10261C2:       If (var_AC = CLng(3)) Then
  loc_10261C5:       End If
  loc_10261C5:     End If
  loc_10261C5:   End If
  loc_1026205:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_54 = &HFF))) Then
  loc_102620B:     Call Proc_22_90_11CBE18(var_AE, var_AC)
  loc_1026216:     If (var_AE = &HFF) Then
  loc_102624D:       Set var_8C = Me.TxtGrid
  loc_102625C:       Proc_183_25_11BCFD4(Me.FGrid, var_8C, KeyCode, Shift, global_54, 4)
  loc_102626F:     Else
  loc_1026274:       Call TxtGrid_LostFocus()
  loc_1026282:       Set var_88 = Me.TxtGrid
  loc_1026288:       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0, 0)
  loc_1026290:       var_8C.SetFocus
  loc_102629C:     End If
  loc_102629C:   End If
  loc_102629C: End If
  loc_102629C: Exit Sub
  loc_102629D: ' Referenced from: 10260DC
  loc_10262A5: Set var_88 = Err()
  loc_10262AB: Call 0.Method_arg_1C (var_B8, 0, 0)
  loc_10262BC: If (var_B8 <> 0) Then
  loc_10262C7:   Set var_88 = Err()
  loc_10262CD:   Call 0.Method_arg_2C (var_90, FGrid.DispID_8001)
  loc_10262EE:   MsgBox(CVar(var_90), &H40, "Validation", var_F8, var_118)
  loc_1026301: End If
  loc_1026301: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F02E10
  'Data Table: 54721C
  Dim var_88 As MSHFlexGrid
  loc_F02D40: On Error Goto loc_F02DA9
  loc_F02D46: Proc_183_46_E07C50(arg_10)
  loc_F02D6E: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_F02D7B:   Set var_88 = Me.TxtGrid
  loc_F02D81:   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_F02D9C:   Proc_183_22_129BBAC(var_A0, arg_10, &HA)
  loc_F02DA8: End If
  loc_F02DA8: Exit Sub
  loc_F02DA9: ' Referenced from: F02D40
  loc_F02DB1: Set var_88 = Err()
  loc_F02DB7: Call 0.Method_arg_1C (var_AC, 2)
  loc_F02DC8: If (var_AC <> 0) Then
  loc_F02DD3:   Set var_88 = Err()
  loc_F02DD9:   Call 0.Method_arg_2C (var_B0)
  loc_F02DFA:   MsgBox(CVar(var_B0), &H40, "Validation", var_F0, var_110)
  loc_F02E0D: End If
  loc_F02E0D: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10AD7C0
  'Data Table: 54721C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_14C As Variant
  loc_10AD504: On Error Goto loc_10AD759
  loc_10AD51A: var_9C = CLng(Me.FGrid.Col)
  loc_10AD52A: If (var_9C = CLng(4)) Then
  loc_10AD537:   Set var_A8 = Me.TxtGrid
  loc_10AD53D:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_10AD54F:   Set var_88 = Me.TxtGrid
  loc_10AD555:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD5C0:   If CBool((Len(var_A0.Text) = 0) Or (Ucase(Mid(CVar(var_AC), 1, 1)) = "C")) Then
  loc_10AD5D0:     Set var_88 = Me.TxtGrid
  loc_10AD5D6:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD5DE:     var_A0.Text = "Cr"
  loc_10AD5ED:   Else
  loc_10AD5F7:     Set var_88 = Me.TxtGrid
  loc_10AD5FD:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD63F:     If (Ucase(Mid(CVar(var_A0), 1, 1)) = "D") Then
  loc_10AD64F:       Set var_88 = Me.TxtGrid
  loc_10AD655:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD65D:       var_A0.Text = "Dr"
  loc_10AD66C:     Else
  loc_10AD679:       Set var_88 = Me.TxtGrid
  loc_10AD67F:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD687:       var_A0.Text = "Cr"
  loc_10AD693:     End If
  loc_10AD693:   End If
  loc_10AD696: Else
  loc_10AD69D:   If (var_9C = CLng(3)) Then
  loc_10AD6AD:     Set var_88 = Me.TxtGrid
  loc_10AD6B3:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AD6BB:     var_A4 = var_A0.Text
  loc_10AD6D5:     var_EC = Me.FGrid.Row
  loc_10AD6DE:     var_11C = CVar(CLng(var_EC)) 'Long
  loc_10AD6F6:     var_14C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10AD71A:     var_DC = Format(CVar(Val(var_A4)), "0.00")
  loc_10AD723:     var_12C = CVar(CStr(var_DC)) 'String
  loc_10AD72B:     Set var_170 = Me.FGrid
  loc_10AD731:     LateIdCallSt
  loc_10AD758:   End If
  loc_10AD758: End If
  loc_10AD758: Exit Sub
  loc_10AD759: ' Referenced from: 10AD504
  loc_10AD761: Set var_88 = Err()
  loc_10AD767: Call 0.Method_arg_1C (var_17C, var_170, var_12C, 1, 1)
  loc_10AD778: If (var_17C <> 0) Then
  loc_10AD783:   Set var_88 = Err()
  loc_10AD789:   Call 0.Method_arg_2C (var_A4, var_14C, var_11C)
  loc_10AD7AA:   MsgBox(CVar(var_A4), &H40, "Validation", var_DC, var_EC)
  loc_10AD7BD: End If
  loc_10AD7BD: Exit Sub
End Sub

Private Sub TxtGrid_LostFocus(Index As Integer) 'ED46F0
  'Data Table: 54721C
  loc_ED4650: On Error Goto loc_ED468B
  loc_ED465C: If (global_58 = 0) Then
  loc_ED465F:   Exit Sub
  loc_ED4660: End If
  loc_ED466A: Set var_88 = Me.TxtGrid
  loc_ED4670: Call 0.Method_TxtGrid_LostFocus0 (Index)
  loc_ED467E: Proc_183_27_E23198(var_8C)
  loc_ED468A: Exit Sub
  loc_ED468B: ' Referenced from: ED4650
  loc_ED4693: Set var_88 = Err()
  loc_ED4699: Call 0.Method_arg_1C (var_94)
  loc_ED46AA: If (var_94 <> 0) Then
  loc_ED46B5:   Set var_88 = Err()
  loc_ED46BB:   Call 0.Method_arg_2C (var_98)
  loc_ED46DC:   MsgBox(CVar(var_98), &H40, "Validation", var_E8, var_108)
  loc_ED46EF: End If
  loc_ED46EF: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) '11E3BE4
  'Data Table: 54721C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_120 As Variant
  Dim var_164 As Variant
  Dim var_190 As Double
  loc_11E3778: On Error Goto loc_11E3B7F
  loc_11E378E: var_9C = CLng(Me.FGrid.Col)
  loc_11E379E: If (var_9C = CLng(1)) Then
  loc_11E37AB:   Set var_88 = Me.TxtGrid
  loc_11E37B1:   Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0)
  loc_11E37C9:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E37FB:   Call 0.Method_arg_184 (var_A0, var_A8, CVar(CLng(Me.FGrid.Col)))
  loc_11E3803:   var_110 = CVar(var_A8) 'String
  loc_11E380B:   Set var_124 = Me.FGrid
  loc_11E3811:   LateIdCallSt
  loc_11E3832: Else
  loc_11E3839:   If Not (var_9C = CLng(2)) Then
  loc_11E3843:     If (var_9C = CLng(4)) Then
  loc_11E3846:     End If
  loc_11E3883:     Set var_88 = Me.TxtGrid
  loc_11E3889:     Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11E3891:     var_124 = var_A0.Text
  loc_11E38A7:     LateIdCallSt
  loc_11E38E2:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11E38E5:       Call Proc_22_86_1128D58(Me.FGrid, CVar(var_A8), CVar(var_A8))
  loc_11E3903:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E390B:       var_F0 = CVar(CLng(4)) 'Long
  loc_11E3925:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11E3946:       var_120 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E3993:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11E39AB:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11E39B3:         Set var_A0 = Me.FGrid
  loc_11E39CF:       End If
  loc_11E39CF:     End If
  loc_11E39D2:   Else
  loc_11E39D9:     If (var_9C = CLng(3)) Then
  loc_11E39E9:       Set var_88 = Me.TxtGrid
  loc_11E39EF:       Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, FGrid.DispID_10000, var_C0, var_120)
  loc_11E39F7:       (var_A8 <> vbNullString) = var_A0.Text
  loc_11E3A04:       var_190 = Val(var_A8)
  loc_11E3A6D:       LateIdCallSt
  loc_11E3A94:       Call Proc_22_86_1128D58(Me.FGrid, CVar(CStr(Format(CVar(var_190), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11E3AB2:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E3ABA:       var_F0 = CVar(CLng(4)) 'Long
  loc_11E3AD4:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11E3AE6:       var_110 = Me.FGrid.Rows
  loc_11E3AF5:       var_120 = CVar((CLng(var_110) - 1)) 'Long
  loc_11E3B0C:       var_164 = Me.FGrid.TextMatrix)
  loc_11E3B42:       If (CVar(CLng(3)) And (CDbl(Val(CStr(var_164))) <> CDbl(0))) Then
  loc_11E3B5A:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11E3B62:         Set var_A0 = Me.FGrid
  loc_11E3B7E:       End If
  loc_11E3B7E:     End If
  loc_11E3B7E:   End If
  loc_11E3B7E: End If
  loc_11E3B7E: Exit Sub
  loc_11E3B7F: ' Referenced from: 11E3778
  loc_11E3B87: Set var_88 = Err()
  loc_11E3B8D: Call 0.Method_arg_1C (var_194, FGrid.DispID_10000, var_C0, CVar(CLng(Me.FGrid.Col)), (var_A8 <> vbNullString), var_F0)
  loc_11E3B9E: If (var_194 <> 0) Then
  loc_11E3BA9:   Set var_88 = Err()
  loc_11E3BAF:   Call 0.Method_arg_2C (var_A8, CVar(CLng(Me.FGrid.Row)), var_190, var_F0)
  loc_11E3BD0:   MsgBox(CVar(var_A8), &H40, "Validation", var_110, var_164)
  loc_11E3BE3: End If
  loc_11E3BE3: Exit Sub
End Sub

Private Sub TxtGrid1_GotFocus(Index As Integer) '1007718
  'Data Table: 54721C
  Dim var_8C As Integer
  Dim var_90 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_A4 As Variant
  Dim var_108 As Variant
  Dim var_114 As String
  Dim var_110 As TextBox
  Dim var_118 As Long
  Dim var_8A As Integer
  Dim var_11C As Integer
  loc_1007524: On Error Goto loc_10076B3
  loc_100752A: var_8C = Index
  loc_1007533: If (var_8C = 1) Then
  loc_1007549:   var_C4 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_1007552:   Set var_A4 = Me.Fgrid1
  loc_1007570:   var_108 = Me.Fgrid1.TextMatrix)
  loc_1007587:   Set var_10C = Me.TxtGrid1
  loc_100758D:   Call 0.Method_TxtGrid1_GotFocus0 (1, var_110, CStr(var_108))
  loc_1007595:   var_110.Tag = CVar(CLng(var_A4.Col))
  loc_10075C6:   var_118 = CLng(Me.Fgrid1.Col)
  loc_10075D6:   If (var_118 = CLng(4)) Then
  loc_10075E7:     Set var_90 = Me.TxtGrid1
  loc_10075ED:     Call 0.Method_TxtGrid1_GotFocus0 (1, var_A4, 8)
  loc_10075F5:     var_A4.MaxLength = var_118
  loc_100760A:     If (global_54 = 0) Then
  loc_1007615:       var_114 = "{Home}+{End}"
  loc_100761B:       Proc_303_0_FBACC8(CStr(var_108), 0)
  loc_1007623:     End If
  loc_1007623:   End If
  loc_1007626: Else
  loc_100762C:   If (var_8C = 2) Then
  loc_100764F:     var_8A = CInt(((CLng(Me.FgridPlan.Col) + 1) Mod 2))
  loc_100765B:     var_11C = var_8A
  loc_1007664:     If (var_11C = 0) Then
  loc_1007676:       Set var_90 = Me.TxtGrid1
  loc_100767C:       Call 0.Method_TxtGrid1_GotFocus0 (Index, var_A4, 8, var_11C)
  loc_1007684:       var_A4.MaxLength = var_8A
  loc_1007699:       If (global_54 = 0) Then
  loc_10076A4:         var_114 = "{Home}+{End}"
  loc_10076AA:         Proc_303_0_FBACC8(CStr(var_108), 0)
  loc_10076B2:       End If
  loc_10076B2:     End If
  loc_10076B2:   End If
  loc_10076B2: End If
  loc_10076B2: Exit Sub
  loc_10076B3: ' Referenced from: 1007524
  loc_10076BB: Set var_90 = Err()
  loc_10076C1: Call 0.Method_arg_1C (var_120, var_C4)
  loc_10076D2: If (var_120 <> 0) Then
  loc_10076DD:   Set var_90 = Err()
  loc_10076E3:   Call 0.Method_arg_2C (CStr(var_108))
  loc_1007704:   MsgBox(CVar(CStr(var_108)), &H40, "Validation", var_108, var_130)
  loc_1007717: End If
  loc_1007717: Exit Sub
End Sub

Private Sub TxtGrid1_KeyDown(KeyCode As Integer, Shift As Integer) '1141058
  'Data Table: 54721C
  Dim var_88 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Long
  Dim var_86 As Integer
  Dim var_BC As Integer
  loc_1140CD4: On Error Goto loc_1140FF3
  loc_1140CDA: var_88 = KeyCode
  loc_1140CE3: If (var_88 = 1) Then
  loc_1140CF0:   If (CLng(Shift) = &H1B) Then
  loc_1140CFF:     Set var_8C = Me.TxtGrid1
  loc_1140D05:     Call 0.Method_TxtGrid1_KeyDown0 (1, var_90)
  loc_1140D0D:     var_94 = var_90.Tag
  loc_1140D1E:     Set var_98 = Me.TxtGrid1
  loc_1140D24:     Call 0.Method_TxtGrid1_KeyDown0 (1, var_9C)
  loc_1140D2C:     var_9C.Text = var_94
  loc_1140D48:     Call TxtGrid1_KeyUp(KeyCode, Shift)
  loc_1140D51:     Set var_8C = Me.Fgrid1
  loc_1140D6D:     Set var_8C = Me.TxtGrid1
  loc_1140D73:     Call 0.Method_TxtGrid1_KeyDown0 (1, var_90, 0)
  loc_1140D7B:     var_90.Visible = Fgrid1.DispID_8001
  loc_1140D87:     Exit Sub
  loc_1140D88:   End If
  loc_1140D9B:   var_B0 = CLng(Me.Fgrid1.Col)
  loc_1140DAB:   If (var_B0 = CLng(4)) Then
  loc_1140DEE:     If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_54 = &HFF))) Then
  loc_1140DFC:       Call Proc_22_89_114E628(KeyCode, 0, var_B4)
  loc_1140E07:       If (var_B4 = &HFF) Then
  loc_1140E15:         Set var_9C = Me.TxtGrid1
  loc_1140E3D:         Set var_90 = var_9C
  loc_1140E4C:         Proc_6_62_1254E68(Me.Fgrid1, var_90, KeyCode, Shift, 0, 4)
  loc_1140E5C:       End If
  loc_1140E5C:     End If
  loc_1140E5C:   End If
  loc_1140E5F: Else
  loc_1140E65:   If (var_88 = 2) Then
  loc_1140E72:     If (CLng(Shift) = &H1B) Then
  loc_1140E81:       Set var_8C = Me.TxtGrid1
  loc_1140E87:       Call 0.Method_TxtGrid1_KeyDown0 (2, var_90, var_94, 0, 0)
  loc_1140E8F:       0 = var_90.Tag
  loc_1140EA0:       Set var_98 = Me.TxtGrid1
  loc_1140EA6:       Call 0.Method_TxtGrid1_KeyDown0 (2, var_9C, var_94)
  loc_1140EAE:       var_9C.Text = var_B0
  loc_1140ECA:       Call TxtGrid1_KeyUp(KeyCode, Shift)
  loc_1140ED3:       Set var_8C = Me.FgridPlan
  loc_1140EEF:       Set var_8C = Me.TxtGrid1
  loc_1140EF5:       Call 0.Method_TxtGrid1_KeyDown0 (2, var_90, 0, FgridPlan.DispID_8001)
  loc_1140EFD:       var_90.Visible = arg_14
  loc_1140F09:       Exit Sub
  loc_1140F0A:     End If
  loc_1140F2A:     var_86 = CInt(((CLng(Me.FgridPlan.Col) + 1) Mod 2))
  loc_1140F36:     var_BC = var_86
  loc_1140F3F:     If (var_BC = 0) Then
  loc_1140F82:       If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_54 = &HFF))) Then
  loc_1140F92:         Call Proc_22_89_114E628(2, 0, var_B6, var_BC)
  loc_1140F9D:         If (var_B6 = &HFF) Then
  loc_1140FE2:           Proc_6_62_1254E68(Me.FgridPlan, Me.TxtGrid1, KeyCode, Shift, 0, 4)
  loc_1140FF2:         End If
  loc_1140FF2:       End If
  loc_1140FF2:     End If
  loc_1140FF2:   End If
  loc_1140FF2: End If
  loc_1140FF2: Exit Sub
  loc_1140FF3: ' Referenced from: 1140CD4
  loc_1140FFB: Set var_8C = Err()
  loc_1141001: Call 0.Method_arg_1C (var_C0, 0, 0, 0)
  loc_1141012: If (var_C0 <> 0) Then
  loc_114101D:   Set var_8C = Err()
  loc_1141023:   Call 0.Method_arg_2C (var_94, var_86)
  loc_1141044:   MsgBox(CVar(var_94), &H40, "Validation", var_100, var_120)
  loc_1141057: End If
  loc_1141057: Exit Sub
End Sub

Private Sub TxtGrid1_KeyPress(KeyAscii As Integer) 'E8F02C
  'Data Table: 54721C
  Dim var_88 As MSHFlexGrid
  loc_E8EFBC: On Error Goto loc_E8F025
  loc_E8EFC2: Proc_6_58_E06050(arg_10)
  loc_E8EFEA: If (CLng(Me.Fgrid1.Col) = CLng(4)) Then
  loc_E8EFF7:   Set var_88 = Me.TxtGrid1
  loc_E8EFFD:   Call 0.Method_TxtGrid1_KeyPress0 (KeyAscii, var_A0)
  loc_E8F018:   Proc_6_42_129B55C(var_A0, arg_10, 5)
  loc_E8F024: End If
  loc_E8F024: Exit Sub
  loc_E8F025: ' Referenced from: E8EFBC
  loc_E8F025: Proc_6_60_E63754(2)
  loc_E8F02A: Exit Sub
End Sub

Private Sub TxtGrid1_KeyUp(KeyCode As Integer, Shift As Integer) 'FFE408
  'Data Table: 54721C
  Dim var_86 As Integer
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_A4 As TextBox
  Dim var_120 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_180 As Long
  loc_FFE224: On Error Goto loc_FFE3FF
  loc_FFE22A: var_86 = KeyCode
  loc_FFE233: If (var_86 = 1) Then
  loc_FFE259:   If (CLng(Me.Fgrid1.Col) = CLng(4)) Then
  loc_FFE269:     Set var_8C = Me.TxtGrid1
  loc_FFE26F:     Call 0.Method_TxtGrid1_KeyUp0 (KeyCode, var_A4, var_A8)
  loc_FFE277:     var_A0 = var_A4.Text
  loc_FFE29A:     var_120 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_FFE2B2:     var_140 = CVar(CLng(Me.Fgrid1.Col)) 'Long
  loc_FFE2DF:     var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_FFE2E7:     Set var_174 = Me.Fgrid1
  loc_FFE2ED:     LateIdCallSt
  loc_FFE314:   End If
  loc_FFE317: Else
  loc_FFE31D:   If (var_86 = 2) Then
  loc_FFE333:     var_180 = CLng(Me.FgridPlan.Col)
  loc_FFE343:     If (var_180 = CLng(4)) Then
  loc_FFE353:       Set var_8C = Me.TxtGrid1
  loc_FFE359:       Call 0.Method_TxtGrid1_KeyUp0 (KeyCode, var_A4, var_A8, var_180, var_174, var_160)
  loc_FFE361:       1 = var_A4.Text
  loc_FFE384:       var_120 = CVar(CLng(Me.FgridPlan.Row)) 'Long
  loc_FFE39C:       var_140 = CVar(CLng(Me.FgridPlan.Col)) 'Long
  loc_FFE3C9:       var_160 = CVar(CStr(Format(CVar(Val(var_A8)), "0.00"))) 'String
  loc_FFE3D1:       Set var_174 = Me.FgridPlan
  loc_FFE3D7:       LateIdCallSt
  loc_FFE3FE:     End If
  loc_FFE3FE:   End If
  loc_FFE3FE: End If
  loc_FFE3FE: Exit Sub
  loc_FFE3FF: ' Referenced from: FFE224
  loc_FFE3FF: Proc_6_60_E63754(var_174, var_160, 1, 1, var_140, var_120)
  loc_FFE404: Exit Sub
  loc_FFE405: BranchFVar 6403
End Sub

Private Sub Fgrid1_UnknownEvent_0 'E9FBE4
  'Data Table: 54721C
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_E9FB80: If (CDbl(CLng(Me.Fgrid1.BackColorSel)) = CDbl("14737632")) Then
  loc_E9FB96:   Me.Fgrid1.Col = 3
  loc_E9FB9E: End If
  loc_E9FBB1: Me.Fgrid1.BackColorSel = CVar(CLng("14737632"))
  loc_E9FBC4: Set var_88 = Me.TxtGrid1
  loc_E9FBCA: Call 0.Method_Fgrid1_UnknownEvent_00 (1, var_BC)
  loc_E9FBD2: var_BC.Visible = False
  loc_E9FBDE: Call Proc_22_81_F6CE40()
  loc_E9FBE3: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_1 'E63860
  'Data Table: 54721C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E63820: Set var_88 = Me.TxtGrid1
  loc_E63826: Call 0.Method_Fgrid1_UnknownEvent_10 (1, var_8C)
  loc_E63840: If (var_8C.Visible = 0) Then
  loc_E63856:   Me.Fgrid1.BackColorSel = CVar(CLng("16777215"))
  loc_E6385E: End If
  loc_E6385E: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_8 'E1D650
  'Data Table: 54721C
  loc_E1D647: Me.Fgrid1.CellBackColor = CVar(CLng("16777215"))
  loc_E1D64F: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_9 'E2D244
  'Data Table: 54721C
  Dim var_8C As TextBox
  loc_E2D227: Set var_88 = Me.TxtGrid1
  loc_E2D22D: Call 0.Method_Fgrid1_UnknownEvent_90 (1, var_8C)
  loc_E2D235: var_8C.Visible = False
  loc_E2D241: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_A '11246B0
  'Data Table: 54721C
  Dim var_9C As String
  Dim var_A0 As Variant
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_88 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_EC As Long
  Dim var_FC As Variant
  Dim var_11C As String
  Dim var_130 As Long
  loc_1124348: On Error Goto loc_11246AA
  loc_112434F: Set var_88 = Me.tOPCtrl1
  loc_1124355: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_112436E: If (CStr() = "Browse") Then
  loc_1124371:   Exit Sub
  loc_1124372: End If
  loc_11243E6: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.Fgrid1.Tag))) = CDbl((CLng(Me.Fgrid1.Rows) - (CLng(Me.Fgrid1.Rows) - 1))))) Then
  loc_11243FF:   Me.Fgrid1.CellBackColor = CVar(CLng(global_188))
  loc_112440F:   var_9C = "+{Tab}"
  loc_1124415:   Proc_303_0_FBACC8(CStr(Me.Fgrid1.Tag), 0)
  loc_112441F:   KeyCode = 0
  loc_1124425: Else
  loc_1124454:   var_9C = CStr(Me.Fgrid1.Tag)
  loc_112447C:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(var_9C)) = CDbl((CLng(Me.Fgrid1.Rows) - 1)))) Then
  loc_1124495:     Me.Fgrid1.CellBackColor = CVar(CLng(global_188))
  loc_112449D:   End If
  loc_112449D: End If
  loc_11244A3: global_56 = KeyCode
  loc_11244C9: Me.Fgrid1.Tag = CVar(CStr(CLng(Me.Fgrid1.Row)))
  loc_11244ED: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_1124503:   var_EC = CLng(Me.Fgrid1.Col)
  loc_1124513:   If (var_EC = CLng(4)) Then
  loc_1124529:     var_D4 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_1124532:     Set var_A0 = Me.Fgrid1
  loc_1124541:     var_FC = CVar(CLng(var_A0.Col)) 'Long
  loc_1124546:     var_11C = vbNullString
  loc_1124550:     Set var_B4 = Me.Fgrid1
  loc_1124556:     LateIdCallSt
  loc_112456E:   End If
  loc_112456E: End If
  loc_1124574: If (KeyCode = &HD) Then
  loc_112458A:   var_130 = CLng(Me.Fgrid1.Col)
  loc_112459A:   If (var_130 = CLng(1)) Then
  loc_11245AB:     Set var_88 = Me.Txt
  loc_11245B1:     Call 0.Method_Fgrid1_UnknownEvent_A0 (CInt(&H1C), var_A0, var_9C, var_130, var_B4, var_11C, var_FC)
  loc_11245B9:     var_D4 = var_A0.Text
  loc_11245D0:     If (var_9C = "Percent") Then
  loc_11245D3:       GoTo loc_1124626
  loc_11245D6:     End If
  loc_11245E4:     Set var_88 = Me.Txt
  loc_11245EA:     Call 0.Method_Fgrid1_UnknownEvent_A0 (CInt(&H1C), var_A0, var_9C, var_EC, global_56)
  loc_11245F2:     var_B0 = var_A0.Text
  loc_1124609:     If (var_9C = "Amount") Then
  loc_112461E:       Me.Fgrid1.Col = CVar(CLng(4))
  loc_1124626:       ' Referenced from: 11245D3
  loc_1124626:     End If
  loc_1124626:   End If
  loc_1124626: End If
  loc_1124690: If ((((((KeyCode = &HD) Or (CLng(KeyCode) = &H26)) Or (KeyCode = &H10)) Or (CLng(KeyCode) = &H28)) Or (CLng(KeyCode) = 9)) And (CLng(Me.Fgrid1.Row) = (CLng(Me.Fgrid1.Rows) - 1))) Then
  loc_1124693: End If
  loc_1124699: If (KeyCode = &HD) Then
  loc_11246A1:   global_54 = 0
  loc_11246A4: End If
  loc_11246A6: KeyCode = 0
  loc_11246A9: Exit Sub
  loc_11246AA: ' Referenced from: 1124348
  loc_11246AA: Proc_6_60_E63754(KeyCode, global_54, KeyCode)
  loc_11246AF: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_B 'E13228
  'Data Table: 54721C
  loc_E13219: Call Fgrid1_UnknownEvent_C()
  loc_E13223: global_54 = 0
  loc_E13226: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_C 'EF0974
  'Data Table: 54721C
  loc_EF08D3: var_88 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_EF08DD: On Error Goto loc_EF096C
  loc_EF0903: If (CLng(Me.Fgrid1.Col) = CLng(4)) Then
  loc_EF0944:   Proc_6_63_110B734(Me, Me.Fgrid1, Me.TxtGrid1, 1)
  loc_EF0956: End If
  loc_EF0960: If (CLng(KeyCode) <> &HD) Then
  loc_EF0968:   global_54 = &HFF
  loc_EF096B: End If
  loc_EF096B: Exit Sub
  loc_EF096C: ' Referenced from: EF08DD
  loc_EF096C: Proc_6_60_E63754(global_54, &HFF, KeyCode)
  loc_EF0971: Exit Sub
End Sub

Private Sub Fgrid1_UnknownEvent_D 'FE2020
  'Data Table: 54721C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FE1E4C: On Error Goto loc_FE2019
  loc_FE1E53: Set var_8C = Me.tOPCtrl1
  loc_FE1E59: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE1E72: If (CStr() = "Browse") Then
  loc_FE1E75:   Exit Sub
  loc_FE1E76: End If
  loc_FE1E93: If (CLng(Me.Fgrid1.ColSel) = CLng(0)) Then
  loc_FE1E96:   Exit Sub
  loc_FE1E97: End If
  loc_FE1EA8: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_FE1ECA:   If (CLng(Me.Fgrid1.Row) >= 1) Then
  loc_FE1F04:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FE1F26:       If (CLng(Me.Fgrid1.Rows) > 2) Then
  loc_FE1F3C:         var_B0 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_FE1F45:         Set var_114 = Me.Fgrid1
  loc_FE1F60:       Else
  loc_FE1F73:         Me.Fgrid1.Rows = 1
  loc_FE1F90:         var_D0 = CVar(CStr(CLng(Me.Fgrid1.Rows))) 'String
  loc_FE1F98:         Set var_114 = Me.Fgrid1
  loc_FE1FC7:         Me.Fgrid1.FixedRows = 1
  loc_FE1FCF:       End If
  loc_FE1FCF:     End If
  loc_FE1FD2:   Else
  loc_FE1FDD:     var_D0 = "Delete Module"
  loc_FE1FF3:     MsgBox("No Entries To Delete", &H10, var_D0, var_F0, var_110)
  loc_FE2003:   End If
  loc_FE2007:   Set var_8C = Me.Fgrid1
  loc_FE2018: End If
  loc_FE2018: Exit Sub
  loc_FE2019: ' Referenced from: FE1E4C
  loc_FE2019: Proc_6_60_E63754(Fgrid1.DispID_8001, Fgrid1.DispID_10000, var_D0)
  loc_FE201E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E271AC
  'Data Table: 54721C
  loc_E2719B: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E271A3: Call Proc_22_81_F6CE40()
  loc_E271A8: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1D5B0
  'Data Table: 54721C
  loc_E1D5A7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D5AF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E30484
  'Data Table: 54721C
  Dim var_8C As TextBox
  loc_E30467: Set var_88 = Me.TxtGrid
  loc_E3046D: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E30475: var_8C.Visible = False
  loc_E30481: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1138A58
  'Data Table: 54721C
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim KeyCode As Integer
  Dim var_D8 As Variant
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  Dim var_140 As Long
  loc_11386E0: On Error Goto loc_11389F3
  loc_11386E7: Set var_88 = Me.tOPCtrl1
  loc_11386ED: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1138706: If (CStr() = "Browse") Then
  loc_1138709:   Exit Sub
  loc_113870A: End If
  loc_1138727: var_C4 = Me.FGrid.Rows
  loc_113877E: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1138789:   var_9C = "+{Tab}"
  loc_113878F:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1138799:   KeyCode = 0
  loc_113879F: Else
  loc_11387A9:   var_B0 = Me.FGrid.Rows
  loc_11387F6:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1138801:     var_9C = "{Tab}"
  loc_1138807:     Proc_303_0_FBACC8(var_9C, 0, var_B0)
  loc_113881B:     If (CInt(global_100) = 0) Then
  loc_1138855:       If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_1138858:         Call TopCtrl1_UnknownEvent_16()
  loc_113885D:       End If
  loc_113885D:     End If
  loc_113885F:     KeyCode = 0
  loc_1138862:   End If
  loc_1138862: End If
  loc_1138868: global_56 = KeyCode
  loc_113888E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_11388B4: var_11C = CLng(Me.FGrid.Col)
  loc_11388C4: If Not (var_11C = CLng(1)) Then
  loc_11388CE:   If Not (var_11C = CLng(2)) Then
  loc_11388D8:     If Not (var_11C = CLng(4)) Then
  loc_11388E2:       If (var_11C = CLng(3)) Then
  loc_11388E5:       End If
  loc_11388E5:     End If
  loc_11388E5:   End If
  loc_11388F6:   If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_113890C:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1138924:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1138929:     var_12C = vbNullString
  loc_1138933:     Set var_B4 = Me.FGrid
  loc_1138939:     LateIdCallSt
  loc_1138951:   End If
  loc_1138951: End If
  loc_113895B: If (CLng(KeyCode) = &HD) Then
  loc_1138971:   var_140 = CLng(Me.FGrid.Col)
  loc_1138981:   If Not (var_140 = CLng(1)) Then
  loc_113898B:     If Not (var_140 = CLng(2)) Then
  loc_1138995:       If Not (var_140 = CLng(4)) Then
  loc_113899F:         If (var_140 = CLng(3)) Then
  loc_11389A2:         End If
  loc_11389A2:       End If
  loc_11389A2:     End If
  loc_11389D3:     Proc_183_24_1045ECC(Me, Me.FGrid, Me.TxtGrid, 0, var_140, Me.TxtGrid, var_12C, var_F8)
  loc_11389E5:   End If
  loc_11389EA:   global_54 = 0
  loc_11389ED: End If
  loc_11389EF: KeyCode = 0
  loc_11389F2: Exit Sub
  loc_11389F3: ' Referenced from: 11386E0
  loc_11389FB: Set var_88 = Err()
  loc_1138A01: Call 0.Method_arg_1C (var_14C, KeyCode, global_54, var_D8, var_11C)
  loc_1138A12: If (var_14C <> 0) Then
  loc_1138A1D:   Set var_88 = Err()
  loc_1138A23:   Call 0.Method_arg_2C (var_9C, global_56, KeyCode)
  loc_1138A44:   MsgBox(CVar(var_9C), &H40, "Validation", var_C4, var_118)
  loc_1138A57: End If
  loc_1138A57: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F67E70
  'Data Table: 54721C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F67D50: On Error Goto loc_F67E0A
  loc_F67D57: Set var_88 = Me.tOPCtrl1
  loc_F67D5D: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F67D65: var_9C = CStr()
  loc_F67D76: If (var_9C = "Browse") Then
  loc_F67D79:   Exit Sub
  loc_F67D7A: End If
  loc_F67D8D: var_A0 = CLng(Me.FGrid.Col)
  loc_F67D9D: If Not (var_A0 = CLng(1)) Then
  loc_F67DA7:   If Not (var_A0 = CLng(2)) Then
  loc_F67DB1:     If Not (var_A0 = CLng(4)) Then
  loc_F67DBB:       If (var_A0 = CLng(3)) Then
  loc_F67DBE:       End If
  loc_F67DBE:     End If
  loc_F67DBE:   End If
  loc_F67DEF:   Proc_183_24_1045ECC(Me, Me.FGrid, Me.TxtGrid)
  loc_F67E01: End If
  loc_F67E06: global_54 = 0
  loc_F67E09: Exit Sub
  loc_F67E0A: ' Referenced from: F67D50
  loc_F67E12: Set var_88 = Err()
  loc_F67E18: Call 0.Method_arg_1C (var_B8, global_54)
  loc_F67E29: If (var_B8 <> 0) Then
  loc_F67E34:   Set var_88 = Err()
  loc_F67E3A:   Call 0.Method_arg_2C (var_9C, 0)
  loc_F67E5B:   MsgBox(CVar(var_9C), &H40, "Validation", var_F8, var_118)
  loc_F67E6E: End If
  loc_F67E6E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F97E88
  'Data Table: 54721C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_F97D2C: On Error Goto loc_F97E22
  loc_F97D42: var_9C = CLng(Me.FGrid.Col)
  loc_F97D52: If Not (var_9C = CLng(1)) Then
  loc_F97D5C:   If Not (var_9C = CLng(2)) Then
  loc_F97D66:     If (var_9C = CLng(4)) Then
  loc_F97D69:     End If
  loc_F97D69:   End If
  loc_F97DA2:   Proc_183_26_11578C8(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F97DB7: Else
  loc_F97DBE:   If (var_9C = CLng(3)) Then
  loc_F97DFA:     Proc_183_26_11578C8(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F97E0C:   End If
  loc_F97E0C: End If
  loc_F97E16: If (CLng(KeyCode) <> &HD) Then
  loc_F97E1E:   global_54 = &HFF
  loc_F97E21: End If
  loc_F97E21: Exit Sub
  loc_F97E22: ' Referenced from: F97D2C
  loc_F97E2A: Set var_88 = Err()
  loc_F97E30: Call 0.Method_arg_1C (var_B4, global_54, KeyCode)
  loc_F97E41: If (var_B4 <> 0) Then
  loc_F97E4C:   Set var_88 = Err()
  loc_F97E52:   Call 0.Method_arg_2C (var_B8, 0)
  loc_F97E73:   MsgBox(CVar(var_B8), &H40, "Validation", var_F8, var_118)
  loc_F97E86: End If
  loc_F97E86: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '107C244
  'Data Table: 54721C
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  loc_107BFA8: On Error Goto loc_107C1DF
  loc_107BFAF: Set var_8C = Me.tOPCtrl1
  loc_107BFB5: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_107BFBD: var_A0 = CStr()
  loc_107BFCE: If (var_A0 = "Browse") Then
  loc_107BFD1:   Exit Sub
  loc_107BFD2: End If
  loc_107BFEF: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_107BFF2:   Exit Sub
  loc_107BFF3: End If
  loc_107C004: If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_107C026:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_107C060:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_107C082:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_107C098:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107C0A1:         Set var_114 = Me.FGrid
  loc_107C0B9:         Call Proc_22_86_1128D58(FGrid.DispID_10000)
  loc_107C0C1:       Else
  loc_107C0D4:         Me.FGrid.Rows = 1
  loc_107C0F1:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_107C0F9:         Set var_114 = Me.FGrid
  loc_107C128:         Me.FGrid.FixedRows = 1
  loc_107C130:       End If
  loc_107C130:     End If
  loc_107C155:     For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_107C15F:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_107C167:       var_E0 = CVar(CLng(0)) 'Long
  loc_107C171:       var_9C = CVar(CStr(var_86)) 'String
  loc_107C179:       Set var_8C = Me.FGrid
  loc_107C17F:       LateIdCallSt
  loc_107C190:     Next var_118 'Integer
  loc_107C198:   Else
  loc_107C1B9:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_107C1C9:   End If
  loc_107C1CD:   Set var_8C = Me.FGrid
  loc_107C1DE: End If
  loc_107C1DE: Exit Sub
  loc_107C1DF: ' Referenced from: 107BFA8
  loc_107C1E7: Set var_8C = Err()
  loc_107C1ED: Call 0.Method_arg_1C (var_12C)
  loc_107C1FE: If (var_12C <> 0) Then
  loc_107C209:   Set var_8C = Err()
  loc_107C20F:   Call 0.Method_arg_2C (var_A0)
  loc_107C230:   MsgBox(CVar(var_A0), &H40, "Validation", var_F0, var_110)
  loc_107C243: End If
  loc_107C243: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1E550
  'Data Table: 54721C
  loc_E1E547: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1E54F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1CDE0
  'Data Table: 54721C
  loc_E1CDD7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1CDDF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40850
  'Data Table: 54721C
  Dim var_8C As TextBox
  loc_E4082F: Set var_88 = Me.TxtGrid
  loc_E40835: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E4083D: var_8C.Visible = False
  loc_E40849: Call Proc_22_81_F6CE40()
  loc_E4084E: Exit Sub
End Sub

Private Sub Form_Load() '12C5500
  'Data Table: 54721C
  Dim var_90 As Variant
  Dim var_8C As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim unk_547255 As Connection15
  loc_12C4E90: On Error Goto loc_12C54C4
  loc_12C4EA0: Set var_8C = Me.Txt
  loc_12C4EA6: Call 0.Method_Form_Load0 (CInt(&H18), var_90)
  loc_12C4EAE: var_90.Visible = False
  loc_12C4EC5: Set var_8C = Me.Lbl
  loc_12C4ECB: Call 0.Method_Form_Load0 (&H1B, var_90)
  loc_12C4ED3: var_90.Visible = False
  loc_12C4EEE: Me.LblUser.Left = CDbl(500)
  loc_12C4F05: Me.LblUser.Top = CDbl(7800)
  loc_12C4F1C: Me.LblLDt.Top = CDbl(8160)
  loc_12C4F33: Me.LblLDt.Left = CDbl(500)
  loc_12C4F42: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_12C4F5A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12C4F75: Me.Fgrid1.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12C4F90: Me.FGridIncl.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12C4FAB: Me.FgridPlan.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_12C4FBF: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_12C4FD0: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_12C4FE1: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_12C4FF2: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_12C5003: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_12C5014: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_12C5025: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_12C5036: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_12C5047: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_12C5058: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_12C5072: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_12C5080: Set var_8C = MemVar_1F95044
  loc_12C508F: Call 0.Method_Form_Load8 (var_8C)
  loc_12C50A5: Me.var_8C.Clone
  loc_12C50B0: Set var_90 = var_8C
  loc_12C50BF: Call 0.Method_arg_50 (var_90, -1)
  loc_12C5103: Proc_183_1_F5BEA0(Me, CStr(-2147483643), CStr(&HC00000))
  loc_12C511B: Set var_8C = Me.txtCurrBal
  loc_12C5121: Me.txtCurrBal.BackColor = -2147483643
  loc_12C5138: Me.txtCurrBal.ForeColor = &HC00000
  loc_12C5145: global_52 = 0
  loc_12C5151: If (global_52 = &HFF) Then
  loc_12C515F:   Set var_8C = Me.Lbl
  loc_12C5165:   Call 0.Method_Form_Load0 (&HF, var_90, &HFF, global_52)
  loc_12C516D:   var_90.Visible = CByte(1)
  loc_12C5186:   Set var_8C = Me.Txt
  loc_12C518C:   Call 0.Method_Form_Load0 (CInt(0), var_90, &HFF)
  loc_12C5194:   var_90.Visible = CByte(1)
  loc_12C51A3: Else
  loc_12C51AE:   Set var_8C = Me.Lbl
  loc_12C51B4:   Call 0.Method_Form_Load0 (&HF, var_90)
  loc_12C51BC:   var_90.Visible = False
  loc_12C51D5:   Set var_8C = Me.Txt
  loc_12C51DB:   Call 0.Method_Form_Load0 (CInt(0), var_90)
  loc_12C51E3:   var_90.Visible = False
  loc_12C51EF: End If
  loc_12C51F9: Set global_112 = New 
  loc_12C520B: Me.Recordset15.CursorLocation = 3
  loc_12C5235: var_C8 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE NATURE='Customer' and (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_12C523F: Me.Open var_C8, CVar(MemVar_1F951E0), 2
  loc_12C5253: CVarUnk
  loc_12C5258: VerifyVarObj
  loc_12C525E: Set var_8C = Me.DGAcName
  loc_12C5264: LateIdStAd
  loc_12C528E: Me.DGAcName.CursorLocation = 3
  loc_12C52B1: var_B4 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where NATURE='Customer' AND (LOGSITE_CODE='" & MemVar_1F95078
  loc_12C52C2: Me.Open CVar(var_B4 & "' or LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F951E0), 2
  loc_12C52D6: CVarUnk
  loc_12C52DB: VerifyVarObj
  loc_12C52E1: Set var_8C = Me.DGUnderAc
  loc_12C52E7: LateIdStAd
  loc_12C5311: Me.DGUnderAc.CursorLocation = 3
  loc_12C533B: var_C8 = CVar("Select CityCode As Code,CityName As Name,CityHelp From City WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by CityName") 'String
  loc_12C5359: CVarUnk
  loc_12C535E: VerifyVarObj
  loc_12C5364: Set var_8C = Me.DGCity
  loc_12C536A: LateIdStAd
  loc_12C5394: Me.DGCity.CursorLocation = 3
  loc_12C53BE: var_C8 = CVar("Select  Code, Name From Employee WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  Order by Name") 'String
  loc_12C53C8: r_C8, CVar(MemVar_1F951E0), 2 var_C8, CVar(MemVar_1F951E0), 2
  loc_12C53DC: CVarUnk
  loc_12C53E1: VerifyVarObj
  loc_12C53ED: LateIdStAd
  loc_12C5405: Set global_108 = New 
  loc_12C5417: Me.DgUser.LockType = 3
  loc_12C5427: Me.CursorLocation = 3
  loc_12C5437: Me.CursorType = 2
  loc_12C5450: var_B4 = "Select SubCode As SearchCode,SubCode,Site_Code,Name From SubGroup Where CompanyType in ('Corporate','Travel Agency','Mesh') and (LOGSITE_CODE='" & MemVar_1F95078
  loc_12C5460: unk_547255.Execute var_B4 & "' or LOGSITE_CODE='HO') order by Name", var_C8, -1
  loc_12C5492: Set var_8C = Me
  loc_12C549B: var_B4 = "INI"
  loc_12C54A9: Call Proc_22_78_F5F2C4(Proc_5_1_100EC1C(var_B4, var_8C, Me.DgUser, var_8C, var_8C, New, 3, -1), var_8C, New, 3)
  loc_12C54B4: Call Proc_22_83_104BBB4(-1, var_8C)
  loc_12C54B9: Call Proc_22_82_100A5C4(New)
  loc_12C54BE: Call Proc_22_91_1825914(3)
  loc_12C54C3: Exit Sub
  loc_12C54C4: ' Referenced from: 12C4E90
  loc_12C54CC: Set var_8C = Err()
  loc_12C54D2: Call 0.Method_arg_2C (var_B4)
  loc_12C54EB: MsgBox(CVar(var_B4), &H40, var_DC, var_EC, var_10C)
  loc_12C54FE: Exit Sub
End Sub

Private Sub Form_Resize() '10CB7C4
  'Data Table: 54721C
  Dim var_8C As Variant
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  Dim var_C8 As Variant
  Dim var_DC As TextBox
  loc_10CB4D6: Call 0.Method_arg_50 (var_88)
  loc_10CB4E8: Me.LblFormCaption.Caption = var_88
  loc_10CB501: Me.LblFormCaption.Left = CDbl(0)
  loc_10CB50D: Set var_A0 = Me.tOPCtrl1
  loc_10CB513: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_10CB520: Set var_8C = Me.tOPCtrl1
  loc_10CB526: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_10CB540: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_10CB55B: Call 0.Method_arg_100 (var_B8)
  loc_10CB56D: Me.LblFormCaption.Width = var_B8
  loc_10CB575: Call Proc_22_85_102FE70()
  loc_10CB57A: Call Proc_22_83_104BBB4()
  loc_10CB58D: Set var_8C = Me.Txt
  loc_10CB593: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_10CB5B2: Me.DGAcName.Left = CVar(var_A0.Left)
  loc_10CB5CE: Set var_B4 = Me.Txt
  loc_10CB5D4: Call 0.Method_Form_Resize0 (CInt(1), var_DC)
  loc_10CB5EF: Set var_8C = Me.Txt
  loc_10CB5F5: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_10CB60D: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_10CB61C: Me.DGAcName.Top = CVar(var_A0.Left)
  loc_10CB63C: Set var_8C = Me.Txt
  loc_10CB642: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_10CB661: Me.DGUnderAc.Left = CVar(var_A0.Left)
  loc_10CB67D: Set var_B4 = Me.Txt
  loc_10CB683: Call 0.Method_Form_Resize0 (CInt(2), var_DC)
  loc_10CB69E: Set var_8C = Me.Txt
  loc_10CB6A4: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_10CB6BC: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_10CB6CB: Me.DGUnderAc.Top = CVar(var_A0.Left)
  loc_10CB6EB: Set var_8C = Me.Txt
  loc_10CB6F1: Call 0.Method_Form_Resize0 (CInt(8), var_A0)
  loc_10CB710: Me.DGCity.Left = CVar(var_A0.Left)
  loc_10CB72C: Set var_B4 = Me.Txt
  loc_10CB732: Call 0.Method_Form_Resize0 (CInt(8), var_DC)
  loc_10CB74D: Set var_8C = Me.Txt
  loc_10CB753: Call 0.Method_Form_Resize0 (CInt(8), var_A0)
  loc_10CB76B: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_10CB77A: Me.DGCity.Top = CVar(var_A0.Left)
  loc_10CB79F: Me.DgUser.Left = CVar(CDbl(250))
  loc_10CB7BA: Me.DgUser.Top = CVar(CDbl(4000))
  loc_10CB7C2: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E9318C
  'Data Table: 54721C
  loc_E93117: Set global_108 = Nothing
  loc_E93129: Set global_112 = Nothing
  loc_E9313B: Set global_116 = Nothing
  loc_E9314D: Set global_120 = Nothing
  loc_E9315F: Set global_124 = Nothing
  loc_E93171: Set global_128 = Nothing
  loc_E93183: Set global_184 = Nothing
  loc_E9318A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '110BE10
  'Data Table: 54721C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A0 As DataGrid
  Dim var_B4 As DataGrid
  Dim var_C4 As Variant
  Dim var_C8 As Frame
  Dim var_E0 As Variant
  loc_110BB08: On Error Goto loc_110BDA9
  loc_110BB0E: var_86 = KeyCode
  loc_110BB1B: If Not (var_86 = CInt(&HD)) Then
  loc_110BB28:   If Not (var_86 = CInt(&H28)) Then
  loc_110BB35:     If (var_86 = CInt(&H26)) Then
  loc_110BB38:     End If
  loc_110BB38:   End If
  loc_110BB3B:   var_88 = KeyCode
  loc_110BB48:   If Not (var_88 = CInt(&H28)) Then
  loc_110BB55:     If (var_88 = CInt(&H26)) Then
  loc_110BB58:     End If
  loc_110BB5C:     Set var_8C = Me.DGAcName
  loc_110BB72:     Set var_A0 = Me.DGUnderAc
  loc_110BB89:     Set var_B4 = Me.DGCity
  loc_110BB8F:     var_C4 = var_B4.Visible
  loc_110BBA3:     Set var_C8 = Me.FrmList
  loc_110BBA9:     var_CA = var_C8.Visible
  loc_110BBFF:     If ((((((CBool(var_8C.Visible) = &HFF) Or (CBool(var_A0.Visible) = &HFF)) Or (CBool(var_C4) = &HFF)) Or (var_CA = &HFF)) Or (CBool(Me.DgUser.Visible) = &HFF)) Or (CBool(Me.Fgrid1.Visible) = &HFF)) Then
  loc_110BC02:       Exit Sub
  loc_110BC03:     End If
  loc_110BC03:   End If
  loc_110BC09:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_110BC18:   If TypeOf var_8C Is arg_5 Then
  loc_110BC21:     Call 0.Method_arg_1E8 (var_8C)
  loc_110BC3C:     Call Txt_Validate(CInt(var_8C.index))
  loc_110BC47:   End If
  loc_110BC53:   Set var_8C = Me 
  loc_110BC63:   Call 0.Method_arg_58 (var_8C, KeyCode, Shift, var_CA)
  loc_110BC71:   If (var_CA = &HFF) Then
  loc_110BC7A:     Call 0.Method_arg_1E8 (var_8C, 0)
  loc_110BC82:     var_9C = var_8C.Name
  loc_110BCA2:     Call 0.Method_arg_1E8 (var_A0, (Ucase(var_9C) = "TXTGRID"))
  loc_110BCAA:     var_E0 = var_A0.Name
  loc_110BCCE:     Call 0.Method_arg_1E8 (var_B4, var_9C Or (Ucase(var_E0) = "FGRID"))
  loc_110BCFA:     Call 0.Method_arg_1E8 (var_C8)
  loc_110BD40:     If CBool(var_86 Or (Ucase(var_B4.Name) = "TXTGRID1") Or (Ucase(var_C8.Name) = "FGRID1")) Then
  loc_110BD4D:       If (CLng(KeyCode) = &H28) Then
  loc_110BD56:         Call 0.Method_arg_1E8 (var_8C)
  loc_110BD64:         Call Proc_22_96_E08E90(var_8C)
  loc_110BD6C:       End If
  loc_110BD6F:     Else
  loc_110BD75:       Call 0.Method_arg_1E8 (var_8C)
  loc_110BD83:       Call Proc_22_96_E08E90(var_8C)
  loc_110BD8B:     End If
  loc_110BD8B:   End If
  loc_110BD8E: Else
  loc_110BDA0:   Proc_183_40_F3169C(Me, KeyCode)
  loc_110BDA8: End If
  loc_110BDA8: Exit Sub
  loc_110BDA9: ' Referenced from: 110BB08
  loc_110BDB1: Set var_8C = Err()
  loc_110BDB7: Call 0.Method_arg_1C (var_1DC)
  loc_110BDC8: If (var_1DC <> 0) Then
  loc_110BDD3:   Set var_8C = Err()
  loc_110BDD9:   Call 0.Method_arg_2C (var_1E0)
  loc_110BDFA:   MsgBox(CVar(var_1E0), &H40, "Validation", var_C4, var_E0)
  loc_110BE0D: End If
  loc_110BE0D: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E15D54
  'Data Table: 54721C
  Dim KeyAscii As Integer
  loc_E15D48: If (KeyAscii = CInt(&HD)) Then
  loc_E15D4D:   KeyAscii = 0
  loc_E15D50: End If
  loc_E15D50: Exit Sub
  loc_E15D51: CExtInstUnk
End Sub

Private Sub Txt_Change(Index As Integer) 'E8E528
  'Data Table: 54721C
  Dim var_A0 As Long
  Dim var_C0 As Variant
  Dim var_90 As TextBox
  Dim var_E4 As Variant
  loc_E8E4CA: If (Index = CInt(&H1C)) Then
  loc_E8E4CD:   var_A0 = 0
  loc_E8E4D9:   var_C0 = CVar(CLng(4)) 'Long
  loc_E8E4EC:   Set var_8C = Me.Txt
  loc_E8E4F2:   Call 0.Method_Txt_Change0 (CInt(&H1C), var_90, var_D4)
  loc_E8E4FA:   var_C0 = var_90.Text
  loc_E8E502:   var_E4 = CVar(var_D4) 'String
  loc_E8E50A:   Set var_F8 = Me.Fgrid1
  loc_E8E510:   LateIdCallSt
  loc_E8E524: End If
  loc_E8E524: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '142A79C
  'Data Table: 54721C
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_88 As DataGrid
  loc_1429CF2: Set var_88 = Me.Txt
  loc_1429CF8: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1429D06: Proc_183_28_E216B0(var_8C)
  loc_1429D12: Call Proc_22_81_F6CE40(var_8C)
  loc_1429D1A: var_92 = Index
  loc_1429D25: If (var_92 = CInt(1)) Then
  loc_1429D3F:   If (Me.RecordCount > 0) Then
  loc_1429D4D:     Set var_8C = Me.FGPoint
  loc_1429D65:     Proc_6_137_1192FDC(Me.DGAcName, global_112, Index)
  loc_1429D73:   End If
  loc_1429DC1:   Set var_88 = Me.Txt
  loc_1429DC7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1429DCF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1429DE7:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_1429DEA:     Exit Sub
  loc_1429DEB:   End If
  loc_1429DF8:   Set var_88 = Me.Txt
  loc_1429DFE:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1429E06:   var_A0 = var_8C.Text
  loc_1429E18:   var_B0 = "Name"
  loc_1429E53:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1429E5C:     Me.MoveFirst
  loc_1429E7F:     Set var_88 = Me.Txt
  loc_1429E85:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1429E8D:     0 = var_8C.Text
  loc_1429EA6:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_1429EBB:   End If
  loc_1429EBE: Else
  loc_1429EC6:   If (var_92 = CInt(2)) Then
  loc_1429EE0:     If (Me.RecordCount > 0) Then
  loc_1429EEE:       Set var_8C = Me.FGPoint
  loc_1429F06:       Proc_6_137_1192FDC(Me.DGUnderAc, global_120)
  loc_1429F14:     End If
  loc_1429F1D:     var_98 = Me.RecordCount
  loc_1429F62:     Set var_88 = Me.Txt
  loc_1429F68:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1429F70:     ((var_98 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1429F88:     If (Index Or (var_A0 = vbNullString)) Then
  loc_1429F8B:       Exit Sub
  loc_1429F8C:     End If
  loc_1429F99:     Set var_88 = Me.Txt
  loc_1429F9F:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1429FA7:     var_A0 = var_8C.Text
  loc_1429FB9:     var_B0 = "Name"
  loc_1429FF4:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1429FFD:       Me.MoveFirst
  loc_142A020:       Set var_88 = Me.Txt
  loc_142A026:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_142A02E:       0 = var_8C.Text
  loc_142A047:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_142A05C:     End If
  loc_142A05F:   Else
  loc_142A067:     If (var_92 = CInt(3)) Then
  loc_142A077:       ReDim var_F0(0 To 3)
  loc_142A08E:       var_F0(0) = "Mr."
  loc_142A09D:       var_F0(1) = "Mrs."
  loc_142A0AC:       var_F0(2) = "Miss"
  loc_142A0BB:       var_F0(3) = "M/S"
  loc_142A0D2:       global_164 = Array(var_F0)
  loc_142A0DD:       Set var_B4 = Me.ListView
  loc_142A0F8:       Set var_8C = Me.Txt
  loc_142A112:       Set global_180 = Proc_183_37_EFEF78(var_B4, var_8C, Index)
  loc_142A126:     Else
  loc_142A12E:       If (var_92 = CInt(8)) Then
  loc_142A144:         Me.DGCity.Tag = CVar(CStr(Index))
  loc_142A15C:         Set var_88 = Me.Txt
  loc_142A162:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_142A16A:         global_164 = var_8C.Left
  loc_142A181:         Me.DGCity.Left = CVar(var_98)
  loc_142A19C:         Set var_90 = Me.Txt
  loc_142A1A2:         Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_128)
  loc_142A1AA:         4 = var_B4.Height
  loc_142A1BC:         Set var_88 = Me.Txt
  loc_142A1C2:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_142A1DA:         var_B0 = CVar(((var_8C.Top + var_128) + CDbl(&HF))) 'Single
  loc_142A1E9:         Me.DGCity.Top = CVar(var_8C.Top)
  loc_142A212:         If (Me.RecordCount > 0) Then
  loc_142A220:           Set var_8C = Me.FGPoint
  loc_142A238:           Proc_6_137_1192FDC(Me.DGCity, global_124, Index)
  loc_142A246:         End If
  loc_142A294:         Set var_88 = Me.Txt
  loc_142A29A:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_142A2A2:         ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_142A2BA:         If (var_8C Or (var_A0 = vbNullString)) Then
  loc_142A2BD:           Exit Sub
  loc_142A2BE:         End If
  loc_142A2CB:         Set var_88 = Me.Txt
  loc_142A2D1:         Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_142A2D9:         var_A0 = var_8C.Text
  loc_142A2EB:         var_B0 = "Name"
  loc_142A326:         If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_142A32F:           Me.MoveFirst
  loc_142A352:           Set var_88 = Me.Txt
  loc_142A358:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_142A360:           0 = var_8C.Text
  loc_142A379:           Me.Find 1 & var_A0 & "'", var_B0, global_164
  loc_142A38E:         End If
  loc_142A391:       Else
  loc_142A399:         If (var_92 = CInt(&H1B)) Then
  loc_142A3AF:           Me.DgUser.Tag = CVar(CStr(Index))
  loc_142A3CD:           Me.DgUser.Left = CVar(CDbl(250))
  loc_142A3E8:           Me.DgUser.Top = CVar(CDbl(4000))
  loc_142A407:           If (Me.RecordCount > 0) Then
  loc_142A415:             Set var_8C = Me.FGPoint
  loc_142A42D:             Proc_6_137_1192FDC(Me.DgUser, global_128)
  loc_142A43B:           End If
  loc_142A489:           Set var_88 = Me.Txt
  loc_142A48F:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_142A497:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_142A4AF:           If (Index Or (var_A0 = vbNullString)) Then
  loc_142A4B2:             Exit Sub
  loc_142A4B3:           End If
  loc_142A4C0:           Set var_88 = Me.Txt
  loc_142A4C6:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_142A4CE:           var_A0 = var_8C.Text
  loc_142A4E0:           var_B0 = "Name"
  loc_142A51B:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_142A524:             Me.MoveFirst
  loc_142A547:             Set var_88 = Me.Txt
  loc_142A54D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_142A555:             0 = var_8C.Text
  loc_142A56E:             Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_142A583:           End If
  loc_142A586:         Else
  loc_142A58E:           If (var_92 = CInt(&H14)) Then
  loc_142A59E:             ReDim var_F0(0 To 2)
  loc_142A5B5:             var_F0(0) = "Corporate"
  loc_142A5C4:             var_F0(1) = "Travel Agency"
  loc_142A5D3:             var_F0(2) = "Mesh"
  loc_142A5EA:             global_164 = Array(var_F0)
  loc_142A62A:             Set global_180 = Proc_183_37_EFEF78(Me.ListView, Me.Txt, Index)
  loc_142A63E:           Else
  loc_142A646:             If Not (var_92 = CInt(&H13)) Then
  loc_142A651:               If (var_92 = CInt(&H12)) Then
  loc_142A654:               End If
  loc_142A661:               ReDim var_F0(0 To 1)
  loc_142A678:               var_F0(0) = "Yes"
  loc_142A687:               var_F0(1) = "No"
  loc_142A6DE:               Set global_180 = Proc_183_37_EFEF78(Me.ListView, Me.Txt, Index, Array(var_F0), 2)
  loc_142A6F2:             Else
  loc_142A6FA:               If (var_92 = CInt(&H1C)) Then
  loc_142A70A:                 ReDim var_F0(0 To 1)
  loc_142A721:                 var_F0(0) = "Fix Rate"
  loc_142A730:                 var_F0(1) = "Discount %"
  loc_142A787:                 Set global_180 = Proc_183_37_EFEF78(Me.ListView, Me.Txt, Index, Array(var_F0), 2)
  loc_142A798:               End If
  loc_142A798:             End If
  loc_142A798:           End If
  loc_142A798:         End If
  loc_142A798:       End If
  loc_142A798:     End If
  loc_142A798:   End If
  loc_142A798: End If
  loc_142A798: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '13F7E18
  'Data Table: 54721C
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As Variant
  Dim var_BC As TextBox
  Dim var_8C As Variant
  Dim var_98 As DataGrid
  Dim var_12C As Variant
  Dim var_A4 As DataGrid
  Dim var_13C As Variant
  Dim var_150 As String
  loc_13F7418: On Error Goto loc_13F7DB0
  loc_13F7425: If (CLng(Shift) = &H1B) Then
  loc_13F7428:   Call Proc_22_81_F6CE40()
  loc_13F742D:   Exit Sub
  loc_13F742E: End If
  loc_13F7431: var_86 = KeyCode
  loc_13F743C: If (var_86 = CInt(1)) Then
  loc_13F745C:   Set var_98 = Me.FGPoint
  loc_13F748A:   Proc_6_79_11AD564(Me.DGAcName, Me.Txt, KeyCode, global_112, Shift)
  loc_13F74F7:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13F751D:     Proc_6_138_106E830(Me.DGAcName, global_112, KeyCode, Me.FGPoint, 0)
  loc_13F752B:   End If
  loc_13F752E: Else
  loc_13F7536:   If (var_86 = CInt(2)) Then
  loc_13F7544:     Set var_A8 = Me.Txt
  loc_13F7556:     Set var_A0 = Me.FGPoint
  loc_13F7561:     Set var_98 = Nothing
  loc_13F758F:     Proc_6_69_134A630(Me.DGUnderAc, var_A8, KeyCode, global_120, Shift, 0, 1)
  loc_13F75AE:     var_AC = Me.RecordCount
  loc_13F75FE:     If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13F7605:       Set var_98 = Me.DGUnderAc
  loc_13F760C:       Set var_90 = Me.FGPoint
  loc_13F7624:       Proc_6_138_106E830(var_98, global_120, KeyCode, var_90, var_98, var_A0)
  loc_13F7632:     End If
  loc_13F7635:   Else
  loc_13F763D:     If (var_86 = CInt(3)) Then
  loc_13F7662:       Set var_8C = Me.Txt
  loc_13F7668:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 0)
  loc_13F7670:       1 = var_90.Left
  loc_13F7682:       Set var_98 = Me.Txt
  loc_13F7688:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_13F7690:       var_98 = var_A0.Top
  loc_13F76A2:       Set var_A4 = Me.Txt
  loc_13F76A8:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_13F76B0:       0 = var_A8.Height
  loc_13F76C2:       Set var_B0 = Me.Txt
  loc_13F76C8:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13F76D0:       var_C0 = var_BC.Width
  loc_13F7718:       Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13F773F:     Else
  loc_13F7747:       If (var_86 = CInt(8)) Then
  loc_13F7755:         Set var_A8 = Me.Txt
  loc_13F77A0:         Proc_6_69_134A630(Me.DGCity, var_A8, KeyCode, global_124, Shift, 0, 1, Nothing)
  loc_13F77BF:         var_AC = Me.RecordCount
  loc_13F780F:         If ((var_AC > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_13F7835:           Proc_6_138_106E830(Me.DGCity, global_124, KeyCode, Me.FGPoint, Me.FGPoint, 0)
  loc_13F7843:         End If
  loc_13F7846:       Else
  loc_13F784E:         If (var_86 = CInt(&H1B)) Then
  loc_13F785C:           Set var_A0 = Me.Txt
  loc_13F7878:           Set var_90 = var_A0
  loc_13F7887:           Proc_183_34_1307118(Me.DgUser, var_90, KeyCode, global_128, Shift, 0)
  loc_13F789A:         Else
  loc_13F78A2:           If Not (var_86 = CInt(&H13)) Then
  loc_13F78AD:             If (var_86 = CInt(&H12)) Then
  loc_13F78B0:             End If
  loc_13F78D2:             Set var_8C = Me.Txt
  loc_13F78D8:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, 1, CInt(var_AC))
  loc_13F78E0:             CInt((var_B4 + var_B8)) = var_90.Left
  loc_13F78F2:             Set var_98 = Me.Txt
  loc_13F78F8:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_13F7900:             CInt(var_C0) = var_A0.Top
  loc_13F7912:             Set var_A4 = Me.Txt
  loc_13F7918:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_13F7920:             1200 = var_A8.Height
  loc_13F7932:             Set var_B0 = Me.Txt
  loc_13F7938:             Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13F7940:             var_C0 = var_BC.Width
  loc_13F7988:             Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13F79AF:           Else
  loc_13F79B7:             If (var_86 = CInt(&H14)) Then
  loc_13F79DC:               Set var_8C = Me.Txt
  loc_13F79E2:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_13F79EA:               CInt((var_B4 + var_B8)) = var_90.Left
  loc_13F79FC:               Set var_98 = Me.Txt
  loc_13F7A02:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_13F7A0A:               CInt(var_C0) = var_A0.Top
  loc_13F7A1C:               Set var_A4 = Me.Txt
  loc_13F7A22:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_13F7A2A:               600 = var_A8.Height
  loc_13F7A3C:               Set var_B0 = Me.Txt
  loc_13F7A42:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13F7A4A:               var_C0 = var_BC.Width
  loc_13F7A92:               Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13F7AB9:             Else
  loc_13F7AC1:               If (var_86 = CInt(&H1C)) Then
  loc_13F7AE6:                 Set var_8C = Me.Txt
  loc_13F7AEC:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_AC, CInt(var_AC))
  loc_13F7AF4:                 CInt((var_B4 + var_B8)) = var_90.Left
  loc_13F7B06:                 Set var_98 = Me.Txt
  loc_13F7B0C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B4)
  loc_13F7B14:                 CInt(var_C0) = var_A0.Top
  loc_13F7B26:                 Set var_A4 = Me.Txt
  loc_13F7B2C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_A8, var_B8)
  loc_13F7B34:                 800 = var_A8.Height
  loc_13F7B46:                 Set var_B0 = Me.Txt
  loc_13F7B4C:                 Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_13F7B9C:                 Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_13F7BEE:                 If (((((Shift = &HD) Or (CLng(Shift) = &H26)) Or (Shift = &H10)) Or (CLng(Shift) = &H28)) Or (CLng(Shift) = 9)) Then
  loc_13F7BF1:                   Call Proc_22_83_104BBB4(CInt(var_AC), CInt((var_B4 + var_B8)), CInt(var_BC.Width))
  loc_13F7BF6:                   Call Proc_22_79_1422DF0(600)
  loc_13F7C0D:                   Me.Fgrid1.Col = CVar(CLng(4))
  loc_13F7C31:                   If (CBool(Me.Fgrid1.Visible) = &HFF) Then
  loc_13F7C34:                     GoTo loc_13F7C4D
  loc_13F7C37:                   End If
  loc_13F7C45:                   Me.Fgrid1.Visible = True
  loc_13F7C4D:                   ' Referenced from:               13F7C34
  loc_13F7C4D:                 End If
  loc_13F7C4D:               End If
  loc_13F7C4D:             End If
  loc_13F7C4D:           End If
  loc_13F7C4D:         End If
  loc_13F7C4D:       End If
  loc_13F7C4D:     End If
  loc_13F7C4D:   End If
  loc_13F7C4D: End If
  loc_13F7C84: var_12C = Me.DGCity.Visible
  loc_13F7CB4: var_13C = Me.DgUser.Visible
  loc_13F7CF4: If ((((((CBool(Me.DGUnderAc.Visible) = 0) And (CBool(Me.DGAcName.Visible) = 0)) And (CBool(var_12C) = 0)) And (Me.FrmList.Visible = 0)) And (CBool(var_13C) = 0)) And (CBool(Me.DGUnderAc.Visible) = &HFF)) Then
  loc_13F7D0C:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_13F7D15:     Proc_6_75_E5335C(Shift, arg_14)
  loc_13F7D1A:   End If
  loc_13F7D1E:   Set var_8C = Me.tOPCtrl1
  loc_13F7D24:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_86)
  loc_13F7D3D:   If (CStr() = "Add") Then
  loc_13F7D55:     If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13F7D5E:       Proc_6_76_E533C8(Shift)
  loc_13F7D63:     End If
  loc_13F7D66:   Else
  loc_13F7D6A:     Set var_8C = Me.tOPCtrl1
  loc_13F7D70:     Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_14)
  loc_13F7D78:     var_150 = CStr()
  loc_13F7D89:     If (var_150 = "Edit") Then
  loc_13F7DA1:       If ((CLng(Shift) = &H26) Or (CLng(Shift) = &HD)) Then
  loc_13F7DAA:         Proc_6_76_E533C8(Shift)
  loc_13F7DAF:       End If
  loc_13F7DAF:     End If
  loc_13F7DAF:   End If
  loc_13F7DAF: End If
  loc_13F7DAF: Exit Sub
  loc_13F7DB0: ' Referenced from: 13F7418
  loc_13F7DB8: Set var_8C = Err()
  loc_13F7DBE: Call 0.Method_arg_1C (var_AC)
  loc_13F7DCF: If (var_AC <> 0) Then
  loc_13F7DDA:   Set var_8C = Err()
  loc_13F7DE0:   Call 0.Method_arg_2C (var_150)
  loc_13F7E01:   MsgBox(CVar(var_150), &H40, "Validation", var_12C, var_13C)
  loc_13F7E14: End If
  loc_13F7E14: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1223AA0
  'Data Table: 54721C
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_12235A0: On Error Goto loc_1223A3A
  loc_12235A9: Proc_6_133_E7FB08(var_94)
  loc_12235BE: If (CInt(var_94) = &H27) Then
  loc_12235C3:   arg_10 = 0
  loc_12235C6:   Exit Sub
  loc_12235C7: End If
  loc_12235CA: var_96 = KeyAscii
  loc_12235D5: If (var_96 = CInt(2)) Then
  loc_12235F4:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_1223621:     Proc_183_41_145A968(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_1223653:     Proc_6_138_106E830(Me.DGUnderAc, global_120, KeyAscii, Me.FGPoint, 0)
  loc_1223661:   End If
  loc_1223664: Else
  loc_122366C:   If (var_96 = CInt(8)) Then
  loc_122368B:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_12236B8:       Proc_183_41_145A968(Me.Txt, KeyAscii, global_124, arg_10, "Name")
  loc_12236EA:       Proc_6_138_106E830(Me.DGCity, global_124, KeyAscii, Me.FGPoint, 0)
  loc_12236F8:     End If
  loc_12236FB:   Else
  loc_1223703:     If (var_96 = CInt(&H1B)) Then
  loc_1223710:       var_94 = Me.DgUser.Visible
  loc_1223722:       If (CBool(var_94) = &HFF) Then
  loc_1223734:         var_A0 = "Name"
  loc_122374F:         Proc_183_41_145A968(Me.Txt, KeyAscii, global_128, arg_10, var_A0)
  loc_1223769:         Set var_A8 = Me.FGPoint
  loc_1223781:         Proc_6_138_106E830(Me.DgUser, global_128, KeyAscii, var_A8, 0)
  loc_122378F:       End If
  loc_1223792:     Else
  loc_122379A:       If (var_96 = CInt(&H15)) Then
  loc_12237A7:         Set var_9C = Me.Txt
  loc_12237AD:         Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, var_96)
  loc_12237C8:         Proc_6_42_129B55C(var_A8, arg_10, 3, 0)
  loc_12237D7:       Else
  loc_12237DF:         If Not (var_96 = CInt(&H16)) Then
  loc_12237EA:           If (var_96 = CInt(&H19)) Then
  loc_12237ED:           End If
  loc_12237F7:           Set var_9C = Me.Txt
  loc_12237FD:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, arg_10)
  loc_1223818:           Proc_6_42_129B55C(var_A8, arg_10, 2)
  loc_1223827:         Else
  loc_122382F:           If (var_96 = CInt(&H17)) Then
  loc_122383C:             Set var_9C = Me.Txt
  loc_1223842:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_122385D:             Proc_6_42_129B55C(var_A8, arg_10, 7)
  loc_122386C:           Else
  loc_1223874:             If (var_96 = CInt(&H18)) Then
  loc_1223885:               Set var_9C = Me.Txt
  loc_122388B:               Call 0.Method_Txt_KeyPress0 (CInt(&H1C), var_A8, var_A0)
  loc_1223893:               2 = var_A8.Text
  loc_12238AA:               If (var_A0 = "Percent") Then
  loc_12238B7:                 Set var_9C = Me.Txt
  loc_12238BD:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8)
  loc_12238D8:                 Proc_6_42_129B55C(var_A8, arg_10, 2)
  loc_12238E7:               Else
  loc_12238F1:                 Set var_9C = Me.Txt
  loc_12238F7:                 Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, 2)
  loc_1223912:                 Proc_6_42_129B55C(var_A8, arg_10, 6)
  loc_122391E:               End If
  loc_1223921:             Else
  loc_1223929:               If (var_96 = CInt(&H1C)) Then
  loc_122392C:                 GoTo loc_1223A39
  loc_122392F:               End If
  loc_1223937:               If (var_96 = CInt(&H1F)) Then
  loc_1223955:                 If ((((arg_10 = &H59) Or (arg_10 = &H79)) Or (arg_10 = &H4E)) Or (arg_10 = &H6E)) Then
  loc_1223965:                   If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_1223975:                     Set var_9C = Me.Txt
  loc_122397B:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_1223983:                     var_A8.Text = 2
  loc_1223991:                     arg_10 = 0
  loc_1223997:                   Else
  loc_12239A4:                     If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_12239B4:                       Set var_9C = Me.Txt
  loc_12239BA:                       Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_12239C2:                       var_A8.Text = arg_10
  loc_12239D0:                       arg_10 = 0
  loc_12239D3:                     End If
  loc_12239D3:                   End If
  loc_12239D6:                 Else
  loc_12239D8:                   arg_10 = 0
  loc_12239DB:                 End If
  loc_12239DE:               Else
  loc_12239E6:                 If (var_96 = CInt(&H22)) Then
  loc_12239EF:                   Proc_6_133_E7FB08(var_94, arg_10, arg_10)
  loc_1223A2E:                   If (((((CInt(var_94) >= &H41) And (CInt(var_94) <= &H5A)) Or ((CInt(var_94) >= &H61) And (CInt(var_94) <= &H7A))) Or ((CInt(var_94) >= &H30) And (CInt(var_94) <= &H39))) Or (CInt(var_94) = 8)) Then
  loc_1223A31:                     GoTo loc_1223A39
  loc_1223A34:                   End If
  loc_1223A36:                   arg_10 = 0
  loc_1223A39:                   ' Referenced from:                 1223A31
  loc_1223A39:                 End If
  loc_1223A39:                 ' Referenced from:               122392C
  loc_1223A39:               End If
  loc_1223A39:             End If
  loc_1223A39:           End If
  loc_1223A39:         End If
  loc_1223A39:       End If
  loc_1223A39:     End If
  loc_1223A39:   End If
  loc_1223A39: End If
  loc_1223A39: Exit Sub
  loc_1223A3A: ' Referenced from: 12235A0
  loc_1223A42: Set var_9C = Err()
  loc_1223A48: Call 0.Method_arg_1C (var_B4, arg_10, arg_10)
  loc_1223A59: If (var_B4 <> 0) Then
  loc_1223A64:   Set var_9C = Err()
  loc_1223A6A:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_1223A8B:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_1223A9E: End If
  loc_1223A9E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '12761D4
  'Data Table: 54721C
  Dim var_86 As Integer
  Dim var_8C As Variant
  Dim var_A4 As Variant
  Dim var_B0 As TextBox
  loc_1275C30: On Error Goto loc_127616C
  loc_1275C36: var_86 = KeyCode
  loc_1275C41: If (var_86 = CInt(1)) Then
  loc_1275C60:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_1275C6D:     var_A0 = "Name"
  loc_1275C88:     Proc_183_32_FE97F0(Me.Txt, KeyCode, global_112)
  loc_1275CBA:     Proc_6_138_106E830(Me.DGAcName, global_112, KeyCode, Me.FGPoint)
  loc_1275CC8:   End If
  loc_1275CCB: Else
  loc_1275CD3:   If (var_86 = CInt(3)) Then
  loc_1275CF1:     If (Me.FrmList.Visible = &HFF) Then
  loc_1275D20:       Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_1275D30:     End If
  loc_1275D33:   Else
  loc_1275D3B:     If Not (var_86 = CInt(&H13)) Then
  loc_1275D46:       If (var_86 = CInt(&H1C)) Then
  loc_1275D49:       End If
  loc_1275D64:       If (Me.FrmList.Visible = &HFF) Then
  loc_1275D93:         Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode, Shift, global_180)
  loc_1275DA3:       End If
  loc_1275DA6:     Else
  loc_1275DAE:       If (var_86 = CInt(&H12)) Then
  loc_1275DCC:         If (Me.FrmList.Visible = &HFF) Then
  loc_1275DEC:           Set var_A4 = Me.Txt
  loc_1275DFB:           Proc_183_35_F2A594(Me.ListView, var_A4, KeyCode, Shift, global_180)
  loc_1275E0B:         End If
  loc_1275E19:         Set var_8C = Me.Txt
  loc_1275E1F:         Call 0.Method_Txt_KeyUp0 (CInt(&H12), var_A4, var_A0, global_180)
  loc_1275E27:         Shift = var_A4.Text
  loc_1275E3E:         If (var_A0 = "Yes") Then
  loc_1275E4E:           Set var_8C = Me.Txt
  loc_1275E54:           Call 0.Method_Txt_KeyUp0 (CInt(&H1B), var_A4, &HFF)
  loc_1275E5C:           var_A4.Enabled = var_A0
  loc_1275E75:           Set var_8C = Me.Txt
  loc_1275E7B:           Call 0.Method_Txt_KeyUp0 (CInt(&H1A), var_A4)
  loc_1275E83:           var_A4.Enabled = True
  loc_1275E92:         Else
  loc_1275E9F:           Set var_8C = Me.Txt
  loc_1275EA5:           Call 0.Method_Txt_KeyUp0 (CInt(&H1B), var_A4)
  loc_1275EAD:           var_A4.Enabled = False
  loc_1275EC6:           Set var_8C = Me.Txt
  loc_1275ECC:           Call 0.Method_Txt_KeyUp0 (CInt(&H1A), var_A4)
  loc_1275ED4:           var_A4.Enabled = False
  loc_1275EE0:         End If
  loc_1275EE3:       Else
  loc_1275EEB:         If (var_86 = CInt(&H14)) Then
  loc_1275F09:           If (Me.FrmList.Visible = &HFF) Then
  loc_1275F17:             Set var_B0 = Me.Txt
  loc_1275F29:             Set var_A4 = var_B0
  loc_1275F38:             Proc_183_35_F2A594(Me.ListView, var_A4, KeyCode)
  loc_1275F48:           End If
  loc_1275F56:           Set var_8C = Me.Txt
  loc_1275F5C:           Call 0.Method_Txt_KeyUp0 (CInt(&H14), var_A4, var_A0)
  loc_1275F64:           Shift = var_A4.Text
  loc_1275F7B:           If (var_A0 = "Travel Agency") Then
  loc_1275F89:             Set var_8C = Me.Lbl
  loc_1275F8F:             Call 0.Method_Txt_KeyUp0 (&H1C, var_A4, &HFF)
  loc_1275F97:             var_A4.Visible = global_180
  loc_1275FB0:             Set var_8C = Me.Txt
  loc_1275FB6:             Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A4)
  loc_1275FBE:             var_A4.Visible = True
  loc_1275FD7:             Set var_8C = Me.Txt
  loc_1275FDD:             Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A4)
  loc_1275FE5:             var_A4.Enabled = True
  loc_1275FFE:             Set var_8C = Me.Txt
  loc_1276004:             Call 0.Method_Txt_KeyUp0 (CInt(&H18), var_A4)
  loc_127600C:             var_A4.Enabled = True
  loc_1276025:             Set var_8C = Me.Txt
  loc_127602B:             Call 0.Method_Txt_KeyUp0 (CInt(&H1C), var_A4)
  loc_1276033:             var_A4.Enabled = True
  loc_1276042:           Else
  loc_1276050:             Set var_8C = Me.Txt
  loc_1276056:             Call 0.Method_Txt_KeyUp0 (CInt(&H14), var_A4)
  loc_127605E:             var_A0 = var_A4.Text
  loc_1276079:             Set var_A8 = Me.Txt
  loc_127607F:             Call 0.Method_Txt_KeyUp0 (CInt(&H14), var_B0, var_B4)
  loc_1276087:             (var_A0 = "Corporate") = var_B0.Text
  loc_12760A7:             If (var_86 Or (var_B4 = "Mesh")) Then
  loc_12760B5:               Set var_8C = Me.Lbl
  loc_12760BB:               Call 0.Method_Txt_KeyUp0 (&H1C, var_A4)
  loc_12760C3:               var_A4.Visible = False
  loc_12760DC:               Set var_8C = Me.Txt
  loc_12760E2:               Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A4)
  loc_12760EA:               var_A4.Visible = False
  loc_1276103:               Set var_8C = Me.Txt
  loc_1276109:               Call 0.Method_Txt_KeyUp0 (CInt(&H19), var_A4)
  loc_1276111:               var_A4.Enabled = False
  loc_127612A:               Set var_8C = Me.Txt
  loc_1276130:               Call 0.Method_Txt_KeyUp0 (CInt(&H18), var_A4)
  loc_1276138:               var_A4.Enabled = True
  loc_1276151:               Set var_8C = Me.Txt
  loc_1276157:               Call 0.Method_Txt_KeyUp0 (CInt(&H1C), var_A4)
  loc_127615F:               var_A4.Enabled = True
  loc_127616B:             End If
  loc_127616B:           End If
  loc_127616B:         End If
  loc_127616B:       End If
  loc_127616B:     End If
  loc_127616B:   End If
  loc_127616B: End If
  loc_127616B: Exit Sub
  loc_127616C: ' Referenced from: 1275C30
  loc_1276174: Set var_8C = Err()
  loc_127617A: Call 0.Method_arg_1C (var_B8)
  loc_127618B: If (var_B8 <> 0) Then
  loc_1276196:   Set var_8C = Err()
  loc_127619C:   Call 0.Method_arg_2C (var_A0)
  loc_12761BD:   MsgBox(CVar(var_A0), &H40, "Validation", var_F8, var_118)
  loc_12761D0: End If
  loc_12761D0: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4E984
  'Data Table: 54721C
  loc_E4E962: Set var_88 = Me.Txt
  loc_E4E968: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4E976: Proc_183_27_E23198(var_8C)
  loc_E4E982: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15E9BE0
  'Data Table: 54721C
  Dim var_90 As Integer
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim unk_547255 As Connection15
  Dim var_A4 As Variant
  Dim var_C0 As String
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_9A As Integer
  Dim var_8E As Integer
  Dim arg_10 As Integer
  loc_15E881F: var_90 = Cancel
  loc_15E882A: If (var_90 = CInt(&H1C)) Then
  loc_15E882D:   GoTo loc_15E9BD6
  loc_15E8830: End If
  loc_15E8838: If (var_90 = CInt(0)) Then
  loc_15E8849:   Set var_94 = Me.Txt
  loc_15E884F:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E8869:   If (var_98.Visible = &HFF) Then
  loc_15E887A:     Set var_94 = Me.Txt
  loc_15E8880:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E889F:     If (var_98.Text = vbNullString) Then
  loc_15E88B0:       Set var_94 = Me.Txt
  loc_15E88B6:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E88BE:       var_A0 = var_98.Tag
  loc_15E88D1:       Set var_A4 = Me.Txt
  loc_15E88D7:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_15E88DF:       var_A8.Text = var_A0
  loc_15E88FD:       Set var_94 = Me.Txt
  loc_15E8903:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E890B:       var_98.SetFocus
  loc_15E8917:       Exit Sub
  loc_15E8918:     End If
  loc_15E8939:     Set var_94 = Me.Txt
  loc_15E893F:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select AcCode From SubGroup Where AcCode='", var_D0)
  loc_15E8947:     -1 = var_98.Text
  loc_15E8960:     unk_547255.Execute var_A4 & var_A0 & "'", var_D4, var_90
  loc_15E8968:      = var_A4.RecordCount
  loc_15E898B:     If (var_D4 > 0) Then
  loc_15E89AF:       MsgBox("A/c Code Already Exists", &H40, "Validation", var_114, var_134)
  loc_15E89CD:       Set var_94 = Me.Txt
  loc_15E89D3:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15E89EE:       Set var_A4 = Me.Txt
  loc_15E89F4:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_15E89FC:       var_A8.Text = var_98.Tag
  loc_15E8A1A:       Set var_94 = Me.Txt
  loc_15E8A20:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_15E8A28:       var_98.SetFocus
  loc_15E8A34:       Exit Sub
  loc_15E8A35:     End If
  loc_15E8A35:   End If
  loc_15E8A38: Else
  loc_15E8A40:   If (var_90 = CInt(2)) Then
  loc_15E8A50:     Set var_94 = Me.Txt
  loc_15E8A56:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8A5E:     var_A0 = var_98.Text
  loc_15E8A75:     If (var_A0 = vbNullString) Then
  loc_15E8A78:       Exit Sub
  loc_15E8A79:     End If
  loc_15E8AC7:     Set var_94 = Me.Txt
  loc_15E8ACD:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_15E8AD5:     ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_98.Text
  loc_15E8AED:     If (var_98 Or (var_A0 <> vbNullString)) Then
  loc_15E8B2F:       var_F4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value 
  loc_15E8B46:       unk_547255.Execute CStr(var_F4 & "'"), var_134, -1
  loc_15E8B51:       Set var_88 = var_A4
  loc_15E8B7F:       If (var_88.RecordCount > 0) Then
  loc_15E8B93:         Call Proc_22_88_EDE128(CByte(1), CByte(1))
  loc_15E8BFB:         var_134 = IIf(IsNull(CVar(var_88.Fields.Item("Nature"))), vbNullString, CVar(var_88.Fields.Item("Nature")))
  loc_15E8C11:         Me.LblNature.Caption = CStr(var_134)
  loc_15E8C7D:         var_A8 = var_88.Fields.Item("GroupNature")
  loc_15E8C85:         var_114 = var_A8.Value
  loc_15E8CAF:         If CBool((var_88.Fields.Item("GroupNature").Value = "A") Or (var_114 = "L")) Then
  loc_15E8CB9:           global_100 = CByte(1)
  loc_15E8CC0:         Else
  loc_15E8CC7:           global_100 = CByte(0)
  loc_15E8CCB:         End If
  loc_15E8CD1:         Call Proc_22_88_EDE128(global_100, global_100, global_100)
  loc_15E8CD6:         ' Referenced from:   15E8DEF
  loc_15E8CDC:         var_9A = var_88.EOF
  loc_15E8CE5:         If Not(var_9A) Then
  loc_15E8D24:           If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_15E8D64:             Set var_A4 = Me.Txt
  loc_15E8D6A:             Call 0.Method_Txt_Validate0 (CInt(2), var_A8, CStr(Trim(CVar(var_88.Fields.Item("GroupName")))))
  loc_15E8D72:             var_A8.Text = var_9A
  loc_15E8DA4:             var_98 = var_88.Fields.Item("GroupCode")
  loc_15E8DC3:             Set var_A4 = Me.Txt
  loc_15E8DC9:             Call 0.Method_Txt_Validate0 (CInt(2), var_A8)
  loc_15E8DD1:             var_A8.Tag = CStr(var_98.Value)
  loc_15E8DE7:           End If
  loc_15E8DEA:           var_88.MoveNext
  loc_15E8DEF:           GoTo loc_15E8CD6
  loc_15E8DF2:         End If
  loc_15E8DF2:       End If
  loc_15E8DF2:     End If
  loc_15E8DF5:   Else
  loc_15E8DFD:     If (var_90 = CInt(3)) Then
  loc_15E8E0D:       Set var_94 = Me.Txt
  loc_15E8E13:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8E32:       If (var_98.Text <> vbNullString) Then
  loc_15E8E4D:         Set var_98 = Me.ListView.SelectedItem
  loc_15E8E65:         Set var_A4 = Me.Txt
  loc_15E8E6B:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E8E73:         var_A8.Text = var_98.Text
  loc_15E8E89:       End If
  loc_15E8E8C:     Else
  loc_15E8E94:       If Not (var_90 = CInt(&H13)) Then
  loc_15E8E9F:         If (var_90 = CInt(&H1C)) Then
  loc_15E8EA2:         End If
  loc_15E8EAF:         Set var_94 = Me.Txt
  loc_15E8EB5:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8ED4:         If (var_98.Text <> vbNullString) Then
  loc_15E8EEF:           Set var_98 = Me.ListView.SelectedItem
  loc_15E8F07:           Set var_A4 = Me.Txt
  loc_15E8F0D:           Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E8F15:           var_A8.Text = var_98.Text
  loc_15E8F2B:         End If
  loc_15E8F2E:       Else
  loc_15E8F36:         If (var_90 = CInt(&H14)) Then
  loc_15E8F46:           Set var_94 = Me.Txt
  loc_15E8F4C:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8F6B:           If (var_98.Text = vbNullString) Then
  loc_15E8F6E:             Exit Sub
  loc_15E8F6F:           End If
  loc_15E8F7C:           Set var_94 = Me.Txt
  loc_15E8F82:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E8FA1:           If (var_98.Text <> vbNullString) Then
  loc_15E8FBC:             Set var_98 = Me.ListView.SelectedItem
  loc_15E8FD4:             Set var_A4 = Me.Txt
  loc_15E8FDA:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E8FE2:             var_A8.Text = var_98.Text
  loc_15E8FF8:           End If
  loc_15E9006:           Set var_94 = Me.Txt
  loc_15E900C:           Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_15E902B:           If (var_98.Text = "Travel Agency") Then
  loc_15E9039:             Set var_94 = Me.Lbl
  loc_15E903F:             Call 0.Method_Txt_Validate0 (&H1C, var_98)
  loc_15E9047:             var_98.Visible = True
  loc_15E9060:             Set var_94 = Me.Txt
  loc_15E9066:             Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E906E:             var_98.Visible = True
  loc_15E9087:             Set var_94 = Me.Txt
  loc_15E908D:             Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E9095:             var_98.Enabled = True
  loc_15E90AE:             Set var_94 = Me.Txt
  loc_15E90B4:             Call 0.Method_Txt_Validate0 (CInt(&H18), var_98)
  loc_15E90BC:             var_98.Enabled = False
  loc_15E90D5:             Set var_94 = Me.Txt
  loc_15E90DB:             Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_15E90E3:             var_98.Enabled = False
  loc_15E90FD:             Set var_94 = Me.Txt
  loc_15E9103:             Call 0.Method_Txt_Validate0 (CInt(&H18), var_98)
  loc_15E910B:             var_98.Text = vbNullString
  loc_15E9125:             Set var_94 = Me.Txt
  loc_15E912B:             Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_15E9133:             var_98.Text = vbNullString
  loc_15E9143:             Set var_94 = Me.tOPCtrl1
  loc_15E9149:             Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_A4)
  loc_15E9162:             If (CStr() = "Edit") Then
  loc_15E917B:               Set var_94 = Me.Txt
  loc_15E9181:               Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E9189:               var_98.Text = CStr(global_144)
  loc_15E9198:             End If
  loc_15E919B:           Else
  loc_15E91A9:             Set var_94 = Me.Txt
  loc_15E91AF:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_98)
  loc_15E91D2:             Set var_A4 = Me.Txt
  loc_15E91D8:             Call 0.Method_Txt_Validate0 (CInt(&H14), var_A8)
  loc_15E9200:             If ((var_98.Text = "Corporate") Or (var_A8.Text = "Mesh")) Then
  loc_15E920E:               Set var_94 = Me.Lbl
  loc_15E9214:               Call 0.Method_Txt_Validate0 (&H1C, var_98)
  loc_15E921C:               var_98.Visible = False
  loc_15E9235:               Set var_94 = Me.Txt
  loc_15E923B:               Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E9243:               var_98.Visible = False
  loc_15E925C:               Set var_94 = Me.Txt
  loc_15E9262:               Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E926A:               var_98.Enabled = False
  loc_15E9284:               Set var_94 = Me.Txt
  loc_15E928A:               Call 0.Method_Txt_Validate0 (CInt(&H19), var_98)
  loc_15E9292:               var_98.Text = vbNullString
  loc_15E92AB:               Set var_94 = Me.Txt
  loc_15E92B1:               Call 0.Method_Txt_Validate0 (CInt(&H18), var_98)
  loc_15E92B9:               var_98.Enabled = True
  loc_15E92D2:               Set var_94 = Me.Txt
  loc_15E92D8:               Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_15E92E0:               var_98.Enabled = True
  loc_15E92F0:               Set var_94 = Me.tOPCtrl1
  loc_15E92F6:               Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15E930F:               If (CStr() = "Edit") Then
  loc_15E9328:                 Set var_94 = Me.Txt
  loc_15E932E:                 Call 0.Method_Txt_Validate0 (CInt(&H18), var_98)
  loc_15E9336:                 var_98.Text = CStr(global_132)
  loc_15E9356:                 Set var_94 = Me.Txt
  loc_15E935C:                 Call 0.Method_Txt_Validate0 (CInt(&H1C), var_98)
  loc_15E9364:                 var_98.Text = global_140
  loc_15E9370:               End If
  loc_15E9370:             End If
  loc_15E9370:           End If
  loc_15E9373:         Else
  loc_15E937B:           If (var_90 = CInt(8)) Then
  loc_15E93BF:             If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_15E93CF:               Set var_94 = Me.Txt
  loc_15E93D5:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E93F4:               If (var_98.Text <> vbNullString) Then
  loc_15E9432:                 Set var_A4 = Me.Txt
  loc_15E9438:                 Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E9440:                 var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15E9473:                 var_98 = Me.Fields.Item("Code")
  loc_15E9491:                 Set var_A4 = Me.Txt
  loc_15E9497:                 Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E949F:                 var_A8.Tag = CStr(var_98.Value)
  loc_15E94B8:               Else
  loc_15E94C5:                 Set var_94 = Me.Txt
  loc_15E94CB:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E94D3:                 var_98.Text = vbNullString
  loc_15E94EC:                 Set var_94 = Me.Txt
  loc_15E94F2:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E94FA:                 var_98.Tag = vbNullString
  loc_15E9506:               End If
  loc_15E9506:             End If
  loc_15E9509:           Else
  loc_15E9511:             If (var_90 = CInt(&H1B)) Then
  loc_15E9555:               If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_15E9565:                 Set var_94 = Me.Txt
  loc_15E956B:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E958A:                 If (var_98.Text <> vbNullString) Then
  loc_15E95C8:                   Set var_A4 = Me.Txt
  loc_15E95CE:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E95D6:                   var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15E9609:                   var_98 = Me.Fields.Item("Code")
  loc_15E9627:                   Set var_A4 = Me.Txt
  loc_15E962D:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E9635:                   var_A8.Tag = CStr(var_98.Value)
  loc_15E964E:                 Else
  loc_15E965B:                   Set var_94 = Me.Txt
  loc_15E9661:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E9669:                   var_98.Text = vbNullString
  loc_15E9682:                   Set var_94 = Me.Txt
  loc_15E9688:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E9690:                   var_98.Tag = vbNullString
  loc_15E969C:                 End If
  loc_15E969C:               End If
  loc_15E969F:             Else
  loc_15E96A7:               If (var_90 = CInt(&H12)) Then
  loc_15E96B7:                 Set var_94 = Me.Txt
  loc_15E96BD:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E96DC:                 If (var_98.Text <> vbNullString) Then
  loc_15E96F7:                   Set var_98 = Me.ListView.SelectedItem
  loc_15E970F:                   Set var_A4 = Me.Txt
  loc_15E9715:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15E971D:                   var_A8.Text = var_98.Text
  loc_15E9733:                 End If
  loc_15E9741:                 Set var_94 = Me.Txt
  loc_15E9747:                 Call 0.Method_Txt_Validate0 (CInt(&H12), var_98)
  loc_15E9766:                 If (var_98.Text = "Yes") Then
  loc_15E9776:                   Set var_94 = Me.Txt
  loc_15E977C:                   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_15E9784:                   var_98.Enabled = True
  loc_15E979D:                   Set var_94 = Me.Txt
  loc_15E97A3:                   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_98)
  loc_15E97AB:                   var_98.Enabled = True
  loc_15E97BB:                   Set var_94 = Me.tOPCtrl1
  loc_15E97C1:                   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15E97DA:                   If (CStr() = "Edit") Then
  loc_15E97EE:                     Set var_94 = Me.Txt
  loc_15E97F4:                     Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_15E97FC:                     var_98.Text = global_156
  loc_15E9819:                     Set var_94 = Me.Txt
  loc_15E981F:                     Call 0.Method_Txt_Validate0 (CInt(&H1A), var_98)
  loc_15E9827:                     var_98.Text = global_152
  loc_15E9833:                   End If
  loc_15E9836:                 Else
  loc_15E9843:                   Set var_94 = Me.Txt
  loc_15E9849:                   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_15E9851:                   var_98.Enabled = False
  loc_15E986A:                   Set var_94 = Me.Txt
  loc_15E9870:                   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_98)
  loc_15E9878:                   var_98.Enabled = False
  loc_15E9892:                   Set var_94 = Me.Txt
  loc_15E9898:                   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_98)
  loc_15E98A0:                   var_98.Text = vbNullString
  loc_15E98BA:                   Set var_94 = Me.Txt
  loc_15E98C0:                   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_98)
  loc_15E98C8:                   var_98.Text = vbNullString
  loc_15E98D4:                 End If
  loc_15E98D7:               Else
  loc_15E98DF:                 If (var_90 = CInt(&HD)) Then
  loc_15E98EF:                   Set var_94 = Me.Txt
  loc_15E98F5:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E9914:                   If (var_98.Text <> vbNullString) Then
  loc_15E9926:                     Set var_94 = Me.Txt
  loc_15E992C:                     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E9947:                     var_8E = CInt(InStr(1, CVar(var_98), "@", 0))
  loc_15E995A:                     If (var_8E <> 0) Then
  loc_15E996E:                       Set var_94 = Me.Txt
  loc_15E9974:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E998A:                       var_F4 = InStr(CLng((var_8E + 1)), CVar(var_98), "@", 0)
  loc_15E99A0:                       If CBool(InStr(1, CVar(var_98), "@", 0) <> 0) Then
  loc_15E99A5:                         arg_10 = &HFF
  loc_15E99A8:                         Exit Sub
  loc_15E99A9:                       End If
  loc_15E99AC:                     Else
  loc_15E99BA:                       var_C0 = "Enter Valid E-Mail Id."
  loc_15E99C5:                       MsgBox("@", &H40, InStr(1, CVar(var_98), "@", 0), var_114, var_134)
  loc_15E99D7:                       arg_10 = &HFF
  loc_15E99DA:                       Exit Sub
  loc_15E99DB:                     End If
  loc_15E99E5:                     Set var_94 = Me.Txt
  loc_15E99EB:                     Call 0.Method_Txt_Validate0 (Cancel, var_98, arg_10)
  loc_15E9A10:                     Set var_A4 = Me.Txt
  loc_15E9A16:                     Call 0.Method_Txt_Validate0 (Cancel, var_A8, CStr(LCase(CVar(var_98))))
  loc_15E9A1E:                     var_A8.Text = arg_10
  loc_15E9A36:                   End If
  loc_15E9A39:                 Else
  loc_15E9A41:                   If (var_90 = CInt(&H22)) Then
  loc_15E9A52:                     Set var_94 = Me.Txt
  loc_15E9A58:                     Call 0.Method_Txt_Validate0 (CInt(&H22), var_98)
  loc_15E9A82:                     var_AC = Replace(var_98.Text, " ", vbNullString, 1, -1, 0)
  loc_15E9A90:                     Set var_A4 = Me.Txt
  loc_15E9A96:                     Call 0.Method_Txt_Validate0 (CInt(&H22), var_A8)
  loc_15E9A9E:                     var_A8.Text = var_A8.Text
  loc_15E9AB8:                   Else
  loc_15E9AC0:                     If (var_90 = CInt(&H15)) Then
  loc_15E9ACD:                       Set var_94 = Me.Txt
  loc_15E9AD3:                       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E9B0D:                       Set var_A4 = Me.Txt
  loc_15E9B13:                       Call 0.Method_Txt_Validate0 (Cancel, var_A8, CStr(Format(CVar(var_98), "0")))
  loc_15E9B1B:                       var_A8.Text = 1
  loc_15E9B38:                     Else
  loc_15E9B40:                       If Not (var_90 = CInt(&H16)) Then
  loc_15E9B4B:                         If Not (var_90 = CInt(&H19)) Then
  loc_15E9B56:                           If Not (var_90 = CInt(&H17)) Then
  loc_15E9B61:                             If (var_90 = CInt(&H18)) Then
  loc_15E9B64:                             End If
  loc_15E9B64:                           End If
  loc_15E9B64:                         End If
  loc_15E9B6E:                         Set var_94 = Me.Txt
  loc_15E9B74:                         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15E9BAE:                         Set var_A4 = Me.Txt
  loc_15E9BB4:                         Call 0.Method_Txt_Validate0 (Cancel, var_A8, CStr(Format(CVar(var_98), "0.00")), 1)
  loc_15E9BBC:                         var_A8.Text = 1
  loc_15E9BD6:                       End If
  loc_15E9BD6:                     End If
  loc_15E9BD6:                   End If
  loc_15E9BD6:                 End If
  loc_15E9BD6:               End If
  loc_15E9BD6:             End If
  loc_15E9BD6:           End If
  loc_15E9BD6:         End If
  loc_15E9BD6:       End If
  loc_15E9BD6:     End If
  loc_15E9BD6:   End If
  loc_15E9BD6:   ' Referenced from: 15E882D
  loc_15E9BD6: End If
  loc_15E9BDB: Set var_88 = Nothing
  loc_15E9BDE: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'FD66D4
  'Data Table: 54721C
  Dim var_88 As Label
  Dim var_94 As TextBox
  loc_FD650C: On Error Goto loc_FD666D
  loc_FD651C: Me.LblUser.Caption = vbNullString
  loc_FD6531: Me.LblLDt.Caption = vbNullString
  loc_FD6539: Call Proc_22_80_10141B4()
  loc_FD6553: var_8C = "ADD"
  loc_FD6561: Call Proc_22_78_F5F2C4(Proc_5_1_100EC1C(var_8C, Me))
  loc_FD657A: Set var_88 = Me.Txt
  loc_FD6580: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H1F), var_94)
  loc_FD6588: var_94.Text = "Yes"
  loc_FD659C: Call Proc_22_88_EDE128(CByte(0))
  loc_FD65AA: If (global_52 = &HFF) Then
  loc_FD65B8:   Set var_88 = Me.Txt
  loc_FD65BE:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_94)
  loc_FD65C6:   var_94.SetFocus
  loc_FD65D5: Else
  loc_FD65E0:   Set var_88 = Me.Txt
  loc_FD65E6:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_FD65EE:   var_94.SetFocus
  loc_FD65FA: End If
  loc_FD6609: global_96 = vbNullString
  loc_FD6613: global_60 = "N"
  loc_FD6617: Call Proc_22_97_10DDE5C(CDbl(0))
  loc_FD662A: Set var_88 = Me.Txt
  loc_FD6630: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H14), var_94)
  loc_FD6638: var_94.Text = "Corporate"
  loc_FD6652: Set var_88 = Me.Txt
  loc_FD6658: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H13), var_94)
  loc_FD6660: var_94.Text = "Yes"
  loc_FD666C: Exit Sub
  loc_FD666D: ' Referenced from: FD650C
  loc_FD6675: Set var_88 = Err()
  loc_FD667B: Call 0.Method_arg_1C (var_98)
  loc_FD668C: If (var_98 <> 0) Then
  loc_FD6697:   Set var_88 = Err()
  loc_FD669D:   Call 0.Method_arg_2C (var_8C)
  loc_FD66BE:   MsgBox(CVar(var_8C), &H40, "Validation", var_E8, var_108)
  loc_FD66D1: End If
  loc_FD66D1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F9E0F4
  'Data Table: 54721C
  Dim var_11C As TextBox
  loc_F9DF80: On Error Goto loc_F9E08D
  loc_F9DF83: Call Proc_22_81_F6CE40()
  loc_F9DFBF: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_F9DFD7:   var_10C = "INI"
  loc_F9DFE5:   Call Proc_22_78_F5F2C4(Proc_5_1_100EC1C(var_10C, Me))
  loc_F9DFF0:   Call Proc_22_91_1825914(global_108)
  loc_F9E003:   Set var_110 = Me.Txt
  loc_F9E009:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_112, var_86)
  loc_F9E019:   For var_116 =  To CByte((var_112 - 1)): CByte(0) = var_116 'Byte
  loc_F9E028:     If (CInt(var_86) <> 3) Then
  loc_F9E03D:       Set var_110 = Me.Txt
  loc_F9E043:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F9E04B:       var_11C.BackColor = -2147483643
  loc_F9E069:       Set var_110 = Me.Txt
  loc_F9E06F:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F9E077:       var_11C.ForeColor = &HC00000
  loc_F9E083:     End If
  loc_F9E086:   Next var_116 'Byte
  loc_F9E08C: End If
  loc_F9E08C: Exit Sub
  loc_F9E08D: ' Referenced from: F9DF80
  loc_F9E095: Set var_110 = Err()
  loc_F9E09B: Call 0.Method_arg_1C (var_120)
  loc_F9E0AC: If (var_120 <> 0) Then
  loc_F9E0B7:   Set var_110 = Err()
  loc_F9E0BD:   Call 0.Method_arg_2C (var_10C)
  loc_F9E0DE:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F9E0F1: End If
  loc_F9E0F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FCE770
  'Data Table: 54721C
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim unk_547255 As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_8C As Fields15
  loc_FCE5E7: If (Me.RecordCount > 0) Then
  loc_FCE617:   Set var_8C = Me.Txt
  loc_FCE61D:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where SubCode= '", var_BC, -1)
  loc_FCE63E:   unk_547255.Execute var_C4 & var_94 & "' AND V_TYPE<>'F_AO'", 0, var_D8
  loc_FCE64E:    = var_C4.Item()
  loc_FCE656:    = var_D8.Value
  loc_FCE683:   If (var_90.Text.Fields > 0) Then
  loc_FCE6A7:     MsgBox("Transactions Exist Can't Delete it", &H40, "Information", var_108, var_128)
  loc_FCE6B7:     Exit Sub
  loc_FCE6B8:   End If
  loc_FCE6EA:   var_12C = "Group Profile"
  loc_FCE732:   If (Proc_6_108_101061C(MemVar_1F95044, "GroupProf", "TravelAgency", CStr(Me.Fields.Item("subcode").Value)) = 0) Then
  loc_FCE735:     Exit Sub
  loc_FCE736:   End If
  loc_FCE736:   Call Proc_22_95_1286BAC(0, var_12C)
  loc_FCE73E: Else
  loc_FCE75F:   MsgBox("There Is No Record To Delete", &H40, "Information", var_108, var_128)
  loc_FCE76F: End If
  loc_FCE76F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1257094
  'Data Table: 54721C
  Dim var_88 As Variant
  Dim Me As Variant
  Dim var_B8 As Variant
  Dim var_D8 As Variant
  Dim var_B0 As String
  Dim unk_547257 As Connection15
  Dim var_11C As Variant
  Dim var_128 As Variant
  Dim var_124 As Fields15
  Dim var_134 As TextBox
  Dim var_C8 As Variant
  loc_1256B55: Me.LblUser.Caption = vbNullString
  loc_1256B6A: Me.LblLDt.Caption = vbNullString
  loc_1256B7B: var_8C = Me.RecordCount
  loc_1256B89: If (var_8C > 0) Then
  loc_1256B9A:   Me.Fgrid1.Visible = True
  loc_1256BC5:   Call Proc_22_78_F5F2C4(Proc_5_1_100EC1C("EDIT", Me))
  loc_1256BDD:   Set var_88 = Me.Txt
  loc_1256BE3:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_B8)
  loc_1256BEB:   var_B8.Enabled = False
  loc_1256C20:   Proc_6_17_EAAE40(var_C8, MemVar_1F95078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1)
  loc_1256C36:   unk_547257.Execute CStr(var_88 & var_C8), var_B8, 0
  loc_1256C46:    = var_B8.Item(global_108)
  loc_1256C78:   If (Proc_6_38_E69628(CVar(var_88.Fields)) <> vbNullString) Then
  loc_1256CA4:     Proc_6_17_EAAE40(var_C8, MemVar_1F95078, "Select DefCompGroup from enviro WHERE LOGSITE_CODE=", var_F8, -1)
  loc_1256CB0:     var_B0 = CStr(var_88 & var_C8)
  loc_1256CBA:     unk_547257.Execute var_B0, var_B8, 0
  loc_1256CCA:      = var_B8.Item()
  loc_1256CD2:     var_11C = CVar(var_88.Fields) 'Address
  loc_1256CE9:     Set var_124 = Me.Txt
  loc_1256CEF:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_128)
  loc_1256CF7:     var_128.Tag = Proc_6_38_E69628(var_11C)
  loc_1256D46:     Set var_88 = Me.Txt
  loc_1256D4C:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B8, var_B0, "Select GroupName From Acgroup Where GroupCode='", var_C8, -1)
  loc_1256D6D:     unk_547257.Execute var_124 & var_B0 & "'", 0, var_128
  loc_1256D7D:      = var_124.Item()
  loc_1256D85:      = var_128.Value
  loc_1256D9C:     Set var_130 = Me.Txt
  loc_1256DA2:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_134)
  loc_1256DAA:     var_134.Text = CStr(var_B8.Tag.Fields)
  loc_1256DDF:     Set var_88 = Me.Txt
  loc_1256DE5:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(2), var_B8)
  loc_1256DED:     var_B8.Enabled = False
  loc_1256E05:     Call Txt_Validate(CInt(2))
  loc_1256E0A:   End If
  loc_1256E10:   Call Proc_22_88_EDE128(global_100)
  loc_1256E2A:   var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1256E32:   Set var_B8 = Me.FGrid
  loc_1256E59:   Set var_88 = Me.Txt
  loc_1256E5F:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_B8, FGrid.DispID_10000)
  loc_1256E67:   var_B8.SetFocus
  loc_1256E81:   Set var_88 = Me.Txt
  loc_1256E87:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H18), var_B8, var_B0)
  loc_1256E8F:   var_D8 = var_B8.Text
  loc_1256E9F:   global_132 = Val(var_B0)
  loc_1256EBA:   Set var_88 = Me.Txt
  loc_1256EC0:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H1C), var_B8, var_B0)
  loc_1256EC8:   global_132 = var_B8.Text
  loc_1256ED3:   global_140 = var_B0
  loc_1256EEF:   Set var_88 = Me.Txt
  loc_1256EF5:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H19), var_B8)
  loc_1256EFD:   var_B0 = var_B8.Text
  loc_1256F0D:   global_144 = Val(var_B0)
  loc_1256F28:   Set var_88 = Me.Txt
  loc_1256F2E:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H1A), var_B8, var_B0)
  loc_1256F36:   global_144 = var_B8.Text
  loc_1256F41:   global_152 = var_B0
  loc_1256F5D:   Set var_88 = Me.Txt
  loc_1256F63:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(&H1B), var_B8)
  loc_1256F76:   global_156 = var_B8.Text
  loc_1256FAB:   var_B0 = CStr(Me.FgridPlan.TextMatrix))
  loc_1256FBC:   If (var_B0 = vbNullString) Then
  loc_1256FBF:     Call Proc_22_97_10DDE5C(2, 1)
  loc_1256FE0:     If (CBool(Me.FgridPlan.Visible) = 0) Then
  loc_1256FF1:       Me.FgridPlan.Visible = True
  loc_1256FF9:     End If
  loc_1256FF9:   End If
  loc_1256FFC: Else
  loc_125701D:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_11C)
  loc_125702D: End If
  loc_125702D: Exit Sub
  loc_1257036: Set var_88 = Err()
  loc_125703C: Call 0.Method_arg_1C (var_8C)
  loc_125704D: If (var_8C <> 0) Then
  loc_1257058:   Set var_88 = Err()
  loc_125705E:   Call 0.Method_arg_2C (var_B0)
  loc_125707F:   MsgBox(CVar(var_B0), &H40, "Validation", var_F8, var_11C)
  loc_1257092: End If
  loc_1257092: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E161C4
  'Data Table: 54721C
  loc_E161B9: Me.Global.Unload Me
  loc_E161C1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F24F80
  'Data Table: 54721C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As Variant
  loc_F24E80: On Error Goto loc_F24F18
  loc_F24E8C: var_88 = Me.RecordCount
  loc_F24E9A: If (var_88 <= 0) Then
  loc_F24EA3:   var_B8 = "Information"
  loc_F24EBE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F24ECE:   Exit Sub
  loc_F24ECF: End If
  loc_F24ED6: var_10C = "Select SubCode As SearchCode,SubCode As Code,Name,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,GSTIN,LegalName,TradeName,CreditLimit,CreditDays,Remark From ((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode))  Where S.Companytype in ('Corporate','Travel Agency','Mesh') AND  (S.LOGSITE_CODE='" & MemVar_1F95078
  loc_F24EDD: MemVar_1F950E4 = var_10C & "' OR S.LOGSITE_CODE='HO') Order by Name"
  loc_F24EEA: MemVar_1F95120 = Me
  loc_F24EF1: var_10C = "1000,3000,1000,2000,1500,900,2000,2000"
  loc_F24EF7: Proc_183_54_F1EA10(var_10C)
  loc_F24F12: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F24F17: Exit Sub
  loc_F24F18: ' Referenced from: F24E80
  loc_F24F20: Set var_110 = Err()
  loc_F24F26: Call 0.Method_arg_1C (var_88)
  loc_F24F37: If (var_88 <> 0) Then
  loc_F24F42:   Set var_110 = Err()
  loc_F24F48:   Call 0.Method_arg_2C (var_10C)
  loc_F24F69:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F24F7C: End If
  loc_F24F7C: Exit Sub
  loc_F24F7D: MemVar_1F950E4.global_4096 = 
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E2D068
  'Data Table: 54721C
  loc_E2D058: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D060: Call Proc_22_91_1825914(global_108)
  loc_E2D065: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E2CF48
  'Data Table: 54721C
  loc_E2CF38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CF40: Call Proc_22_91_1825914(global_108)
  loc_E2CF45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E2CFA8
  'Data Table: 54721C
  loc_E2CF98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2CFA0: Call Proc_22_91_1825914(global_108)
  loc_E2CFA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E2D008
  'Data Table: 54721C
  loc_E2CFF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E2D000: Call Proc_22_91_1825914(global_108)
  loc_E2D005: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10C265C
  'Data Table: 54721C
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_547255 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_132 As Integer
  Dim var_C8 As Variant
  loc_10C2388: On Error Goto loc_10C25F4
  loc_10C23A2: If (Me.RecordCount <= 0) Then
  loc_10C23A5:   Exit Sub
  loc_10C23A6: End If
  loc_10C23A9: var_A0 = vbNullString
  loc_10C23CA: var_A8 = "Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,CreditLimit,CreditDays,Remark,GSTIN,LegalName,TradeName From (SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode " & var_A0 & " Where G.Nature='Customer'and S.CompanyType in ('Corporate','Travel Agency','Mesh')"
  loc_10C23D3: unk_547255.Execute var_A8, var_C8, -1
  loc_10C23DE: Set var_88 = var_CC
  loc_10C23F0: var_A4 = var_88.RecordCount
  loc_10C23FE: If (var_A4 = 0) Then
  loc_10C241A:   MsgBox("No record Found to Print", 0, var_EC, var_10C, var_12C)
  loc_10C242A:   Exit Sub
  loc_10C242B: End If
  loc_10C2441: Set var_CC = var_88 
  loc_10C244D: var_132 = CreateFieldDefFile(var_CC, MemVar_1F950B4 & "\COMPANYMast.ttx")
  loc_10C2457: Set var_88 = var_CC
  loc_10C245D: var_B8 = CVar(var_132) 'Integer
  loc_10C2460: var_98 = var_B8 'Variant
  loc_10C247C: var_A8 = MemVar_1F950B4 & "\COMPANYMast.RPT"
  loc_10C2485: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_10C2490: MemVar_1F951E8 = var_CC
  loc_10C24AB: Call 0.Method_arg_90 (var_CC, var_A4, var_9A, 1)
  loc_10C24B3: Call 0.Method_arg_24 (var_132, &HFF)
  loc_10C24BF: For var_136 =  To CInt(var_A4): var_CC = var_136 'Integer
  loc_10C24D8:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10C24E0:   Call 0.Method_arg_20 (var_13C)
  loc_10C24E8:   Call 0.Method_arg_30 (var_A8)
  loc_10C252E:   If (Ucase(CVar(var_A8)) = Ucase("Title")) Then
  loc_10C2544:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10C254C:     Call 0.Method_arg_20 (var_13C)
  loc_10C2554:     Call 0.Method_arg_38 ("'Company Detail List'")
  loc_10C2560:   End If
  loc_10C2563: Next var_136 'Integer
  loc_10C2581: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_10C2589: Call 0.Method_arg_2C (var_DC)
  loc_10C2597: Call 0.Method_arg_150 (var_FC)
  loc_10C25A2: Call 0.Method_arg_50 (var_A8)
  loc_10C25AC: Set var_13C = Nothing
  loc_10C25C6: Set var_CC = MemVar_1F951E8 
  loc_10C25D2: Proc_6_99_1484404(var_CC, 0, var_A8)
  loc_10C25DD: MemVar_1F951E8 = var_CC
  loc_10C25F0: Set var_88 = Nothing
  loc_10C25F3: Exit Sub
  loc_10C25F4: ' Referenced from: 10C2388
  loc_10C25FC: Set var_CC = Err()
  loc_10C2602: Call 0.Method_arg_1C (var_A4, &HFF)
  loc_10C2613: If (var_A4 <> 0) Then
  loc_10C261E:   Set var_CC = Err()
  loc_10C2624:   Call 0.Method_arg_2C (var_A8)
  loc_10C2645:   MsgBox(CVar(var_A8), &H40, "Validation", var_10C, var_12C)
  loc_10C2658: End If
  loc_10C2658: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E55F98
  'Data Table: 54721C
  Dim Me As Recordset15
  loc_E55F5F: Me.Requery -1
  loc_E55F6F: Me.Requery -1
  loc_E55F7F: Me.Requery -1
  loc_E55F8F: Me.Requery -1
  loc_E55F94: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1320F64
  'Data Table: 54721C
  Dim var_94 As TextBox
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_A0 As String
  Dim var_F4 As TextBox
  Dim var_F0 As Long
  Dim var_15C As String
  Dim unk_547255 As Connection15
  Dim var_90 As MSHFlexGrid
  loc_1320814: Set var_90 = Me.TxtGrid
  loc_132081A: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_1320822: var_96 = var_94.Visible
  loc_1320834: If (var_96 = &HFF) Then
  loc_132083A:   Call Proc_22_90_11CBE18(var_96)
  loc_1320845:   If (var_96 = 0) Then
  loc_132084D:     Call TxtGrid_LostFocus(0)
  loc_132085B:     Set var_90 = Me.TxtGrid
  loc_1320861:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1320869:     var_94.SetFocus
  loc_1320875:     Exit Sub
  loc_1320876:   End If
  loc_1320876: End If
  loc_1320876: Call Proc_22_81_F6CE40(var_94)
  loc_1320886: Set var_90 = Me.Txt
  loc_132088C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13208B5: If (Proc_183_19_E8E68C(var_94, "A/C Name") = 0) Then
  loc_13208B8:   Exit Sub
  loc_13208B9: End If
  loc_13208C4: Set var_90 = Me.Txt
  loc_13208CA: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_13208F3: If (Proc_183_19_E8E68C(var_94, "Under Group") = 0) Then
  loc_13208F6:   Exit Sub
  loc_13208F7: End If
  loc_1320902: Set var_90 = Me.Txt
  loc_1320908: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H14), var_94)
  loc_1320931: If (Proc_183_19_E8E68C(var_94, "Company Type") = 0) Then
  loc_1320934:   Exit Sub
  loc_1320935: End If
  loc_1320940: Set var_90 = Me.Txt
  loc_1320946: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_94)
  loc_132096F: If (Proc_183_19_E8E68C(var_94, "Active") = 0) Then
  loc_1320972:   Exit Sub
  loc_1320973: End If
  loc_1320981: Set var_90 = Me.Txt
  loc_1320987: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_94)
  loc_13209A6: If (var_94.Text <> vbNullString) Then
  loc_13209B9:   Set var_90 = Me.Txt
  loc_13209BF:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_94)
  loc_13209D5:   var_D0 = InStr(1, CVar(var_94), "@", 0)
  loc_13209F3:   Set var_9C = Me.Txt
  loc_13209F9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4, 1)
  loc_1320A01:   var_114 = CVar(var_F4) 'Address
  loc_1320A35:   If CBool(var_94 Or (InStr((var_D0 = 0), var_114, ".", 0) = 0)) Then
  loc_1320A51:     MsgBox("Please fill a Valid EMail Id.", 0, var_D0, var_F0, var_114)
  loc_1320A61:     Exit Sub
  loc_1320A62:   End If
  loc_1320A6D:   Set var_90 = Me.Txt
  loc_1320A73:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD))
  loc_1320A99:   Set var_9C = Me.Txt
  loc_1320A9F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4)
  loc_1320AA7:   var_F4.Text = CStr(LCase(CVar(var_94)))
  loc_1320ABF: End If
  loc_1320ACA: Set var_90 = Me.Txt
  loc_1320AD0: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_94)
  loc_1320AF9: If CBool(Trim(CVar(var_94)) <> vbNullString) Then
  loc_1320B07:   Set var_90 = Me.Txt
  loc_1320B0D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_94)
  loc_1320B1C:   var_D0 = Trim(CVar(var_94))
  loc_1320B24:   var_F0 = Len(var_D0)
  loc_1320B3A:   If CBool(var_F0 <> 15) Then
  loc_1320B56:     MsgBox("Please fill a Valid GSTIN of 15 DIGIT", 0, var_D0, var_F0, var_114)
  loc_1320B71:     Set var_90 = Me.Txt
  loc_1320B77:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H22), var_94)
  loc_1320B7F:     var_94.SetFocus
  loc_1320B8B:     Exit Sub
  loc_1320B8C:   End If
  loc_1320B8C: End If
  loc_1320B90: Set var_90 = Me.tOPCtrl1
  loc_1320B96: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1320B9E: var_A0 = CStr()
  loc_1320BAF: If (var_A0 = "Add") Then
  loc_1320BD0:   Set var_90 = Me.Txt
  loc_1320BD6:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1320BDE:   var_C0 = var_94.Text
  loc_1320BEF:   var_15C = Proc_183_20_FB48CC(var_A0, -1)
  loc_1320C03:   unk_547255.Execute var_9C & var_15C & "'", , 
  loc_1320C3C:   If (var_9C.RecordCount > 0) Then
  loc_1320C60:     MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_1320C7B:     Set var_90 = Me.Txt
  loc_1320C81:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1320C89:     var_94.SetFocus
  loc_1320C95:     Exit Sub
  loc_1320C96:   End If
  loc_1320C99: Else
  loc_1320C9D:   Set var_90 = Me.tOPCtrl1
  loc_1320CA3:   Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1320CAB:   var_A0 = CStr()
  loc_1320CBC:   If (var_A0 = "Edit") Then
  loc_1320CDD:     Set var_90 = Me.Txt
  loc_1320CE3:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1320CEB:     var_C0 = var_94.Text
  loc_1320CFC:     var_15C = Proc_183_20_FB48CC(var_A0, -1)
  loc_1320D21:     unk_547255.Execute var_9C & var_15C & "' and Name<>'" & global_80 & "'", , 
  loc_1320D5E:     If (var_9C.RecordCount > 0) Then
  loc_1320D82:       MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_1320DA3:       Set var_90 = Me.Txt
  loc_1320DA9:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1320DB1:       var_94.Text = global_80
  loc_1320DC8:       Set var_90 = Me.Txt
  loc_1320DCE:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1320DD6:       var_94.SetFocus
  loc_1320DE2:       Exit Sub
  loc_1320DE3:     End If
  loc_1320DE3:   End If
  loc_1320DE3: End If
  loc_1320E08: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_174 'Integer
  loc_1320E12:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_1320E1A:   var_104 = CVar(CLng(3)) 'Long
  loc_1320E4A:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1320E51:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1320E59:     var_104 = CVar(CLng(4)) 'Long
  loc_1320E84:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1320EAC:       MsgBox(CVar("Please Specify Cr/Dr in Row No " & CStr(var_86)), &H40, "Validation", var_F0, var_114)
  loc_1320ED2:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_1320EEC:       Me.FGrid.Col = CVar(CLng(4))
  loc_1320EF8:       Set var_90 = Me.FGrid
  loc_1320F1C:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1320F24:       Exit Sub
  loc_1320F25:     End If
  loc_1320F25:   End If
  loc_1320F28: Next var_174 'Integer
  loc_1320F31: Set var_90 = Me.tOPCtrl1
  loc_1320F37: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1320F50: If (CStr() = "Add") Then
  loc_1320F53:   Call Proc_22_93_15C5CD0()
  loc_1320F5B: Else
  loc_1320F5B:   Call Proc_22_94_1691204()
  loc_1320F60: End If
  loc_1320F60: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_0 'E9DEA4
  'Data Table: 54721C
  Dim var_88 As MSHFlexGrid
  Dim var_BC As TextBox
  loc_E9DE40: If (CDbl(CLng(Me.FgridPlan.BackColorSel)) = CDbl("14737632")) Then
  loc_E9DE56:   Me.FgridPlan.Col = 3
  loc_E9DE5E: End If
  loc_E9DE71: Me.FgridPlan.BackColorSel = CVar(CLng("14737632"))
  loc_E9DE84: Set var_88 = Me.TxtGrid1
  loc_E9DE8A: Call 0.Method_FgridPlan_UnknownEvent_00 (2, var_BC)
  loc_E9DE92: var_BC.Visible = False
  loc_E9DE9E: Call Proc_22_81_F6CE40()
  loc_E9DEA3: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_1 'E65228
  'Data Table: 54721C
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E651E8: Set var_88 = Me.TxtGrid1
  loc_E651EE: Call 0.Method_FgridPlan_UnknownEvent_10 (2, var_8C)
  loc_E65208: If (var_8C.Visible = 0) Then
  loc_E6521E:   Me.FgridPlan.BackColorSel = CVar(CLng("16777215"))
  loc_E65226: End If
  loc_E65226: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_8 'E1ED70
  'Data Table: 54721C
  loc_E1ED67: Me.FgridPlan.CellBackColor = CVar(CLng("16777215"))
  loc_E1ED6F: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_9 'E2F524
  'Data Table: 54721C
  Dim var_8C As TextBox
  loc_E2F507: Set var_88 = Me.TxtGrid1
  loc_E2F50D: Call 0.Method_FgridPlan_UnknownEvent_90 (2, var_8C)
  loc_E2F515: var_8C.Visible = False
  loc_E2F521: Exit Sub
  loc_E2F522: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_A '1035F08
  'Data Table: 54721C
  Dim var_A0 As String
  Dim var_B8 As MSHFlexGrid
  Dim var_8C As MSHFlexGrid
  Dim var_D8 As Variant
  Dim Cancel As Integer
  Dim var_86 As Integer
  Dim var_EC As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_1035CC4: On Error Goto loc_1035F02
  loc_1035CCB: Set var_8C = Me.tOPCtrl1
  loc_1035CD1: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1035CEA: If (CStr() = "Browse") Then
  loc_1035CED:   Exit Sub
  loc_1035CEE: End If
  loc_1035D62: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FgridPlan.Tag))) = CDbl((CLng(Me.FgridPlan.Rows) - (CLng(Me.FgridPlan.Rows) - 1))))) Then
  loc_1035D7B:   Me.FgridPlan.CellBackColor = CVar(CLng(global_188))
  loc_1035D8B:   var_A0 = "+{Tab}"
  loc_1035D91:   Proc_303_0_FBACC8(CStr(Me.FgridPlan.Tag), 0)
  loc_1035D9B:   Cancel = 0
  loc_1035DA1: Else
  loc_1035DF8:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FgridPlan.Tag))) = CDbl((CLng(Me.FgridPlan.Rows) - 1)))) Then
  loc_1035E11:     Me.FgridPlan.CellBackColor = CVar(CLng(global_188))
  loc_1035E19:   End If
  loc_1035E19: End If
  loc_1035E1F: global_56 = Cancel
  loc_1035E45: Me.FgridPlan.Tag = CVar(CStr(CLng(Me.FgridPlan.Row)))
  loc_1035E69: If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1035E8C:   var_86 = CInt(((CLng(Me.FgridPlan.Col) + 1) Mod 2))
  loc_1035E98:   var_EC = var_86
  loc_1035EA1:   If (var_EC = 0) Then
  loc_1035EB7:     var_D8 = CVar(CLng(Me.FgridPlan.Row)) 'Long
  loc_1035ECF:     var_FC = CVar(CLng(Me.FgridPlan.Col)) 'Long
  loc_1035ED4:     var_11C = vbNullString
  loc_1035EDE:     Set var_B8 = Me.FgridPlan
  loc_1035EE4:     LateIdCallSt
  loc_1035EFC:   End If
  loc_1035EFC: End If
  loc_1035EFE: Cancel = 0
  loc_1035F01: Exit Sub
  loc_1035F02: ' Referenced from: 1035CC4
  loc_1035F02: Proc_6_60_E63754(Cancel, var_B8, var_11C, var_FC, var_D8, var_EC)
  loc_1035F07: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_B 'E107B0
  'Data Table: 54721C
  loc_E107A1: Call FgridPlan_UnknownEvent_C()
  loc_E107AB: global_54 = 0
  loc_E107AE: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_C 'F0E188
  'Data Table: 54721C
  Dim var_8A As Integer
  loc_F0E0CB: var_88 = CStr(Ucase(Chr(CLng(Cancel))))
  loc_F0E0D5: On Error Goto loc_F0E182
  loc_F0E101: var_8A = CInt((CLng((Val(CStr(CLng(Me.FgridPlan.Col))) + CDbl(1))) Mod 2))
  loc_F0E119: If (var_8A = 0) Then
  loc_F0E15A:   Proc_6_63_110B734(Me, Me.FgridPlan, Me.TxtGrid1, 2, &HFF)
  loc_F0E16C: End If
  loc_F0E176: If (CLng(Cancel) <> &HD) Then
  loc_F0E17E:   global_54 = &HFF
  loc_F0E181: End If
  loc_F0E181: Exit Sub
  loc_F0E182: ' Referenced from: F0E0D5
  loc_F0E182: Proc_6_60_E63754(global_54, Cancel, 0)
  loc_F0E187: Exit Sub
End Sub

Private Sub FgridPlan_UnknownEvent_D 'FE0AE0
  'Data Table: 54721C
  Dim var_8C As MSHFlexGrid
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  loc_FE090C: On Error Goto loc_FE0AD9
  loc_FE0913: Set var_8C = Me.tOPCtrl1
  loc_FE0919: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_FE0932: If (CStr() = "Browse") Then
  loc_FE0935:   Exit Sub
  loc_FE0936: End If
  loc_FE0953: If (CLng(Me.FgridPlan.ColSel) = CLng(0)) Then
  loc_FE0956:   Exit Sub
  loc_FE0957: End If
  loc_FE0968: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_FE098A:   If (CLng(Me.FgridPlan.Row) >= 1) Then
  loc_FE09C4:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_FE09E6:       If (CLng(Me.FgridPlan.Rows) > 2) Then
  loc_FE09FC:         var_B0 = CVar(CLng(Me.FgridPlan.Row)) 'Long
  loc_FE0A05:         Set var_114 = Me.FgridPlan
  loc_FE0A20:       Else
  loc_FE0A33:         Me.FgridPlan.Rows = 1
  loc_FE0A50:         var_D0 = CVar(CStr(CLng(Me.FgridPlan.Rows))) 'String
  loc_FE0A58:         Set var_114 = Me.FgridPlan
  loc_FE0A87:         Me.FgridPlan.FixedRows = 1
  loc_FE0A8F:       End If
  loc_FE0A8F:     End If
  loc_FE0A92:   Else
  loc_FE0A9D:     var_D0 = "Delete Module"
  loc_FE0AB3:     MsgBox("No Entries To Delete", &H10, var_D0, var_F0, var_110)
  loc_FE0AC3:   End If
  loc_FE0AC7:   Set var_8C = Me.FgridPlan
  loc_FE0AD8: End If
  loc_FE0AD8: Exit Sub
  loc_FE0AD9: ' Referenced from: FE090C
  loc_FE0AD9: Proc_6_60_E63754(FgridPlan.DispID_8001, FgridPlan.DispID_10000, var_D0)
  loc_FE0ADE: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_9 'F3A314
  'Data Table: 54721C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3A20B: Me.DGAcName.Visible = False
  loc_F3A22A: If (Me.RecordCount > 0) Then
  loc_F3A269:   Set var_B4 = Me.Txt
  loc_F3A26F:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3A277:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F3A2AA:   var_B0 = Me.Fields.Item("Code")
  loc_F3A2C9:   Set var_B4 = Me.Txt
  loc_F3A2CF:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_F3A2D7:   var_B8.Tag = CStr(var_B0.Value)
  loc_F3A2ED: End If
  loc_F3A2F8: Set var_A8 = Me.Txt
  loc_F3A2FE: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1))
  loc_F3A306: var_B0.SetFocus
  loc_F3A312: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E76194
  'Data Table: 54721C
  loc_E76152: Proc_6_153_E91D24(Me.DGAcName, arg_14)
  loc_E76169: Set var_8C = Me.FGPoint
  loc_E76185: Proc_6_138_106E830(Me.DGAcName, global_112, CInt(1))
  loc_E76193: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'FF0918
  'Data Table: 54721C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FF0744: On Error Goto loc_FF08B3
  loc_FF0756: Me.DGCity.Visible = False
  loc_FF0767: var_AC = Me.RecordCount
  loc_FF0775: If (var_AC > 0) Then
  loc_FF07C7:   Set var_CC = Me.Txt
  loc_FF07CD:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(Me.DGCity.Tag)), var_D0)
  loc_FF07D5:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FF082D:   Set var_B4 = Me.DGCity
  loc_FF0844:   Set var_CC = Me.Txt
  loc_FF084A:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FF0852:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FF0872: End If
  loc_FF0887: var_C8 = CStr(Me.DGCity.Tag)
  loc_FF0890: Set var_B0 = Me.Txt
  loc_FF0896: Call 0.Method_DGCity_UnknownEvent_90 (CInt(var_C8))
  loc_FF089E: var_B4.SetFocus
  loc_FF08B2: Exit Sub
  loc_FF08B3: ' Referenced from: FF0744
  loc_FF08BB: Set var_A8 = Err()
  loc_FF08C1: Call 0.Method_arg_1C (var_AC)
  loc_FF08D2: If (var_AC <> 0) Then
  loc_FF08DD:   Set var_A8 = Err()
  loc_FF08E3:   Call 0.Method_arg_2C (var_C8)
  loc_FF0904:   MsgBox(CVar(var_C8), &H40, "Validation", var_F4, var_114)
  loc_FF0917: End If
  loc_FF0917: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'E772EC
  'Data Table: 54721C
  loc_E772AA: Proc_6_153_E91D24(Me.DGCity, arg_14)
  loc_E772C1: Set var_8C = Me.FGPoint
  loc_E772DD: Proc_6_138_106E830(Me.DGCity, global_124, CInt(8))
  loc_E772EB: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'FA96B0
  'Data Table: 54721C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA9530: On Error Goto loc_FA964A
  loc_FA9542: Me.DGUnderAc.Visible = False
  loc_FA9553: var_AC = Me.RecordCount
  loc_FA9561: If (var_AC > 0) Then
  loc_FA95A0:   Set var_B4 = Me.Txt
  loc_FA95A6:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FA95AE:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA95E1:   var_B0 = Me.Fields.Item("Code")
  loc_FA95F2:   var_CC = CStr(var_B0.Value)
  loc_FA9600:   Set var_B4 = Me.Txt
  loc_FA9606:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FA960E:   var_B8.Tag = var_CC
  loc_FA9624: End If
  loc_FA962F: Set var_A8 = Me.Txt
  loc_FA9635: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2))
  loc_FA963D: var_B0.SetFocus
  loc_FA9649: Exit Sub
  loc_FA964A: ' Referenced from: FA9530
  loc_FA9652: Set var_A8 = Err()
  loc_FA9658: Call 0.Method_arg_1C (var_AC)
  loc_FA9669: If (var_AC <> 0) Then
  loc_FA9674:   Set var_A8 = Err()
  loc_FA967A:   Call 0.Method_arg_2C (var_CC)
  loc_FA969B:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA96AE: End If
  loc_FA96AE: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_1F 'E76AD4
  'Data Table: 54721C
  loc_E76A92: Proc_6_153_E91D24(Me.DGUnderAc, arg_14)
  loc_E76AA9: Set var_8C = Me.FGPoint
  loc_E76AC5: Proc_6_138_106E830(Me.DGUnderAc, global_120, CInt(2))
  loc_E76AD3: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_0 'E41214
  'Data Table: 54721C
  Dim var_8C As TextBox
  loc_E411F3: Set var_88 = Me.TxtGrid
  loc_E411F9: Call 0.Method_FGridIncl_UnknownEvent_00 (0, var_8C)
  loc_E41201: var_8C.Visible = False
  loc_E4120D: Call Proc_22_81_F6CE40()
  loc_E41212: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_A '100DDF0
  'Data Table: 54721C
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  Dim Cancel As Integer
  loc_100DBF8: Set var_88 = Me.tOPCtrl1
  loc_100DBFE: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_100DC43: If ((CStr() = "Browse") And ((((CLng(Cancel) = &H24) Or (CLng(Cancel) = &H23)) Or (CLng(Cancel) = &H21)) Or (CLng(Cancel) = &H22))) Then
  loc_100DC4C:   Call Form_KeyDown(Cancel, arg_10)
  loc_100DC51: End If
  loc_100DC55: Set var_88 = Me.tOPCtrl1
  loc_100DC5B: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_100DC74: If (CStr() = "Browse") Then
  loc_100DC77:   Exit Sub
  loc_100DC78: End If
  loc_100DCA0: If ((CLng(Cancel) = &H20) And (CLng(Me.FGridIncl.Col) = CLng(1))) Then
  loc_100DCB3:   Me.FGridIncl.CellFontName = "WINGDINGS"
  loc_100DCCD:   Me.FGridIncl.CellFontSize = CVar(CDbl(&HE))
  loc_100DCE8:   var_AC = CVar(CLng(Me.FGridIncl.Row)) 'Long
  loc_100DCF0:   var_CC = CVar(CLng(1)) 'Long
  loc_100DD1E:   var_174 = CVar(CLng(Me.FGridIncl.Row)) 'Long
  loc_100DD26:   var_194 = CVar(CLng(1)) 'Long
  loc_100DD5D:   var_1B4 = CVar(CStr(IIf((CStr(Me.FGridIncl.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_100DD65:   Set var_1C8 = Me.FGridIncl
  loc_100DD6B:   LateIdCallSt
  loc_100DD94: End If
  loc_100DDBC: If ((CLng(Cancel) = &HD) And (CLng(Me.FGridIncl.Col) = CLng(1))) Then
  loc_100DDD1:   Me.FGridIncl.Col = CVar(CLng(2))
  loc_100DDD9: End If
  loc_100DDDF: If (Cancel = &HD) Then
  loc_100DDE7:   global_54 = 0
  loc_100DDEA: End If
  loc_100DDEC: Cancel = 0
  loc_100DDEF: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_B 'E10408
  'Data Table: 54721C
  loc_E103F9: Call FGridIncl_UnknownEvent_C()
  loc_E10403: global_54 = 0
  loc_E10406: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_C 'E5D64C
  'Data Table: 54721C
  loc_E5D610: Set var_88 = Me.tOPCtrl1
  loc_E5D616: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5D62F: If (CStr() = "Browse") Then
  loc_E5D632:   Exit Sub
  loc_E5D633: End If
  loc_E5D63D: If (CLng(Cancel) <> &HD) Then
  loc_E5D645:   global_54 = &HFF
  loc_E5D648: End If
  loc_E5D648: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_E 'E2972C
  'Data Table: 54721C
  loc_E29725: If (CLng(Me.FGridIncl.Col) <> CLng(1)) Then
  loc_E29728:   Exit Sub
  loc_E29729: End If
  loc_E29729: Exit Sub
End Sub

Private Sub FGridIncl_UnknownEvent_10 'F9E7E0
  'Data Table: 54721C
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_CC As Variant
  Dim var_174 As Variant
  Dim var_194 As Variant
  Dim var_1B4 As Variant
  loc_F9E684: Set var_88 = Me.tOPCtrl1
  loc_F9E68A: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F9E6A3: If (CStr() = "Browse") Then
  loc_F9E6A6:   Exit Sub
  loc_F9E6A7: End If
  loc_F9E6C4: If (CLng(Me.FGridIncl.Col) <> CLng(1)) Then
  loc_F9E6C7:   Exit Sub
  loc_F9E6C8: End If
  loc_F9E6E7: If (CLng(Me.FGridIncl.Row) = 0) Then
  loc_F9E6EA:   Exit Sub
  loc_F9E6EB: End If
  loc_F9E6FB: Me.FGridIncl.CellFontName = "WINGDINGS"
  loc_F9E715: Me.FGridIncl.CellFontSize = CVar(CDbl(&HE))
  loc_F9E730: var_AC = CVar(CLng(Me.FGridIncl.Row)) 'Long
  loc_F9E738: var_CC = CVar(CLng(1)) 'Long
  loc_F9E766: var_174 = CVar(CLng(Me.FGridIncl.Row)) 'Long
  loc_F9E76E: var_194 = CVar(CLng(1)) 'Long
  loc_F9E7A5: var_1B4 = CVar(CStr(IIf((CStr(Me.FGridIncl.TextMatrix)) = "ü"), " ", "ü"))) 'String
  loc_F9E7AD: Set var_1C8 = Me.FGridIncl
  loc_F9E7B3: LateIdCallSt
  loc_F9E7DC: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F8944C
  'Data Table: 54721C
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F89308: On Error Goto loc_F893E6
  loc_F8930F: Set var_A4 = Me.ListView
  loc_F89359: Set var_BC = Me.Txt
  loc_F8935F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F89367: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F89393: Me.FrmList.Visible = False
  loc_F893AD: var_A0 = CStr(Me.ListView.Tag)
  loc_F893B5: var_C8 = Val(var_A0)
  loc_F893C3: Set var_9C = Me.Txt
  loc_F893C9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F893D1: var_A4.SetFocus
  loc_F893E5: Exit Sub
  loc_F893E6: ' Referenced from: F89308
  loc_F893EE: Set var_88 = Err()
  loc_F893F4: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F89405: If (var_CC <> 0) Then
  loc_F89410:   Set var_88 = Err()
  loc_F89416:   Call 0.Method_arg_2C (var_A0)
  loc_F89437:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F8944A: End If
  loc_F8944A: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'F079F0
  'Data Table: 54721C
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_F07922: On Error Goto loc_F0798B
  loc_F0792B: Me.MoveFirst
  loc_F07945: var_8C = "SearchCode='" & MyValue
  loc_F07955: Me.Find var_8C & "'", 0, 1
  loc_F07961: Call Proc_22_91_1825914(var_A0)
  loc_F07982: Proc_5_0_1107AD0(&HFF, Me)
  loc_F0798A: Exit Sub
  loc_F0798B: ' Referenced from: F07922
  loc_F07993: Set var_A8 = Err()
  loc_F07999: Call 0.Method_arg_1C (var_B0, global_108)
  loc_F079AA: If (var_B0 <> 0) Then
  loc_F079B5:   Set var_A8 = Err()
  loc_F079BB:   Call 0.Method_arg_2C (var_8C)
  loc_F079DC:   MsgBox(CVar(var_8C), &H40, "Validation", var_F0, var_110)
  loc_F079EF: End If
  loc_F079EF: Exit Sub
End Sub

Public Sub Proc_22_78_F5F2C4(arg_C) 'F5F2C4
  'Data Table: 54721C
  Dim var_98 As Variant
  loc_F5F19E: Set var_8C = Me.Txt
  loc_F5F1A4: Call 0.Method_Proc_22_78_F5F2C4C (var_8E, var_86)
  loc_F5F1B4: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_F5F1C9:   If ((var_86 = &H1D) Or (var_86 = &H1E)) Then
  loc_F5F1CC:     GoTo loc_F5F1F9
  loc_F5F1CF:   End If
  loc_F5F1DF:   Set var_8C = Me.Txt
  loc_F5F1E5:   Call 0.Method_Proc_22_78_F5F2C40 (CInt(var_86), var_98)
  loc_F5F1ED:   var_98.Enabled = arg_C
  loc_F5F1F9:   ' Referenced from: F5F1CC
  loc_F5F1FC: Next var_92 'Byte
  loc_F5F20F: Set var_8C = Me.Txt
  loc_F5F215: Call 0.Method_Proc_22_78_F5F2C40 (CInt(&H19), var_98)
  loc_F5F21D: var_98.Enabled = False
  loc_F5F236: Set var_8C = Me.Txt
  loc_F5F23C: Call 0.Method_Proc_22_78_F5F2C40 (CInt(&H1B), var_98)
  loc_F5F244: var_98.Enabled = False
  loc_F5F25D: Set var_8C = Me.Txt
  loc_F5F263: Call 0.Method_Proc_22_78_F5F2C40 (CInt(&H1A), var_98)
  loc_F5F26B: var_98.Enabled = False
  loc_F5F284: Set var_8C = Me.Txt
  loc_F5F28A: Call 0.Method_Proc_22_78_F5F2C40 (CInt(&H19), var_98)
  loc_F5F292: var_98.Visible = False
  loc_F5F2A9: Set var_8C = Me.Lbl
  loc_F5F2AF: Call 0.Method_Proc_22_78_F5F2C40 (&H1C, var_98)
  loc_F5F2B7: var_98.Visible = False
  loc_F5F2C3: Exit Sub
End Sub

Public Sub Proc_22_79_1422DF0
  'Data Table: 54721C
  Dim var_AC As Variant
  Dim var_C0 As Variant
  Dim var_D0 As Variant
  Dim var_8C As Integer
  Dim var_D4 As String
  Dim unk_547257 As Connection15
  Dim var_88 As Recordset15
  Dim var_F8 As Variant
  Dim var_BC As Variant
  Dim var_108 As Variant
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_14C As Variant
  Dim unk_547255 As Connection15
  Dim var_180 As Variant
  Dim var_184 As Variant
  Dim var_188 As Variant
  Dim var_118 As String
  Dim var_17C As Variant
  Dim var_1DC As Variant
  Dim var_1FC As Variant
  Dim var_324 As Double
  Dim var_274 As Integer
  Dim var_1BC As Variant
  Dim var_23C As Variant
  Dim var_264 As Fields15
  Dim var_2C8 As Variant
  Dim var_2E8 As Variant
  Dim var_308 As Variant
  loc_14223AC: On Error Goto loc_1422DE7
  loc_14223C2: Me.Fgrid1.Rows = 2
  loc_14223CE: Set var_C0 = Me.Fgrid1
  loc_14223D4: var_D0 = var_C0.Row
  loc_14223DE: var_8C = CInt(CLng(var_D0))
  loc_142240B: unk_547257.Execute "SELECT Code,Name as CatName FROM Roomcat where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_D0, -1
  loc_1422416: Set var_88 = var_C0
  loc_142243A: If (var_88.RecordCount > 0) Then
  loc_142243D:   ' Referenced from: 14225A5
  loc_142244C:   If Not(var_88.EOF) Then
  loc_142245A:     For var_E2 = CByte(1) To CByte(2): var_8A = var_E2 'Byte
  loc_1422460:       var_AC = vbNullString
  loc_142246A:       Set var_C0 = Me.Fgrid1
  loc_142247F:       Set var_E8 = Me.Fgrid1
  loc_1422486:       var_AC = CVar(CLng(var_8C)) 'Long
  loc_142248E:       var_F8 = CVar(CLng(0)) 'Long
  loc_1422498:       var_D0 = CVar(CStr(var_8C)) 'String
  loc_142249F:       LateIdCallSt
  loc_14224AE:       var_BC = CVar(CLng(var_8C)) 'Long
  loc_14224B6:       var_108 = CVar(CLng(1)) 'Long
  loc_14224E6:       var_12C = CVar(CStr(var_88.Fields.Item("CatName").Value)) 'String
  loc_14224ED:       LateIdCallSt
  loc_1422507:       var_BC = CVar(CLng(var_8C)) 'Long
  loc_142250F:       var_108 = CVar(CLng(2)) 'Long
  loc_142253F:       var_12C = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_1422546:       LateIdCallSt
  loc_1422560:       var_AC = CVar(CLng(var_8C)) 'Long
  loc_1422568:       var_F8 = CVar(CLng(3)) 'Long
  loc_1422573:       var_D0 = CVar(CStr(var_8A)) 'String
  loc_142257A:       LateIdCallSt
  loc_1422587:       Set var_E8 = Nothing 
  loc_1422591:       var_8C = (var_8C + 1)
  loc_1422597:     Next var_E2 'Byte
  loc_14225A0:     var_88.MoveNext
  loc_14225A5:     GoTo loc_142243D
  loc_14225A8:   End If
  loc_14225BB:   Me.Fgrid1.FixedRows = 1
  loc_14225C3: End If
  loc_14225C9: If (var_8C = 1) Then
  loc_14225DF:   Me.Fgrid1.Rows = 1
  loc_14225FC:   var_12C = CVar(CStr(CLng(Me.Fgrid1.Rows))) 'String
  loc_1422604:   Set var_11C = Me.Fgrid1
  loc_1422633:   Me.Fgrid1.FixedRows = 1
  loc_142263B: End If
  loc_1422665: var_14C = CVar("Select count(*) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  and Code='") 'String
  loc_1422673: Set var_C0 = Me.Txt
  loc_1422679: Call 0.Method_Proc_22_79_1422DF00 (CInt(0), var_11C, var_14C, var_17C, -1, var_180)
  loc_14226A7: unk_547255.Execute CStr(var_184 & Trim(CVar(var_11C)) & "'"), 0, var_188
  loc_14226B7: var_12C = var_184.Item(Fgrid1.DispID_10000)
  loc_14226BF:  = var_188.Value
  loc_14226F2: If (var_180.Fields > 0) Then
  loc_1422703:   Me.Fgrid1.Visible = True
  loc_1422730:   For var_1AC = 1 To CInt((CLng(Me.Fgrid1.Rows) - 2)): var_8C = var_1AC 'Integer
  loc_1422739:     var_AC = CVar(CLng(4)) 'Long
  loc_1422744:     var_F8 = CVar(CInt(7)) 'Integer
  loc_142274C:     Set var_C0 = Me.Fgrid1
  loc_1422752:     LateIdCallSt
  loc_14227A5:     If CBool(Trim(CVar(CStr(Me.Fgrid1.TextMatrix)))) <> vbNullString) Then
  loc_14227B3:       Set var_C0 = Me.Txt
  loc_14227B9:       Call 0.Method_Proc_22_79_1422DF00 (CInt(&H1C), var_11C, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_14227EF:       If (Ucase(Trim(CVar(var_11C))) = "DISCOUNT AMT") Then
  loc_1422803:         Call 0.Method_Proc_22_79_1422DF00 (CInt(0), var_11C, Me.Txt)
  loc_142281B:         var_BC = CVar(CLng(var_8C)) 'Long
  loc_1422823:         var_108 = CVar(CLng(2)) 'Long
  loc_142284C:         var_1DC = CVar(CLng(var_8C)) 'Long
  loc_1422854:         var_1FC = CVar(CLng(3)) 'Long
  loc_1422876:         var_324 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_142287C:         var_274 = 0
  loc_14228A0:         var_14C = CVar("Select Max(Discount) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  and Code='") 'String
  loc_14228CA:         var_23C = var_14C & Trim(CVar(var_11C)) & "' AND RoomCat='" & Trim(CVar(CStr(Me.Fgrid1.TextMatrix)))) & "' AND Adult=" & CVar(var_324) 
  loc_14228D8:         unk_547255.Execute CStr(var_23C), var_260, -1
  loc_14228E0:         var_188 = var_188.Fields
  loc_14228E8:         var_274 = var_264.Item(var_264)
  loc_14228F1:         var_2C8 = CVar(CLng(var_8C)) 'Long
  loc_14228F9:         var_2E8 = CVar(CLng(4)) 'Long
  loc_1422926:         var_308 = CVar(CStr(Format(CVar(var_278), "0.00"))) 'String
  loc_142292E:         Set var_31C = Me.Fgrid1
  loc_1422934:         LateIdCallSt
  loc_142297C:       Else
  loc_1422987:         Set var_C0 = Me.Txt
  loc_142298D:         Call 0.Method_Proc_22_79_1422DF00 (CInt(&H1C), var_11C, var_31C, var_308, 1, 1, var_2E8)
  loc_14229C3:         If (Ucase(Trim(CVar(var_11C))) = "DISCOUNT %") Then
  loc_14229D1:           Set var_C0 = Me.Txt
  loc_14229D7:           Call 0.Method_Proc_22_79_1422DF00 (CInt(0), var_11C, var_2C8, var_278, var_324)
  loc_14229EF:           var_BC = CVar(CLng(var_8C)) 'Long
  loc_14229F7:           var_108 = CVar(CLng(2)) 'Long
  loc_1422A20:           var_1DC = CVar(CLng(var_8C)) 'Long
  loc_1422A28:           var_1FC = CVar(CLng(3)) 'Long
  loc_1422A50:           var_274 = 0
  loc_1422A74:           var_14C = CVar("Select Max(Discount) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO')  and Code='") 'String
  loc_1422A9E:           var_23C = var_14C & Trim(CVar(var_11C)) & "' AND RoomCat='" & Trim(CVar(CStr(Me.Fgrid1.TextMatrix)))) & "' AND Adult=" & CVar(Val(CStr(Me.Fgrid1.TextMatrix)))) 
  loc_1422AAC:           unk_547255.Execute CStr(var_23C), var_260, -1
  loc_1422AB4:           var_188 = var_188.Fields
  loc_1422ABC:           var_274 = var_264.Item(var_264)
  loc_1422AC5:           var_2C8 = CVar(CLng(var_8C)) 'Long
  loc_1422ACD:           var_2E8 = CVar(CLng(4)) 'Long
  loc_1422AFA:           var_308 = CVar(CStr(Format(CVar(var_278), "0.00"))) 'String
  loc_1422B02:           Set var_31C = Me.Fgrid1
  loc_1422B08:           LateIdCallSt
  loc_1422B50:         Else
  loc_1422B5B:           Set var_C0 = Me.Txt
  loc_1422B61:           Call 0.Method_Proc_22_79_1422DF00 (CInt(0), var_11C, var_31C, var_308, 1, 1, var_2E8)
  loc_1422B79:           var_BC = CVar(CLng(var_8C)) 'Long
  loc_1422B81:           var_108 = CVar(CLng(2)) 'Long
  loc_1422BAA:           var_1DC = CVar(CLng(var_8C)) 'Long
  loc_1422BB2:           var_1FC = CVar(CLng(3)) 'Long
  loc_1422BDA:           var_274 = 0
  loc_1422BF7:           var_D4 = "Select Max(Discount) FROM RoomDiscount WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_1422C14:           var_1BC = CVar(var_D4 & "' or LOGSITE_CODE='HO')  and Code='") & Trim(CVar(var_11C)) & "' AND RoomCat='" & Trim(CVar(CStr(Me.Fgrid1.TextMatrix)))) 
  loc_1422C36:           unk_547255.Execute CStr(var_1BC & "' AND Adult=" & CVar(Val(CStr(Me.Fgrid1.TextMatrix))))), var_260, -1
  loc_1422C3E:           var_188 = var_188.Fields
  loc_1422C46:           var_274 = var_264.Item(var_264)
  loc_1422C4F:           var_2C8 = CVar(CLng(var_8C)) 'Long
  loc_1422C57:           var_2E8 = CVar(CLng(4)) 'Long
  loc_1422C84:           var_308 = CVar(CStr(Format(CVar(var_278), "0"))) 'String
  loc_1422C8C:           Set var_31C = Me.Fgrid1
  loc_1422C92:           LateIdCallSt
  loc_1422CD7:         End If
  loc_1422CD7:       End If
  loc_1422CDA:     Else
  loc_1422CDE:       var_AC = CVar(CLng(var_8C)) 'Long
  loc_1422CE6:       var_F8 = CVar(CLng(4)) 'Long
  loc_1422CEB:       var_118 = "0"
  loc_1422CF5:       Set var_C0 = Me.Fgrid1
  loc_1422CFB:       LateIdCallSt
  loc_1422D06:     End If
  loc_1422D09:   Next var_1AC 'Integer
  loc_1422D11: Else
  loc_1422D36:   For var_328 = 1 To CInt((CLng(Me.Fgrid1.Rows) - 2)):   var_8C = var_328 'Integer
  loc_1422D40:     var_AC = CVar(CLng(var_8C)) 'Long
  loc_1422D48:     var_F8 = CVar(CLng(4)) 'Long
  loc_1422D4D:     var_118 = "0"
  loc_1422D57:     Set var_C0 = Me.Fgrid1
  loc_1422D5D:     LateIdCallSt
  loc_1422D6B:   Next var_328 'Integer
  loc_1422D7F:   Me.Fgrid1.Visible = False
  loc_1422D87: End If
  loc_1422D87: var_AC = 0
  loc_1422D93: var_F8 = CVar(CLng(4)) 'Long
  loc_1422DA6: Set var_C0 = Me.Txt
  loc_1422DAC: Call 0.Method_Proc_22_79_1422DF00 (CInt(&H1C), var_11C, var_D4)
  loc_1422DB4: var_F8 = var_11C.Text
  loc_1422DBC: var_D0 = CVar(var_D4) 'String
  loc_1422DC4: Set var_180 = Me.Fgrid1
  loc_1422DCA: LateIdCallSt
  loc_1422DE3: Set var_88 = Nothing
  loc_1422DE6: Exit Sub
  loc_1422DE7: ' Referenced from: 14223AC
  loc_1422DE7: Proc_6_60_E63754(var_180, var_D0)
  loc_1422DEC: Exit Sub
End Sub

Public Sub Proc_22_80_10141B4
  'Data Table: 54721C
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_1013FA6: Set var_8C = Me.Txt
  loc_1013FAC: Call 0.Method_Proc_22_80_10141B4C (var_8E, var_86)
  loc_1013FBC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_1013FD2:   Set var_8C = Me.Txt
  loc_1013FD8:   Call 0.Method_Proc_22_80_10141B40 (CInt(var_86), var_98)
  loc_1013FE0:   var_98.Text = vbNullString
  loc_1013FFC:   Set var_8C = Me.Txt
  loc_1014002:   Call 0.Method_Proc_22_80_10141B40 (CInt(var_86), var_98)
  loc_101400A:   var_98.Tag = vbNullString
  loc_1014019: Next var_92 'Byte
  loc_101402C: Me.LblNature.Caption = vbNullString
  loc_1014041: Me.LblOpBalType.Caption = vbNullString
  loc_1014056: Me.LblCurBalType.Caption = vbNullString
  loc_101406B: Me.txtCurrBal.Text = vbNullString
  loc_1014086: Me.FGrid.Rows = 1
  loc_10140A3: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_10140AB: Set var_98 = Me.FGrid
  loc_10140DA: Me.FGrid.FixedRows = 1
  loc_1014104: Proc_183_1_F5BEA0(Me, CStr(-2147483643), CStr(&HC00000))
  loc_1014122: Me.txtCurrBal.BackColor = -2147483643
  loc_1014139: Me.txtCurrBal.ForeColor = &HC00000
  loc_1014154: Me.Fgrid1.Rows = 1
  loc_1014171: var_D8 = CVar(CStr(CLng(Me.Fgrid1.Rows))) 'String
  loc_1014179: Set var_98 = Me.Fgrid1
  loc_10141A8: Me.Fgrid1.FixedRows = 1
  loc_10141B0: Exit Sub
End Sub

Public Sub Proc_22_81_F6CE40
  'Data Table: 54721C
  loc_F6CD18: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F6CD2A:   Me.DGAcName.Visible = False
  loc_F6CD32: End If
  loc_F6CD4E: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_F6CD60:   Me.DGUnderAc.Visible = False
  loc_F6CD68: End If
  loc_F6CD84: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F6CD96:   Me.DGCity.Visible = False
  loc_F6CD9E: End If
  loc_F6CDB9: If (Me.FrmList.Visible = &HFF) Then
  loc_F6CDC8:   Me.FrmList.Visible = False
  loc_F6CDD0: End If
  loc_F6CDEC: If (CBool(Me.DgUser.Visible) = &HFF) Then
  loc_F6CDFE:   Me.DgUser.Visible = False
  loc_F6CE06: End If
  loc_F6CE22: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F6CE34:   Me.FGPoint.Visible = False
  loc_F6CE3C: End If
  loc_F6CE3C: Exit Sub
End Sub

Public Sub Proc_22_82_100A5C4
  'Data Table: 54721C
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_CC As MSHFlexGrid
  Dim var_E0 As String
  loc_100A3BF: Me.FGridIncl.Row = 0
  loc_100A3DA: Me.FGridIncl.Col = 0
  loc_100A3E2: var_94 = 0
  loc_100A3F1: var_B8 = CVar(CInt(3)) 'Integer
  loc_100A3F9: Set var_A8 = Me.FGridIncl
  loc_100A3FF: LateIdCallSt
  loc_100A41D: Me.FGridIncl.Row = 1
  loc_100A429: Set var_CC = Me.FGridIncl
  loc_100A439: global_188 = CStr(&HE0E0E0)
  loc_100A44C: var_CC.Cols = 3
  loc_100A451: var_94 = 0
  loc_100A45D: var_B8 = CVar(CLng(0)) 'Long
  loc_100A462: var_E0 = "Code"
  loc_100A46B: LateIdCallSt
  loc_100A476: var_94 = CVar(CLng(0)) 'Long
  loc_100A47B: var_B8 = 0
  loc_100A487: LateIdCallSt
  loc_100A48F: var_94 = 0
  loc_100A49B: var_B8 = CVar(CLng(1)) 'Long
  loc_100A4A0: var_E0 = vbNullString
  loc_100A4A9: LateIdCallSt
  loc_100A4B4: var_94 = CVar(CLng(1)) 'Long
  loc_100A4B9: var_B8 = &H1F4
  loc_100A4C5: LateIdCallSt
  loc_100A4CD: var_94 = 0
  loc_100A4D9: var_B8 = CVar(CLng(2)) 'Long
  loc_100A4DE: var_E0 = "Inclusive(s)"
  loc_100A4E7: LateIdCallSt
  loc_100A4F2: var_94 = CVar(CLng(2)) 'Long
  loc_100A4FD: var_B8 = CVar(CInt(1)) 'Integer
  loc_100A504: LateIdCallSt
  loc_100A50F: var_94 = CVar(CLng(2)) 'Long
  loc_100A51A: var_B8 = CVar(CInt(1)) 'Integer
  loc_100A521: LateIdCallSt
  loc_100A52C: var_94 = CVar(CLng(2)) 'Long
  loc_100A531: var_B8 = &HAF0
  loc_100A53D: LateIdCallSt
  loc_100A551: var_CC.Rows = 4
  loc_100A556: var_94 = 1
  loc_100A562: var_B8 = CVar(CLng(2)) 'Long
  loc_100A567: var_E0 = "Breakfast"
  loc_100A570: LateIdCallSt
  loc_100A578: var_94 = 2
  loc_100A584: var_B8 = CVar(CLng(2)) 'Long
  loc_100A589: var_E0 = "Extra Bed"
  loc_100A592: LateIdCallSt
  loc_100A59A: var_94 = 3
  loc_100A5A6: var_B8 = CVar(CLng(2)) 'Long
  loc_100A5AB: var_E0 = "Wi-Fi"
  loc_100A5B4: LateIdCallSt
  loc_100A5BE: Set var_CC = Nothing 
  loc_100A5C2: Exit Sub
End Sub

Public Sub Proc_22_83_104BBB4
  'Data Table: 54721C
  Dim unk_547257 As Connection15
  Dim var_9C As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_D4 As Variant
  Dim var_F4 As String
  Dim var_AC As Variant
  Dim var_128 As Variant
  loc_104B96A: unk_547257.Execute "Select * from PlanMast where Plan_Package='Plan'", var_AC, -1
  loc_104B975: Set var_88 = var_B0
  loc_104B982: Set var_B4 = Me.Fgrid1
  loc_104B98C: var_B4.Visible = True
  loc_104B99D: var_B4.Cols = 5
  loc_104B9AE: var_B4.RowHeightMin = &HEB
  loc_104B9B3: var_9C = 0
  loc_104B9BF: var_D4 = CVar(CLng(0)) 'Long
  loc_104B9C4: var_F4 = "SNo"
  loc_104B9CD: LateIdCallSt
  loc_104B9D8: var_9C = CVar(CLng(0)) 'Long
  loc_104B9E3: var_D4 = CVar(CInt(1)) 'Integer
  loc_104B9EA: LateIdCallSt
  loc_104B9F5: var_9C = CVar(CLng(0)) 'Long
  loc_104B9FA: var_D4 = 5
  loc_104BA06: LateIdCallSt
  loc_104BA0E: var_9C = 0
  loc_104BA1A: var_D4 = CVar(CLng(1)) 'Long
  loc_104BA1F: var_F4 = "Room Category"
  loc_104BA28: LateIdCallSt
  loc_104BA33: var_9C = CVar(CLng(1)) 'Long
  loc_104BA3E: var_D4 = CVar(CInt(1)) 'Integer
  loc_104BA45: LateIdCallSt
  loc_104BA50: var_9C = CVar(CLng(1)) 'Long
  loc_104BA55: var_D4 = &H834
  loc_104BA61: LateIdCallSt
  loc_104BA69: var_9C = 0
  loc_104BA75: var_D4 = CVar(CLng(2)) 'Long
  loc_104BA7A: var_F4 = "Code"
  loc_104BA83: LateIdCallSt
  loc_104BA8E: var_9C = CVar(CLng(2)) 'Long
  loc_104BA99: var_D4 = CVar(CInt(7)) 'Integer
  loc_104BAA0: LateIdCallSt
  loc_104BAAB: var_9C = CVar(CLng(2)) 'Long
  loc_104BAB0: var_D4 = 0
  loc_104BABC: LateIdCallSt
  loc_104BAC4: var_9C = 0
  loc_104BAD0: var_D4 = CVar(CLng(3)) 'Long
  loc_104BAD5: var_F4 = "Rate"
  loc_104BADE: LateIdCallSt
  loc_104BAE9: var_9C = CVar(CLng(3)) 'Long
  loc_104BAF4: var_D4 = CVar(CInt(7)) 'Integer
  loc_104BAFB: LateIdCallSt
  loc_104BB06: var_9C = CVar(CLng(3)) 'Long
  loc_104BB0B: var_D4 = &H226
  loc_104BB17: LateIdCallSt
  loc_104BB22: var_9C = CVar(CLng(4)) 'Long
  loc_104BB2D: var_D4 = CVar(CInt(7)) 'Integer
  loc_104BB34: LateIdCallSt
  loc_104BB3F: var_9C = CVar(CLng(4)) 'Long
  loc_104BB44: var_D4 = &H44C
  loc_104BB50: LateIdCallSt
  loc_104BB74: Set var_B0 = Me.Txt
  loc_104BB7A: Call 0.Method_Proc_22_83_104BBB40 (CInt(&H1C), var_108, CVar(CLng(4)), 0, var_B4, CVar(CLng(4)), 0)
  loc_104BB92: var_128 = CVar(CStr(Trim(CVar(var_108)))) 'String
  loc_104BB99: LateIdCallSt
  loc_104BBAF: Set var_B4 = Nothing 
  loc_104BBB3: Exit Sub
End Sub

Public Sub Proc_22_84_10C19A4
  'Data Table: 54721C
  Dim var_90 As String
  Dim unk_547257 As Connection15
  Dim var_A4 As Variant
  Dim var_B8 As MSHFlexGrid
  Dim var_D0 As MSHFlexGrid
  Dim var_E0 As Variant
  Dim var_100 As String
  loc_10C16CC: var_90 = "Select PlanMast.*,ROOMCAT.NAME AS ROOMCATNAME from PlanMast INNER JOIN ROOMCAT ON PLANMAST.ROOMCAT=ROOMCAT.CODE where Plan_Package='Plan' and (planmast.LOGSITE_CODE='" & MemVar_1F95078
  loc_10C16DC: unk_547257.Execute var_90 & "' or planmast.LOGSITE_CODE='HO') ORDER BY planmast.NAME", var_B4, -1
  loc_10C170B: If (var_B8.RecordCount > 0) Then
  loc_10C171C:   Me.FgridPlan.Visible = True
  loc_10C1727: Else
  loc_10C1736:   Me.FgridPlan.Visible = False
  loc_10C173E: End If
  loc_10C1742: Set var_D0 = Me.FgridPlan
  loc_10C1751: var_D0.Cols = 6
  loc_10C1756: var_A4 = 0
  loc_10C175F: var_E0 = 0
  loc_10C1768: var_100 = "SNo"
  loc_10C1771: LateIdCallSt
  loc_10C1779: var_A4 = 0
  loc_10C1788: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C178F: LateIdCallSt
  loc_10C1797: var_A4 = 0
  loc_10C17A0: var_E0 = 5
  loc_10C17AC: LateIdCallSt
  loc_10C17B4: var_A4 = 0
  loc_10C17BD: var_E0 = 1
  loc_10C17C6: var_100 = "Room Category"
  loc_10C17CF: LateIdCallSt
  loc_10C17D7: var_A4 = 1
  loc_10C17E6: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C17ED: LateIdCallSt
  loc_10C17F5: var_A4 = 1
  loc_10C17FE: var_E0 = &H5DC
  loc_10C180A: LateIdCallSt
  loc_10C1812: var_A4 = 0
  loc_10C181B: var_E0 = 2
  loc_10C1824: var_100 = "Code"
  loc_10C182D: LateIdCallSt
  loc_10C1835: var_A4 = 2
  loc_10C1844: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C184B: LateIdCallSt
  loc_10C1853: var_A4 = 2
  loc_10C185C: var_E0 = 0
  loc_10C1868: LateIdCallSt
  loc_10C1870: var_A4 = 0
  loc_10C1879: var_E0 = 3
  loc_10C1882: var_100 = "PlanCode"
  loc_10C188B: LateIdCallSt
  loc_10C1893: var_A4 = 3
  loc_10C18A2: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C18A9: LateIdCallSt
  loc_10C18B1: var_A4 = 3
  loc_10C18BA: var_E0 = 0
  loc_10C18C6: LateIdCallSt
  loc_10C18CE: var_A4 = 0
  loc_10C18D7: var_E0 = 4
  loc_10C18E0: var_100 = "Plan Name"
  loc_10C18E9: LateIdCallSt
  loc_10C18F1: var_A4 = 4
  loc_10C1900: var_E0 = CVar(CInt(1)) 'Integer
  loc_10C1907: LateIdCallSt
  loc_10C190F: var_A4 = 4
  loc_10C1918: var_E0 = &H5DC
  loc_10C1924: LateIdCallSt
  loc_10C192C: var_A4 = 0
  loc_10C1935: var_E0 = 5
  loc_10C193E: var_100 = "Plan Amt"
  loc_10C1947: LateIdCallSt
  loc_10C194F: var_A4 = 5
  loc_10C195E: var_E0 = CVar(CInt(7)) 'Integer
  loc_10C1965: LateIdCallSt
  loc_10C196D: var_A4 = 5
  loc_10C1976: var_E0 = &H3B6
  loc_10C1982: LateIdCallSt
  loc_10C1996: var_D0.FixedCols = 5
  loc_10C199D: Set var_D0 = Nothing 
  loc_10C19A1: Exit Sub
End Sub

Public Sub Proc_22_85_102FE70
  'Data Table: 54721C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_102FC20: Set var_88 = Me.FGrid
  loc_102FC2F: var_88.RowHeightMin = &HDC
  loc_102FC40: var_88.Cols = 6
  loc_102FC45: var_98 = 0
  loc_102FC51: var_B8 = CVar(CLng(0)) 'Long
  loc_102FC56: var_D8 = "S.No"
  loc_102FC5F: LateIdCallSt
  loc_102FC6A: var_98 = CVar(CLng(0)) 'Long
  loc_102FC75: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FC7C: LateIdCallSt
  loc_102FC87: var_98 = CVar(CLng(0)) 'Long
  loc_102FC8C: var_B8 = &H226
  loc_102FC98: LateIdCallSt
  loc_102FCA0: var_98 = 0
  loc_102FCAC: var_B8 = CVar(CLng(5)) 'Long
  loc_102FCB1: var_D8 = "Voucher No"
  loc_102FCBA: LateIdCallSt
  loc_102FCC5: var_98 = CVar(CLng(5)) 'Long
  loc_102FCD0: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FCD7: LateIdCallSt
  loc_102FCE2: var_98 = CVar(CLng(5)) 'Long
  loc_102FCE7: var_B8 = 0
  loc_102FCF3: LateIdCallSt
  loc_102FCFB: var_98 = 0
  loc_102FD07: var_B8 = CVar(CLng(1)) 'Long
  loc_102FD0C: var_D8 = "Ref. Date"
  loc_102FD15: LateIdCallSt
  loc_102FD20: var_98 = CVar(CLng(1)) 'Long
  loc_102FD2B: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FD32: LateIdCallSt
  loc_102FD3D: var_98 = CVar(CLng(1)) 'Long
  loc_102FD42: var_B8 = &H47E
  loc_102FD4E: LateIdCallSt
  loc_102FD56: var_98 = 0
  loc_102FD62: var_B8 = CVar(CLng(2)) 'Long
  loc_102FD67: var_D8 = "Narration"
  loc_102FD70: LateIdCallSt
  loc_102FD7B: var_98 = CVar(CLng(2)) 'Long
  loc_102FD86: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FD8D: LateIdCallSt
  loc_102FD98: var_98 = CVar(CLng(2)) 'Long
  loc_102FD9D: var_B8 = &H7D0
  loc_102FDA9: LateIdCallSt
  loc_102FDB1: var_98 = 0
  loc_102FDBD: var_B8 = CVar(CLng(3)) 'Long
  loc_102FDC2: var_D8 = "Amount"
  loc_102FDCB: LateIdCallSt
  loc_102FDD6: var_98 = CVar(CLng(3)) 'Long
  loc_102FDE1: var_B8 = CVar(CInt(7)) 'Integer
  loc_102FDE8: LateIdCallSt
  loc_102FDF3: var_98 = CVar(CLng(3)) 'Long
  loc_102FDF8: var_B8 = &H4B0
  loc_102FE04: LateIdCallSt
  loc_102FE0C: var_98 = 0
  loc_102FE18: var_B8 = CVar(CLng(4)) 'Long
  loc_102FE1D: var_D8 = "Cr/Dr"
  loc_102FE26: LateIdCallSt
  loc_102FE31: var_98 = CVar(CLng(4)) 'Long
  loc_102FE3C: var_B8 = CVar(CInt(1)) 'Integer
  loc_102FE43: LateIdCallSt
  loc_102FE4E: var_98 = CVar(CLng(4)) 'Long
  loc_102FE53: var_B8 = &H258
  loc_102FE5F: LateIdCallSt
  loc_102FE69: Set var_88 = Nothing 
  loc_102FE6D: Exit Sub
End Sub

Public Sub Proc_22_86_1128D58
  'Data Table: 54721C
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
  loc_11289F7: var_90 = CDbl(0)
  loc_11289FD: var_98 = CDbl(0)
  loc_1128A03: var_A0 = CDbl(0)
  loc_1128A2B: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_1128A35:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_1128A3D:   var_E8 = CVar(CLng(4)) 'Long
  loc_1128A68:   If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_1128A6F:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1128A77:     var_E8 = CVar(CLng(3)) 'Long
  loc_1128AA3:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1128AB2:   Else
  loc_1128AB6:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1128ABE:     var_E8 = CVar(CLng(4)) 'Long
  loc_1128AE9:     If (CStr(Me.FGrid.TextMatrix)) = "Dr") Then
  loc_1128AF0:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_1128AF8:       var_E8 = CVar(CLng(3)) 'Long
  loc_1128B24:       var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1128B30:     End If
  loc_1128B30:   End If
  loc_1128B33: Next var_B8 'Integer
  loc_1128B54: var_B4 = CVar((var_98 - var_90)) 'Double
  loc_1128B64: var_A0 = CSng(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_1128B98: var_FC = CStr(Format(CVar(Abs(var_A0)), "0.00"))
  loc_1128BA7: Set var_A4 = Me.Txt
  loc_1128BAD: Call 0.Method_Proc_22_86_1128D580 (CInt(&H1D), var_128, var_FC, 1)
  loc_1128BB5: var_128.Text = 1
  loc_1128BD4: If (var_A0 < CDbl(0)) Then
  loc_1128BE4:   Me.LblOpBalType.Caption = "Cr"
  loc_1128BEF: Else
  loc_1128BFC:   Me.LblOpBalType.Caption = "Dr"
  loc_1128C04: End If
  loc_1128C12: Set var_A4 = Me.Txt
  loc_1128C18: Call 0.Method_Proc_22_86_1128D580 (CInt(&H1E), var_128, var_FC)
  loc_1128C20: var_A0 = var_128.Tag
  loc_1128C4D: var_B4 = CVar(Abs((Val(var_FC) + var_A0))) 'Double
  loc_1128C6B: Set var_12C = Me.Txt
  loc_1128C71: Call 0.Method_Proc_22_86_1128D580 (CInt(&H1E), var_130, CStr(Format(CVar(Abs(var_A0)), "0.00")), 1)
  loc_1128C79: var_130.Text = 1
  loc_1128CA7: Set var_A4 = Me.Txt
  loc_1128CAD: Call 0.Method_Proc_22_86_1128D580 (CInt(0), var_128, var_FC)
  loc_1128CB5: var_104 = var_128.Text
  loc_1128CD3: Me.txtCurrBal.Text = Proc_183_42_107DF48(var_FC, 1)
  loc_1128CF6: Set var_A4 = Me.Txt
  loc_1128CFC: Call 0.Method_Proc_22_86_1128D580 (CInt(&H1E), var_128)
  loc_1128D24: If (CDbl((Val(var_128.Tag) + var_A0)) < CDbl(0)) Then
  loc_1128D34:   Me.LblCurBalType.Caption = "Cr"
  loc_1128D3F: Else
  loc_1128D4C:   Me.LblCurBalType.Caption = "Dr"
  loc_1128D54: End If
  loc_1128D54: Exit Sub
  loc_1128D56: var_5B01 = ( Mod 1)
End Sub

Public Sub Proc_22_87_10BDCC8(arg_C) '10BDCC8
  'Data Table: 54721C
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
  loc_10BDA42: On Error Goto loc_10BDC9B
  loc_10BDA48: var_90 = "F_AO"
  loc_10BDA4F: Set var_8C = New 
  loc_10BDA5A: Me.Recordset15.CursorLocation = 3
  loc_10BDA62: var_D0 = arg_C
  loc_10BDA6A: Proc_183_7_EB17D4(var_E0)
  loc_10BDA8D: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F95070
  loc_10BDABE: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F95070 & "' AND VP.LOGSITE_CODE='"
  loc_10BDAE9: var_120 = CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BDAF1: var_8C.Open var_120, CVar(MemVar_1F951E0), 2
  loc_10BDB2E: If (var_8C.RecordCount > 0) Then
  loc_10BDB60:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BDB69:   global_64 = CLng(CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BDBA5:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BDBC2:   var_98 = Proc_183_15_EAD490(MemVar_1F95070, 2, MemVar_1F9506C, global_64)
  loc_10BDBCC:   var_D0 = var_90
  loc_10BDBDC:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BDBED:   var_120 = Space((5 - Len(var_90)))
  loc_10BDBF5:   var_150 = (CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BDC06:   var_160 = Space((5 - Len(var_94)))
  loc_10BDC0E:   var_170 = (var_150 + var_160)
  loc_10BDC18:   var_180 = (var_170 + CVar(var_94))
  loc_10BDC31:   var_190 = Space((8 - Len(CStr(global_64))))
  loc_10BDC39:   var_1A0 = (var_180 + var_190)
  loc_10BDC48:   var_1C0 = (var_1A0 + CVar(CStr(global_64)))
  loc_10BDC81:   var_88 = CStr(var_1C0)
  loc_10BDC87: Else
  loc_10BDC8A:   var_88 = vbNullString
  loc_10BDC8D: End If
  loc_10BDC92: Set var_8C = Nothing
  loc_10BDC95: Proc_22_87_10BDCC8 = -1
  loc_10BDC9B: ' Referenced from: 10BDA42
  loc_10BDCA1: Call 0.Method_arg_50 (var_98)
  loc_10BDCB6: Proc_183_57_104B0BC(var_98, "VoucherNo")
  loc_10BDCC2: Proc_22_87_10BDCC8 = var_D0
End Sub

Public Sub Proc_22_88_EDE128(arg_C) 'EDE128
  'Data Table: 54721C
  Dim var_94 As TextBox
  loc_EDE071: If (CInt(arg_C) = 1) Then
  loc_EDE07F:   For var_8A = CByte(6) To CByte(&H17): var_86 = var_8A 'Byte
  loc_EDE094:     Set var_90 = Me.Txt
  loc_EDE09A:     Call 0.Method_Proc_22_88_EDE1280 (CInt(var_86), var_94)
  loc_EDE0A2:     var_94.Enabled = True
  loc_EDE0B1:   Next var_8A 'Byte
  loc_EDE0BA: Else
  loc_EDE0C5:   For var_98 = CByte(6) To CByte(&H17):   var_86 = var_98 'Byte
  loc_EDE0DA:     Set var_90 = Me.Txt
  loc_EDE0E0:     Call 0.Method_Proc_22_88_EDE1280 (CInt(var_86), var_94)
  loc_EDE0E8:     var_94.Enabled = False
  loc_EDE104:     Set var_90 = Me.Txt
  loc_EDE10A:     Call 0.Method_Proc_22_88_EDE1280 (CInt(var_86), var_94)
  loc_EDE112:     var_94.Text = vbNullString
  loc_EDE121:   Next var_98 'Byte
  loc_EDE127: End If
  loc_EDE127: Exit Sub
End Sub

Public Sub Proc_22_89_114E628(arg_C) '114E628
  'Data Table: 54721C
  Dim var_8C As Integer
  Dim var_90 As MSHFlexGrid
  Dim var_B4 As Long
  Dim var_D4 As Variant
  Dim var_124 As Variant
  Dim var_138 As TextBox
  Dim var_164 As Variant
  Dim var_8A As Integer
  Dim var_182 As Integer
  loc_114E29B: var_8C = arg_C
  loc_114E2A4: If (var_8C = 1) Then
  loc_114E2CA:   If (CLng(Me.Fgrid1.Col) = CLng(4)) Then
  loc_114E2CD:     var_B4 = 0
  loc_114E322:     If (Ucase(Trim(CVar(CStr(Me.Fgrid1.TextMatrix))))) = "AMOUNT") Then
  loc_114E331:       Set var_90 = Me.TxtGrid1
  loc_114E337:       Call 0.Method_Proc_22_89_114E6280 (1, var_138, var_13C, CVar(CLng(4)))
  loc_114E33F:       var_B4 = var_138.Text
  loc_114E362:       var_D4 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_114E37A:       var_124 = CVar(CLng(Me.Fgrid1.Col)) 'Long
  loc_114E3A7:       var_164 = CVar(CStr(Format(CVar(Val(var_13C)), "0.00"))) 'String
  loc_114E3AF:       Set var_178 = Me.Fgrid1
  loc_114E3B5:       LateIdCallSt
  loc_114E3DF:     Else
  loc_114E3EB:       Set var_90 = Me.TxtGrid1
  loc_114E3F1:       Call 0.Method_Proc_22_89_114E6280 (1, var_138, var_13C, var_178, var_164, 1)
  loc_114E3F9:       1 = var_138.Text
  loc_114E41C:       var_D4 = CVar(CLng(Me.Fgrid1.Row)) 'Long
  loc_114E434:       var_124 = CVar(CLng(Me.Fgrid1.Col)) 'Long
  loc_114E461:       var_164 = CVar(CStr(Format(CVar(Val(var_13C)), "0.00"))) 'String
  loc_114E469:       Set var_178 = Me.Fgrid1
  loc_114E46F:       LateIdCallSt
  loc_114E496:     End If
  loc_114E496:   End If
  loc_114E4AE:   Set var_90 = Me.TxtGrid1
  loc_114E4B4:   Call 0.Method_Proc_22_89_114E6280 (1, var_138, 0, &HFF, &HFF, var_178, var_164)
  loc_114E4BC:   var_138.Visible = True
  loc_114E4CC:   Set var_90 = Me.Fgrid1
  loc_114E4E0: Else
  loc_114E4E6:   If (var_8C = 2) Then
  loc_114E509:     var_8A = CInt(((CLng(Me.FgridPlan.Col) + 1) Mod 2))
  loc_114E515:     var_182 = var_8A
  loc_114E51E:     If (var_182 = 0) Then
  loc_114E52D:       Set var_90 = Me.TxtGrid1
  loc_114E533:       Call 0.Method_Proc_22_89_114E6280 (2, var_138, var_13C, var_182, var_8A, Fgrid1.DispID_8001)
  loc_114E53B:       1 = var_138.Text
  loc_114E55E:       var_D4 = CVar(CLng(Me.FgridPlan.Row)) 'Long
  loc_114E576:       var_124 = CVar(CLng(Me.FgridPlan.Col)) 'Long
  loc_114E5A3:       var_164 = CVar(CStr(Format(CVar(Val(var_13C)), "0.00"))) 'String
  loc_114E5AB:       Set var_178 = Me.FgridPlan
  loc_114E5B1:       LateIdCallSt
  loc_114E5D8:     End If
  loc_114E5F0:     Set var_90 = Me.TxtGrid1
  loc_114E5F6:     Call 0.Method_Proc_22_89_114E6280 (2, var_138, 0, &HFF, &HFF, var_178, var_164)
  loc_114E5FE:     var_138.Visible = True
  loc_114E60E:     Set var_90 = Me.FgridPlan
  loc_114E61F:   End If
  loc_114E61F: End If
  loc_114E61F: Proc_22_89_114E628 = FgridPlan.DispID_8001
End Sub

Public Sub Proc_22_90_11CBE18
  'Data Table: 54721C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_124 As Variant
  loc_11CB9DB: var_A0 = CLng(Me.FGrid.Col)
  loc_11CB9EB: If (var_A0 = CLng(1)) Then
  loc_11CB9F7:   Set var_8C = Me.TxtGrid
  loc_11CB9FD:   Call 0.Method_Proc_22_90_11CBE180 (0, var_A4)
  loc_11CBA15:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11CBA47:   Call 0.Method_arg_184 (var_A4, var_AC, CVar(CLng(Me.FGrid.Col)))
  loc_11CBA4F:   var_114 = CVar(var_AC) 'String
  loc_11CBA57:   Set var_128 = Me.FGrid
  loc_11CBA5D:   LateIdCallSt
  loc_11CBA7E: Else
  loc_11CBA85:   If Not (var_A0 = CLng(2)) Then
  loc_11CBA8F:     If (var_A0 = CLng(4)) Then
  loc_11CBA92:     End If
  loc_11CBACE:     Set var_8C = Me.TxtGrid
  loc_11CBAD4:     Call 0.Method_Proc_22_90_11CBE180 (0, var_A4, var_AC, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11CBADC:     var_128 = var_A4.Text
  loc_11CBAF2:     LateIdCallSt
  loc_11CBB2D:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11CBB30:       Call Proc_22_86_1128D58(Me.FGrid, CVar(var_AC), CVar(var_AC))
  loc_11CBB4E:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CBB56:       var_F4 = CVar(CLng(4)) 'Long
  loc_11CBB70:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11CBB91:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CBBDE:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11CBBF6:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11CBBFE:         Set var_A4 = Me.FGrid
  loc_11CBC1A:       End If
  loc_11CBC1A:     End If
  loc_11CBC1D:   Else
  loc_11CBC24:     If (var_A0 = CLng(3)) Then
  loc_11CBC33:       Set var_8C = Me.TxtGrid
  loc_11CBC39:       Call 0.Method_Proc_22_90_11CBE180 (0, var_A4, var_AC, FGrid.DispID_10000, var_C4, var_124)
  loc_11CBC41:       (var_AC <> vbNullString) = var_A4.Text
  loc_11CBCB7:       LateIdCallSt
  loc_11CBCDE:       Call Proc_22_86_1128D58(Me.FGrid, CVar(CStr(Format(CVar(Val(var_AC)), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11CBCFC:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CBD04:       var_F4 = CVar(CLng(4)) 'Long
  loc_11CBD1E:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11CBD3F:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CBD8C:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11CBDA4:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11CBDAC:         Set var_A4 = Me.FGrid
  loc_11CBDC8:       End If
  loc_11CBDC8:     End If
  loc_11CBDC8:   End If
  loc_11CBDC8: End If
  loc_11CBDE0: Set var_8C = Me.TxtGrid
  loc_11CBDE6: Call 0.Method_Proc_22_90_11CBE180 (0, var_A4, 0, &HFF, &HFF, FGrid.DispID_10000, var_C4)
  loc_11CBDEE: var_A4.Visible = CVar(CLng(Me.FGrid.Col))
  loc_11CBDFE: Set var_8C = Me.FGrid
  loc_11CBE0F: Proc_22_90_11CBE18 = FGrid.DispID_8001
End Sub

Public Sub Proc_22_91_1825914
  'Data Table: 54721C
  Dim var_EC As Variant
  Dim var_C8 As Variant
  Dim Me As Variant
  Dim var_B8 As Variant
  Dim var_CC As Variant
  Dim var_FC As Variant
  Dim var_10C As Variant
  Dim var_11C As Variant
  Dim var_120 As String
  Dim unk_547257 As Connection15
  Dim var_B4 As Recordset15
  Dim var_DC As Variant
  Dim var_144 As Variant
  Dim var_15C As Variant
  Dim var_14C As String
  Dim var_18C As Variant
  Dim var_1B0 As Variant
  Dim var_1FC As Label
  Dim var_148 As Variant
  Dim unk_547255 As Connection15
  Dim var_88 As Recordset15
  Dim var_200 As String
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_210 As String
  Dim var_214 As String
  Dim var_218 As String
  Dim var_B0 As Recordset15
  Dim var_8C As Recordset15
  Dim var_22E As Integer
  Dim var_140 As Variant
  Dim var_1C4 As TextBox
  Dim var_AA As Integer
  Dim var_A8 As Double
  Dim var_240 As Variant
  Dim var_330 As Variant
  loc_1823554: On Error Goto loc_18258AF
  loc_18235AD: unk_547257.Execute CStr("Select U_Name,U_AE,U_EntDt From SubGroup where SubCode='" & Me.Fields.Item("subcode").Value & "'  "), var_140, -1
  loc_18235B8: Set var_B4 = var_144
  loc_182360C: var_144 = var_B4.Fields
  loc_1823675: var_1AC = IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_144.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_18236BA: Me.LblUser.Caption = CStr(var_144 & CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_Name")), var_1AC)))
  loc_1823734: var_148 = var_B4.Fields.Item("U_AE")
  loc_182374D: var_140 = "entdt : "
  loc_1823795: var_1AC = IIf((Proc_6_38_E69628(CVar(var_B4.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_148)) = "E"), "Last Update : ", var_140))
  loc_18237B4: var_1C4 = var_B4.Fields.Item("U_EntDt")
  loc_18237DA: Me.LblLDt.Caption = CStr(var_1AC & CVar(Proc_6_38_E69628(CVar(var_1C4))))
  loc_1823829: If (Me.RecordCount > 0) Then
  loc_1823868:   Set var_144 = Me.Txt
  loc_182386E:   Call 0.Method_Proc_22_91_18259140 (CInt(0), var_148)
  loc_1823876:   var_148.Text = CStr(Me.Fields.Item("subcode").Value)
  loc_1823899:   var_EC = "Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg Where  S.SubCode='"
  loc_18238CB:   var_FC = var_EC & Me.Fields.Item("subcode").Value 
  loc_18238E2:   unk_547255.Execute CStr(var_FC & "'"), var_140, -1
  loc_18238ED:   Set var_88 = var_144
  loc_1823907:   Call Proc_22_97_10DDE5C(var_144)
  loc_182390C:   Call Proc_22_98_1011B70()
  loc_1823925:   If (var_88.RecordCount > 0) Then
  loc_1823967:     If (Me.Fields.Item("Name").Value = "Cash") Then
  loc_1823970:       global_60 = "Y"
  loc_1823977:     Else
  loc_182397D:       global_60 = "N"
  loc_1823981:     End If
  loc_182399B:     var_CC = var_88.Fields.Item("Name")
  loc_18239BA:     Set var_144 = Me.Txt
  loc_18239C0:     Call 0.Method_Proc_22_91_18259140 (CInt(1), var_148)
  loc_18239C8:     var_148.Text = CStr(var_CC.Value)
  loc_18239EC:     Set var_B8 = Me.Txt
  loc_18239F2:     Call 0.Method_Proc_22_91_18259140 (CInt(1), var_CC)
  loc_1823A05:     global_80 = var_CC.Text
  loc_1823A49:     Set var_144 = Me.Txt
  loc_1823A4F:     Call 0.Method_Proc_22_91_18259140 (CInt(2), var_148)
  loc_1823A57:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GroupName")))
  loc_1823AA4:     Set var_144 = Me.Txt
  loc_1823AAA:     Call 0.Method_Proc_22_91_18259140 (CInt(2), var_148)
  loc_1823AB2:     var_148.Tag = CStr(var_88.Fields.Item("GroupCode").Value)
  loc_1823AF9:     global_84 = CStr(var_88.Fields.Item("MainGrCode").Value)
  loc_1823B40:     Set var_144 = Me.Txt
  loc_1823B46:     Call 0.Method_Proc_22_91_18259140 (CInt(&H20), var_148)
  loc_1823B4E:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("WebPassword")))
  loc_1823B98:     Set var_144 = Me.Txt
  loc_1823B9E:     Call 0.Method_Proc_22_91_18259140 (CInt(&H21), var_148)
  loc_1823BA6:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("MapCode")))
  loc_1823BE5:     var_120 = CStr(var_88.Fields.Item("Nature").Value)
  loc_1823BF2:     Me.LblNature.Caption = var_120
  loc_1823C0C:     var_C8 = "GNature"
  loc_1823C20:     var_CC = var_88.Fields.Item(var_C8)
  loc_1823C28:     var_DC = var_CC.Value
  loc_1823C54:     var_148 = var_88.Fields.Item("GNature")
  loc_1823C86:     If CBool((var_DC = "A") Or (var_148.Value = "L")) Then
  loc_1823C90:       global_100 = CByte(1)
  loc_1823C97:     Else
  loc_1823C9E:       global_100 = CByte(0)
  loc_1823CA2:     End If
  loc_1823CB9:     If (Me.RecordCount > 0) Then
  loc_1823CC2:       Me.MoveFirst
  loc_1823CE6:       Set var_B8 = Me.Txt
  loc_1823CEC:       Call 0.Method_Proc_22_91_18259140 (CInt(2), var_CC, var_120, "Name ='", 0)
  loc_1823CF4:       1 = var_CC.Text
  loc_1823D0D:       Me.Find var_C8 & var_120 & "'", global_100, global_100
  loc_1823D22:     End If
  loc_1823D30:     Set var_B8 = Me.Txt
  loc_1823D36:     Call 0.Method_Proc_22_91_18259140 (CInt(0), var_CC)
  loc_1823D3E:     var_14C = var_CC.Text
  loc_1823D49:     var_EC = 0
  loc_1823D84:     unk_547255.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_DC, -1
  loc_1823D8C:     var_144 = var_144.Fields
  loc_1823D94:     var_EC = var_148.Item(var_148)
  loc_1823D9C:     var_1B0 = var_1B0.Value
  loc_1823DA5:     var_94 = CSng(var_FC)
  loc_1823DD7:     Set var_B8 = Me.Txt
  loc_1823DDD:     Call 0.Method_Proc_22_91_18259140 (CInt(0), var_CC, var_14C)
  loc_1823DE5:     var_94 = var_CC.Text
  loc_1823DF0:     var_EC = 0
  loc_1823E2B:     unk_547255.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_DC, -1
  loc_1823E33:     var_144 = var_144.Fields
  loc_1823E3B:     var_EC = var_148.Item(var_148)
  loc_1823E43:     var_1B0 = var_1B0.Value
  loc_1823E4C:     var_9C = CSng(var_FC)
  loc_1823E8D:     var_DC = CVar(Abs((var_9C - var_94))) 'Double
  loc_1823EAB:     Set var_B8 = Me.Txt
  loc_1823EB1:     Call 0.Method_Proc_22_91_18259140 (CInt(&H1D), var_CC, CStr(Format(var_DC, "0.00")), 1)
  loc_1823EB9:     var_CC.Text = 1
  loc_1823ED6:     var_FC = vbNullString
  loc_1823EF5:     var_11C = IIf((var_94 < var_9C), "Dr", var_FC)
  loc_1823F1E:     var_120 = CStr(IIf((var_94 > var_9C), "Cr", var_11C))
  loc_1823F2C:     Me.LblOpBalType.Caption = var_120
  loc_1823F56:     Set var_B8 = Me.Txt
  loc_1823F5C:     Call 0.Method_Proc_22_91_18259140 (CInt(0), var_CC, var_120)
  loc_1823F64:     var_9C = var_CC.Text
  loc_1823F7C:     Set var_144 = Me.txtCurrBal
  loc_1823F82:     var_144.Text = Proc_183_42_107DF48(var_120, var_FC)
  loc_1823F9F:     If (MemVar_1F95078 = "HO") Then
  loc_1823FC0:       Set var_B8 = Me.Txt
  loc_1823FC6:       Call 0.Method_Proc_22_91_18259140 (CInt(0), var_CC, var_120, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_1823FCE:       var_DC = var_CC.Text
  loc_1823FD7:       var_14C = -1 & var_120
  loc_1823FE7:       unk_547255.Execute var_14C & "'", var_144, var_FC
  loc_1823FF2:       Set var_8C = var_144
  loc_182400D:     Else
  loc_182402B:       Set var_B8 = Me.Txt
  loc_1824031:       Call 0.Method_Proc_22_91_18259140 (CInt(0), var_CC, var_120, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_1824039:       var_DC = var_CC.Text
  loc_1824042:       var_14C = -1 & var_120
  loc_1824060:       unk_547255.Execute var_14C & "' AND LOGSITE_CODE='" & MemVar_1F95078 & "'", var_144, 
  loc_182406B:       Set var_8C = var_144
  loc_1824087:     End If
  loc_1824087:     Call Proc_22_84_10C19A4()
  loc_18240B1:     For var_20C = 1 To CInt((CLng(Me.FgridPlan.Rows) - 1)): var_AA = var_20C 'Integer
  loc_18240C5:       Set var_B8 = Me.Txt
  loc_18240CB:       Call 0.Method_Proc_22_91_18259140 (CInt(0), var_CC)
  loc_18240DC:       var_C8 = CVar(CLng(var_AA)) 'Long
  loc_18240E1:       var_10C = 2
  loc_1824104:       var_15C = CVar(CLng(var_AA)) 'Long
  loc_1824109:       var_18C = 3
  loc_182411C:       var_FC = Me.FgridPlan.TextMatrix)
  loc_182414A:       var_200 = CStr(Me.FgridPlan.TextMatrix))
  loc_1824160:       var_218 = "Select * from Comp_PlanDet where CompanyCode='" & var_CC.Text & "' and RoomCat='" & var_200 & "' and PlanCode='" & CStr(var_FC)
  loc_1824170:       unk_547257.Execute var_218 & "'", var_11C, -1
  loc_182417B:       Set var_B0 = var_1B0
  loc_18241BD:       If (var_B0.RecordCount > 0) Then
  loc_18241F8:         Proc_6_39_E7D3A0(var_FC, CVar(var_B0.Fields.Item("PLANAmt")), 5, CVar(CLng(var_AA)), var_1B0, var_FC)
  loc_1824201:         var_11C = CVar(CStr(var_FC)) 'String
  loc_1824209:         Set var_144 = Me.FgridPlan
  loc_182420F:         LateIdCallSt
  loc_182422A:       Else
  loc_182422E:         var_C8 = CVar(CLng(var_AA)) 'Long
  loc_1824233:         var_10C = 5
  loc_1824240:         var_DC = CVar(CStr(0)) 'String
  loc_1824248:         Set var_B8 = Me.FgridPlan
  loc_182424E:         LateIdCallSt
  loc_182425C:       End If
  loc_182425F:     Next var_20C 'Integer
  loc_1824278:     If (var_8C.RecordCount > 0) Then
  loc_18242A3:       var_22E = IsNull(CVar(var_8C.Fields.Item("CurrBal")))
  loc_1824321:       Set var_1B0 = Me.Txt
  loc_1824327:       Call 0.Method_Proc_22_91_18259140 (CInt(&H1E), var_1C4, CStr(Format(IIf(var_22E, 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00")))
  loc_182432F:       var_1C4.Text = 1
  loc_1824398:       var_148 = var_8C.Fields.Item("CurrBal")
  loc_1824412:       Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_148.Value < 0), "Cr", vbNullString)))
  loc_18244DA:       global_96 = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", "Cr"))
  loc_182450F:       var_CC = var_8C.Fields.Item("CurrBal")
  loc_1824526:       var_EC = CVar((var_94 - var_9C)) 'Double
  loc_182452A:       var_FC = (var_CC.Value + 0)
  loc_182453D:       Set var_144 = Me.Txt
  loc_1824543:       Call 0.Method_Proc_22_91_18259140 (CInt(&H1E), var_148, CStr((var_8C.Fields.Item("CurrBal").Value > 0)))
  loc_182454B:       var_148.Tag = CSng(var_8C.Fields.Item("CurrBal").Value)
  loc_1824568:     Else
  loc_182457A:       Set var_B8 = Me.Txt
  loc_1824580:       Call 0.Method_Proc_22_91_18259140 (CInt(&H1E), var_CC, CStr(0))
  loc_1824588:       var_CC.Text = 1
  loc_18245A4:       Me.LblCurBalType.Caption = vbNullString
  loc_18245BB:       global_96 = "Cr"
  loc_18245D1:       Set var_B8 = Me.Txt
  loc_18245D7:       Call 0.Method_Proc_22_91_18259140 (CInt(&H1E), var_CC, CStr(0))
  loc_18245DF:       var_CC.Tag = CDbl(0)
  loc_18245EE:     End If
  loc_1824624:     Set var_144 = Me.Txt
  loc_182462A:     Call 0.Method_Proc_22_91_18259140 (CInt(3), var_148)
  loc_1824632:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPrefix")))
  loc_182467C:     Set var_144 = Me.Txt
  loc_1824682:     Call 0.Method_Proc_22_91_18259140 (CInt(4), var_148)
  loc_182468A:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPerson")))
  loc_18246D4:     Set var_144 = Me.Txt
  loc_18246DA:     Call 0.Method_Proc_22_91_18259140 (CInt(5), var_148)
  loc_18246E2:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_182472C:     Set var_144 = Me.Txt
  loc_1824732:     Call 0.Method_Proc_22_91_18259140 (CInt(6), var_148)
  loc_182473A:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")))
  loc_1824784:     Set var_144 = Me.Txt
  loc_182478A:     Call 0.Method_Proc_22_91_18259140 (CInt(7), var_148)
  loc_1824792:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add3")))
  loc_18247DC:     Set var_144 = Me.Txt
  loc_18247E2:     Call 0.Method_Proc_22_91_18259140 (CInt(8), var_148)
  loc_18247EA:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_1824834:     Set var_144 = Me.Txt
  loc_182483A:     Call 0.Method_Proc_22_91_18259140 (CInt(8), var_148)
  loc_1824842:     var_148.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CITYCODE")))
  loc_182488C:     Set var_144 = Me.Txt
  loc_1824892:     Call 0.Method_Proc_22_91_18259140 (CInt(9), var_148)
  loc_182489A:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin")))
  loc_18248E4:     Set var_144 = Me.Txt
  loc_18248EA:     Call 0.Method_Proc_22_91_18259140 (CInt(&HA), var_148)
  loc_18248F2:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Phone")))
  loc_182493C:     Set var_144 = Me.Txt
  loc_1824942:     Call 0.Method_Proc_22_91_18259140 (CInt(&HB), var_148)
  loc_182494A:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile")))
  loc_1824994:     Set var_144 = Me.Txt
  loc_182499A:     Call 0.Method_Proc_22_91_18259140 (CInt(&HC), var_148)
  loc_18249A2:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Fax")))
  loc_18249EC:     Set var_144 = Me.Txt
  loc_18249F2:     Call 0.Method_Proc_22_91_18259140 (CInt(&HD), var_148)
  loc_18249FA:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Email")))
  loc_1824A44:     Set var_144 = Me.Txt
  loc_1824A4A:     Call 0.Method_Proc_22_91_18259140 (CInt(&HE), var_148)
  loc_1824A52:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CstNo")))
  loc_1824A9C:     Set var_144 = Me.Txt
  loc_1824AA2:     Call 0.Method_Proc_22_91_18259140 (CInt(&HF), var_148)
  loc_1824AAA:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("LstNo")))
  loc_1824AF4:     Set var_144 = Me.Txt
  loc_1824AFA:     Call 0.Method_Proc_22_91_18259140 (CInt(&H10), var_148)
  loc_1824B02:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PanNo")))
  loc_1824B4C:     Set var_144 = Me.Txt
  loc_1824B52:     Call 0.Method_Proc_22_91_18259140 (CInt(&H22), var_148)
  loc_1824B5A:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GSTIN")))
  loc_1824BA4:     Set var_144 = Me.Txt
  loc_1824BAA:     Call 0.Method_Proc_22_91_18259140 (CInt(&H23), var_148)
  loc_1824BB2:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Legalname")))
  loc_1824BFC:     Set var_144 = Me.Txt
  loc_1824C02:     Call 0.Method_Proc_22_91_18259140 (CInt(&H24), var_148)
  loc_1824C0A:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("TradeName")))
  loc_1824C54:     Set var_144 = Me.Txt
  loc_1824C5A:     Call 0.Method_Proc_22_91_18259140 (CInt(&H11), var_148)
  loc_1824C62:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Remark")))
  loc_1824CAC:     Set var_144 = Me.Txt
  loc_1824CB2:     Call 0.Method_Proc_22_91_18259140 (CInt(&H14), var_148)
  loc_1824CBA:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CompanyType")))
  loc_1824D3D:     Set var_144 = Me.Txt
  loc_1824D43:     Call 0.Method_Proc_22_91_18259140 (CInt(&H13), var_148)
  loc_1824D4B:     var_148.Text = Proc_6_38_E69628(IIf((var_88.Fields.Item("AllowCredit").Value = "Y"), "Yes", "No"))
  loc_1824D91:     Proc_6_39_E7D3A0((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("CreditDays")))
  loc_1824DC8:     Set var_144 = Me.Txt
  loc_1824DCE:     Call 0.Method_Proc_22_91_18259140 (CInt(&H15), var_148, CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0")))
  loc_1824DD6:     var_148.Text = 1
  loc_1824E18:     Proc_6_39_E7D3A0((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("Interest")))
  loc_1824E4F:     Set var_144 = Me.Txt
  loc_1824E55:     Call 0.Method_Proc_22_91_18259140 (CInt(&H16), var_148, CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0.00")), 1)
  loc_1824E5D:     var_148.Text = 1
  loc_1824E9F:     Proc_6_39_E7D3A0((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("CreditLimit")))
  loc_1824ED6:     Set var_144 = Me.Txt
  loc_1824EDC:     Call 0.Method_Proc_22_91_18259140 (CInt(&H17), var_148, CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0.00")), 1)
  loc_1824EE4:     var_148.Text = 1
  loc_1824F6F:     Set var_144 = Me.Txt
  loc_1824F75:     Call 0.Method_Proc_22_91_18259140 (CInt(&H12), var_148)
  loc_1824F7D:     var_148.Text = Proc_6_38_E69628(IIf((var_88.Fields.Item("BlackListed").Value = "Y"), "Yes", "No"), 1)
  loc_1824FD3:     Set var_144 = Me.Txt
  loc_1824FD9:     Call 0.Method_Proc_22_91_18259140 (CInt(&H1A), var_148)
  loc_1824FE1:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ReasonBlackList")))
  loc_182502B:     Set var_144 = Me.Txt
  loc_1825031:     Call 0.Method_Proc_22_91_18259140 (CInt(&H1B), var_148)
  loc_1825039:     var_148.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("BlackListedBy")))
  loc_18250B8:     Set var_144 = Me.Txt
  loc_18250BE:     Call 0.Method_Proc_22_91_18259140 (CInt(&H1F), var_148)
  loc_18250C6:     var_148.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 0), "No", "Yes"))
  loc_182511C:     Set var_144 = Me.Txt
  loc_1825122:     Call 0.Method_Proc_22_91_18259140 (CInt(&H1C), var_148)
  loc_182512A:     var_148.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DiscountType")))
  loc_1825164:     Proc_6_39_E7D3A0((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("Discount")))
  loc_182519B:     Set var_144 = Me.Txt
  loc_18251A1:     Call 0.Method_Proc_22_91_18259140 (CInt(&H18), var_148, CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0.00")))
  loc_18251A9:     var_148.Text = 1
  loc_18251DC:     var_CC = var_88.Fields.Item("Commission")
  loc_18251EB:     Proc_6_39_E7D3A0((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_CC))
  loc_1825213:     var_120 = CStr(Format((var_8C.Fields.Item("CurrBal").Value > 0), "0.00"))
  loc_1825222:     Set var_144 = Me.Txt
  loc_1825228:     Call 0.Method_Proc_22_91_18259140 (CInt(&H19), var_148, var_120, 1)
  loc_1825230:     var_148.Text = 1
  loc_182525F:     Me.Fgrid1.Rows = 2
  loc_1825269:     var_AA = 1
  loc_182527A:     Set var_B8 = Me.Txt
  loc_1825280:     Call 0.Method_Proc_22_91_18259140 (CInt(&H14), var_CC, var_120)
  loc_1825288:     var_AA = var_CC.Text
  loc_182529F:     If (var_120 = "Travel Agency") Then
  loc_18252AD:       Set var_B8 = Me.Lbl
  loc_18252B3:       Call 0.Method_Proc_22_91_18259140 (&H1C, var_CC, &HFF)
  loc_18252BB:       var_CC.Visible = True
  loc_18252D4:       Set var_B8 = Me.Txt
  loc_18252DA:       Call 0.Method_Proc_22_91_18259140 (CInt(&H19), var_CC)
  loc_18252E2:       var_CC.Visible = True
  loc_18252F1:     Else
  loc_18252FC:       Set var_B8 = Me.Lbl
  loc_1825302:       Call 0.Method_Proc_22_91_18259140 (&H1C, var_CC)
  loc_182530A:       var_CC.Visible = False
  loc_1825323:       Set var_B8 = Me.Txt
  loc_1825329:       Call 0.Method_Proc_22_91_18259140 (CInt(&H19), var_CC)
  loc_1825331:       var_CC.Visible = False
  loc_182533D:     End If
  loc_1825350:     Me.FGrid.Rows = 1
  loc_1825360:     If (MemVar_1F95078 = "HO") Then
  loc_1825377:       var_120 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_182537E:       var_14C = var_120 & "' and V_Type='"
  loc_182539D:       Set var_B8 = Me.Txt
  loc_18253A3:       Call 0.Method_Proc_22_91_18259140 (CInt(0), var_CC, var_200, var_14C & "F_AO" & "' and SubCode='")
  loc_18253AB:       var_DC = var_CC.Text
  loc_18253B4:       var_210 = -1 & var_200
  loc_18253BB:       var_214 = "Select * from Comp_PlanDet where CompanyCode='" & var_CC.Text & "' and RoomCat='" & var_200 & "' and PlanCode='" & "' Order by V_SNo"
  loc_18253C4:       unk_547255.Execute var_214, var_144, var_22E
  loc_18253CF:       Set var_88 = var_144
  loc_18253F2:     Else
  loc_1825406:       var_120 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_182541E:       Set var_B8 = Me.Txt
  loc_1825424:       Call 0.Method_Proc_22_91_18259140 (CInt(0), var_CC, var_14C, var_120 & "' and SubCode='")
  loc_182542C:       var_DC = var_CC.Text
  loc_1825435:       var_200 = -1 & var_14C
  loc_1825453:       unk_547255.Execute var_200 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_144, 
  loc_182545E:       Set var_88 = var_144
  loc_182547E:     End If
  loc_1825484:     var_208 = var_88.RecordCount
  loc_1825492:     If (var_208 > 0) Then
  loc_1825497:       var_AA = 1
  loc_18254C5:       var_120 = CStr(var_88.Fields.Item("DocID").Value)
  loc_18254CB:       global_76 = var_120
  loc_182550B:       global_64 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_182551F:       global_68 = CByte(1)
  loc_1825523:       ' Referenced from: 18257F7
  loc_1825532:       If Not(var_88.EOF) Then
  loc_1825571:         If (var_88.Fields.Item("AmtCr").Value = 0) Then
  loc_1825577:           var_A0 = "Dr"
  loc_18255A0:           Proc_183_3_E7DD58((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("AmtDr")), global_68)
  loc_18255A9:           var_A8 = CSng((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_18255B9:         Else
  loc_18255F5:           If (var_88.Fields.Item("AmtDr").Value = 0) Then
  loc_18255FB:             var_A0 = "Cr"
  loc_1825624:             Proc_183_3_E7DD58((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("AmtCr")), var_A8)
  loc_182562D:             var_A8 = CSng((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_182563A:           End If
  loc_182563A:         End If
  loc_1825661:         Proc_183_3_E7DD58(var_270, var_A8, var_A8)
  loc_182568F:         var_140 = "dd/MMM/yyyy"
  loc_1825698:         var_11C = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_18256EA:         var_240 = CVar(var_AA) & Chr(9) & CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Narration")), 1 & Format(var_11C, var_140) & Chr(9), 1)) 
  loc_1825781:         Proc_183_3_E7DD58(var_310, CVar(var_88.Fields.Item("V_NO")), 1 & Format(var_270, "0.00") & Chr(9) & CVar(var_A0) & Chr(9), 1)
  loc_182578E:         var_330 = CVar(CStr(var_240 & Chr(9) & var_310)) 'String
  loc_1825796:         Set var_1FC = Me.FGrid
  loc_18257EC:         var_AA = (var_AA + 1)
  loc_18257F2:         var_88.MoveNext
  loc_18257F7:         GoTo loc_1825523
  loc_18257FA:       End If
  loc_182580D:       Me.FGrid.FixedRows = 1
  loc_1825818:     Else
  loc_182581E:       global_76 = vbNullString
  loc_182582A:       global_64 = 0
  loc_1825834:       global_68 = CByte(0)
  loc_182584D:       var_FC = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1825855:       Set var_CC = Me.FGrid
  loc_1825884:       Me.FGrid.FixedRows = 1
  loc_182588C:     End If
  loc_182588C:     Call Proc_22_79_1422DF0(FGrid.DispID_10000, var_FC, global_68, global_64, var_AA)
  loc_1825896:     Set var_88 = Nothing
  loc_1825899:   End If
  loc_182589C: Else
  loc_182589C:   Call Proc_22_80_10141B4(FGrid.DispID_10000, var_330)
  loc_18258A1: End If
  loc_18258A1: Call Proc_22_81_F6CE40(global_64)
  loc_18258AB: Set var_88 = Nothing
  loc_18258AE: Exit Sub
  loc_18258AF: ' Referenced from: 1823554
  loc_18258B7: Set var_B8 = Err()
  loc_18258BD: Call 0.Method_arg_1C (var_208)
  loc_18258CE: If (var_208 <> 0) Then
  loc_18258D9:   Set var_B8 = Err()
  loc_18258DF:   Call 0.Method_arg_2C (var_120)
  loc_1825900:   MsgBox(CVar(var_120), &H40, "Validation", var_11C, var_140)
  loc_1825913: End If
  loc_1825913: Exit Sub
End Sub

Public Sub Proc_22_92_15A5A14(arg_C, arg_10, arg_14, arg_18, arg_1C) '15A5A14
  'Data Table: 54721C
  Dim var_98 As TextBox
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_547255 As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Fields15
  Dim var_C4 As Variant
  Dim var_4D4 As TextBox
  Dim var_9C As String
  Dim var_E8 As String
  Dim var_F4 As String
  Dim var_108 As TextBox
  Dim var_124 As String
  Dim var_11C As TextBox
  Dim var_130 As TextBox
  Dim var_144 As TextBox
  Dim var_150 As String
  Dim var_158 As TextBox
  Dim var_174 As String
  Dim var_16C As TextBox
  Dim var_180 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1C4 As String
  Dim var_1BC As TextBox
  Dim var_1D0 As TextBox
  Dim var_1E4 As TextBox
  Dim var_1F8 As TextBox
  Dim var_20C As TextBox
  Dim var_220 As TextBox
  Dim var_22C As String
  Dim var_2D4 As TextBox
  Dim var_338 As Variant
  Dim var_388 As Variant
  Dim var_3F0 As TextBox
  Dim var_434 As Variant
  Dim var_4AC As Variant
  Dim var_580 As Variant
  Dim var_5D8 As Variant
  Dim var_660 As Variant
  Dim var_670 As Variant
  Dim var_224 As String
  Dim var_5F8 As Variant
  loc_15A4A58: On Error Goto loc_15A59EC
  loc_15A4A79: Set var_94 = Me.Txt
  loc_15A4A7F: Call 0.Method_Proc_22_92_15A5A140 (CInt(2), var_98, var_9C, "SELECT * From AcGroup Where GroupCode='")
  loc_15A4A87: var_C4 = var_98.Tag
  loc_15A4A90: var_A0 = -1 & var_9C
  loc_15A4AA0: unk_547255.Execute var_A0 & "'", var_C8, 
  loc_15A4AAB: Set var_88 = var_C8
  loc_15A4AD7: If (var_88.RecordCount > 0) Then
  loc_15A4B02:   var_8C = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Nature")))
  loc_15A4B22:   var_98 = var_88.Fields.Item("GroupNature")
  loc_15A4B33:   var_90 = Proc_183_2_E5AE94(CVar(var_98))
  loc_15A4B3F: Else
  loc_15A4B42:   var_8C = "Other"
  loc_15A4B48:   var_90 = vbNullString
  loc_15A4B4B: End If
  loc_15A4B53: If (arg_C = "Add") Then
  loc_15A4B64:   Set var_4D0 = Me.Txt
  loc_15A4B6A:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H1F), var_4D4)
  loc_15A4B82:   Set var_62C = Me.Txt
  loc_15A4B88:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H13))
  loc_15A4B9B:   var_A0 = "Insert Into " & arg_10 & " (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,Phone,Mobile,Fax,EMail,CSTNo,LSTNo,PIN,PANNo,GSTIN,LegalName,TradeName,Remark,U_Name,U_EntDt,U_AE,CompanyType,LOGSITE_CODE,DiscountType,ACTIVEYN,WebPassword,MapCode,AllowCredit) Values ('"
  loc_15A4BEC:   Set var_94 = Me.Txt
  loc_15A4BF2:   Call 0.Method_Proc_22_92_15A5A140 (CInt(2), var_98)
  loc_15A4C03:   var_F4 = var_630 & Proc_183_20_FB48CC(arg_18, var_A0 & MemVar_1F95070 & "','" & arg_14 & "','" & arg_18 & "','") & "','" & var_98.Tag
  loc_15A4C37:   Set var_C8 = Me.Txt
  loc_15A4C3D:   Call 0.Method_Proc_22_92_15A5A140 (CInt(3), var_108)
  loc_15A4C66:   Set var_118 = Me.Txt
  loc_15A4C6C:   Call 0.Method_Proc_22_92_15A5A140 (CInt(4), var_11C)
  loc_15A4C95:   Set var_12C = Me.Txt
  loc_15A4C9B:   Call 0.Method_Proc_22_92_15A5A140 (CInt(5), var_130)
  loc_15A4CC4:   Set var_140 = Me.Txt
  loc_15A4CCA:   Call 0.Method_Proc_22_92_15A5A140 (CInt(6), var_144)
  loc_15A4CDB:   var_150 = var_F4 & "','" & var_90 & "','" & var_8C & "','" & var_108.Text & "','" & var_11C.Text & "','" & var_130.Text & "','" & var_144.Text
  loc_15A4CF3:   Set var_154 = Me.Txt
  loc_15A4CF9:   Call 0.Method_Proc_22_92_15A5A140 (CInt(7), var_158)
  loc_15A4D22:   Set var_168 = Me.Txt
  loc_15A4D28:   Call 0.Method_Proc_22_92_15A5A140 (CInt(8), var_16C)
  loc_15A4D51:   Set var_17C = Me.Txt
  loc_15A4D57:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&HA), var_180)
  loc_15A4D80:   Set var_190 = Me.Txt
  loc_15A4D86:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&HB), var_194)
  loc_15A4DAF:   Set var_1A4 = Me.Txt
  loc_15A4DB5:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&HC), var_1A8)
  loc_15A4DCD:   var_1C4 = var_150 & "','" & var_158.Text & "','" & var_16C.Tag & "','" & var_180.Text & "','" & var_194.Text & "','" & var_1A8.Text & "','"
  loc_15A4DDE:   Set var_1B8 = Me.Txt
  loc_15A4DE4:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&HD), var_1BC)
  loc_15A4E0D:   Set var_1CC = Me.Txt
  loc_15A4E13:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&HE), var_1D0)
  loc_15A4E3C:   Set var_1E0 = Me.Txt
  loc_15A4E42:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&HF), var_1E4)
  loc_15A4E6B:   Set var_1F4 = Me.Txt
  loc_15A4E71:   Call 0.Method_Proc_22_92_15A5A140 (CInt(9), var_1F8)
  loc_15A4E9A:   Set var_208 = Me.Txt
  loc_15A4EA0:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H10), var_20C)
  loc_15A4EC9:   Set var_21C = Me.Txt
  loc_15A4ECF:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H22), var_220)
  loc_15A4EE0:   var_22C = var_1C4 & var_1BC.Text & "','" & var_1D0.Text & "','" & var_1E4.Text & "','" & var_1F8.Text & "','" & var_20C.Text & "','" & var_220.Text
  loc_15A4EF5:   Set var_230 = Me.Txt
  loc_15A4EFB:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H23), var_234)
  loc_15A4F0A:   Proc_6_17_EAAE40(var_244, CVar(var_234))
  loc_15A4F2A:   Set var_278 = Me.Txt
  loc_15A4F30:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H24), var_27C)
  loc_15A4F3F:   Proc_6_17_EAAE40(var_29C, CVar(var_27C))
  loc_15A4F62:   Set var_2D0 = Me.Txt
  loc_15A4F68:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H11), var_2D4)
  loc_15A4FA9:   Proc_183_7_EB17D4(var_378, Now)
  loc_15A4FB1:   var_388 = CVar(var_22C & "',") & var_244 & "," & var_29C & ",'" & CVar(var_2D4.Text) & "','" & CVar(MemVar_1F950C8) & "'," & var_378 
  loc_15A4FDF:   Set var_3EC = Me.Txt
  loc_15A4FE5:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H14), var_3F0)
  loc_15A5023:   Set var_478 = Me.Txt
  loc_15A5029:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H1C), var_47C)
  loc_15A503D:   var_4AC = var_388 & ",'" & CVar(arg_1C) & "','" & CVar(var_3F0.Text) & "','" & CVar(MemVar_1F95078) & "','" & CVar(Proc_6_38_E69628(CVar(var_47C))) 
  loc_15A5083:   Set var_56C = Me.Txt
  loc_15A5089:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H20), var_570)
  loc_15A50B5:   Set var_5C4 = Me.Txt
  loc_15A50BB:   Call 0.Method_Proc_22_92_15A5A140 (CInt(&H21), var_5C8)
  loc_15A50C3:   var_5D8 = CVar(var_5C8) 'Address
  loc_15A50D2:   Proc_6_17_EAAE40(var_5F8, CVar(Proc_6_38_E69628(var_5D8)))
  loc_15A5106:   var_670 = var_4AC & "'," & IIf((var_4D4.Text = "No"), 0, 1) & ",'" & CVar(Proc_6_38_E69628(CVar(var_570))) & "'," & var_5F8 & ",'" & CVar(Proc_6_38_E69628(Left(CVar(var_630), 1))) 
  loc_15A511A:   global_160 = CStr(var_670 & "')")
  loc_15A5264: Else
  loc_15A526C:   If (arg_C = "Edit") Then
  loc_15A527D:     Set var_4D0 = Me.Txt
  loc_15A5283:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H1F), var_4D4)
  loc_15A529B:     Set var_62C = Me.Txt
  loc_15A52A1:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H13))
  loc_15A52AD:     var_9C = "Update " & arg_10
  loc_15A52E9:     Set var_94 = Me.Txt
  loc_15A52EF:     Call 0.Method_Proc_22_92_15A5A140 (CInt(2), var_98)
  loc_15A5307:     var_E8 = var_630 & Proc_183_20_FB48CC(arg_18, var_9C & " Set Name='" & arg_18 & "',NameHelp='") & "',GroupCode='" & var_98.Tag & "',GroupNature='"
  loc_15A533A:     Call 0.Method_Proc_22_92_15A5A140 (CInt(3), var_108)
  loc_15A5363:     Set var_118 = Me.Txt
  loc_15A5369:     Call 0.Method_Proc_22_92_15A5A140 (CInt(4), var_11C)
  loc_15A5392:     Set var_12C = Me.Txt
  loc_15A5398:     Call 0.Method_Proc_22_92_15A5A140 (CInt(5), var_130)
  loc_15A53A9:     var_124 = var_E8 & var_90 & "',Nature='" & var_8C & "',ConPrefix='" & var_108.Text & "',ConPerson='" & var_11C.Text & "',Add1='" & var_130.Text
  loc_15A53C1:     Set var_140 = Me.Txt
  loc_15A53C7:     Call 0.Method_Proc_22_92_15A5A140 (CInt(6), var_144)
  loc_15A53F0:     Set var_154 = Me.Txt
  loc_15A53F6:     Call 0.Method_Proc_22_92_15A5A140 (CInt(7), var_158)
  loc_15A541F:     Set var_168 = Me.Txt
  loc_15A5425:     Call 0.Method_Proc_22_92_15A5A140 (CInt(8), var_16C)
  loc_15A544E:     Set var_17C = Me.Txt
  loc_15A5454:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&HA), var_180)
  loc_15A5465:     var_174 = var_124 & "',Add2='" & var_144.Text & "',Add3='" & var_158.Text & "',CityCode='" & var_16C.Tag & "',Phone='" & var_180.Text
  loc_15A547D:     Set var_190 = Me.Txt
  loc_15A5483:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&HB), var_194)
  loc_15A54AC:     Set var_1A4 = Me.Txt
  loc_15A54B2:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&HC), var_1A8)
  loc_15A54DB:     Set var_1B8 = Me.Txt
  loc_15A54E1:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&HD), var_1BC)
  loc_15A550A:     Set var_1CC = Me.Txt
  loc_15A5510:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&HE), var_1D0)
  loc_15A5521:     var_1C4 = var_174 & "',Mobile='" & var_194.Text & "',Fax='" & var_1A8.Text & "',EMail='" & var_1BC.Text & "',CSTNo='" & var_1D0.Text
  loc_15A5539:     Set var_1E0 = Me.Txt
  loc_15A553F:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&HF), var_1E4)
  loc_15A556F:     Set var_1F4 = Me.Txt
  loc_15A5575:     Call 0.Method_Proc_22_92_15A5A140 (CInt(9), var_1F8)
  loc_15A55A5:     Set var_208 = Me.Txt
  loc_15A55AB:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H10), var_20C)
  loc_15A55D4:     Set var_21C = Me.Txt
  loc_15A55DA:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H22), var_220)
  loc_15A55EB:     var_224 = var_1C4 & "',LSTNo='" & var_1E4.Text & "'," & "PIN='" & var_1F8.Text & "'," & "PANNo='" & var_20C.Text & "',GSTIN='" & var_220.Text
  loc_15A5600:     Set var_230 = Me.Txt
  loc_15A5606:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H23), var_234)
  loc_15A5615:     Proc_6_17_EAAE40(var_244, CVar(var_234))
  loc_15A5635:     Set var_278 = Me.Txt
  loc_15A563B:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H24), var_27C)
  loc_15A564A:     Proc_6_17_EAAE40(var_29C, CVar(var_27C))
  loc_15A566D:     Set var_2D0 = Me.Txt
  loc_15A5673:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H11), var_2D4)
  loc_15A5699:     var_338 = CVar(var_224 & "',LegalName=") & var_244 & ",TradeName=" & var_29C & ",Remark='" & CVar(var_2D4.Text) & "',U_Name='" & CVar(MemVar_1F950C8) 
  loc_15A56B4:     Proc_183_7_EB17D4(var_378, Now)
  loc_15A56EA:     Set var_3EC = Me.Txt
  loc_15A56F0:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H14), var_3F0)
  loc_15A570C:     var_434 = var_338 & "',U_EntDt=" & var_378 & ",U_AE='" & CVar(arg_1C) & "',CompanyType='" & CVar(var_3F0.Text) & "',DiscountType='" 
  loc_15A571B:     Set var_478 = Me.Txt
  loc_15A5721:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H1C), var_47C)
  loc_15A577B:     Set var_56C = Me.Txt
  loc_15A5781:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H20), var_570)
  loc_15A5795:     var_580 = var_434 & CVar(Proc_6_38_E69628(CVar(var_47C))) & "',ActiveYN=" & IIf((var_4D4.Text = "Yes"), 1, 0) & ",WebPassword='" & CVar(Proc_6_38_E69628(CVar(var_570))) 
  loc_15A57AD:     Set var_5C4 = Me.Txt
  loc_15A57B3:     Call 0.Method_Proc_22_92_15A5A140 (CInt(&H21), var_5C8)
  loc_15A57CA:     Proc_6_17_EAAE40(var_5D8, CVar(Proc_6_38_E69628(CVar(var_5C8))))
  loc_15A5807:     var_660 = var_580 & "',MapCode=" & var_5D8 & ",AllowCredit='" & CVar(Proc_6_38_E69628(Left(CVar(var_630), 1))) & "' Where SUBCODE='" 
  loc_15A5825:     global_160 = CStr(var_660 & CVar(arg_14) & "'")
  loc_15A5986:     Set var_94 = Me.Txt
  loc_15A598C:     Call 0.Method_Proc_22_92_15A5A140 (CInt(2), var_98, var_9C, "UPDATE LEDGER SET LEDGER.GROUPCODE='")
  loc_15A5994:     var_C4 = var_98.Tag
  loc_15A599D:     var_A0 = -1 & var_9C
  loc_15A59C9:     unk_547255.Execute var_9C & " Set Name='" & "',LEDGER.GROUPNATURE='" & var_90 & "' Where LEDGER.SUBCODE='" & arg_14 & "'", Me.Txt, 
  loc_15A59EB:   End If
  loc_15A59EB: End If
  loc_15A59EB: Exit Sub
  loc_15A59EC: ' Referenced from: 15A4A58
  loc_15A59F2: Call 0.Method_arg_50 (var_9C)
  loc_15A59FA: var_A4 = "SubGroupUpdate"
  loc_15A5A07: Proc_183_57_104B0BC(var_9C)
  loc_15A5A13: Exit Sub
End Sub

Public Sub Proc_22_93_15C5CD0
  'Data Table: 54721C
  Dim var_D0 As String
  Dim var_F4 As Variant
  Dim unk_547255 As Connection15
  Dim var_BC As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_B4 As Long
  Dim var_11C As Variant
  Dim var_E0 As Variant
  Dim var_12C As Variant
  Dim var_130 As Variant
  Dim var_98 As Integer
  Dim var_CC As Variant
  Dim var_148 As Variant
  Dim var_108 As Variant
  Dim var_178 As Variant
  Dim var_198 As Variant
  Dim var_2E8 As Double
  Dim var_2F0 As Double
  Dim var_214 As Variant
  Dim var_15C As String
  Dim var_160 As String
  Dim var_21C As String
  Dim var_248 As Variant
  Dim var_258 As Variant
  Dim var_278 As Variant
  Dim var_188 As Variant
  Dim var_1A8 As Variant
  Dim var_304 As Variant
  Dim var_2DC As Variant
  Dim var_324 As Variant
  Dim var_354 As Variant
  Dim var_3C4 As Variant
  Dim var_404 As Variant
  Dim var_B0 As Recordset15
  Dim var_45C As Double
  Dim var_210 As MSHFlexGrid
  Dim var_218 As String
  Dim var_3B4 As Variant
  Dim var_444 As Variant
  Dim var_564 As Variant
  Dim Me As Recordset15
  loc_15C4AA0: On Error Goto loc_15C5C94
  loc_15C4AA7: Set var_BC = Me.tOPCtrl1
  loc_15C4AAD: Call {33AD4EE3-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_15C4AC6: If (CStr() = "Add") Then
  loc_15C4ACF:   var_F4 = 0
  loc_15C4AEE:   unk_547255.Execute "Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup Where IsNumeric(substring(SubCode,3,6))=1", var_CC, -1
  loc_15C4AF6:   var_BC = var_BC.Fields
  loc_15C4AFE:   var_F4 = var_E4.Item(var_E4)
  loc_15C4B06:   var_F8 = var_F8.Value
  loc_15C4B5B:   var_12C = (1 + Format(CLng(var_108), "000000"))
  loc_15C4B5F:   var_D0 = CStr(var_12C)
  loc_15C4B6E:   Set var_BC = Me.Txt
  loc_15C4B74:   Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4, var_D0, 1)
  loc_15C4B7C:   var_E4.Text = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2))
  loc_15C4BA4:   Set var_BC = Me.Txt
  loc_15C4BAA:   Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4, var_D0)
  loc_15C4BB2:   var_B4 = var_E4.Text
  loc_15C4BC5:   Set var_F8 = Me.Txt
  loc_15C4BCB:   Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_130)
  loc_15C4BD3:   var_130.Tag = var_D0
  loc_15C4BE9: Else
  loc_15C4BF7:   Set var_BC = Me.Txt
  loc_15C4BFD:   Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4)
  loc_15C4C18:   Set var_F8 = Me.Txt
  loc_15C4C1E:   Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_130)
  loc_15C4C26:   var_130.Tag = var_E4.Text
  loc_15C4C39: End If
  loc_15C4C42: unk_547255.BeginTrans var_134
  loc_15C4C49: var_98 = &HFF
  loc_15C4C71: For var_138 = 1 To CInt((CLng(Me.Fgrid1.Rows) - 1)): var_9E = var_138 'Integer
  loc_15C4C7B:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C4C9D:   var_D0 = CStr(Me.Fgrid1.TextMatrix))
  loc_15C4CA9:   Set var_E4 = Me.Fgrid1
  loc_15C4CD0:   If ((var_D0 <> vbNullString) And (CLng(var_E4.Rows) > 2)) Then
  loc_15C4CE1:     Set var_BC = Me.Txt
  loc_15C4CE7:     Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4, var_D0, CVar(CLng(0)))
  loc_15C4CEF:     var_E0 = var_E4.Text
  loc_15C4CF8:     var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C4D00:     var_148 = CVar(CLng(2)) 'Long
  loc_15C4D0F:     var_CC = Me.Fgrid1.TextMatrix)
  loc_15C4D27:     var_198 = CVar(CLng(3)) 'Long
  loc_15C4D49:     var_2E8 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_15C4D7A:     var_2F0 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_15C4D8B:     Set var_210 = Me.Txt
  loc_15C4D91:     Call 0.Method_Proc_22_93_15C5CD00 (CInt(&H1C), var_214, var_218, var_2F0, CVar(CLng(4)), CVar(CLng(var_9E)), var_2E8)
  loc_15C4D99:     var_198 = var_214.Text
  loc_15C4DA9:     Proc_6_7_F26918(var_12C, MemVar_1F950EC, CVar(CLng(var_9E)), var_CC)
  loc_15C4DC9:     var_160 = "INSERT INTO RoomDiscount (Code,RoomCat,Adult,Discount,DiscType,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_D0 & "','"
  loc_15C4E01:     var_21C = var_160 & CStr(var_CC) & "'," & CStr(var_2E8) & "," & CStr(var_2F0) & ",'"
  loc_15C4E4D:     unk_547255.Execute CStr(CVar(var_21C & var_218 & "','" & MemVar_1F95070 & "',") & var_12C & ",'A','" & CVar(MemVar_1F95078) & "')"), var_2DC, -1
  loc_15C4EA5:   End If
  loc_15C4EA8: Next var_138 'Integer
  loc_15C4ED2: For var_2F4 = 1 To CInt((CLng(Me.FgridPlan.Rows) - 1)): var_9E = var_2F4 'Integer
  loc_15C4EDC:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C4EE1:   var_148 = 2
  loc_15C4EFF:   var_D0 = CStr(Me.FgridPlan.TextMatrix))
  loc_15C4F10:   If (var_D0 <> vbNullString) Then
  loc_15C4F21:     Set var_BC = Me.Txt
  loc_15C4F27:     Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4, var_D0)
  loc_15C4F2F:     var_148 = var_E4.Text
  loc_15C4F38:     var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C4F3D:     var_148 = 2
  loc_15C4F6A:     var_188 = CVar(CLng(var_9E)) 'Long
  loc_15C4F6F:     var_1A8 = 3
  loc_15C4F7C:     Set var_130 = Me.FgridPlan
  loc_15C4F82:     var_278 = var_130.TextMatrix)
  loc_15C4FAA:     var_304 = Me.FgridPlan.TextMatrix)
  loc_15C4FC1:     Proc_6_7_F26918(var_3B4, MemVar_1F950EC, var_304, 5, CVar(CLng(var_9E)), var_278)
  loc_15C4FDA:     var_15C = "INSERT INTO Comp_PlanDet (CompanyCode,RoomCat,PLanCode,PlanAmt,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_D0
  loc_15C500F:     var_324 = CVar(var_15C & "','") & Trim(CVar(CStr(Me.FgridPlan.TextMatrix)))) & "','" & CVar(CStr(var_278)) & "'," & CVar(CStr(var_304)) 
  loc_15C502B:     var_354 = var_324 & ",'" & CVar(MemVar_1F95070) & "','" 
  loc_15C5058:     var_404 = var_354 & CVar(MemVar_1F950C8) & "'," & var_3B4 & ",'A','" & CVar(MemVar_1F95078) 
  loc_15C506F:     unk_547255.Execute CStr(var_404 & "')"), var_444, -1
  loc_15C50BF:   End If
  loc_15C50C2: Next var_2F4 'Integer
  loc_15C50EC: For var_448 = 1 To CInt((CLng(Me.FGridIncl.Rows) - 1)): var_9E = var_448 'Integer
  loc_15C50F6:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C50FE:   var_148 = CVar(CLng(2)) 'Long
  loc_15C5118:   var_D0 = CStr(Me.FGridIncl.TextMatrix))
  loc_15C5135:   Set var_E4 = Me.FGridIncl
  loc_15C5164:   If (CVar(CLng(1)) And (CStr(var_E4.TextMatrix)) = "ü")) Then
  loc_15C5175:     Set var_BC = Me.Txt
  loc_15C517B:     Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4, var_D0, CVar(CLng(var_9E)))
  loc_15C5183:     (var_D0 <> vbNullString) = var_E4.Text
  loc_15C51A3:     var_CC = Me.FGridIncl.TextMatrix)
  loc_15C51C4:     Proc_6_7_F26918(var_304, MemVar_1F950EC, CVar(CLng(2)), CVar(CLng(var_9E)))
  loc_15C51E4:     var_12C = CVar("INSERT INTO Comp_Inclusive (CompanyCode,Inclusive,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_D0 & "','") 'String
  loc_15C51FD:     var_278 = var_12C & Trim(CVar(CStr(var_CC))) & "','" & CVar(MemVar_1F95070) 
  loc_15C524A:     unk_547255.Execute CStr(var_278 & "','" & CVar(MemVar_1F950C8) & "'," & var_304 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_354, -1
  loc_15C5286:   End If
  loc_15C5289: Next var_448 'Integer
  loc_15C529C: Set var_BC = Me.Txt
  loc_15C52A2: Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4)
  loc_15C52BD: Set var_F8 = Me.Txt
  loc_15C52C3: Call 0.Method_Proc_22_93_15C5CD00 (CInt(1), var_130)
  loc_15C52EA: var_15C = "SubGroup"
  loc_15C52F9: Call Proc_22_92_15A5A14("Add", var_15C, var_E4.Text, var_130.Text, "A")
  loc_15C532F: unk_547255.Execute global_160, var_CC, -1
  loc_15C535F: For var_44C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_44C 'Integer
  loc_15C5369:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C5371:   var_148 = CVar(CLng(3)) 'Long
  loc_15C53A1:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_15C53A8:     var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C53B0:     var_148 = CVar(CLng(1)) 'Long
  loc_15C53CF:     var_178 = CVar(CLng(var_9E)) 'Long
  loc_15C53D7:     var_198 = CVar(CLng(1)) 'Long
  loc_15C53E6:     var_108 = Me.FGrid.TextMatrix)
  loc_15C53F1:     var_12C = CVar(CStr(var_108)) 'String
  loc_15C53FC:     var_11C = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_15C5424:     Call Proc_22_87_10BDCC8(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), Trim(CVar(CStr(Me.FGrid.TextMatrix)))), var_12C)))
  loc_15C542F:     global_76 = var_15C
  loc_15C5473:     If (Trim(global_76) = vbNullString) Then
  loc_15C548F:       MsgBox("Pl. Configur Numbring System ", 0, var_108, Trim(CVar(CStr("Pl. Configur Numbring System "))), var_12C)
  loc_15C549F:       GoTo loc_15C5C94
  loc_15C54A2:     End If
  loc_15C54BD:     var_CC = Me.FGrid.TextMatrix)
  loc_15C54CD:     var_178 = CVar(CLng(var_9E)) 'Long
  loc_15C54D5:     var_198 = CVar(CLng(1)) 'Long
  loc_15C54DE:     Set var_E4 = Me.FGrid
  loc_15C54FA:     var_11C = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_15C5511:     var_248 = IIf((CStr(var_CC) = vbNullString), Trim(CVar(CStr(var_CC))), CVar(CStr(var_E4.TextMatrix))))
  loc_15C551B:     var_258 = CDate(CDate(var_248))
  loc_15C5522:     Proc_183_7_EB17D4(var_278, var_258, var_198, var_178, var_CC, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_15C553B:     var_D0 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_15C5542:     var_15C = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_15C5549:     var_160 = var_15C & MemVar_1F95078
  loc_15C557B:     unk_547255.Execute CStr(CVar(var_160 & "' AND V_Type='" & "F_AO" & "' AND ") & var_278 & " BETWEEN DATE_FROM AND DATE_TO"), var_304, -1
  loc_15C55D7:     Set var_BC = Me.Txt
  loc_15C55DD:     Call 0.Method_Proc_22_93_15C5CD00 (CInt(2), var_E4, CStr(Me.FGrid.TextMatrix)), "SELECT GROUPCODE,GROUPNATURE FROM ACGROUP WHERE GROUPCODE='", var_248, -1, var_F8)
  loc_15C5612:     unk_547255.Execute CStr(var_15C & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_198, var_178
  loc_15C561D:     Set var_B0 = var_E4.Tag
  loc_15C564D:     If (var_B0.RecordCount > 0) Then
  loc_15C5654:       var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C5687:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_15C568D:         var_A4 = "AmtCr"
  loc_15C569E:         Set var_BC = Me.Txt
  loc_15C56A4:         Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4, var_160, CVar(CLng(4)))
  loc_15C56AC:         var_E0 = var_E4.Text
  loc_15C56B5:         var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C56BD:         var_148 = CVar(CLng(3)) 'Long
  loc_15C56DF:         var_45C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15C570D:         var_188 = CVar(CLng(var_9E)) 'Long
  loc_15C5724:         var_108 = Me.FGrid.TextMatrix)
  loc_15C575D:         Proc_183_0_127A384(MemVar_1F951E0, var_160, CDbl(0), var_45C, CStr(var_B0.Fields.Item("GroupCode").Value), CDate(CStr(var_108)), var_108, CVar(CLng(1)))
  loc_15C5788:       Else
  loc_15C578B:         var_A4 = "AmtDr"
  loc_15C579C:         Set var_BC = Me.Txt
  loc_15C57A2:         Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4, var_160, var_188, var_45C)
  loc_15C57AA:         var_148 = var_E4.Text
  loc_15C57B3:         var_E0 = CVar(CLng(var_9E)) 'Long
  loc_15C57BB:         var_148 = CVar(CLng(3)) 'Long
  loc_15C57DD:         var_45C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15C57F2:         var_130 = var_B0.Fields
  loc_15C580B:         var_188 = CVar(CLng(var_9E)) 'Long
  loc_15C5822:         var_108 = Me.FGrid.TextMatrix)
  loc_15C585B:         Proc_183_0_127A384(MemVar_1F951E0, var_160, var_45C, CDbl(0), CStr(var_130.Item("GroupCode").Value), CDate(CStr(var_108)), var_108, CVar(CLng(1)))
  loc_15C5883:       End If
  loc_15C589E:       var_CC = Me.FGrid.TextMatrix)
  loc_15C58BF:       Set var_E4 = Me.FGrid
  loc_15C58C5:       var_108 = var_E4.TextMatrix)
  loc_15C58D0:       var_12C = CVar(CStr(var_108)) 'String
  loc_15C58DB:       var_11C = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_15C58FD:       Proc_183_7_EB17D4(var_258, IIf((CStr(var_CC) = vbNullString), var_130.Item("GroupCode").Value, var_12C), CVar(CLng(1)), CVar(CLng(var_9E)), var_CC, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_15C5910:       Set var_F8 = Me.Txt
  loc_15C5916:       Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_130, var_21C, var_188, var_45C)
  loc_15C591E:       var_148 = var_130.Text
  loc_15C5951:       var_2E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15C596F:       var_354 = Me.FGrid.TextMatrix)
  loc_15C5986:       Proc_183_7_EB17D4(var_404, MemVar_1F950EC, var_354, CVar(CLng(2)), CVar(CLng(var_9E)), var_2E8)
  loc_15C5996:       Proc_183_9_EAB2F0(var_4AC, var_AC, CVar(CLng(3)), CVar(CLng(var_9E)))
  loc_15C5A04:       var_15C = "Insert Into Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A4 & ",NARRATION,U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_15C5A5A:       var_278 = CVar(var_15C & global_76 & "'," & CStr(var_9E) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F95070 & "',") 'String
  loc_15C5AAE:       var_3C4 = var_278 & var_258 & ",'" & CVar(var_21C) & "'," & CVar(var_2E8) & ",'" & CVar(CStr(var_354)) & "','" & CVar(MemVar_1F950C8) 
  loc_15C5AEE:       var_564 = var_3C4 & "'," & var_404 & ",'A'," & var_4AC & ",'" & var_B0.Fields.Item("GroupCode").Value & "','" & var_B0.Fields.Item("GroupNature").Value 
  loc_15C5B18:       unk_547255.Execute CStr(var_564 & "','" & CVar(MemVar_1F95078) & "')"), var_5E4, -1
  loc_15C5BA9:     Else
  loc_15C5BB7:       var_E0 = "Group Not Defined"
  loc_15C5BC2:       MsgBox(var_E0, 0, var_108, var_130.Item("GroupCode").Value, var_12C)
  loc_15C5BD2:       GoTo loc_15C5C94
  loc_15C5BD5:     End If
  loc_15C5BD5:   End If
  loc_15C5BD8: Next var_44C 'Integer
  loc_15C5BE3: unk_547255.CommitTrans
  loc_15C5BF3: Me.Requery -1
  loc_15C5BFA: var_98 = 0
  loc_15C5C0B: Set var_BC = Me.Txt
  loc_15C5C11: Call 0.Method_Proc_22_93_15C5CD00 (CInt(0), var_E4)
  loc_15C5C3D: Me.Requery -1
  loc_15C5C5A: var_D0 = "SearchCode = '" & var_E4.Text
  loc_15C5C6A: Me.Find var_D0 & "'", 0, 1
  loc_15C5C76: Call TopCtrl1_UnknownEvent_A()
  loc_15C5C80: Set var_9C = Nothing
  loc_15C5C88: Set var_A8 = Nothing
  loc_15C5C90: Set var_B0 = Nothing
  loc_15C5C93: Exit Sub
  loc_15C5C94: ' Referenced from: 15C5BD2
  loc_15C5C94: ' Referenced from: 15C549F
  loc_15C5C94: ' Referenced from: 15C4AA0
  loc_15C5C9A: If (var_98 = &HFF) Then
  loc_15C5CA3:   unk_547255.RollbackTrans
  loc_15C5CA8: End If
  loc_15C5CAE: Call 0.Method_arg_50 (var_D0, var_E0)
  loc_15C5CC3: Proc_183_57_104B0BC(var_D0, "UpdateDataBaseAdd")
  loc_15C5CCF: Exit Sub
End Sub

Public Sub Proc_22_94_1691204
  'Data Table: 54721C
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_C4 As String
  Dim unk_547255 As Connection15
  Dim var_E8 As Variant
  Dim var_EC As Variant
  Dim var_100 As Variant
  Dim var_8A As Integer
  Dim var_BC As String
  Dim var_118 As String
  Dim var_11C As String
  Dim var_94 As Recordset15
  Dim var_D4 As Variant
  Dim var_B4 As Variant
  Dim var_130 As Variant
  Dim var_134 As Variant
  Dim var_138 As Variant
  Dim var_160 As Variant
  Dim var_E4 As Variant
  Dim var_17C As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_1BC As Variant
  Dim var_1D0 As String
  Dim var_1D4 As String
  Dim var_B0 As Recordset15
  Dim var_98 As Recordset15
  Dim var_218 As Variant
  Dim var_110 As Variant
  Dim var_298 As Variant
  Dim var_2C0 As Double
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_2CC As String
  Dim var_2A8 As Variant
  Dim var_300 As Variant
  Dim var_320 As Variant
  Dim var_16C As Double
  Dim var_3B4 As Variant
  Dim var_1E0 As String
  Dim var_1E8 As String
  Dim var_1EC As String
  Dim var_1F4 As String
  Dim var_2C8 As String
  Dim var_1CC As Variant
  Dim var_2B8 As Variant
  Dim var_3F4 As Variant
  Dim var_484 As Variant
  Dim var_544 As Variant
  Dim var_248 As Variant
  Dim var_184 As Double
  Dim var_2D0 As String
  Dim var_454 As Variant
  Dim Me As Recordset15
  loc_168FA98: On Error Goto loc_16911C8
  loc_168FAC8: Set var_B4 = Me.Txt
  loc_168FACE: Call 0.Method_Proc_22_94_16912040 (CInt(2), var_B8, var_BC, "Select MainGrCode From AcGroup Where GroupCode='", var_E4, -1)
  loc_168FAD6: var_E8 = var_B8.Tag
  loc_168FADF: var_C0 = var_EC & var_BC
  loc_168FAEF: unk_547255.Execute var_C0 & "'", 0, var_100
  loc_168FAFF:  = var_EC.Item()
  loc_168FB07:  = var_100.Value
  loc_168FB10: var_A4 = CStr(var_E8.Fields)
  loc_168FB39: unk_547255.BeginTrans var_114
  loc_168FB6F: Set var_B4 = Me.Txt
  loc_168FB75: Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_C0, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_168FB7D: var_E4 = var_B8.Text
  loc_168FB86: var_118 = -1 & var_C0
  loc_168FB96: unk_547255.Execute var_118 & "'", var_E8, &HFF
  loc_168FBA1: Set var_94 = var_E8
  loc_168FBBD: ' Referenced from: 168FCF6
  loc_168FBCC: If Not(var_94.EOF) Then
  loc_168FBE9:   var_B8 = var_94.Fields.Item("subcode")
  loc_168FC08:   var_E8 = var_94.Fields
  loc_168FC10:   var_EC = var_E8.Item("AmtCr")
  loc_168FC3F:   var_17C = var_94.Fields.Item("AmtDr").Value
  loc_168FC66:   var_194 = var_94.Fields.Item("GroupCode").Value
  loc_168FC8D:   var_1A4 = var_94.Fields.Item("V_DATE").Value
  loc_168FCBE:   Proc_183_0_127A384(MemVar_1F951E0, CStr(var_B8.Value), CSng(var_EC.Value))
  loc_168FCF1:   var_94.MoveNext
  loc_168FCF6:   GoTo loc_168FBBD
  loc_168FCF9: End If
  loc_168FD16: Set var_B4 = Me.Txt
  loc_168FD1C: Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, "Delete From RoomDiscount WHERE Code='", var_1CC, -1)
  loc_168FD33: var_17C = var_E8 & Trim(CVar(var_B8)) 
  loc_168FD3C: var_194 = var_17C & "' And LogSite_Code='" 
  loc_168FD5D: unk_547255.Execute CStr(var_194 & CVar(MemVar_1F95078) & "'"), CSng(var_17C), CStr(var_194)
  loc_168FD9A: Set var_B4 = Me.Txt
  loc_168FDA0: Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, "Delete From Comp_PlanDet WHERE CompanyCode='", var_1CC)
  loc_168FDB7: var_17C = -1 & Trim(CVar(var_B8)) 
  loc_168FDCA: var_1A4 = var_17C & "' And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_168FDE1: unk_547255.Execute CStr(var_1A4 & "'"), var_E8, CDate(var_1A4)
  loc_168FE1E: Set var_B4 = Me.Txt
  loc_168FE24: Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, "Delete From Comp_Inclusive WHERE CompanyCode='")
  loc_168FE4E: var_1A4 = var_1CC & Trim(CVar(var_B8)) & "' And LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_168FE65: unk_547255.Execute CStr(var_1A4 & "'"), -1, var_E8
  loc_168FE8D: If (MemVar_1F95078 = "HO") Then
  loc_168FEA4:   var_BC = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_168FEAB:   var_C0 = var_BC & "' and V_Type='"
  loc_168FECA:   Set var_B4 = Me.Txt
  loc_168FED0:   Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_118, var_C0 & "F_AO" & "' and SubCode='")
  loc_168FED8:   var_E4 = var_B8.Text
  loc_168FEE1:   var_1D0 = -1 & var_118
  loc_168FEF1:   unk_547255.Execute var_1D0 & "' Order by V_SNo", var_E8, 
  loc_168FEFC:   Set var_B0 = var_E8
  loc_168FF1F: Else
  loc_168FF33:   var_BC = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_168FF4B:   Set var_B4 = Me.Txt
  loc_168FF51:   Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_C0, var_BC & "' and SubCode='")
  loc_168FF59:   var_E4 = var_B8.Text
  loc_168FF62:   var_118 = -1 & var_C0
  loc_168FF80:   unk_547255.Execute var_118 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_E8, 
  loc_168FF8B:   Set var_B0 = var_E8
  loc_168FFAB:   ' Referenced from:   16900B1
  loc_168FFAB: End If
  loc_168FFBA: If Not(var_B0.EOF) Then
  loc_168FFD7:   var_B8 = var_B0.Fields.Item("DocID")
  loc_168FFDF:   var_E4 = var_B8.Value
  loc_168FFE9:   var_1F4 = 0
  loc_168FFFC:   var_1EC = 0
  loc_1690007:   var_1E8 = 0
  loc_169001A:   var_1E0 = 0
  loc_1690025:   var_1D4 = 0
  loc_1690038:   var_1D0 = 0
  loc_169006F:   var_C0 = "DocId"
  loc_1690081:   Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGER", var_C0, &HC8, CStr(var_E4), 0, 0, 0)
  loc_16900AC:   var_B0.MoveNext
  loc_16900B1:   GoTo loc_168FFAB
  loc_16900B4: End If
  loc_16900B9: Set var_B0 = Nothing
  loc_16900D7: var_C4 = "Delete From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '"
  loc_16900E8: Set var_B4 = Me.Txt
  loc_16900EE: Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_C0, var_C4, var_E4, -1, var_E8)
  loc_16900F6: var_1D0 = var_B8.Text
  loc_1690106: var_11C = 0 & var_C0 & "'"
  loc_169010F: unk_547255.Execute var_11C, var_1D4, var_1E0
  loc_169013B: Set var_B4 = Me.Txt
  loc_1690141: Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_C4)
  loc_1690149: 0 = var_B8.Text
  loc_169015C: Set var_E8 = Me.Txt
  loc_1690162: Call 0.Method_Proc_22_94_16912040 (CInt(1), var_EC, var_11C)
  loc_169016A: var_1E8 = var_EC.Text
  loc_1690189: var_C0 = "SubGroup"
  loc_1690198: Call Proc_22_92_15A5A14("Edit", var_C0, var_C4, var_11C, "E")
  loc_16901CE: unk_547255.Execute global_160, var_E4, -1
  loc_1690201: For var_1F8 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_8C = var_1F8 'Byte
  loc_169020C:   var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1690244:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1690254:     var_D4 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='"
  loc_1690264:     Set var_B4 = Me.Txt
  loc_169026A:     Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_D4, var_1A4, -1, var_E8)
  loc_1690298:     unk_547255.Execute CStr(CVar(CLng(3)) & Trim(CVar(var_B8)) & "'"), var_D4, CByte(1)
  loc_16902A3:     Set var_98 = var_E8
  loc_16902D1:     If (var_98.RecordCount > 0) Then
  loc_16902D9:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_16902E1:       var_130 = CVar(CLng(1)) 'Long
  loc_1690301:       var_160 = CVar(CLng(var_8C)) 'Long
  loc_1690309:       var_218 = CVar(CLng(1)) 'Long
  loc_1690318:       var_110 = Me.FGrid.TextMatrix)
  loc_1690323:       var_194 = CVar(CStr(var_110)) 'String
  loc_169032E:       var_17C = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_1690356:       Call Proc_22_87_10BDCC8(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_194)))
  loc_1690361:       global_76 = var_C0
  loc_16903A5:       If (Trim(global_76) = vbNullString) Then
  loc_16903C1:         MsgBox("Pl. Configur Numbring System ", 0, var_110, CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_194)
  loc_16903D4:       Else
  loc_16903F0:         var_E4 = Me.FGrid.TextMatrix)
  loc_1690412:         Set var_B8 = Me.FGrid
  loc_169042E:         var_17C = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_169044F:         var_1BC = CDate(CDate(IIf((CStr(var_E4) = vbNullString), CVar(CLng(3)) & Trim(CVar(var_B8)), CVar(CStr(var_B8.TextMatrix))))))
  loc_1690456:         Proc_183_7_EB17D4(var_1CC, var_1BC, CVar(CLng(1)), CVar(CLng(var_8C)), var_E4, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_169046F:         var_BC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_1690476:         var_C0 = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_169047D:         var_C4 = var_C0 & MemVar_1F95078
  loc_16904AF:         unk_547255.Execute CStr(CVar(var_C4 & "' AND V_Type='" & "F_AO" & "' AND ") & var_1CC & " BETWEEN DATE_FROM AND DATE_TO"), var_2B8, -1
  loc_1690523:         If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_1690529:           var_A8 = "AmtCr"
  loc_169053A:           Set var_B4 = Me.Txt
  loc_1690540:           Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_C4, CVar(CLng(4)), CVar(CLng(var_8C)), var_E8, var_C0)
  loc_1690548:           var_218 = var_B8.Text
  loc_1690552:           var_D4 = CVar(CLng(var_8C)) 'Long
  loc_169055A:           var_130 = CVar(CLng(3)) 'Long
  loc_169057C:           var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_16905AB:           var_208 = CVar(CLng(var_8C)) 'Long
  loc_16905C2:           var_110 = Me.FGrid.TextMatrix)
  loc_16905FB:           Proc_183_0_127A384(MemVar_1F951E0, var_C4, CDbl(0), var_2C0, CStr(var_98.Fields.Item("GroupCode").Value), CDate(CStr(var_110)), var_110, CVar(CLng(1)))
  loc_1690626:         Else
  loc_1690629:           var_A8 = "AmtDr"
  loc_169063A:           Set var_B4 = Me.Txt
  loc_1690640:           Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_C4, var_208, var_2C0, var_130)
  loc_1690648:           var_D4 = var_B8.Text
  loc_1690652:           var_D4 = CVar(CLng(var_8C)) 'Long
  loc_169065A:           var_130 = CVar(CLng(3)) 'Long
  loc_169067C:           var_2C0 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1690691:           var_EC = var_98.Fields
  loc_16906AB:           var_208 = CVar(CLng(var_8C)) 'Long
  loc_16906C2:           var_110 = Me.FGrid.TextMatrix)
  loc_16906FB:           Proc_183_0_127A384(MemVar_1F951E0, var_C4, var_2C0, CDbl(0), CStr(var_EC.Item("GroupCode").Value), CDate(CStr(var_110)), var_110, CVar(CLng(1)))
  loc_1690723:         End If
  loc_169073F:         var_E4 = Me.FGrid.TextMatrix)
  loc_1690767:         var_110 = Me.FGrid.TextMatrix)
  loc_1690772:         var_194 = CVar(CStr(var_110)) 'String
  loc_169077D:         var_17C = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_1690785:         var_2CC = CStr(var_E4)
  loc_169079F:         Proc_183_7_EB17D4(var_1BC, IIf((var_2CC = vbNullString), var_EC.Item("GroupCode").Value, var_194), CVar(CLng(1)), CVar(CLng(var_8C)), var_E4, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_16907B2:         Set var_E8 = Me.Txt
  loc_16907B8:         Call 0.Method_Proc_22_94_16912040 (CInt(0), var_EC, var_2D0, var_208, var_2C0)
  loc_16907C0:         var_130 = var_EC.Text
  loc_16907CA:         var_2A8 = CVar(CLng(var_8C)) 'Long
  loc_16907D2:         var_300 = CVar(CLng(3)) 'Long
  loc_16907F4:         var_16C = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1690813:         var_3B4 = Me.FGrid.TextMatrix)
  loc_169082A:         Proc_183_7_EB17D4(var_454, MemVar_1F950EC, var_3B4, CVar(CLng(2)), CVar(CLng(var_8C)), var_16C)
  loc_1690841:         var_138 = var_98.Fields
  loc_1690898:         var_C0 = "Insert Into Ledger (DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A8 & ",NARRATION,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_16908E8:         var_2C8 = var_C0 & global_76 & "'," & CStr(var_8C) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F95070
  loc_1690905:         var_298 = CVar(var_2D0) 'String
  loc_1690939:         var_3F4 = CVar(var_2C8 & "',") & var_1BC & ",'" & var_298 & "'," & CVar(var_16C) & ",'" & CVar(CStr(var_3B4)) & "','" 
  loc_169095C:         var_484 = var_3F4 & CVar(MemVar_1F950C8) & "'," & var_454 & ",'E','" 
  loc_1690986:         var_544 = var_484 & var_138.Item("GroupCode").Value & "','" & var_98.Fields.Item("GroupNature").Value & "','" & CVar(MemVar_1F95078) 
  loc_169099D:         unk_547255.Execute CStr(var_544 & " ')"), var_588, -1
  loc_1690A28:       Else
  loc_1690A41:         MsgBox("Group Not Defined", 0, var_110, var_EC.Item("GroupCode").Value, var_194)
  loc_1690A54:       Else
  loc_1690A54:       End If
  loc_1690A57:     Next var_1F8 'Byte
  loc_1690A85:     For var_590 = CByte(1) To CByte((CLng(Me.Fgrid1.Rows) - 1)):     var_8C = var_590 'Byte
  loc_1690A90:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1690A98:       var_130 = CVar(CLng(0)) 'Long
  loc_1690AB2:       var_BC = CStr(Me.Fgrid1.TextMatrix))
  loc_1690ABA:       var_248 = (var_BC <> vbNullString)
  loc_1690AD4:       Set var_B8 = Me.Fgrid1
  loc_1690AEB:       var_194 = Trim(CVar(CStr(var_B8.TextMatrix))))
  loc_1690B1A:       If CBool(CVar(CLng(2)) And (var_194 <> vbNullString)) Then
  loc_1690B2B:         Set var_B4 = Me.Txt
  loc_1690B31:         Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_BC, CVar(CLng(var_8C)))
  loc_1690B39:         var_248 = var_B8.Text
  loc_1690B43:         var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1690B4B:         var_130 = CVar(CLng(2)) 'Long
  loc_1690B5A:         var_E4 = Me.Fgrid1.TextMatrix)
  loc_1690B73:         var_218 = CVar(CLng(3)) 'Long
  loc_1690B95:         var_16C = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_1690BC7:         var_184 = Val(CStr(Me.Fgrid1.TextMatrix)))
  loc_1690BD8:         Set var_134 = Me.Txt
  loc_1690BDE:         Call 0.Method_Proc_22_94_16912040 (CInt(&H1C), var_138, var_2CC, var_184, CVar(CLng(4)), CVar(CLng(var_8C)), var_16C)
  loc_1690BE6:         var_218 = var_138.Text
  loc_1690BF6:         Proc_6_7_F26918(var_194, MemVar_1F950EC, CVar(CLng(var_8C)), var_E4)
  loc_1690C0F:         var_C0 = "INSERT INTO RoomDiscount (Code,RoomCat,Adult,Discount,DiscType,Site_Code,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_BC
  loc_1690C6A:         var_1A4 = CVar(var_C0 & "','" & CStr(var_E4) & "'," & CStr(var_16C) & "," & CStr(var_184) & ",'" & var_2CC & "','" & MemVar_1F95070 & "',") 'String
  loc_1690C9A:         unk_547255.Execute CStr(var_1A4 & var_194 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_298, -1
  loc_1690CF2:       End If
  loc_1690CF5:     Next var_590 'Byte
  loc_1690D23:     For var_59C = CByte(1) To CByte((CLng(Me.FgridPlan.Rows) - 1)):     var_8C = var_59C 'Byte
  loc_1690D2E:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1690D33:       var_130 = 2
  loc_1690D51:       var_BC = CStr(Me.FgridPlan.TextMatrix))
  loc_1690D62:       If (var_BC <> vbNullString) Then
  loc_1690D73:         Set var_B4 = Me.Txt
  loc_1690D79:         Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_BC)
  loc_1690D81:         var_130 = var_B8.Text
  loc_1690D8B:         var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1690D90:         var_130 = 2
  loc_1690DBE:         var_208 = CVar(CLng(var_8C)) 'Long
  loc_1690DC3:         var_228 = 3
  loc_1690DD6:         var_1CC = Me.FgridPlan.TextMatrix)
  loc_1690DFF:         var_2B8 = Me.FgridPlan.TextMatrix)
  loc_1690E16:         Proc_6_7_F26918(var_3F4, MemVar_1F950EC, var_2B8, 5, CVar(CLng(var_8C)), var_1CC)
  loc_1690E2F:         var_C0 = "INSERT INTO Comp_PlanDet (CompanyCode,RoomCat,PLanCode,PlanAmt,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_BC
  loc_1690E64:         var_320 = CVar(var_C0 & "','") & Trim(CVar(CStr(Me.FgridPlan.TextMatrix)))) & "','" & CVar(CStr(var_1CC)) & "'," & CVar(CStr(var_2B8)) 
  loc_1690E80:         var_3B4 = var_320 & ",'" & CVar(MemVar_1F95070) & "','" 
  loc_1690EC4:         unk_547255.Execute CStr(var_3B4 & CVar(MemVar_1F950C8) & "'," & var_3F4 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_484, -1
  loc_1690F14:       End If
  loc_1690F17:     Next var_59C 'Byte
  loc_1690F45:     For var_5A0 = CByte(1) To CByte((CLng(Me.FGridIncl.Rows) - 1)):     var_8C = var_5A0 'Byte
  loc_1690F50:       var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1690F58:       var_130 = CVar(CLng(2)) 'Long
  loc_1690F72:       var_BC = CStr(Me.FGridIncl.TextMatrix))
  loc_1690F90:       Set var_B8 = Me.FGridIncl
  loc_1690FBF:       If (CVar(CLng(1)) And (CStr(var_B8.TextMatrix)) = "ü")) Then
  loc_1690FD0:         Set var_B4 = Me.Txt
  loc_1690FD6:         Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8, var_BC, CVar(CLng(var_8C)))
  loc_1690FDE:         (var_BC <> vbNullString) = var_B8.Text
  loc_1690FE8:         var_D4 = CVar(CLng(var_8C)) 'Long
  loc_1691020:         Proc_6_7_F26918(var_2B8, MemVar_1F950EC, CVar(CLng(2)), var_D4)
  loc_1691040:         var_194 = CVar("INSERT INTO Comp_Inclusive (CompanyCode,Inclusive,Site_Code,U_Name,U_EntDt,U_AE,LogSite_Code) VALUES('" & var_BC & "','") 'String
  loc_1691075:         var_298 = var_194 & Trim(CVar(CStr(Me.FGridIncl.TextMatrix)))) & "','" & CVar(MemVar_1F95070) & "','" & CVar(MemVar_1F950C8) & "'," 
  loc_16910A6:         unk_547255.Execute CStr(var_298 & var_2B8 & ",'A','" & CVar(MemVar_1F95078) & "')"), var_3B4, -1
  loc_16910E2:       End If
  loc_16910E5:     Next var_5A0 'Byte
  loc_16910F1:     unk_547255.CommitTrans
  loc_1691101:     Me.Requery -1
  loc_1691108:     var_8A = 0
  loc_1691119:     Set var_B4 = Me.Txt
  loc_169111F:     Call 0.Method_Proc_22_94_16912040 (CInt(0), var_B8)
  loc_169114B:     Me.Requery -1
  loc_1691178:     Me.Find "SearchCode = '" & var_B8.Text & "'", 0, 1
  loc_1691199:     var_BC = "INI"
  loc_16911A7:     Call Proc_22_78_F5F2C4(Proc_5_1_100EC1C(var_BC, Me, global_108))
  loc_16911B2:     Call Proc_22_91_1825914(var_D4)
  loc_16911BC:     Set var_88 = Nothing
  loc_16911C4:     Set var_98 = Nothing
  loc_16911C7:     Exit Sub
  loc_16911C8:   End If
  loc_16911C8: End If
  loc_16911C8: ' Referenced from: 168FA98
  loc_16911CE: If (var_8A = &HFF) Then
  loc_16911D7:   unk_547255.RollbackTrans
  loc_16911DC: End If
  loc_16911E2: Call 0.Method_arg_50 (var_BC)
  loc_16911F7: Proc_183_57_104B0BC(var_BC, "UpdateDataBaseEdit")
  loc_1691203: Exit Sub
End Sub

Public Sub Proc_22_95_1286BAC
  'Data Table: 54721C
  Dim Me As Recordset15
  Dim unk_547255 As Connection15
  Dim var_96 As Integer
  Dim var_124 As String
  Dim var_12C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_140 As Fields15
  Dim var_130 As String
  Dim var_BC As Variant
  Dim var_FC As Variant
  Dim var_11C As Variant
  Dim var_190 As Variant
  loc_128661C: On Error Goto loc_1286B6E
  loc_128662A: If (global_60 = "Y") Then
  loc_128664E:   MsgBox("You Can not Delete this A/c", &H40, "Validation Check", var_FC, var_11C)
  loc_128665E:   Exit Sub
  loc_128665F: End If
  loc_1286696: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_12866A2:   var_120 = Me.AbsolutePosition
  loc_12866AE:   var_94 = CVar(var_120) 'Variant
  loc_12866BB:   unk_547255.BeginTrans var_120
  loc_12866F1:   Set var_128 = Me.Txt
  loc_12866F7:   Call 0.Method_Proc_22_95_1286BAC0 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_12866FF:   var_BC = var_12C.Text
  loc_1286708:   var_138 = -1 & var_130
  loc_1286718:   unk_547255.Execute var_138 & "'", var_140, &HFF
  loc_1286723:   Set var_9C = var_140
  loc_128673F:   ' Referenced from: 1286878
  loc_128674E:   If Not(var_9C.EOF) Then
  loc_128676B:     var_12C = var_9C.Fields.Item("subcode")
  loc_1286773:     var_BC = var_12C.Value
  loc_128678A:     var_140 = var_9C.Fields
  loc_12867C1:     var_FC = var_9C.Fields.Item("AmtDr").Value
  loc_12867E8:     var_11C = var_9C.Fields.Item("GroupCode").Value
  loc_128680F:     var_190 = var_9C.Fields.Item("V_DATE").Value
  loc_1286840:     Proc_183_0_127A384(MemVar_1F951E0, CStr(var_BC), CSng(var_140.Item("AmtCr").Value))
  loc_1286873:     var_9C.MoveNext
  loc_1286878:     GoTo loc_128673F
  loc_128687B:   End If
  loc_128688F:   var_124 = "Delete From Ledger Where V_Type='" & "F_AO"
  loc_12868A7:   Set var_128 = Me.Txt
  loc_12868AD:   Call 0.Method_Proc_22_95_1286BAC0 (CInt(0), var_12C, var_130, var_124 & "' and SubCode= '", var_BC)
  loc_12868B5:   -1 = var_12C.Text
  loc_12868CE:   unk_547255.Execute var_140 & var_130 & "'", CSng(var_FC), CStr(var_11C)
  loc_128690A:   Set var_128 = Me.Txt
  loc_1286910:   Call 0.Method_Proc_22_95_1286BAC0 (CInt(0), var_12C, var_124, "Delete From SubGroup Where SUBCode='")
  loc_1286918:   var_BC = var_12C.Text
  loc_1286921:   var_130 = -1 & var_124
  loc_1286931:   unk_547255.Execute var_130 & "'", var_140, CDate(var_190)
  loc_1286968:   Set var_128 = Me.Txt
  loc_128696E:   Call 0.Method_Proc_22_95_1286BAC0 (CInt(0), var_12C, "Delete From RoomDiscount WHERE Code='")
  loc_12869AF:   unk_547255.Execute CStr(var_1B8 & Trim(CVar(var_12C)) & "' and LogSite_Code='" & CVar(MemVar_1F95078) & "'"), -1, var_140
  loc_12869EC:   Set var_128 = Me.Txt
  loc_12869F2:   Call 0.Method_Proc_22_95_1286BAC0 (CInt(0), var_12C, "Delete From Comp_PlanDet WHERE CompanyCode='")
  loc_1286A33:   unk_547255.Execute CStr(var_1B8 & Trim(CVar(var_12C)) & "' and LogSite_Code='" & CVar(MemVar_1F95078) & "'"), -1, var_140
  loc_1286A70:   Set var_128 = Me.Txt
  loc_1286A76:   Call 0.Method_Proc_22_95_1286BAC0 (CInt(0), var_12C, "Delete From Comp_Inclusive WHERE CompanyCode='")
  loc_1286AAD:   var_124 = CStr(var_1B8 & Trim(CVar(var_12C)) & "' and LogSite_Code='" & CVar(MemVar_1F95078) & "'")
  loc_1286AB7:   unk_547255.Execute var_124, -1, var_140
  loc_1286ADD:   unk_547255.CommitTrans
  loc_1286AE4:   var_96 = 0
  loc_1286AF2:   Me.Requery -1
  loc_1286B0E:   If (Me.RecordCount > 0) Then
  loc_1286B28:     If (Me.AbsolutePosition > 1) Then
  loc_1286B33:       var_BC = (var_94 - 1)
  loc_1286B3F:       Me.AbsolutePosition = CLng(CVar(var_12C))
  loc_1286B44:     End If
  loc_1286B44:   End If
  loc_1286B60:   Proc_5_0_1107AD0(&HFF, Me, global_108)
  loc_1286B68:   Call Proc_22_91_1825914(0)
  loc_1286B6D: End If
  loc_1286B6D: Exit Sub
  loc_1286B6E: ' Referenced from: 128661C
  loc_1286B74: If (var_96 = &HFF) Then
  loc_1286B7D:   unk_547255.RollbackTrans
  loc_1286B82: End If
  loc_1286B88: Call 0.Method_arg_50 (var_124)
  loc_1286B9D: Proc_183_57_104B0BC(var_124, "UpdateDataBaseDelete")
  loc_1286BA9: Exit Sub
End Sub

Public Sub Proc_22_96_E08E90
  'Data Table: 54721C
  loc_E08E80: Call Proc_22_81_F6CE40()
  loc_E08E88: Call Me.SetFocus
  loc_E08E8E: Exit Sub
End Sub

Public Sub Proc_22_97_10DDE5C
  'Data Table: 54721C
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_C0 As Variant
  Dim var_8A As Integer
  Dim var_C4 As String
  Dim unk_547257 As Connection15
  Dim var_88 As Recordset15
  Dim var_E4 As Long
  Dim var_AC As Variant
  Dim var_F4 As Long
  Dim var_118 As Variant
  loc_10DDB67: Me.FgridPlan.Cols = 6
  loc_10DDB82: Me.FgridPlan.Rows = 2
  loc_10DDB8E: Set var_B0 = Me.FgridPlan
  loc_10DDB94: var_C0 = var_B0.Row
  loc_10DDB9E: var_8A = CInt(CLng(var_C0))
  loc_10DDBBB: var_C4 = "SELECT RoomCat.Code,RoomCat.Name as CatName,PlanMast.Code as PLanCode,PLanMast.Name as PlanName,PlanMast.Total as PlanAmt FROM Roomcat inner Join PLanMast on PLanMast.RoomCat=RoomCat.Code where (RoomCat.LOGSITE_CODE='" & MemVar_1F95078
  loc_10DDBCB: unk_547257.Execute var_C4 & "' or RoomCat.LOGSITE_CODE='HO') order by RoomCat.Name", var_C0, -1
  loc_10DDBD6: Set var_88 = var_B0
  loc_10DDBFA: If (var_88.RecordCount > 0) Then
  loc_10DDBFD:   ' Referenced from: 10DDE33
  loc_10DDC0C:   If Not(var_88.EOF) Then
  loc_10DDC0F:     var_9C = vbNullString
  loc_10DDC19:     Set var_B0 = Me.FgridPlan
  loc_10DDC2E:     Set var_D4 = Me.FgridPlan
  loc_10DDC35:     var_9C = CVar(CLng(var_8A)) 'Long
  loc_10DDC3A:     var_E4 = 0
  loc_10DDC48:     var_C0 = CVar(CStr(var_8A)) 'String
  loc_10DDC4F:     LateIdCallSt
  loc_10DDC5E:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DDC63:     var_F4 = 1
  loc_10DDC97:     var_118 = CVar(CStr(var_88.Fields.Item("CatName").Value)) 'String
  loc_10DDC9E:     LateIdCallSt
  loc_10DDCB8:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DDCBD:     var_F4 = 2
  loc_10DDCF1:     var_118 = CVar(CStr(var_88.Fields.Item("Code").Value)) 'String
  loc_10DDCF8:     LateIdCallSt
  loc_10DDD12:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DDD17:     var_F4 = 4
  loc_10DDD4B:     var_118 = CVar(CStr(var_88.Fields.Item("PlanName").Value)) 'String
  loc_10DDD52:     LateIdCallSt
  loc_10DDD6C:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DDD71:     var_F4 = 3
  loc_10DDDA5:     var_118 = CVar(CStr(var_88.Fields.Item("PlanCode").Value)) 'String
  loc_10DDDAC:     LateIdCallSt
  loc_10DDDC6:     var_AC = CVar(CLng(var_8A)) 'Long
  loc_10DDDCB:     var_F4 = 5
  loc_10DDDFF:     var_118 = CVar(CStr(var_88.Fields.Item("PLANAmt").Value)) 'String
  loc_10DDE06:     LateIdCallSt
  loc_10DDE1E:     Set var_D4 = Nothing 
  loc_10DDE28:     var_8A = (var_8A + 1)
  loc_10DDE2E:     var_88.MoveNext
  loc_10DDE33:     GoTo loc_10DDBFD
  loc_10DDE36:   End If
  loc_10DDE49:   Me.FgridPlan.FixedRows = 1
  loc_10DDE51: End If
  loc_10DDE56: Set var_88 = Nothing
  loc_10DDE59: Exit Sub
End Sub

Public Sub Proc_22_98_1011B70
  'Data Table: 54721C
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_F0 As TextBox
  Dim var_140 As Integer
  Dim var_100 As String
  Dim unk_547257 As Connection15
  Dim var_12C As Recordset15
  Dim var_130 As Fields15
  Dim var_144 As Field20
  Dim var_118 As String
  loc_10119AD: For var_A0 = 1 To CInt((CLng(Me.FGridIncl.Rows) - 1)): var_86 = var_A0 'Integer
  loc_10119C6:   Me.FGridIncl.Row = CVar(CLng(var_86))
  loc_10119E0:   Me.FGridIncl.Col = CVar(CLng(1))
  loc_10119F8:   Me.FGridIncl.CellFontName = "WINGDINGS"
  loc_1011A12:   Me.FGridIncl.CellFontSize = CVar(CDbl(&HE))
  loc_1011A1E:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_1011A26:   var_D0 = CVar(CLng(2)) 'Long
  loc_1011A35:   var_9C = Me.FGridIncl.TextMatrix)
  loc_1011A4F:   Set var_EC = Me.Txt
  loc_1011A55:   Call 0.Method_Proc_22_98_1011B700 (CInt(0), var_F0, var_F4, var_9C)
  loc_1011A5D:   var_D0 = var_F0.Text
  loc_1011A68:   var_140 = 0
  loc_1011A9E:   var_100 = "SELECT Count(*) FROM Comp_Inclusive where Inclusive='" & CStr(var_9C) & "' And CompanyCode='" & var_F4 & "' And (LOGSITE_CODE='"
  loc_1011AB5:   unk_547257.Execute var_100 & MemVar_1F95078 & "' or LOGSITE_CODE='HO')", var_128, -1
  loc_1011ABD:   var_12C = var_12C.Fields
  loc_1011AC5:   var_140 = var_130.Item(var_130)
  loc_1011ACD:   var_144 = var_144.Value
  loc_1011B08:   If (var_154 > 0) Then
  loc_1011B0F:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1011B17:     var_D0 = CVar(CLng(1)) 'Long
  loc_1011B1C:     var_118 = "ü"
  loc_1011B26:     Set var_8C = Me.FGridIncl
  loc_1011B2C:     LateIdCallSt
  loc_1011B3A:   Else
  loc_1011B3E:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1011B46:     var_D0 = CVar(CLng(1)) 'Long
  loc_1011B4B:     var_118 = " "
  loc_1011B55:     Set var_8C = Me.FGridIncl
  loc_1011B5B:     LateIdCallSt
  loc_1011B66:   End If
  loc_1011B69: Next var_A0 'Integer
  loc_1011B6E: Exit Sub
End Sub
