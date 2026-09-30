VERSION 5.00
Begin VB.Form FrmParty
  Caption = "Suppler Master"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "FrmParty.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 13050
  ClientHeight = 9750
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 23
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1785
    Top = 1905
    Width = 1710
    Height = 285
    TabIndex = 3
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
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 5370
    Width = 4140
    Height = 285
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
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 0
    Width = 13050
    Height = 450
    TabIndex = 59
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11535
    Top = 2535
    Width = 585
    Height = 285
    Enabled = 0   'False
    Text = "Yes"
    TabIndex = 53
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
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 5055
    Width = 2790
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 2850
    Width = 2565
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HE0E0E0&
    Left = 1020
    Top = 3585
    Width = 1200
    Height = 240
    Visible = 0   'False
    TabIndex = 4
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
    Left = 3675
    Top = 2715
    Width = 1380
    Height = 285
    Enabled = 0   'False
    TabIndex = 49
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
  Begin DataGrid DGUnderAc
    Left = 9900
    Top = 7665
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 37
  End
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3675
    Top = 2700
    Width = 1365
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 47
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 810
    Top = 2715
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 46
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
  Begin Frame FrmList
    BackColor = &HFFC0C0&
    ForeColor = &HFF8080&
    Left = 10440
    Top = 7035
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = -75
      Top = 15
      Width = 2415
      Height = 1800
      TabIndex = 48
    End
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1785
    Top = 1590
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
    Left = 8550
    Top = 1275
    Width = 3570
    Height = 285
    Enabled = 0   'False
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
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 1275
    Width = 525
    Height = 285
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
  Begin DataGrid DGCity
    Left = 7110
    Top = 7800
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1785
    Top = 990
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
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 4740
    Width = 4140
    Height = 285
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 200
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
    Left = 7980
    Top = 2535
    Width = 2565
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
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
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1785
    Top = 1275
    Width = 4140
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 1590
    Width = 4140
    Height = 285
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 1905
    Width = 4140
    Height = 285
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 2220
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
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
    ForeColor = &HC00000&
    Left = 7980
    Top = 3165
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
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
    Left = 7980
    Top = 3480
    Width = 4140
    Height = 285
    Enabled = 0   'False
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
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 3795
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
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
    ForeColor = &HC00000&
    Left = 7980
    Top = 4110
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 15
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
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7980
    Top = 4425
    Width = 2790
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
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
    Index = 15
    BackColor = &HFFFFFF&
    Left = 7650
    Top = 7110
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 17
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
    Left = 7650
    Top = 6840
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 16
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
  Begin DataGrid DGAcName
    Left = 5970
    Top = 8145
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 38
  End
  Begin MSHFlexGrid FGrid
    Left = 180
    Top = 3225
    Width = 6045
    Height = 3330
    TabIndex = 52
  End
  Begin MSFlexGrid FGPoint
    Left = 10770
    Top = 5925
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 55
  End
  Begin Label Lbl
    Caption = "Dealer Type"
    Index = 20
    ForeColor = &HC00000&
    Left = 225
    Top = 1905
    Width = 1155
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
    Caption = "GSTIN"
    Index = 19
    ForeColor = &HC00000&
    Left = 6525
    Top = 5385
    Width = 600
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 3615
    Top = 7230
    Width = 2790
    Height = 285
    TabIndex = 58
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
    Left = 225
    Top = 7230
    Width = 2880
    Height = 255
    TabIndex = 57
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
    TabIndex = 56
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
    Caption = "Active"
    Index = 29
    ForeColor = &HC00000&
    Left = 10800
    Top = 2535
    Width = 660
    Height = 240
    TabIndex = 54
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9.75
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "TIN No."
    Index = 18
    ForeColor = &HC00000&
    Left = 6525
    Top = 5070
    Width = 690
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
    Caption = "PinCode"
    Index = 1
    ForeColor = &HC00000&
    Left = 6525
    Top = 2850
    Width = 810
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
  Begin Label Lbl
    Caption = "Nature :"
    Index = 6
    ForeColor = &HC0&
    Left = 1830
    Top = 2205
    Width = 750
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
  Begin Label LblOpBalType
    Caption = "Dr/Cr"
    ForeColor = &H80&
    Left = 2145
    Top = 2730
    Width = 480
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
  Begin Label LblCurBalType
    Caption = "Dr/Cr"
    ForeColor = &H80&
    Left = 5100
    Top = 2745
    Width = 480
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
  Begin Label Lbl
    Caption = "Opening Balance"
    Index = 17
    ForeColor = &H4000&
    Left = 705
    Top = 2415
    Width = 1650
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
  Begin Label Lbl
    Caption = "Current Balance"
    Index = 16
    ForeColor = &H4000&
    Left = 3570
    Top = 2415
    Width = 1545
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
  Begin Label Lbl
    Caption = "Code"
    Index = 15
    ForeColor = &HC00000&
    Left = 225
    Top = 990
    Width = 480
    Height = 240
    TabIndex = 36
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
    Caption = "Remark"
    Index = 14
    ForeColor = &HC00000&
    Left = 6525
    Top = 4755
    Width = 735
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
  Begin Label LblNature
    Caption = "Nature"
    ForeColor = &H80&
    Left = 2790
    Top = 2205
    Width = 630
    Height = 285
    TabIndex = 34
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
    Caption = "PAN No."
    Index = 13
    ForeColor = &HC00000&
    Left = 6525
    Top = 4440
    Width = 780
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
  Begin Label Lbl
    Caption = "LST No."
    Index = 12
    ForeColor = &H0&
    Left = 6675
    Top = 7110
    Width = 675
    Height = 240
    Visible = 0   'False
    TabIndex = 32
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
    Left = 6675
    Top = 6840
    Width = 705
    Height = 240
    Visible = 0   'False
    TabIndex = 31
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
    Caption = "E-Mail"
    Index = 10
    ForeColor = &HC00000&
    Left = 6525
    Top = 4125
    Width = 585
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
  Begin Label Lbl
    Caption = "Fax No."
    Index = 9
    ForeColor = &HC00000&
    Left = 6525
    Top = 3810
    Width = 735
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
  Begin Label Lbl
    Caption = "Mobile No."
    Index = 8
    ForeColor = &HC00000&
    Left = 6525
    Top = 3495
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
  Begin Label Lbl
    Caption = "City Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 6525
    Top = 2535
    Width = 975
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
  Begin Label Lbl
    Caption = "Address"
    Index = 4
    ForeColor = &HC00000&
    Left = 6525
    Top = 1590
    Width = 750
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
  Begin Label Lbl
    Caption = "Contact Person"
    Index = 3
    ForeColor = &HC00000&
    Left = 6525
    Top = 1260
    Width = 1440
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
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &HC00000&
    Left = 6525
    Top = 3180
    Width = 1140
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
  Begin Label Lbl
    Caption = "Under Group"
    Index = 2
    ForeColor = &HC00000&
    Left = 225
    Top = 1590
    Width = 1215
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
  Begin Label Lbl
    Caption = "Suppler Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 225
    Top = 1275
    Width = 1365
    Height = 240
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
End

Attribute VB_Name = "FrmParty"

Private global_56 As Integer
Private global_54 As Integer
Private global_52 As Integer
Private global_88 As Double
Private global_64 As Long

Private Sub TxtGrid_GotFocus(Index As Integer) 'FAC810
  'Data Table: 4F2ED8
  Dim var_A0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_100 As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_FAC690: On Error Goto loc_FAC7A9
  loc_FAC69D: Set var_88 = Me.TxtGrid
  loc_FAC6A3: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_FAC6B1: Proc_183_28_E216B0(var_8C)
  loc_FAC6BD: Call Proc_11_51_F20718(var_8C)
  loc_FAC6D5: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_FAC6F0: var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_FAC6F9: Set var_8C = Me.FGrid
  loc_FAC717: var_100 = Me.FGrid.TextMatrix)
  loc_FAC722: var_10C = CStr(var_100)
  loc_FAC72E: Set var_104 = Me.TxtGrid
  loc_FAC734: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_10C)
  loc_FAC73C: var_108.Tag = CVar(CLng(var_8C.Col))
  loc_FAC76D: var_110 = CLng(Me.FGrid.Col)
  loc_FAC77D: If (var_110 = CLng(2)) Then
  loc_FAC78E:   Set var_88 = Me.TxtGrid
  loc_FAC794:   Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &HF)
  loc_FAC79C:   var_8C.MaxLength = var_110
  loc_FAC7A8: End If
  loc_FAC7A8: Exit Sub
  loc_FAC7A9: ' Referenced from: FAC690
  loc_FAC7B1: Set var_88 = Err()
  loc_FAC7B7: Call 0.Method_arg_1C (var_114)
  loc_FAC7C8: If (var_114 <> 0) Then
  loc_FAC7D3:   Set var_88 = Err()
  loc_FAC7D9:   Call 0.Method_arg_2C (var_10C)
  loc_FAC7FA:   MsgBox(CVar(var_10C), &H40, "Validation", var_100, var_124)
  loc_FAC80D: End If
  loc_FAC80D: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) '1028FBC
  'Data Table: 4F2ED8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_1028D94: On Error Goto loc_1028F55
  loc_1028DA1: If (CLng(Shift) = &H1B) Then
  loc_1028DB0:   Set var_88 = Me.TxtGrid
  loc_1028DB6:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_1028DBE:   var_90 = var_8C.Tag
  loc_1028DCF:   Set var_94 = Me.TxtGrid
  loc_1028DD5:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_1028DDD:   var_98.Text = var_90
  loc_1028DF9:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_1028E09:   Set var_88 = Me.TxtGrid
  loc_1028E0F:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_1028E17:   var_8C.Visible = False
  loc_1028E27:   Set var_88 = Me.FGrid
  loc_1028E38:   Exit Sub
  loc_1028E39: End If
  loc_1028E4C: var_AC = CLng(Me.FGrid.Col)
  loc_1028E5C: If Not (var_AC = CLng(1)) Then
  loc_1028E66:   If Not (var_AC = CLng(2)) Then
  loc_1028E70:     If Not (var_AC = CLng(4)) Then
  loc_1028E7A:       If (var_AC = CLng(3)) Then
  loc_1028E7D:       End If
  loc_1028E7D:     End If
  loc_1028E7D:   End If
  loc_1028EBD:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_54 = &HFF))) Then
  loc_1028EC3:     Call Proc_11_56_11CA680(var_AE, var_AC)
  loc_1028ECE:     If (var_AE = &HFF) Then
  loc_1028F05:       Set var_8C = Me.TxtGrid
  loc_1028F14:       Proc_183_25_11BCFD4(Me.FGrid, var_8C, KeyCode, Shift, global_54, 4)
  loc_1028F27:     Else
  loc_1028F2C:       Call TxtGrid_LostFocus()
  loc_1028F3A:       Set var_88 = Me.TxtGrid
  loc_1028F40:       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0, 0)
  loc_1028F48:       var_8C.SetFocus
  loc_1028F54:     End If
  loc_1028F54:   End If
  loc_1028F54: End If
  loc_1028F54: Exit Sub
  loc_1028F55: ' Referenced from: 1028D94
  loc_1028F5D: Set var_88 = Err()
  loc_1028F63: Call 0.Method_arg_1C (var_B8, 0, 0)
  loc_1028F74: If (var_B8 <> 0) Then
  loc_1028F7F:   Set var_88 = Err()
  loc_1028F85:   Call 0.Method_arg_2C (var_90, FGrid.DispID_8001)
  loc_1028FA6:   MsgBox(CVar(var_90), &H40, "Validation", var_F8, var_118)
  loc_1028FB9: End If
  loc_1028FB9: Exit Sub
  loc_1028FBA: Set arg_606C = arg_14
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'F04010
  'Data Table: 4F2ED8
  Dim var_88 As MSHFlexGrid
  loc_F03F40: On Error Goto loc_F03FA9
  loc_F03F46: Proc_183_46_E07C50(arg_10)
  loc_F03F6E: If (CLng(Me.FGrid.Col) = CLng(3)) Then
  loc_F03F7B:   Set var_88 = Me.TxtGrid
  loc_F03F81:   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_F03F9C:   Proc_183_22_129BBAC(var_A0, arg_10, &HA)
  loc_F03FA8: End If
  loc_F03FA8: Exit Sub
  loc_F03FA9: ' Referenced from: F03F40
  loc_F03FB1: Set var_88 = Err()
  loc_F03FB7: Call 0.Method_arg_1C (var_AC, 2)
  loc_F03FC8: If (var_AC <> 0) Then
  loc_F03FD3:   Set var_88 = Err()
  loc_F03FD9:   Call 0.Method_arg_2C (var_B0)
  loc_F03FFA:   MsgBox(CVar(var_B0), &H40, "Validation", var_F0, var_110)
  loc_F0400D: End If
  loc_F0400D: Exit Sub
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '10ACB50
  'Data Table: 4F2ED8
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_EC As Variant
  Dim var_AC As MSHFlexGrid
  Dim var_14C As Variant
  loc_10AC894: On Error Goto loc_10ACAE9
  loc_10AC8AA: var_9C = CLng(Me.FGrid.Col)
  loc_10AC8BA: If (var_9C = CLng(4)) Then
  loc_10AC8C7:   Set var_A8 = Me.TxtGrid
  loc_10AC8CD:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_10AC8DF:   Set var_88 = Me.TxtGrid
  loc_10AC8E5:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AC950:   If CBool((Len(var_A0.Text) = 0) Or (Ucase(Mid(CVar(var_AC), 1, 1)) = "C")) Then
  loc_10AC960:     Set var_88 = Me.TxtGrid
  loc_10AC966:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AC96E:     var_A0.Text = "Cr"
  loc_10AC97D:   Else
  loc_10AC987:     Set var_88 = Me.TxtGrid
  loc_10AC98D:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AC9CF:     If (Ucase(Mid(CVar(var_A0), 1, 1)) = "D") Then
  loc_10AC9DF:       Set var_88 = Me.TxtGrid
  loc_10AC9E5:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10AC9ED:       var_A0.Text = "Dr"
  loc_10AC9FC:     Else
  loc_10ACA09:       Set var_88 = Me.TxtGrid
  loc_10ACA0F:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10ACA17:       var_A0.Text = "Cr"
  loc_10ACA23:     End If
  loc_10ACA23:   End If
  loc_10ACA26: Else
  loc_10ACA2D:   If (var_9C = CLng(3)) Then
  loc_10ACA3D:     Set var_88 = Me.TxtGrid
  loc_10ACA43:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_10ACA4B:     var_A4 = var_A0.Text
  loc_10ACA65:     var_EC = Me.FGrid.Row
  loc_10ACA6E:     var_11C = CVar(CLng(var_EC)) 'Long
  loc_10ACA86:     var_14C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_10ACAAA:     var_DC = Format(CVar(Val(var_A4)), "0.00")
  loc_10ACAB3:     var_12C = CVar(CStr(var_DC)) 'String
  loc_10ACABB:     Set var_170 = Me.FGrid
  loc_10ACAC1:     LateIdCallSt
  loc_10ACAE8:   End If
  loc_10ACAE8: End If
  loc_10ACAE8: Exit Sub
  loc_10ACAE9: ' Referenced from: 10AC894
  loc_10ACAF1: Set var_88 = Err()
  loc_10ACAF7: Call 0.Method_arg_1C (var_17C, var_170, var_12C, 1, 1)
  loc_10ACB08: If (var_17C <> 0) Then
  loc_10ACB13:   Set var_88 = Err()
  loc_10ACB19:   Call 0.Method_arg_2C (var_A4, var_14C, var_11C)
  loc_10ACB3A:   MsgBox(CVar(var_A4), &H40, "Validation", var_DC, var_EC)
  loc_10ACB4D: End If
  loc_10ACB4D: Exit Sub
End Sub

Private Sub TxtGrid_LostFocus(Index As Integer) 'ED83E0
  'Data Table: 4F2ED8
  loc_ED8340: On Error Goto loc_ED837B
  loc_ED834C: If (global_58 = 0) Then
  loc_ED834F:   Exit Sub
  loc_ED8350: End If
  loc_ED835A: Set var_88 = Me.TxtGrid
  loc_ED8360: Call 0.Method_TxtGrid_LostFocus0 (Index)
  loc_ED836E: Proc_183_27_E23198(var_8C)
  loc_ED837A: Exit Sub
  loc_ED837B: ' Referenced from: ED8340
  loc_ED8383: Set var_88 = Err()
  loc_ED8389: Call 0.Method_arg_1C (var_94)
  loc_ED839A: If (var_94 <> 0) Then
  loc_ED83A5:   Set var_88 = Err()
  loc_ED83AB:   Call 0.Method_arg_2C (var_98)
  loc_ED83CC:   MsgBox(CVar(var_98), &H40, "Validation", var_E8, var_108)
  loc_ED83DF: End If
  loc_ED83DF: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) '11E5408
  'Data Table: 4F2ED8
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
  loc_11E4F9C: On Error Goto loc_11E53A3
  loc_11E4FB2: var_9C = CLng(Me.FGrid.Col)
  loc_11E4FC2: If (var_9C = CLng(1)) Then
  loc_11E4FCF:   Set var_88 = Me.TxtGrid
  loc_11E4FD5:   Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0)
  loc_11E4FED:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11E501F:   Call 0.Method_arg_184 (var_A0, var_A8, CVar(CLng(Me.FGrid.Col)))
  loc_11E5027:   var_110 = CVar(var_A8) 'String
  loc_11E502F:   Set var_124 = Me.FGrid
  loc_11E5035:   LateIdCallSt
  loc_11E5056: Else
  loc_11E505D:   If Not (var_9C = CLng(2)) Then
  loc_11E5067:     If (var_9C = CLng(4)) Then
  loc_11E506A:     End If
  loc_11E50A7:     Set var_88 = Me.TxtGrid
  loc_11E50AD:     Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11E50B5:     var_124 = var_A0.Text
  loc_11E50CB:     LateIdCallSt
  loc_11E5106:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11E5109:       Call Proc_11_53_112A004(Me.FGrid, CVar(var_A8), CVar(var_A8))
  loc_11E5127:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E512F:       var_F0 = CVar(CLng(4)) 'Long
  loc_11E5149:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11E516A:       var_120 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E51B7:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11E51CF:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11E51D7:         Set var_A0 = Me.FGrid
  loc_11E51F3:       End If
  loc_11E51F3:     End If
  loc_11E51F6:   Else
  loc_11E51FD:     If (var_9C = CLng(3)) Then
  loc_11E520D:       Set var_88 = Me.TxtGrid
  loc_11E5213:       Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, FGrid.DispID_10000, var_C0, var_120)
  loc_11E521B:       (var_A8 <> vbNullString) = var_A0.Text
  loc_11E5228:       var_190 = Val(var_A8)
  loc_11E5291:       LateIdCallSt
  loc_11E52B8:       Call Proc_11_53_112A004(Me.FGrid, CVar(CStr(Format(CVar(var_190), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11E52D6:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11E52DE:       var_F0 = CVar(CLng(4)) 'Long
  loc_11E52F8:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11E530A:       var_110 = Me.FGrid.Rows
  loc_11E5319:       var_120 = CVar((CLng(var_110) - 1)) 'Long
  loc_11E5330:       var_164 = Me.FGrid.TextMatrix)
  loc_11E5366:       If (CVar(CLng(3)) And (CDbl(Val(CStr(var_164))) <> CDbl(0))) Then
  loc_11E537E:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11E5386:         Set var_A0 = Me.FGrid
  loc_11E53A2:       End If
  loc_11E53A2:     End If
  loc_11E53A2:   End If
  loc_11E53A2: End If
  loc_11E53A2: Exit Sub
  loc_11E53A3: ' Referenced from: 11E4F9C
  loc_11E53AB: Set var_88 = Err()
  loc_11E53B1: Call 0.Method_arg_1C (var_194, FGrid.DispID_10000, var_C0, CVar(CLng(Me.FGrid.Col)), (var_A8 <> vbNullString), var_F0)
  loc_11E53C2: If (var_194 <> 0) Then
  loc_11E53CD:   Set var_88 = Err()
  loc_11E53D3:   Call 0.Method_arg_2C (var_A8, CVar(CLng(Me.FGrid.Row)), var_190, var_F0)
  loc_11E53F4:   MsgBox(CVar(var_A8), &H40, "Validation", var_110, var_164)
  loc_11E5407: End If
  loc_11E5407: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '131A9FC
  'Data Table: 4F2ED8
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_88 As DataGrid
  loc_131A2A6: Set var_88 = Me.Txt
  loc_131A2AC: Call 0.Method_Txt_GotFocus0 (Index)
  loc_131A2BA: Proc_183_28_E216B0(var_8C)
  loc_131A2C6: Call Proc_11_51_F20718(var_8C)
  loc_131A2CE: var_92 = Index
  loc_131A2D9: If (var_92 = CInt(1)) Then
  loc_131A2F3:   If (Me.RecordCount > 0) Then
  loc_131A301:     Set var_8C = Me.FGPoint
  loc_131A319:     Proc_6_137_1192FDC(Me.DGAcName, global_112, Index)
  loc_131A327:   End If
  loc_131A375:   Set var_88 = Me.Txt
  loc_131A37B:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_131A383:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_131A39B:   If (var_8C Or (var_A0 = vbNullString)) Then
  loc_131A39E:     Exit Sub
  loc_131A39F:   End If
  loc_131A3AC:   Set var_88 = Me.Txt
  loc_131A3B2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A3BA:   var_A0 = var_8C.Text
  loc_131A3CC:   var_B0 = "Name"
  loc_131A407:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_131A410:     Me.MoveFirst
  loc_131A433:     Set var_88 = Me.Txt
  loc_131A439:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131A441:     0 = var_8C.Text
  loc_131A45A:     Me.Find 1 & var_A0 & "'", var_B0, var_92
  loc_131A46F:   End If
  loc_131A472: Else
  loc_131A47A:   If (var_92 = CInt(2)) Then
  loc_131A494:     If (Me.RecordCount > 0) Then
  loc_131A4A2:       Set var_8C = Me.FGPoint
  loc_131A4BA:       Proc_6_137_1192FDC(Me.DGUnderAc, global_120)
  loc_131A4C8:     End If
  loc_131A4D1:     var_98 = Me.RecordCount
  loc_131A516:     Set var_88 = Me.Txt
  loc_131A51C:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_131A524:     ((var_98 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_131A53C:     If (Index Or (var_A0 = vbNullString)) Then
  loc_131A53F:       Exit Sub
  loc_131A540:     End If
  loc_131A54D:     Set var_88 = Me.Txt
  loc_131A553:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A55B:     var_A0 = var_8C.Text
  loc_131A56D:     var_B0 = "Name"
  loc_131A5A8:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_131A5B1:       Me.MoveFirst
  loc_131A5D4:       Set var_88 = Me.Txt
  loc_131A5DA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131A5E2:       0 = var_8C.Text
  loc_131A5FB:       Me.Find 1 & var_A0 & "'", var_B0, var_8C
  loc_131A610:     End If
  loc_131A613:   Else
  loc_131A61B:     If (var_92 = CInt(3)) Then
  loc_131A62B:       ReDim var_F0(0 To 3)
  loc_131A642:       var_F0(0) = "Mr."
  loc_131A651:       var_F0(1) = "Mrs."
  loc_131A660:       var_F0(2) = "Miss"
  loc_131A66F:       var_F0(3) = "M/S"
  loc_131A686:       global_132 = Array(var_F0)
  loc_131A6C6:       Set global_148 = Proc_6_66_F0048C(Me.ListView, Me.Txt, Index)
  loc_131A6DA:     Else
  loc_131A6E2:       If (var_92 = CInt(&H17)) Then
  loc_131A6F2:         ReDim var_F0(0 To 2)
  loc_131A709:         var_F0(0) = "REGISTERED"
  loc_131A718:         var_F0(1) = "COMPOSITION"
  loc_131A727:         var_F0(2) = "UNREGISTERED"
  loc_131A73E:         global_132 = Array(var_F0)
  loc_131A749:         Set var_B4 = Me.ListView
  loc_131A764:         Set var_8C = Me.Txt
  loc_131A77E:         Set global_148 = Proc_6_66_F0048C(var_B4, var_8C, Index, global_132, 3)
  loc_131A792:       Else
  loc_131A79A:         If (var_92 = CInt(8)) Then
  loc_131A7B0:           Me.DGCity.Tag = CVar(CStr(Index))
  loc_131A7C8:           Set var_88 = Me.Txt
  loc_131A7CE:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98, global_132)
  loc_131A7D6:           global_132 = var_8C.Left
  loc_131A7ED:           Me.DGCity.Left = CVar(var_98)
  loc_131A808:           Set var_90 = Me.Txt
  loc_131A80E:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_128)
  loc_131A816:           4 = var_B4.Height
  loc_131A828:           Set var_88 = Me.Txt
  loc_131A82E:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A846:           var_B0 = CVar(((var_8C.Top + var_128) + CDbl(&HF))) 'Single
  loc_131A855:           Me.DGCity.Top = CVar(var_8C.Top)
  loc_131A87E:           If (Me.RecordCount > 0) Then
  loc_131A88C:             Set var_8C = Me.FGPoint
  loc_131A8A4:             Proc_6_137_1192FDC(Me.DGCity, global_124, Index)
  loc_131A8B2:           End If
  loc_131A900:           Set var_88 = Me.Txt
  loc_131A906:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_131A90E:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_131A926:           If (var_8C Or (var_A0 = vbNullString)) Then
  loc_131A929:             Exit Sub
  loc_131A92A:           End If
  loc_131A937:           Set var_88 = Me.Txt
  loc_131A93D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_131A945:           var_A0 = var_8C.Text
  loc_131A957:           var_B0 = "Name"
  loc_131A992:           If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_131A99B:             Me.MoveFirst
  loc_131A9BE:             Set var_88 = Me.Txt
  loc_131A9C4:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_131A9CC:             0 = var_8C.Text
  loc_131A9E5:             Me.Find 1 & var_A0 & "'", var_B0, global_132
  loc_131A9FA:           End If
  loc_131A9FA:         End If
  loc_131A9FA:       End If
  loc_131A9FA:     End If
  loc_131A9FA:   End If
  loc_131A9FA: End If
  loc_131A9FA: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '127B5A4
  'Data Table: 4F2ED8
  Dim var_86 As Integer
  Dim Me As Recordset15
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  Dim var_AC As TextBox
  Dim var_BC As TextBox
  loc_127B01C: On Error Goto loc_127B53D
  loc_127B029: If (CLng(Shift) = &H1B) Then
  loc_127B02C:   Call Proc_11_51_F20718()
  loc_127B031:   Exit Sub
  loc_127B032: End If
  loc_127B035: var_86 = KeyCode
  loc_127B040: If (var_86 = CInt(1)) Then
  loc_127B05B:   Set var_98 = Nothing
  loc_127B089:   Proc_6_79_11AD564(Me.DGAcName, Me.Txt, KeyCode, global_112, Shift)
  loc_127B0F4:   If ((Me.RecordCount > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127B11A:     Proc_6_138_106E830(Me.DGAcName, global_112, KeyCode, Me.FGPoint, 0)
  loc_127B128:   End If
  loc_127B12B: Else
  loc_127B133:   If (var_86 = CInt(2)) Then
  loc_127B141:     Set var_AC = Me.Txt
  loc_127B14E:     Set var_A0 = Nothing
  loc_127B159:     Set var_98 = Nothing
  loc_127B187:     Proc_6_69_134A630(Me.DGUnderAc, var_AC, KeyCode, global_120, Shift, 0, 1)
  loc_127B1A4:     var_A8 = Me.RecordCount
  loc_127B1F4:     If ((var_A8 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127B1FB:       Set var_98 = Me.DGUnderAc
  loc_127B202:       Set var_90 = Me.FGPoint
  loc_127B21A:       Proc_6_138_106E830(var_98, global_120, KeyCode, var_90, var_98, var_A0)
  loc_127B228:     End If
  loc_127B22B:   Else
  loc_127B233:     If (var_86 = CInt(3)) Then
  loc_127B258:       Set var_8C = Me.Txt
  loc_127B25E:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A8, 0)
  loc_127B266:       1 = var_90.Left
  loc_127B278:       Set var_98 = Me.Txt
  loc_127B27E:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_127B286:       var_98 = var_A0.Top
  loc_127B298:       Set var_A4 = Me.Txt
  loc_127B29E:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B4)
  loc_127B2A6:       0 = var_AC.Height
  loc_127B2B8:       Set var_B8 = Me.Txt
  loc_127B2BE:       Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_127B2C6:       var_C0 = var_BC.Width
  loc_127B30E:       Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_127B335:     Else
  loc_127B33D:       If (var_86 = CInt(&H17)) Then
  loc_127B362:         Set var_8C = Me.Txt
  loc_127B368:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A8, CInt(var_A8))
  loc_127B370:         CInt((var_B0 + var_B4)) = var_90.Left
  loc_127B382:         Set var_98 = Me.Txt
  loc_127B388:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_A0, var_B0)
  loc_127B390:         CInt(var_C0) = var_A0.Top
  loc_127B3A2:         Set var_A4 = Me.Txt
  loc_127B3A8:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B4)
  loc_127B3B0:         1200 = var_AC.Height
  loc_127B3C2:         Set var_B8 = Me.Txt
  loc_127B3C8:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_BC)
  loc_127B3D0:         var_C0 = var_BC.Width
  loc_127B418:         Proc_6_65_1194DE4(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_127B43F:       Else
  loc_127B447:         If (var_86 = CInt(8)) Then
  loc_127B49B:           Proc_6_69_134A630(Me.DGCity, Me.Txt, KeyCode, global_124, Shift, 0, 1, Nothing)
  loc_127B4B8:           var_A8 = Me.RecordCount
  loc_127B508:           If ((var_A8 > 0) And ((((((CLng(Shift) = &H28) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H27)) Or (CLng(Shift) = &H21)) Or (CLng(Shift) = &H22))) Then
  loc_127B52E:             Proc_6_138_106E830(Me.DGCity, global_124, KeyCode, Me.FGPoint, Nothing, 0)
  loc_127B53C:           End If
  loc_127B53C:         End If
  loc_127B53C:       End If
  loc_127B53C:     End If
  loc_127B53C:   End If
  loc_127B53C: End If
  loc_127B53C: Exit Sub
  loc_127B53D: ' Referenced from: 127B01C
  loc_127B545: Set var_8C = Err()
  loc_127B54B: Call 0.Method_arg_1C (var_A8, CInt(var_A8), CInt((var_B0 + var_B4)))
  loc_127B55C: If (var_A8 <> 0) Then
  loc_127B567:   Set var_8C = Err()
  loc_127B56D:   Call 0.Method_arg_2C (var_E0, CInt(var_C0))
  loc_127B58E:   MsgBox(CVar(var_E0), &H40, "Validation", var_130, var_150)
  loc_127B5A1: End If
  loc_127B5A1: Exit Sub
  loc_127B5A2: If 900 Then Exit Sub
  loc_127B5A2: End If
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '100B160
  'Data Table: 4F2ED8
  Dim arg_10 As Integer
  Dim var_96 As Integer
  Dim var_9C As DataGrid
  Dim var_94 As Variant
  Dim var_A8 As TextBox
  loc_100AF54: On Error Goto loc_100B0FA
  loc_100AF5D: Proc_6_133_E7FB08(var_94)
  loc_100AF72: If (CInt(var_94) = &H27) Then
  loc_100AF77:   arg_10 = 0
  loc_100AF7A:   Exit Sub
  loc_100AF7B: End If
  loc_100AF7E: var_96 = KeyAscii
  loc_100AF89: If (var_96 = CInt(2)) Then
  loc_100AFA8:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_100AFD5:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_100AFE4:   End If
  loc_100AFE7: Else
  loc_100AFEF:   If (var_96 = CInt(8)) Then
  loc_100B00E:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_100B015:       Set var_A8 = Me.Txt
  loc_100B020:       var_A0 = "Name"
  loc_100B03B:       Proc_6_89_1470B00(var_A8, KeyAscii, global_124, arg_10, var_A0, 0)
  loc_100B04A:     End If
  loc_100B04D:   Else
  loc_100B055:     If (var_96 = CInt(&H15)) Then
  loc_100B073:       If ((((arg_10 = &H59) Or (arg_10 = &H79)) Or (arg_10 = &H4E)) Or (arg_10 = &H6E)) Then
  loc_100B083:         If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_100B093:           Set var_9C = Me.Txt
  loc_100B099:           Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes", 0)
  loc_100B0A1:           var_A8.Text = var_96
  loc_100B0AF:           arg_10 = 0
  loc_100B0B5:         Else
  loc_100B0C2:           If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_100B0D2:             Set var_9C = Me.Txt
  loc_100B0D8:             Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No", arg_10)
  loc_100B0E0:             var_A8.Text = arg_10
  loc_100B0EE:             arg_10 = 0
  loc_100B0F1:           End If
  loc_100B0F1:         End If
  loc_100B0F4:       Else
  loc_100B0F6:         arg_10 = 0
  loc_100B0F9:       End If
  loc_100B0F9:     End If
  loc_100B0F9:   End If
  loc_100B0F9: End If
  loc_100B0F9: Exit Sub
  loc_100B0FA: ' Referenced from: 100AF54
  loc_100B102: Set var_9C = Err()
  loc_100B108: Call 0.Method_arg_1C (var_AC, arg_10, arg_10)
  loc_100B119: If (var_AC <> 0) Then
  loc_100B124:   Set var_9C = Err()
  loc_100B12A:   Call 0.Method_arg_2C (var_A0, arg_10)
  loc_100B14B:   MsgBox(CVar(var_A0), &H40, "Validation", var_EC, var_10C)
  loc_100B15E: End If
  loc_100B15E: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) '10A52A8
  'Data Table: 4F2ED8
  Dim var_86 As Integer
  Dim var_8C As Variant
  loc_10A4FE8: On Error Goto loc_10A5240
  loc_10A4FEE: var_86 = KeyCode
  loc_10A4FF9: If (var_86 = CInt(1)) Then
  loc_10A5018:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_10A5025:     var_A0 = "Name"
  loc_10A5040:     Proc_6_80_FF1F20(Me.Txt, KeyCode, global_112)
  loc_10A5072:     Proc_6_138_106E830(Me.DGAcName, global_112, KeyCode, Me.FGPoint)
  loc_10A5080:   End If
  loc_10A5083: Else
  loc_10A508B:   If (var_86 = CInt(2)) Then
  loc_10A50AA:     If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_10A50BE:       var_A0 = "Name"
  loc_10A50E2:       Proc_183_33_12A1B50(Me.DGUnderAc, Me.Txt, KeyCode, global_120, Shift)
  loc_10A5118:       Proc_6_138_106E830(Me.DGUnderAc, global_120, KeyCode, Me.FGPoint)
  loc_10A5126:     End If
  loc_10A5129:   Else
  loc_10A5131:     If Not (var_86 = CInt(3)) Then
  loc_10A513C:       If (var_86 = CInt(&H17)) Then
  loc_10A513F:       End If
  loc_10A515A:       If (Me.FrmList.Visible = &HFF) Then
  loc_10A5189:         Proc_6_64_F299E8(Me.ListView, Me.Txt, KeyCode, Shift, global_148)
  loc_10A5199:       End If
  loc_10A519C:     Else
  loc_10A51A4:       If (var_86 = CInt(8)) Then
  loc_10A51C3:         If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_10A51D7:           var_A0 = "Name"
  loc_10A51FB:           Proc_183_33_12A1B50(Me.DGCity, Me.Txt, KeyCode, global_124, Shift)
  loc_10A5231:           Proc_6_138_106E830(Me.DGCity, global_124, KeyCode, Me.FGPoint, var_A0)
  loc_10A523F:         End If
  loc_10A523F:       End If
  loc_10A523F:     End If
  loc_10A523F:   End If
  loc_10A523F: End If
  loc_10A523F: Exit Sub
  loc_10A5240: ' Referenced from: 10A4FE8
  loc_10A5248: Set var_8C = Err()
  loc_10A524E: Call 0.Method_arg_1C (var_B4, var_A0, Shift)
  loc_10A525F: If (var_B4 <> 0) Then
  loc_10A526A:   Set var_8C = Err()
  loc_10A5270:   Call 0.Method_arg_2C (var_A0, var_A0)
  loc_10A5291:   MsgBox(CVar(var_A0), &H40, "Validation", var_F4, var_114)
  loc_10A52A4: End If
  loc_10A52A4: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E49EC4
  'Data Table: 4F2ED8
  loc_E49EA2: Set var_88 = Me.Txt
  loc_E49EA8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E49EB6: Proc_183_27_E23198(var_8C)
  loc_E49EC2: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '13C1280
  'Data Table: 4F2ED8
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim unk_4F2EFF As Connection15
  Dim var_A4 As Variant
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A0 As String
  Dim var_88 As Recordset15
  Dim var_D0 As Variant
  Dim var_9A As Integer
  Dim var_134 As Variant
  Dim arg_10 As Integer
  loc_13C091B: var_8E = Cancel
  loc_13C0926: If (var_8E = CInt(0)) Then
  loc_13C0937:   Set var_94 = Me.Txt
  loc_13C093D:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13C0957:   If (var_98.Visible = &HFF) Then
  loc_13C0968:     Set var_94 = Me.Txt
  loc_13C096E:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13C098D:     If (var_98.Text = vbNullString) Then
  loc_13C099E:       Set var_94 = Me.Txt
  loc_13C09A4:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13C09AC:       var_A0 = var_98.Tag
  loc_13C09BF:       Set var_A4 = Me.Txt
  loc_13C09C5:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_13C09CD:       var_A8.Text = var_A0
  loc_13C09EB:       Set var_94 = Me.Txt
  loc_13C09F1:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13C09F9:       var_98.SetFocus
  loc_13C0A05:       Exit Sub
  loc_13C0A06:     End If
  loc_13C0A27:     Set var_94 = Me.Txt
  loc_13C0A2D:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select AcCode From SubGroup Where AcCode='", var_D0)
  loc_13C0A35:     -1 = var_98.Text
  loc_13C0A4E:     unk_4F2EFF.Execute var_A4 & var_A0 & "'", var_D4, var_8E
  loc_13C0A56:      = var_A4.RecordCount
  loc_13C0A79:     If (var_D4 > 0) Then
  loc_13C0A9D:       MsgBox("A/c Code Already Exists", &H40, "Validation", var_114, var_134)
  loc_13C0ABB:       Set var_94 = Me.Txt
  loc_13C0AC1:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_13C0ADC:       Set var_A4 = Me.Txt
  loc_13C0AE2:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_13C0AEA:       var_A8.Text = var_98.Tag
  loc_13C0B08:       Set var_94 = Me.Txt
  loc_13C0B0E:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_13C0B16:       var_98.SetFocus
  loc_13C0B22:       Exit Sub
  loc_13C0B23:     End If
  loc_13C0B23:   End If
  loc_13C0B26: Else
  loc_13C0B2E:   If (var_8E = CInt(2)) Then
  loc_13C0B3E:     Set var_94 = Me.Txt
  loc_13C0B44:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C0B4C:     var_A0 = var_98.Text
  loc_13C0B63:     If (var_A0 = vbNullString) Then
  loc_13C0B66:       Exit Sub
  loc_13C0B67:     End If
  loc_13C0BB5:     Set var_94 = Me.Txt
  loc_13C0BBB:     Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_13C0BC3:     ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_98.Text
  loc_13C0BDB:     If (var_98 Or (var_A0 <> vbNullString)) Then
  loc_13C0C1D:       var_F4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value 
  loc_13C0C34:       unk_4F2EFF.Execute CStr(var_F4 & "'"), var_134, -1
  loc_13C0C3F:       Set var_88 = var_A4
  loc_13C0C6D:       If (var_88.RecordCount > 0) Then
  loc_13C0C81:         Call Proc_11_55_EDDC50(CByte(1), CByte(1))
  loc_13C0CFF:         Me.LblNature.Caption = CStr(IIf(IsNull(CVar(var_88.Fields.Item("Nature"))), vbNullString, CVar(var_88.Fields.Item("Nature"))))
  loc_13C0D6B:         var_A8 = var_88.Fields.Item("GroupNature")
  loc_13C0D73:         var_114 = var_A8.Value
  loc_13C0D9D:         If CBool((var_88.Fields.Item("GroupNature").Value = "A") Or (var_114 = "L")) Then
  loc_13C0DA7:           global_100 = CByte(1)
  loc_13C0DAE:         Else
  loc_13C0DB5:           global_100 = CByte(0)
  loc_13C0DB9:         End If
  loc_13C0DBF:         Call Proc_11_55_EDDC50(global_100, global_100, global_100)
  loc_13C0DC4:         ' Referenced from:   13C0EDD
  loc_13C0DCA:         var_9A = var_88.EOF
  loc_13C0DD3:         If Not(var_9A) Then
  loc_13C0E12:           If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_13C0E52:             Set var_A4 = Me.Txt
  loc_13C0E58:             Call 0.Method_Txt_Validate0 (CInt(2), var_A8, CStr(Trim(CVar(var_88.Fields.Item("GroupName")))))
  loc_13C0E60:             var_A8.Text = var_9A
  loc_13C0E92:             var_98 = var_88.Fields.Item("GroupCode")
  loc_13C0EB1:             Set var_A4 = Me.Txt
  loc_13C0EB7:             Call 0.Method_Txt_Validate0 (CInt(2), var_A8)
  loc_13C0EBF:             var_A8.Tag = CStr(var_98.Value)
  loc_13C0ED5:           End If
  loc_13C0ED8:           var_88.MoveNext
  loc_13C0EDD:           GoTo loc_13C0DC4
  loc_13C0EE0:         End If
  loc_13C0EE0:       End If
  loc_13C0EE0:     End If
  loc_13C0EE3:   Else
  loc_13C0EEB:     If Not (var_8E = CInt(3)) Then
  loc_13C0EF6:       If (var_8E = CInt(&H17)) Then
  loc_13C0EF9:       End If
  loc_13C0F06:       Set var_94 = Me.Txt
  loc_13C0F0C:       Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C0F2B:       If (var_98.Text <> vbNullString) Then
  loc_13C0F46:         Set var_98 = Me.ListView.SelectedItem
  loc_13C0F5E:         Set var_A4 = Me.Txt
  loc_13C0F64:         Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_13C0F6C:         var_A8.Text = var_98.Text
  loc_13C0F82:       End If
  loc_13C0F85:     Else
  loc_13C0F8D:       If (var_8E = CInt(8)) Then
  loc_13C0FD1:         If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_13C0FE1:           Set var_94 = Me.Txt
  loc_13C0FE7:           Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C1006:           If (var_98.Text <> vbNullString) Then
  loc_13C1044:             Set var_A4 = Me.Txt
  loc_13C104A:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_13C1052:             var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_13C1085:             var_98 = Me.Fields.Item("Code")
  loc_13C10A3:             Set var_A4 = Me.Txt
  loc_13C10A9:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_13C10B1:             var_A8.Tag = CStr(var_98.Value)
  loc_13C10CA:           Else
  loc_13C10D7:             Set var_94 = Me.Txt
  loc_13C10DD:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C10E5:             var_98.Text = vbNullString
  loc_13C10FE:             Set var_94 = Me.Txt
  loc_13C1104:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C110C:             var_98.Tag = vbNullString
  loc_13C1118:           End If
  loc_13C1118:         End If
  loc_13C111B:       Else
  loc_13C1123:         If (var_8E = CInt(&HD)) Then
  loc_13C1134:           Set var_94 = Me.Txt
  loc_13C113A:           Call 0.Method_Txt_Validate0 (CInt(&HD), var_98)
  loc_13C1159:           If (var_98.Text <> vbNullString) Then
  loc_13C116C:             Set var_94 = Me.Txt
  loc_13C1172:             Call 0.Method_Txt_Validate0 (CInt(&HD), var_98)
  loc_13C1188:             var_F4 = InStr(1, CVar(var_98), "@", 0)
  loc_13C11AC:             Call 0.Method_Txt_Validate0 (CInt(&HD), var_A8, 1)
  loc_13C11B4:             var_134 = CVar(var_A8) 'Address
  loc_13C11E8:             If CBool(Me.Txt Or (InStr((var_F4 = 0), var_134, ".", 0) = 0)) Then
  loc_13C1204:               MsgBox("Please fill a Valid EMail Id.", 0, var_F4, var_114, var_134)
  loc_13C1216:               arg_10 = 0
  loc_13C1219:               Exit Sub
  loc_13C121A:             End If
  loc_13C1224:             Set var_94 = Me.Txt
  loc_13C122A:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_13C124F:             Set var_A4 = Me.Txt
  loc_13C1255:             Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_13C125D:             var_A8.Text = CStr(LCase(CVar(var_98)))
  loc_13C1275:           End If
  loc_13C1275:         End If
  loc_13C1275:       End If
  loc_13C1275:     End If
  loc_13C1275:   End If
  loc_13C1275: End If
  loc_13C127A: Set var_88 = Nothing
  loc_13C127D: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E2649C
  'Data Table: 4F2ED8
  loc_E2648B: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E26493: Call Proc_11_51_F20718()
  loc_E26498: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1DB00
  'Data Table: 4F2ED8
  loc_E1DAF7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1DAFF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E393C4
  'Data Table: 4F2ED8
  Dim var_8C As TextBox
  loc_E393A7: Set var_88 = Me.TxtGrid
  loc_E393AD: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E393B5: var_8C.Visible = False
  loc_E393C1: Exit Sub
  loc_E393C2: If  Then Exit Sub
  loc_E393C2: End If
End Sub

Private Sub FGrid_UnknownEvent_A '1139D68
  'Data Table: 4F2ED8
  Dim var_9C As String
  Dim var_B0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_C4 As Variant
  Dim var_88 As MSHFlexGrid
  Dim Cancel As Integer
  Dim var_D8 As Variant
  Dim var_11C As Long
  Dim var_F8 As Variant
  Dim var_12C As String
  Dim var_140 As Long
  loc_11399F0: On Error Goto loc_1139D03
  loc_11399F7: Set var_88 = Me.TopCtrl1
  loc_11399FD: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_1139A16: If (CStr() = "Browse") Then
  loc_1139A19:   Exit Sub
  loc_1139A1A: End If
  loc_1139A37: var_C4 = Me.FGrid.Rows
  loc_1139A8E: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1139A99:   var_9C = "+{Tab}"
  loc_1139A9F:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1139AA9:   Cancel = 0
  loc_1139AAF: Else
  loc_1139AB9:   var_B0 = Me.FGrid.Rows
  loc_1139B06:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1139B11:     var_9C = "{Tab}"
  loc_1139B17:     Proc_303_0_FBACC8(var_9C, 0, var_B0)
  loc_1139B2B:     If (CInt(global_100) = 0) Then
  loc_1139B65:       If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_1139B68:         Call TopCtrl1_UnknownEvent_16()
  loc_1139B6D:       End If
  loc_1139B6D:     End If
  loc_1139B6F:     Cancel = 0
  loc_1139B72:   End If
  loc_1139B72: End If
  loc_1139B78: global_56 = Cancel
  loc_1139B9E: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1139BC4: var_11C = CLng(Me.FGrid.Col)
  loc_1139BD4: If Not (var_11C = CLng(1)) Then
  loc_1139BDE:   If Not (var_11C = CLng(2)) Then
  loc_1139BE8:     If Not (var_11C = CLng(4)) Then
  loc_1139BF2:       If (var_11C = CLng(3)) Then
  loc_1139BF5:       End If
  loc_1139BF5:     End If
  loc_1139BF5:   End If
  loc_1139C06:   If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1139C1C:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1139C34:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1139C39:     var_12C = vbNullString
  loc_1139C43:     Set var_B4 = Me.FGrid
  loc_1139C49:     LateIdCallSt
  loc_1139C61:   End If
  loc_1139C61: End If
  loc_1139C6B: If (CLng(Cancel) = &HD) Then
  loc_1139C81:   var_140 = CLng(Me.FGrid.Col)
  loc_1139C91:   If Not (var_140 = CLng(1)) Then
  loc_1139C9B:     If Not (var_140 = CLng(2)) Then
  loc_1139CA5:       If Not (var_140 = CLng(4)) Then
  loc_1139CAF:         If (var_140 = CLng(3)) Then
  loc_1139CB2:         End If
  loc_1139CB2:       End If
  loc_1139CB2:     End If
  loc_1139CE3:     Proc_183_24_1045ECC(Me, Me.FGrid, Me.TxtGrid, 0, var_140, Me.TxtGrid, var_12C, var_F8)
  loc_1139CF5:   End If
  loc_1139CFA:   global_54 = 0
  loc_1139CFD: End If
  loc_1139CFF: Cancel = 0
  loc_1139D02: Exit Sub
  loc_1139D03: ' Referenced from: 11399F0
  loc_1139D0B: Set var_88 = Err()
  loc_1139D11: Call 0.Method_arg_1C (var_14C, Cancel, global_54, var_D8, var_11C)
  loc_1139D22: If (var_14C <> 0) Then
  loc_1139D2D:   Set var_88 = Err()
  loc_1139D33:   Call 0.Method_arg_2C (var_9C, global_56, Cancel)
  loc_1139D54:   MsgBox(CVar(var_9C), &H40, "Validation", var_C4, var_118)
  loc_1139D67: End If
  loc_1139D67: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F68D20
  'Data Table: 4F2ED8
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F68C00: On Error Goto loc_F68CBA
  loc_F68C07: Set var_88 = Me.TopCtrl1
  loc_F68C0D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_F68C15: var_9C = CStr()
  loc_F68C26: If (var_9C = "Browse") Then
  loc_F68C29:   Exit Sub
  loc_F68C2A: End If
  loc_F68C3D: var_A0 = CLng(Me.FGrid.Col)
  loc_F68C4D: If Not (var_A0 = CLng(1)) Then
  loc_F68C57:   If Not (var_A0 = CLng(2)) Then
  loc_F68C61:     If Not (var_A0 = CLng(4)) Then
  loc_F68C6B:       If (var_A0 = CLng(3)) Then
  loc_F68C6E:       End If
  loc_F68C6E:     End If
  loc_F68C6E:   End If
  loc_F68C9F:   Proc_183_24_1045ECC(Me, Me.FGrid, Me.TxtGrid)
  loc_F68CB1: End If
  loc_F68CB6: global_54 = 0
  loc_F68CB9: Exit Sub
  loc_F68CBA: ' Referenced from: F68C00
  loc_F68CC2: Set var_88 = Err()
  loc_F68CC8: Call 0.Method_arg_1C (var_B8, global_54)
  loc_F68CD9: If (var_B8 <> 0) Then
  loc_F68CE4:   Set var_88 = Err()
  loc_F68CEA:   Call 0.Method_arg_2C (var_9C, 0)
  loc_F68D0B:   MsgBox(CVar(var_9C), &H40, "Validation", var_F8, var_118)
  loc_F68D1E: End If
  loc_F68D1E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F9796C
  'Data Table: 4F2ED8
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  loc_F97810: On Error Goto loc_F97906
  loc_F97826: var_9C = CLng(Me.FGrid.Col)
  loc_F97836: If Not (var_9C = CLng(1)) Then
  loc_F97840:   If Not (var_9C = CLng(2)) Then
  loc_F9784A:     If (var_9C = CLng(4)) Then
  loc_F9784D:     End If
  loc_F9784D:   End If
  loc_F97886:   Proc_183_26_11578C8(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F9789B: Else
  loc_F978A2:   If (var_9C = CLng(3)) Then
  loc_F978DE:     Proc_183_26_11578C8(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F978F0:   End If
  loc_F978F0: End If
  loc_F978FA: If (CLng(Cancel) <> &HD) Then
  loc_F97902:   global_54 = &HFF
  loc_F97905: End If
  loc_F97905: Exit Sub
  loc_F97906: ' Referenced from: F97810
  loc_F9790E: Set var_88 = Err()
  loc_F97914: Call 0.Method_arg_1C (var_B4, global_54, Cancel)
  loc_F97925: If (var_B4 <> 0) Then
  loc_F97930:   Set var_88 = Err()
  loc_F97936:   Call 0.Method_arg_2C (var_B8, 0)
  loc_F97957:   MsgBox(CVar(var_B8), &H40, "Validation", var_F8, var_118)
  loc_F9796A: End If
  loc_F9796A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '107B3BC
  'Data Table: 4F2ED8
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  loc_107B120: On Error Goto loc_107B357
  loc_107B127: Set var_8C = Me.TopCtrl1
  loc_107B12D: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_107B135: var_A0 = CStr()
  loc_107B146: If (var_A0 = "Browse") Then
  loc_107B149:   Exit Sub
  loc_107B14A: End If
  loc_107B167: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_107B16A:   Exit Sub
  loc_107B16B: End If
  loc_107B17C: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_107B19E:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_107B1D8:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_107B1FA:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_107B210:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107B219:         Set var_114 = Me.FGrid
  loc_107B231:         Call Proc_11_53_112A004(FGrid.DispID_10000)
  loc_107B239:       Else
  loc_107B24C:         Me.FGrid.Rows = 1
  loc_107B269:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_107B271:         Set var_114 = Me.FGrid
  loc_107B2A0:         Me.FGrid.FixedRows = 1
  loc_107B2A8:       End If
  loc_107B2A8:     End If
  loc_107B2CD:     For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_107B2D7:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_107B2DF:       var_E0 = CVar(CLng(0)) 'Long
  loc_107B2E9:       var_9C = CVar(CStr(var_86)) 'String
  loc_107B2F1:       Set var_8C = Me.FGrid
  loc_107B2F7:       LateIdCallSt
  loc_107B308:     Next var_118 'Integer
  loc_107B310:   Else
  loc_107B331:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_107B341:   End If
  loc_107B345:   Set var_8C = Me.FGrid
  loc_107B356: End If
  loc_107B356: Exit Sub
  loc_107B357: ' Referenced from: 107B120
  loc_107B35F: Set var_8C = Err()
  loc_107B365: Call 0.Method_arg_1C (var_12C)
  loc_107B376: If (var_12C <> 0) Then
  loc_107B381:   Set var_8C = Err()
  loc_107B387:   Call 0.Method_arg_2C (var_A0)
  loc_107B3A8:   MsgBox(CVar(var_A0), &H40, "Validation", var_F0, var_110)
  loc_107B3BB: End If
  loc_107B3BB: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D3D0
  'Data Table: 4F2ED8
  loc_E1D3C7: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D3CF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D1F0
  'Data Table: 4F2ED8
  loc_E1D1E7: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D1EF: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E427F4
  'Data Table: 4F2ED8
  Dim var_8C As TextBox
  loc_E427D3: Set var_88 = Me.TxtGrid
  loc_E427D9: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E427E1: var_8C.Visible = False
  loc_E427ED: Call Proc_11_51_F20718()
  loc_E427F2: Exit Sub
End Sub

Private Sub Form_Load() '124A4BC
  'Data Table: 4F2ED8
  Dim var_8C As Variant
  Dim var_B0 As Variant
  Dim var_B4 As String
  Dim var_C8 As Variant
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim unk_4F2EFF As Connection15
  loc_1249F74: On Error Goto loc_124A47E
  loc_1249F86: Me.LblUser.Left = CDbl(13500)
  loc_1249F9D: Me.LblUser.Top = CDbl(7800)
  loc_1249FB4: Me.LblLDt.Top = CDbl(8160)
  loc_1249FCB: Me.LblLDt.Left = CDbl(13500)
  loc_1249FDA: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1249FF2: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_124A006: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_124A017: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_124A028: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_124A039: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_124A04A: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_124A05B: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_124A06C: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_124A07D: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_124A08E: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_124A09F: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_124A0B9: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_124A0C7: Set var_8C = MemVar_1F95044
  loc_124A0D6: Call 0.Method_Form_Load8 (var_8C)
  loc_124A0EC: Me.var_8C.Clone
  loc_124A0F7: Set var_B0 = var_8C
  loc_124A106: Call 0.Method_arg_50 (var_B0, -1)
  loc_124A14A: Proc_183_1_F5BEA0(Me, CStr(-2147483643), CStr(&HC00000))
  loc_124A162: Set var_8C = Me.txtCurrBal
  loc_124A168: Me.txtCurrBal.BackColor = -2147483643
  loc_124A17F: Me.txtCurrBal.ForeColor = &HC00000
  loc_124A18C: global_52 = 0
  loc_124A198: If (global_52 = &HFF) Then
  loc_124A1A6:   Set var_8C = Me.Lbl
  loc_124A1AC:   Call 0.Method_Form_Load0 (&HF, var_B0, &HFF, global_52)
  loc_124A1B4:   var_B0.Visible = CByte(1)
  loc_124A1CD:   Set var_8C = Me.Txt
  loc_124A1D3:   Call 0.Method_Form_Load0 (CInt(0), var_B0, &HFF)
  loc_124A1DB:   var_B0.Visible = CByte(1)
  loc_124A1EA: Else
  loc_124A1F5:   Set var_8C = Me.Lbl
  loc_124A1FB:   Call 0.Method_Form_Load0 (&HF, var_B0)
  loc_124A203:   var_B0.Visible = False
  loc_124A21C:   Set var_8C = Me.Txt
  loc_124A222:   Call 0.Method_Form_Load0 (CInt(0), var_B0)
  loc_124A22A:   var_B0.Visible = False
  loc_124A236: End If
  loc_124A240: Set global_112 = New 
  loc_124A252: Me.Recordset15.CursorLocation = 3
  loc_124A27C: var_C8 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_124A286: Me.Open var_C8, CVar(MemVar_1F951E0), 2
  loc_124A29A: CVarUnk
  loc_124A29F: VerifyVarObj
  loc_124A2A5: Set var_8C = Me.DGAcName
  loc_124A2AB: LateIdStAd
  loc_124A2D5: Me.DGAcName.CursorLocation = 3
  loc_124A2F8: var_B4 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup Where (LOGSITE_CODE='" & MemVar_1F95078
  loc_124A31D: CVarUnk
  loc_124A322: VerifyVarObj
  loc_124A328: Set var_8C = Me.DGUnderAc
  loc_124A32E: LateIdStAd
  loc_124A358: Me.DGUnderAc.CursorLocation = 3
  loc_124A382: var_C8 = CVar("Select CityCode As Code,CityName As Name,CityHelp From City Where (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by CityName") 'String
  loc_124A38C: ar("Select CityCode As Code,CityName As Name,CityHelp From City Where (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO')  and NATURE='Supplier' Order by GroupName"), CVar(MemVar_1F951E0), 2 var_C8, CVar(MemVar_1F951E0), 2
  loc_124A3A0: CVarUnk
  loc_124A3A5: VerifyVarObj
  loc_124A3AB: Set var_8C = Me.DGCity
  loc_124A3B1: LateIdStAd
  loc_124A3C9: Set global_108 = New 
  loc_124A3DB: Me.DGCity.LockType = 3
  loc_124A3EB: Me.CursorLocation = 3
  loc_124A3FB: Me.CursorType = 2
  loc_124A41B: var_B8 = "Select SubCode As SearchCode,SubCode,Site_Code,Name,LogSite_Code From SubGroup Where (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO')  and NATURE='Supplier'  order by Name"
  loc_124A424: unk_4F2EFF.Execute var_B8, var_C8, -1
  loc_124A44A: Call Proc_11_57_16ECD1C(var_8C, var_8C, New, 3, -1, var_8C)
  loc_124A464: var_B4 = "INI"
  loc_124A472: Call Proc_11_49_E88C08(Proc_5_1_100EC1C(var_B4, Me, Me, New, 3), -1, Me)
  loc_124A47D: Exit Sub
  loc_124A47E: ' Referenced from: 1249F74
  loc_124A486: Set var_8C = Err()
  loc_124A48C: Call 0.Method_arg_2C (var_B4, global_112)
  loc_124A4A5: MsgBox(CVar(var_B4), &H40, var_DC, var_EC, var_10C)
  loc_124A4B8: Exit Sub
End Sub

Private Sub Form_Resize() '109C328
  'Data Table: 4F2ED8
  Dim var_8C As Label
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  Dim var_C8 As Variant
  Dim var_DC As TextBox
  loc_109C076: Call 0.Method_arg_50 (var_88)
  loc_109C088: Me.LblFormCaption.Caption = var_88
  loc_109C0A1: Me.LblFormCaption.Left = CDbl(0)
  loc_109C0AD: Set var_A0 = Me.TopCtrl1
  loc_109C0B3: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010006()
  loc_109C0C0: Set var_8C = Me.TopCtrl1
  loc_109C0C6: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_80010004()
  loc_109C0E0: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_109C0FB: Call 0.Method_arg_100 (var_B8)
  loc_109C10D: Me.LblFormCaption.Width = var_B8
  loc_109C115: Call Proc_11_52_1049E6C()
  loc_109C128: Set var_8C = Me.Txt
  loc_109C12E: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_109C14D: Me.DGAcName.Left = CVar(var_A0.Left)
  loc_109C169: Set var_B4 = Me.Txt
  loc_109C16F: Call 0.Method_Form_Resize0 (CInt(1), var_DC)
  loc_109C18A: Set var_8C = Me.Txt
  loc_109C190: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_109C1A8: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_109C1B7: Me.DGAcName.Top = CVar(var_A0.Left)
  loc_109C1D7: Set var_8C = Me.Txt
  loc_109C1DD: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_109C1FC: Me.DGUnderAc.Left = CVar(var_A0.Left)
  loc_109C218: Set var_B4 = Me.Txt
  loc_109C21E: Call 0.Method_Form_Resize0 (CInt(2), var_DC)
  loc_109C239: Set var_8C = Me.Txt
  loc_109C23F: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_109C257: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_109C266: Me.DGUnderAc.Top = CVar(var_A0.Left)
  loc_109C286: Set var_8C = Me.Txt
  loc_109C28C: Call 0.Method_Form_Resize0 (CInt(8), var_A0)
  loc_109C2AB: Me.DGCity.Left = CVar(var_A0.Left)
  loc_109C2C7: Set var_B4 = Me.Txt
  loc_109C2CD: Call 0.Method_Form_Resize0 (CInt(8), var_DC)
  loc_109C2E8: Set var_8C = Me.Txt
  loc_109C2EE: Call 0.Method_Form_Resize0 (CInt(8), var_A0)
  loc_109C306: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_109C315: Me.DGCity.Top = CVar(var_A0.Left)
  loc_109C327: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E9A438
  'Data Table: 4F2ED8
  loc_E9A3BB: Set global_108 = Nothing
  loc_E9A3CD: Set global_112 = Nothing
  loc_E9A3DF: Set global_116 = Nothing
  loc_E9A3F1: Set global_120 = Nothing
  loc_E9A403: Set global_124 = Nothing
  loc_E9A415: Set global_152 = Nothing
  loc_E9A421: global_132 = Nothing
  loc_E9A430: Set global_148 = Nothing
  loc_E9A437: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '10647F0
  'Data Table: 4F2ED8
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A0 As DataGrid
  Dim var_C4 As Variant
  Dim var_EC As Variant
  loc_1064584: On Error Goto loc_106478B
  loc_106458A: var_86 = KeyCode
  loc_1064597: If Not (var_86 = CInt(&HD)) Then
  loc_10645A4:   If Not (var_86 = CInt(&H28)) Then
  loc_10645B1:     If (var_86 = CInt(&H26)) Then
  loc_10645B4:     End If
  loc_10645B4:   End If
  loc_10645B7:   var_88 = KeyCode
  loc_10645C4:   If Not (var_88 = CInt(&H28)) Then
  loc_10645D1:     If (var_88 = CInt(&H26)) Then
  loc_10645D4:     End If
  loc_10645D8:     Set var_8C = Me.DGAcName
  loc_10645EE:     Set var_A0 = Me.DGUnderAc
  loc_106460B:     var_C4 = Me.DGCity.Visible
  loc_1064625:     var_CA = Me.FrmList.Visible
  loc_1064645:     If ((((CBool(var_8C.Visible) = &HFF) Or (CBool(var_A0.Visible) = &HFF)) Or (CBool(var_C4) = &HFF)) Or (var_CA = &HFF)) Then
  loc_1064648:       Exit Sub
  loc_1064649:     End If
  loc_1064649:   End If
  loc_106464F:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_106465E:   If TypeOf var_8C Is arg_5 Then
  loc_1064667:     Call 0.Method_arg_1E8 (var_8C)
  loc_1064682:     Call Txt_Validate(CInt(var_8C.index))
  loc_106468D:   End If
  loc_1064699:   Set var_8C = Me 
  loc_10646A9:   Call 0.Method_arg_58 (var_8C, KeyCode, Shift, var_CA)
  loc_10646B7:   If (var_CA = &HFF) Then
  loc_10646C0:     Call 0.Method_arg_1E8 (var_8C, 0)
  loc_10646C8:     var_9C = var_8C.Name
  loc_10646E8:     Call 0.Method_arg_1E8 (var_A0, (Ucase(var_9C) = "TXTGRID"))
  loc_10646F0:     var_EC = var_A0.Name
  loc_1064722:     If CBool(var_9C Or (Ucase(var_EC) = "FGRID")) Then
  loc_106472F:       If (CLng(KeyCode) = &H28) Then
  loc_1064738:         Call 0.Method_arg_1E8 (var_8C)
  loc_1064746:         Call Proc_11_62_E6F730(var_8C)
  loc_106474E:       End If
  loc_1064751:     Else
  loc_1064757:       Call 0.Method_arg_1E8 (var_8C)
  loc_1064765:       Call Proc_11_62_E6F730(var_8C)
  loc_106476D:     End If
  loc_106476D:   End If
  loc_1064770: Else
  loc_1064782:   Proc_183_40_F3169C(Me, KeyCode)
  loc_106478A: End If
  loc_106478A: Exit Sub
  loc_106478B: ' Referenced from: 1064584
  loc_1064793: Set var_8C = Err()
  loc_1064799: Call 0.Method_arg_1C (var_130, Shift)
  loc_10647AA: If (var_130 <> 0) Then
  loc_10647B5:   Set var_8C = Err()
  loc_10647BB:   Call 0.Method_arg_2C (var_134)
  loc_10647DC:   MsgBox(CVar(var_134), &H40, "Validation", var_C4, var_EC)
  loc_10647EF: End If
  loc_10647EF: Exit Sub
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1B320
  'Data Table: 4F2ED8
  Dim KeyAscii As Integer
  loc_E1B314: If (KeyAscii = CInt(&HD)) Then
  loc_E1B319:   KeyAscii = 0
  loc_E1B31C: End If
  loc_E1B31C: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F94354
  'Data Table: 4F2ED8
  Dim var_8C As TextBox
  Dim var_88 As Label
  loc_F941F0: On Error Goto loc_F942EF
  loc_F941F3: Call Proc_11_50_FC4910()
  loc_F94206: Set var_88 = Me.Txt
  loc_F9420C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H15), var_8C)
  loc_F94214: var_8C.Text = "Yes"
  loc_F94235: var_90 = "ADD"
  loc_F94243: Call Proc_11_49_E88C08(Proc_5_1_100EC1C(var_90, Me))
  loc_F94257: If (global_52 = &HFF) Then
  loc_F94265:   Set var_88 = Me.Txt
  loc_F9426B:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(0), var_8C)
  loc_F94273:   var_8C.SetFocus
  loc_F94282: Else
  loc_F9428D:   Set var_88 = Me.Txt
  loc_F94293:   Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_8C)
  loc_F9429B:   var_8C.SetFocus
  loc_F942A7: End If
  loc_F942AD: global_88 = CDbl(0)
  loc_F942B6: global_96 = vbNullString
  loc_F942C0: global_60 = "N"
  loc_F942D1: Me.LblUser.Caption = vbNullString
  loc_F942E6: Me.LblLDt.Caption = vbNullString
  loc_F942EE: Exit Sub
  loc_F942EF: ' Referenced from: F941F0
  loc_F942F7: Set var_88 = Err()
  loc_F942FD: Call 0.Method_arg_1C (var_98, global_88)
  loc_F9430E: If (var_98 <> 0) Then
  loc_F94319:   Set var_88 = Err()
  loc_F9431F:   Call 0.Method_arg_2C (var_90)
  loc_F94340:   MsgBox(CVar(var_90), &H40, "Validation", var_E8, var_108)
  loc_F94353: End If
  loc_F94353: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'FA03F4
  'Data Table: 4F2ED8
  Dim var_11C As TextBox
  loc_FA0280: On Error Goto loc_FA038D
  loc_FA0283: Call Proc_11_51_F20718()
  loc_FA02BF: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_FA02D7:   var_10C = "INI"
  loc_FA02E5:   Call Proc_11_49_E88C08(Proc_5_1_100EC1C(var_10C, Me))
  loc_FA02F0:   Call Proc_11_57_16ECD1C(global_108)
  loc_FA0303:   Set var_110 = Me.Txt
  loc_FA0309:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_112, var_86)
  loc_FA0319:   For var_116 =  To CByte((var_112 - 1)): CByte(0) = var_116 'Byte
  loc_FA0328:     If (CInt(var_86) <> 3) Then
  loc_FA033D:       Set var_110 = Me.Txt
  loc_FA0343:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_FA034B:       var_11C.BackColor = -2147483643
  loc_FA0369:       Set var_110 = Me.Txt
  loc_FA036F:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_FA0377:       var_11C.ForeColor = &HC00000
  loc_FA0383:     End If
  loc_FA0386:   Next var_116 'Byte
  loc_FA038C: End If
  loc_FA038C: Exit Sub
  loc_FA038D: ' Referenced from: FA0280
  loc_FA0395: Set var_110 = Err()
  loc_FA039B: Call 0.Method_arg_1C (var_120)
  loc_FA03AC: If (var_120 <> 0) Then
  loc_FA03B7:   Set var_110 = Err()
  loc_FA03BD:   Call 0.Method_arg_2C (var_10C)
  loc_FA03DE:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_FA03F1: End If
  loc_FA03F1: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C '124AFD8
  'Data Table: 4F2ED8
  Dim Me As Recordset15
  Dim var_90 As Variant
  Dim unk_4F2EFF As Connection15
  Dim var_C4 As Fields15
  Dim var_D8 As Field20
  Dim var_8C As Fields15
  loc_124AABB: If (Me.RecordCount > 0) Then
  loc_124AAEB:   Set var_8C = Me.Txt
  loc_124AAF1:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where SubCode= '", var_BC, -1)
  loc_124AB12:   unk_4F2EFF.Execute var_C4 & var_94 & "' AND V_TYPE<>'F_AO'", 0, var_D8
  loc_124AB22:    = var_C4.Item()
  loc_124AB2A:    = var_D8.Value
  loc_124AB57:   If (var_90.Text.Fields > 0) Then
  loc_124AB75:     var_BC = "Transactions Exist Can't Delete it"
  loc_124AB7B:     MsgBox(var_BC, &H40, "Information", var_108, var_128)
  loc_124AB8B:     Exit Sub
  loc_124AB8C:   End If
  loc_124ABB9:   Set var_8C = Me.Txt
  loc_124ABBF:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where ContraSub= '", var_BC, -1)
  loc_124ABE0:   unk_4F2EFF.Execute var_C4 & var_94 & "' AND V_TYPE<>'F_AO'", 0, var_D8
  loc_124ABF0:    = var_C4.Item()
  loc_124ABF8:    = var_D8.Value
  loc_124AC25:   If (var_90.Text.Fields > 0) Then
  loc_124AC49:     MsgBox("Transactions Exist Can't Delete it", &H40, "Information", var_108, var_128)
  loc_124AC59:     Exit Sub
  loc_124AC5A:   End If
  loc_124AC8C:   var_12C = "Purchase Order"
  loc_124ACB7:   Proc_6_108_101061C(MemVar_1F95044, "POrder1", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value))
  loc_124AD03:   var_12C = "Purchase Order"
  loc_124AD2E:   Proc_6_108_101061C(MemVar_1F95044, "POrder", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0)
  loc_124ADA5:   Proc_6_108_101061C(MemVar_1F95044, "Stock", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0, "Stock")
  loc_124AE1C:   Proc_6_108_101061C(MemVar_1F95044, "GIN", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0, "GIN", 0)
  loc_124AE93:   Proc_6_108_101061C(MemVar_1F95044, "Purch1", "Party", CStr(Me.Fields.Item("SearchCode").Value), 0, "Purchase Bill", 0)
  loc_124AF0A:   Proc_6_108_101061C(MemVar_1F95044, "Purch2", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0, "Purchase Bill", 0)
  loc_124AF56:   var_12C = "Purchase Bill"
  loc_124AF81:   Proc_6_108_101061C(MemVar_1F95044, "SunTran", "PartyCode", CStr(Me.Fields.Item("SearchCode").Value), 0, var_12C, 0)
  loc_124AF9B:   Call Proc_11_61_11B5824(0, var_12C, 0)
  loc_124AFA3: Else
  loc_124AFC4:   MsgBox("There Is No Record To Delete", &H40, "Information", var_108, var_128)
  loc_124AFD4: End If
  loc_124AFD4: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'FB74F4
  'Data Table: 4F2ED8
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Variant
  Dim var_B8 As Variant
  loc_FB7354: On Error Goto loc_FB748E
  loc_FB7360: var_88 = Me.RecordCount
  loc_FB736E: If (var_88 > 0) Then
  loc_FB7386:   var_8C = "EDIT"
  loc_FB7394:   Call Proc_11_49_E88C08(Proc_5_1_100EC1C(var_8C, Me))
  loc_FB73AC:   Set var_90 = Me.Txt
  loc_FB73B2:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_FB73BA:   var_98.Enabled = False
  loc_FB73CC:   Call Proc_11_55_EDDC50(global_100)
  loc_FB73E6:   var_B8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FB73EE:   Set var_98 = Me.FGrid
  loc_FB7415:   Set var_90 = Me.Txt
  loc_FB741B:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98, FGrid.DispID_10000)
  loc_FB7423:   var_98.SetFocus
  loc_FB7432: Else
  loc_FB743D:   var_B8 = "Information"
  loc_FB7453:   MsgBox("There Is No Record To Edit.", &H40, var_B8, var_F8, var_118)
  loc_FB7463: End If
  loc_FB7470: Me.LblUser.Caption = vbNullString
  loc_FB7485: Me.LblLDt.Caption = vbNullString
  loc_FB748D: Exit Sub
  loc_FB748E: ' Referenced from: FB7354
  loc_FB7496: Set var_90 = Err()
  loc_FB749C: Call 0.Method_arg_1C (var_88, var_B8)
  loc_FB74AD: If (var_88 <> 0) Then
  loc_FB74B8:   Set var_90 = Err()
  loc_FB74BE:   Call 0.Method_arg_2C (var_8C)
  loc_FB74DF:   MsgBox(CVar(var_8C), &H40, "Validation", var_F8, var_118)
  loc_FB74F2: End If
  loc_FB74F2: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B1A0
  'Data Table: 4F2ED8
  loc_E1B195: Me.Global.Unload Me
  loc_E1B19D: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'F259C0
  'Data Table: 4F2ED8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_F258C0: On Error Goto loc_F25958
  loc_F258CC: var_88 = Me.RecordCount
  loc_F258DA: If (var_88 <= 0) Then
  loc_F258E3:   var_B8 = "Information"
  loc_F258FE:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_F2590E:   Exit Sub
  loc_F2590F: End If
  loc_F25916: var_10C = "Select SubCode As SearchCode,Name,G.GroupName As UnderGroup,ConPerson,Add1 As Address1,C.CityName,Phone,Mobile,FAX,EMail,PANNo As PAN,GSTIN,Active=Case When ActiveYN=0 then 'No' else 'Yes' end  ,Remark From ((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode)) Where S.NATURE='Supplier' AND G.AliasYN<>'Y' AND (S.LOGSITE_CODE='" & MemVar_1F95078
  loc_F2591D: MemVar_1F950E4 = var_10C & "' OR S.LOGSITE_CODE='HO') Order by Name"
  loc_F2592A: MemVar_1F95120 = Me
  loc_F25931: var_10C = "3500,2200,1200,2000,2000,2000,2000,1000,1000,1300,1000,1000"
  loc_F25937: Proc_6_126_F1C850(var_10C)
  loc_F25952: Call 0.Method_arg_2B0 (1, var_B8)
  loc_F25957: Exit Sub
  loc_F25958: ' Referenced from: F258C0
  loc_F25960: Set var_110 = Err()
  loc_F25966: Call 0.Method_arg_1C (var_88)
  loc_F25977: If (var_88 <> 0) Then
  loc_F25982:   Set var_110 = Err()
  loc_F25988:   Call 0.Method_arg_2C (var_10C)
  loc_F259A9:   MsgBox(CVar(var_10C), &H40, "Validation", var_E8, var_108)
  loc_F259BC: End If
  loc_F259BC: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E32A08
  'Data Table: 4F2ED8
  loc_E329F8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E32A00: Call Proc_11_57_16ECD1C(global_108)
  loc_E32A05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E31A48
  'Data Table: 4F2ED8
  loc_E31A38: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31A40: Call Proc_11_57_16ECD1C(global_108)
  loc_E31A45: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E31B68
  'Data Table: 4F2ED8
  loc_E31B58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E31B60: Call Proc_11_57_16ECD1C(global_108)
  loc_E31B65: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E39F08
  'Data Table: 4F2ED8
  loc_E39EF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39F00: Call Proc_11_57_16ECD1C(global_108)
  loc_E39F05: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_14 '10B77E8
  'Data Table: 4F2ED8
  Dim Me As Recordset15
  Dim var_A8 As String
  Dim unk_4F2F01 As Connection15
  Dim var_88 As Recordset15
  Dim var_B8 As Variant
  Dim var_132 As Integer
  Dim var_C8 As Variant
  loc_10B7520: On Error Goto loc_10B7782
  loc_10B753A: If (Me.RecordCount <= 0) Then
  loc_10B753D:   Exit Sub
  loc_10B753E: End If
  loc_10B7558: var_A8 = "Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,Active=CASE ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' END,CreditLimit,CreditDays,Remark,GSTIN From (SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode " & vbNullString
  loc_10B7561: unk_4F2F01.Execute var_A8, var_C8, -1
  loc_10B756C: Set var_88 = var_CC
  loc_10B757E: var_A4 = var_88.RecordCount
  loc_10B758C: If (var_A4 = 0) Then
  loc_10B75A8:   MsgBox("No record Found to Print", 0, var_EC, var_10C, var_12C)
  loc_10B75B8:   Exit Sub
  loc_10B75B9: End If
  loc_10B75CF: Set var_CC = var_88 
  loc_10B75DB: var_132 = CreateFieldDefFile(var_CC, MemVar_1F950B4 & "\PartyMast.ttx")
  loc_10B75E5: Set var_88 = var_CC
  loc_10B75EB: var_B8 = CVar(var_132) 'Integer
  loc_10B75EE: var_98 = var_B8 'Variant
  loc_10B760A: var_A8 = MemVar_1F950B4 & "\PartyMast.RPT"
  loc_10B7613: Call 0.Method_arg_1C (var_A8, var_B8, var_CC)
  loc_10B761E: MemVar_1F951E8 = var_CC
  loc_10B7639: Call 0.Method_arg_90 (var_CC, var_A4, var_9A, 1)
  loc_10B7641: Call 0.Method_arg_24 (var_132, &HFF)
  loc_10B764D: For var_136 =  To CInt(var_A4): var_CC = var_136 'Integer
  loc_10B7666:   Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10B766E:   Call 0.Method_arg_20 (var_13C)
  loc_10B7676:   Call 0.Method_arg_30 (var_A8)
  loc_10B76BC:   If (Ucase(CVar(var_A8)) = Ucase("Title")) Then
  loc_10B76D2:     Call 0.Method_arg_90 (var_CC, CLng(var_9A))
  loc_10B76DA:     Call 0.Method_arg_20 (var_13C)
  loc_10B76E2:     Call 0.Method_arg_38 ("'Supplier List'")
  loc_10B76EE:   End If
  loc_10B76F1: Next var_136 'Integer
  loc_10B770F: Call 0.Method_arg_64 (var_CC, CVar(var_88))
  loc_10B7717: Call 0.Method_arg_2C (var_DC)
  loc_10B7725: Call 0.Method_arg_150 (var_FC)
  loc_10B7730: Call 0.Method_arg_50 (var_A8)
  loc_10B773A: Set var_13C = Nothing
  loc_10B7754: Set var_CC = MemVar_1F951E8 
  loc_10B7760: Proc_6_99_1484404(var_CC, 0, var_A8)
  loc_10B776B: MemVar_1F951E8 = var_CC
  loc_10B777E: Set var_88 = Nothing
  loc_10B7781: Exit Sub
  loc_10B7782: ' Referenced from: 10B7520
  loc_10B778A: Set var_CC = Err()
  loc_10B7790: Call 0.Method_arg_1C (var_A4, &HFF)
  loc_10B77A1: If (var_A4 <> 0) Then
  loc_10B77AC:   Set var_CC = Err()
  loc_10B77B2:   Call 0.Method_arg_2C (var_A8)
  loc_10B77D3:   MsgBox(CVar(var_A8), &H40, "Validation", var_10C, var_12C)
  loc_10B77E6: End If
  loc_10B77E6: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E59B68
  'Data Table: 4F2ED8
  Dim Me As Recordset15
  loc_E59B2F: Me.Requery -1
  loc_E59B3F: Me.Requery -1
  loc_E59B4F: Me.Requery -1
  loc_E59B5F: Me.Requery -1
  loc_E59B64: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '12CACEC
  'Data Table: 4F2ED8
  Dim var_94 As TextBox
  Dim var_C0 As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_114 As Variant
  Dim var_104 As Variant
  Dim var_A0 As String
  Dim var_F4 As TextBox
  Dim var_15C As String
  Dim unk_4F2EFF As Connection15
  Dim var_90 As MSHFlexGrid
  loc_12CA6A8: Set var_90 = Me.TxtGrid
  loc_12CA6AE: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_12CA6B6: var_96 = var_94.Visible
  loc_12CA6C8: If (var_96 = &HFF) Then
  loc_12CA6CE:   Call Proc_11_56_11CA680(var_96)
  loc_12CA6D9:   If (var_96 = 0) Then
  loc_12CA6E1:     Call TxtGrid_LostFocus(0)
  loc_12CA6EF:     Set var_90 = Me.TxtGrid
  loc_12CA6F5:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_12CA6FD:     var_94.SetFocus
  loc_12CA709:     Exit Sub
  loc_12CA70A:   End If
  loc_12CA70A: End If
  loc_12CA70A: Call Proc_11_51_F20718(var_94)
  loc_12CA71A: Set var_90 = Me.Txt
  loc_12CA720: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_12CA749: If (Proc_183_19_E8E68C(var_94, "A/C Name") = 0) Then
  loc_12CA74C:   Exit Sub
  loc_12CA74D: End If
  loc_12CA758: Set var_90 = Me.Txt
  loc_12CA75E: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(2), var_94)
  loc_12CA787: If (Proc_183_19_E8E68C(var_94, "Under Group") = 0) Then
  loc_12CA78A:   Exit Sub
  loc_12CA78B: End If
  loc_12CA796: Set var_90 = Me.Txt
  loc_12CA79C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H15), var_94)
  loc_12CA7C5: If (Proc_183_19_E8E68C(var_94, "ActiveYN") = 0) Then
  loc_12CA7C8:   Exit Sub
  loc_12CA7C9: End If
  loc_12CA7D7: Set var_90 = Me.Txt
  loc_12CA7DD: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_94)
  loc_12CA7FC: If (var_94.Text <> vbNullString) Then
  loc_12CA80F:   Set var_90 = Me.Txt
  loc_12CA815:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_94)
  loc_12CA82B:   var_D0 = InStr(1, CVar(var_94), "@", 0)
  loc_12CA849:   Set var_9C = Me.Txt
  loc_12CA84F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4, 1)
  loc_12CA857:   var_114 = CVar(var_F4) 'Address
  loc_12CA88B:   If CBool(var_94 Or (InStr((var_D0 = 0), var_114, ".", 0) = 0)) Then
  loc_12CA8A7:     MsgBox("Please fill a Valid EMail Id.", 0, var_D0, var_F0, var_114)
  loc_12CA8B7:     Exit Sub
  loc_12CA8B8:   End If
  loc_12CA8C3:   Set var_90 = Me.Txt
  loc_12CA8C9:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD))
  loc_12CA8EF:   Set var_9C = Me.Txt
  loc_12CA8F5:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HD), var_F4)
  loc_12CA8FD:   var_F4.Text = CStr(LCase(CVar(var_94)))
  loc_12CA915: End If
  loc_12CA919: Set var_90 = Me.TopCtrl1
  loc_12CA91F: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_94)
  loc_12CA927: var_A0 = CStr()
  loc_12CA938: If (var_A0 = "Add") Then
  loc_12CA959:   Set var_90 = Me.Txt
  loc_12CA95F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_12CA967:   var_C0 = var_94.Text
  loc_12CA978:   var_15C = Proc_183_20_FB48CC(var_A0, -1)
  loc_12CA98C:   unk_4F2EFF.Execute var_9C & var_15C & "'", , 
  loc_12CA9C5:   If (var_9C.RecordCount > 0) Then
  loc_12CA9E9:     MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_12CAA04:     Set var_90 = Me.Txt
  loc_12CAA0A:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_12CAA12:     var_94.SetFocus
  loc_12CAA1E:     Exit Sub
  loc_12CAA1F:   End If
  loc_12CAA22: Else
  loc_12CAA26:   Set var_90 = Me.TopCtrl1
  loc_12CAA2C:   Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005(var_94)
  loc_12CAA34:   var_A0 = CStr()
  loc_12CAA45:   If (var_A0 = "Edit") Then
  loc_12CAA66:     Set var_90 = Me.Txt
  loc_12CAA6C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_12CAA74:     var_C0 = var_94.Text
  loc_12CAA85:     var_15C = Proc_183_20_FB48CC(var_A0, -1)
  loc_12CAAAA:     unk_4F2EFF.Execute var_9C & var_15C & "' and Name<>'" & global_80 & "'", , 
  loc_12CAAE7:     If (var_9C.RecordCount > 0) Then
  loc_12CAB0B:       MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_12CAB2C:       Set var_90 = Me.Txt
  loc_12CAB32:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_12CAB3A:       var_94.Text = global_80
  loc_12CAB51:       Set var_90 = Me.Txt
  loc_12CAB57:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_12CAB5F:       var_94.SetFocus
  loc_12CAB6B:       Exit Sub
  loc_12CAB6C:     End If
  loc_12CAB6C:   End If
  loc_12CAB6C: End If
  loc_12CAB91: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_174 'Integer
  loc_12CAB9B:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_12CABA3:   var_104 = CVar(CLng(3)) 'Long
  loc_12CABD3:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_12CABDA:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_12CABE2:     var_104 = CVar(CLng(4)) 'Long
  loc_12CAC0D:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_12CAC35:       MsgBox(CVar("Please Specify Cr/Dr in Row No " & CStr(var_86)), &H40, "Validation", var_F0, var_114)
  loc_12CAC5B:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_12CAC75:       Me.FGrid.Col = CVar(CLng(4))
  loc_12CAC81:       Set var_90 = Me.FGrid
  loc_12CACA5:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_12CACAD:       Exit Sub
  loc_12CACAE:     End If
  loc_12CACAE:   End If
  loc_12CACB1: Next var_174 'Integer
  loc_12CACBA: Set var_90 = Me.TopCtrl1
  loc_12CACC0: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_12CACD9: If (CStr() = "Add") Then
  loc_12CACDC:   Call Proc_11_59_14BE470()
  loc_12CACE4: Else
  loc_12CACE4:   Call Proc_11_60_1553978()
  loc_12CACE9: End If
  loc_12CACE9: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_9 'FA9C2C
  'Data Table: 4F2ED8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FA9AAC: On Error Goto loc_FA9BC6
  loc_FA9ABE: Me.DGAcName.Visible = False
  loc_FA9ACF: var_AC = Me.RecordCount
  loc_FA9ADD: If (var_AC > 0) Then
  loc_FA9B1C:   Set var_B4 = Me.Txt
  loc_FA9B22:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA9B2A:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FA9B5D:   var_B0 = Me.Fields.Item("Code")
  loc_FA9B6E:   var_CC = CStr(var_B0.Value)
  loc_FA9B7C:   Set var_B4 = Me.Txt
  loc_FA9B82:   Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1), var_B8)
  loc_FA9B8A:   var_B8.Tag = var_CC
  loc_FA9BA0: End If
  loc_FA9BAB: Set var_A8 = Me.Txt
  loc_FA9BB1: Call 0.Method_DGAcName_UnknownEvent_90 (CInt(1))
  loc_FA9BB9: var_B0.SetFocus
  loc_FA9BC5: Exit Sub
  loc_FA9BC6: ' Referenced from: FA9AAC
  loc_FA9BCE: Set var_A8 = Err()
  loc_FA9BD4: Call 0.Method_arg_1C (var_AC)
  loc_FA9BE5: If (var_AC <> 0) Then
  loc_FA9BF0:   Set var_A8 = Err()
  loc_FA9BF6:   Call 0.Method_arg_2C (var_CC)
  loc_FA9C17:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FA9C2A: End If
  loc_FA9C2A: Exit Sub
End Sub

Private Sub DGAcName_UnknownEvent_1F 'E73DBC
  'Data Table: 4F2ED8
  loc_E73D7A: Proc_6_153_E91D24(Me.DGAcName, arg_14)
  loc_E73D91: Set var_8C = Me.FGPoint
  loc_E73DAD: Proc_6_138_106E830(Me.DGAcName, global_112, CInt(1))
  loc_E73DBB: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F88F6C
  'Data Table: 4F2ED8
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_88 As Variant
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F88E28: On Error Goto loc_F88F06
  loc_F88E2F: Set var_A4 = Me.ListView
  loc_F88E79: Set var_BC = Me.Txt
  loc_F88E7F: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F88E87: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F88EB3: Me.FrmList.Visible = False
  loc_F88ECD: var_A0 = CStr(Me.ListView.Tag)
  loc_F88ED5: var_C8 = Val(var_A0)
  loc_F88EE3: Set var_9C = Me.Txt
  loc_F88EE9: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F88EF1: var_A4.SetFocus
  loc_F88F05: Exit Sub
  loc_F88F06: ' Referenced from: F88E28
  loc_F88F0E: Set var_88 = Err()
  loc_F88F14: Call 0.Method_arg_1C (var_CC, var_C8)
  loc_F88F25: If (var_CC <> 0) Then
  loc_F88F30:   Set var_88 = Err()
  loc_F88F36:   Call 0.Method_arg_2C (var_A0)
  loc_F88F57:   MsgBox(CVar(var_A0), &H40, "Validation", var_FC, var_11C)
  loc_F88F6A: End If
  loc_F88F6A: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'FEF9C8
  'Data Table: 4F2ED8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FEF7F4: On Error Goto loc_FEF963
  loc_FEF806: Me.DGCity.Visible = False
  loc_FEF817: var_AC = Me.RecordCount
  loc_FEF825: If (var_AC > 0) Then
  loc_FEF877:   Set var_CC = Me.Txt
  loc_FEF87D:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(Me.DGCity.Tag)), var_D0)
  loc_FEF885:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FEF8DD:   Set var_B4 = Me.DGCity
  loc_FEF8F4:   Set var_CC = Me.Txt
  loc_FEF8FA:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FEF902:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FEF922: End If
  loc_FEF937: var_C8 = CStr(Me.DGCity.Tag)
  loc_FEF940: Set var_B0 = Me.Txt
  loc_FEF946: Call 0.Method_DGCity_UnknownEvent_90 (CInt(var_C8))
  loc_FEF94E: var_B4.SetFocus
  loc_FEF962: Exit Sub
  loc_FEF963: ' Referenced from: FEF7F4
  loc_FEF96B: Set var_A8 = Err()
  loc_FEF971: Call 0.Method_arg_1C (var_AC)
  loc_FEF982: If (var_AC <> 0) Then
  loc_FEF98D:   Set var_A8 = Err()
  loc_FEF993:   Call 0.Method_arg_2C (var_C8)
  loc_FEF9B4:   MsgBox(CVar(var_C8), &H40, "Validation", var_F4, var_114)
  loc_FEF9C7: End If
  loc_FEF9C7: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_1F 'E72CF8
  'Data Table: 4F2ED8
  loc_E72CB6: Proc_6_153_E91D24(Me.DGCity, arg_14)
  loc_E72CCD: Set var_8C = Me.FGPoint
  loc_E72CE9: Proc_6_138_106E830(Me.DGCity, global_124, CInt(8))
  loc_E72CF7: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E84828
  'Data Table: 4F2ED8
  loc_E847D4: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_E847D7:   Call DGAcName_UnknownEvent_9()
  loc_E847DC: End If
  loc_E847F8: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_E847FB:   Call DGUnderAc_UnknownEvent_9()
  loc_E84800: End If
  loc_E8481C: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_E8481F:   Call DGCity_UnknownEvent_9()
  loc_E84824: End If
  loc_E84824: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'FAACA0
  'Data Table: 4F2ED8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_FAAB20: On Error Goto loc_FAAC3A
  loc_FAAB32: Me.DGUnderAc.Visible = False
  loc_FAAB43: var_AC = Me.RecordCount
  loc_FAAB51: If (var_AC > 0) Then
  loc_FAAB90:   Set var_B4 = Me.Txt
  loc_FAAB96:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FAAB9E:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FAABD1:   var_B0 = Me.Fields.Item("Code")
  loc_FAABE2:   var_CC = CStr(var_B0.Value)
  loc_FAABF0:   Set var_B4 = Me.Txt
  loc_FAABF6:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2), var_B8)
  loc_FAABFE:   var_B8.Tag = var_CC
  loc_FAAC14: End If
  loc_FAAC1F: Set var_A8 = Me.Txt
  loc_FAAC25: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(2))
  loc_FAAC2D: var_B0.SetFocus
  loc_FAAC39: Exit Sub
  loc_FAAC3A: ' Referenced from: FAAB20
  loc_FAAC42: Set var_A8 = Err()
  loc_FAAC48: Call 0.Method_arg_1C (var_AC)
  loc_FAAC59: If (var_AC <> 0) Then
  loc_FAAC64:   Set var_A8 = Err()
  loc_FAAC6A:   Call 0.Method_arg_2C (var_CC)
  loc_FAAC8B:   MsgBox(CVar(var_CC), &H40, "Validation", var_EC, var_10C)
  loc_FAAC9E: End If
  loc_FAAC9E: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_1F 'E758E8
  'Data Table: 4F2ED8
  loc_E758A6: Proc_6_153_E91D24(Me.DGUnderAc, arg_14)
  loc_E758BD: Set var_8C = Me.FGPoint
  loc_E758D9: Proc_6_138_106E830(Me.DGUnderAc, global_120, CInt(2))
  loc_E758E7: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'F071F4
  'Data Table: 4F2ED8
  Dim Me As Recordset15
  Dim var_8C As String
  Dim var_A0 As String
  loc_F07126: On Error Goto loc_F0718F
  loc_F0712F: Me.MoveFirst
  loc_F07149: var_8C = "SearchCode='" & MyValue
  loc_F07159: Me.Find var_8C & "'", 0, 1
  loc_F07165: Call Proc_11_57_16ECD1C(var_A0)
  loc_F07186: Proc_5_0_1107AD0(&HFF, Me)
  loc_F0718E: Exit Sub
  loc_F0718F: ' Referenced from: F07126
  loc_F07197: Set var_A8 = Err()
  loc_F0719D: Call 0.Method_arg_1C (var_B0, global_108)
  loc_F071AE: If (var_B0 <> 0) Then
  loc_F071B9:   Set var_A8 = Err()
  loc_F071BF:   Call 0.Method_arg_2C (var_8C)
  loc_F071E0:   MsgBox(CVar(var_8C), &H40, "Validation", var_F0, var_110)
  loc_F071F3: End If
  loc_F071F3: Exit Sub
End Sub

Public Sub Proc_11_49_E88C08(arg_C) 'E88C08
  'Data Table: 4F2ED8
  Dim var_98 As TextBox
  loc_E88BA2: Set var_8C = Me.Txt
  loc_E88BA8: Call 0.Method_Proc_11_49_E88C08C (var_8E, var_86)
  loc_E88BB8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E88BCD:   If ((var_86 = &H12) Or (var_86 = &H13)) Then
  loc_E88BD0:     GoTo loc_E88BFD
  loc_E88BD3:   End If
  loc_E88BE3:   Set var_8C = Me.Txt
  loc_E88BE9:   Call 0.Method_Proc_11_49_E88C080 (CInt(var_86), var_98)
  loc_E88BF1:   var_98.Enabled = arg_C
  loc_E88BFD:   ' Referenced from: E88BD0
  loc_E88C00: Next var_92 'Byte
  loc_E88C06: Exit Sub
End Sub

Public Sub Proc_11_50_FC4910
  'Data Table: 4F2ED8
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_FC4772: Set var_8C = Me.Txt
  loc_FC4778: Call 0.Method_Proc_11_50_FC4910C (var_8E, var_86)
  loc_FC4788: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FC479E:   Set var_8C = Me.Txt
  loc_FC47A4:   Call 0.Method_Proc_11_50_FC49100 (CInt(var_86), var_98)
  loc_FC47AC:   var_98.Text = vbNullString
  loc_FC47C8:   Set var_8C = Me.Txt
  loc_FC47CE:   Call 0.Method_Proc_11_50_FC49100 (CInt(var_86), var_98)
  loc_FC47D6:   var_98.Tag = vbNullString
  loc_FC47E5: Next var_92 'Byte
  loc_FC47F8: Me.LblNature.Caption = vbNullString
  loc_FC480D: Me.LblOpBalType.Caption = vbNullString
  loc_FC4822: Me.LblCurBalType.Caption = vbNullString
  loc_FC4837: Me.txtCurrBal.Text = vbNullString
  loc_FC4852: Me.FGrid.Rows = 1
  loc_FC486F: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FC4877: Set var_98 = Me.FGrid
  loc_FC48A6: Me.FGrid.FixedRows = 1
  loc_FC48D0: Proc_183_1_F5BEA0(Me, CStr(-2147483643), CStr(&HC00000))
  loc_FC48EE: Me.txtCurrBal.BackColor = -2147483643
  loc_FC4905: Me.txtCurrBal.ForeColor = &HC00000
  loc_FC490D: Exit Sub
  loc_FC490E: CExtInstUnk
End Sub

Public Sub Proc_11_51_F20718
  'Data Table: 4F2ED8
  loc_F20628: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F2063A:   Me.DGAcName.Visible = False
  loc_F20642: End If
  loc_F2065E: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_F20670:   Me.DGUnderAc.Visible = False
  loc_F20678: End If
  loc_F20694: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F206A6:   Me.DGCity.Visible = False
  loc_F206AE: End If
  loc_F206C9: If (Me.FrmList.Visible = &HFF) Then
  loc_F206D8:   Me.FrmList.Visible = False
  loc_F206E0: End If
  loc_F206FC: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_F2070E:   Me.FGPoint.Visible = False
  loc_F20716: End If
  loc_F20716: Exit Sub
End Sub

Public Sub Proc_11_52_1049E6C
  'Data Table: 4F2ED8
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  loc_1049BFC: Set var_88 = Me.FGrid
  loc_1049C0A: var_88.Left = CVar(CDbl(&H64))
  loc_1049C1B: var_88.Top = CVar(CDbl(3300))
  loc_1049C2C: var_88.RowHeightMin = &HDC
  loc_1049C3D: var_88.Cols = 6
  loc_1049C42: var_98 = 0
  loc_1049C4E: var_B8 = CVar(CLng(0)) 'Long
  loc_1049C53: var_D8 = "S.No"
  loc_1049C5C: LateIdCallSt
  loc_1049C67: var_98 = CVar(CLng(0)) 'Long
  loc_1049C72: var_B8 = CVar(CInt(1)) 'Integer
  loc_1049C79: LateIdCallSt
  loc_1049C84: var_98 = CVar(CLng(0)) 'Long
  loc_1049C89: var_B8 = &H226
  loc_1049C95: LateIdCallSt
  loc_1049C9D: var_98 = 0
  loc_1049CA9: var_B8 = CVar(CLng(5)) 'Long
  loc_1049CAE: var_D8 = "Voucher No"
  loc_1049CB7: LateIdCallSt
  loc_1049CC2: var_98 = CVar(CLng(5)) 'Long
  loc_1049CCD: var_B8 = CVar(CInt(1)) 'Integer
  loc_1049CD4: LateIdCallSt
  loc_1049CDF: var_98 = CVar(CLng(5)) 'Long
  loc_1049CE4: var_B8 = 0
  loc_1049CF0: LateIdCallSt
  loc_1049CF8: var_98 = 0
  loc_1049D04: var_B8 = CVar(CLng(1)) 'Long
  loc_1049D09: var_D8 = "Ref. Date"
  loc_1049D12: LateIdCallSt
  loc_1049D1D: var_98 = CVar(CLng(1)) 'Long
  loc_1049D28: var_B8 = CVar(CInt(1)) 'Integer
  loc_1049D2F: LateIdCallSt
  loc_1049D3A: var_98 = CVar(CLng(1)) 'Long
  loc_1049D3F: var_B8 = &H578
  loc_1049D4B: LateIdCallSt
  loc_1049D53: var_98 = 0
  loc_1049D5F: var_B8 = CVar(CLng(2)) 'Long
  loc_1049D64: var_D8 = "Narration"
  loc_1049D6D: LateIdCallSt
  loc_1049D78: var_98 = CVar(CLng(2)) 'Long
  loc_1049D83: var_B8 = CVar(CInt(1)) 'Integer
  loc_1049D8A: LateIdCallSt
  loc_1049D95: var_98 = CVar(CLng(2)) 'Long
  loc_1049D9A: var_B8 = &H8CA
  loc_1049DA6: LateIdCallSt
  loc_1049DAE: var_98 = 0
  loc_1049DBA: var_B8 = CVar(CLng(3)) 'Long
  loc_1049DBF: var_D8 = "Amount"
  loc_1049DC8: LateIdCallSt
  loc_1049DD3: var_98 = CVar(CLng(3)) 'Long
  loc_1049DDE: var_B8 = CVar(CInt(7)) 'Integer
  loc_1049DE5: LateIdCallSt
  loc_1049DF0: var_98 = CVar(CLng(3)) 'Long
  loc_1049DF5: var_B8 = &H4B0
  loc_1049E01: LateIdCallSt
  loc_1049E09: var_98 = 0
  loc_1049E15: var_B8 = CVar(CLng(4)) 'Long
  loc_1049E1A: var_D8 = "Cr/Dr"
  loc_1049E23: LateIdCallSt
  loc_1049E2E: var_98 = CVar(CLng(4)) 'Long
  loc_1049E39: var_B8 = CVar(CInt(1)) 'Integer
  loc_1049E40: LateIdCallSt
  loc_1049E4B: var_98 = CVar(CLng(4)) 'Long
  loc_1049E50: var_B8 = &H258
  loc_1049E5C: LateIdCallSt
  loc_1049E66: Set var_88 = Nothing 
  loc_1049E6A: Exit Sub
  loc_1049E6B: Exit Sub
End Sub

Public Sub Proc_11_53_112A004
  'Data Table: 4F2ED8
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
  loc_1129CA3: var_90 = CDbl(0)
  loc_1129CA9: var_98 = CDbl(0)
  loc_1129CAF: var_A0 = CDbl(0)
  loc_1129CD7: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_1129CE1:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_1129CE9:   var_E8 = CVar(CLng(4)) 'Long
  loc_1129D14:   If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_1129D1B:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1129D23:     var_E8 = CVar(CLng(3)) 'Long
  loc_1129D4F:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1129D5E:   Else
  loc_1129D62:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1129D6A:     var_E8 = CVar(CLng(4)) 'Long
  loc_1129D95:     If (CStr(Me.FGrid.TextMatrix)) = "Dr") Then
  loc_1129D9C:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_1129DA4:       var_E8 = CVar(CLng(3)) 'Long
  loc_1129DD0:       var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1129DDC:     End If
  loc_1129DDC:   End If
  loc_1129DDF: Next var_B8 'Integer
  loc_1129E00: var_B4 = CVar((var_98 - var_90)) 'Double
  loc_1129E10: var_A0 = CSng(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_1129E44: var_FC = CStr(Format(CVar(Abs(var_A0)), "0.00"))
  loc_1129E53: Set var_A4 = Me.Txt
  loc_1129E59: Call 0.Method_Proc_11_53_112A0040 (CInt(&H12), var_128, var_FC, 1)
  loc_1129E61: var_128.Text = 1
  loc_1129E80: If (var_A0 < CDbl(0)) Then
  loc_1129E90:   Me.LblOpBalType.Caption = "Cr"
  loc_1129E9B: Else
  loc_1129EA8:   Me.LblOpBalType.Caption = "Dr"
  loc_1129EB0: End If
  loc_1129EBE: Set var_A4 = Me.Txt
  loc_1129EC4: Call 0.Method_Proc_11_53_112A0040 (CInt(&H13), var_128, var_FC)
  loc_1129ECC: var_A0 = var_128.Tag
  loc_1129EF9: var_B4 = CVar(Abs((Val(var_FC) + var_A0))) 'Double
  loc_1129F17: Set var_12C = Me.Txt
  loc_1129F1D: Call 0.Method_Proc_11_53_112A0040 (CInt(&H13), var_130, CStr(Format(CVar(Abs(var_A0)), "0.00")), 1)
  loc_1129F25: var_130.Text = 1
  loc_1129F53: Set var_A4 = Me.Txt
  loc_1129F59: Call 0.Method_Proc_11_53_112A0040 (CInt(0), var_128, var_FC)
  loc_1129F61: var_104 = var_128.Text
  loc_1129F7F: Me.txtCurrBal.Text = Proc_183_42_107DF48(var_FC, 1)
  loc_1129FA2: Set var_A4 = Me.Txt
  loc_1129FA8: Call 0.Method_Proc_11_53_112A0040 (CInt(&H13), var_128)
  loc_1129FD0: If (CDbl((Val(var_128.Tag) + var_A0)) < CDbl(0)) Then
  loc_1129FE0:   Me.LblCurBalType.Caption = "Cr"
  loc_1129FEB: Else
  loc_1129FF8:   Me.LblCurBalType.Caption = "Dr"
  loc_112A000: End If
  loc_112A000: Exit Sub
End Sub

Public Sub Proc_11_54_10BCCEC(arg_C) '10BCCEC
  'Data Table: 4F2ED8
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
  loc_10BCA66: On Error Goto loc_10BCCBF
  loc_10BCA6C: var_90 = "F_AO"
  loc_10BCA73: Set var_8C = New 
  loc_10BCA7E: Me.Recordset15.CursorLocation = 3
  loc_10BCA86: var_D0 = arg_C
  loc_10BCA8E: Proc_183_7_EB17D4(var_E0)
  loc_10BCAB1: var_98 = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F95070
  loc_10BCAE2: var_B4 = var_98 & "' AND VT.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F95070 & "' AND VP.LOGSITE_CODE='"
  loc_10BCB0D: var_120 = CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E0 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10BCB15: var_8C.Open var_120, CVar(MemVar_1F951E0), 2
  loc_10BCB52: If (var_8C.RecordCount > 0) Then
  loc_10BCB84:   var_F0 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10BCB8D:   global_64 = CLng(CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10BCBC9:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10BCBE6:   var_98 = Proc_183_15_EAD490(MemVar_1F95070, 2, MemVar_1F9506C, global_64)
  loc_10BCBF0:   var_D0 = var_90
  loc_10BCC00:   var_100 = (CVar(3 & var_98) + Trim(var_D0))
  loc_10BCC11:   var_120 = Space((5 - Len(var_90)))
  loc_10BCC19:   var_150 = (CVar(var_B4 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D0) + var_120)
  loc_10BCC2A:   var_160 = Space((5 - Len(var_94)))
  loc_10BCC32:   var_170 = (var_150 + var_160)
  loc_10BCC3C:   var_180 = (var_170 + CVar(var_94))
  loc_10BCC55:   var_190 = Space((8 - Len(CStr(global_64))))
  loc_10BCC5D:   var_1A0 = (var_180 + var_190)
  loc_10BCC6C:   var_1C0 = (var_1A0 + CVar(CStr(global_64)))
  loc_10BCCA5:   var_88 = CStr(var_1C0)
  loc_10BCCAB: Else
  loc_10BCCAE:   var_88 = vbNullString
  loc_10BCCB1: End If
  loc_10BCCB6: Set var_8C = Nothing
  loc_10BCCB9: Proc_11_54_10BCCEC = -1
  loc_10BCCBF: ' Referenced from: 10BCA66
  loc_10BCCC5: Call 0.Method_arg_50 (var_98)
  loc_10BCCDA: Proc_183_57_104B0BC(var_98, "VoucherNo")
  loc_10BCCE6: Proc_11_54_10BCCEC = var_D0
End Sub

Public Sub Proc_11_55_EDDC50(arg_C) 'EDDC50
  'Data Table: 4F2ED8
  Dim var_94 As TextBox
  loc_EDDB99: If (CInt(arg_C) = 1) Then
  loc_EDDBA7:   For var_8A = CByte(6) To CByte(&H11): var_86 = var_8A 'Byte
  loc_EDDBBC:     Set var_90 = Me.Txt
  loc_EDDBC2:     Call 0.Method_Proc_11_55_EDDC500 (CInt(var_86), var_94)
  loc_EDDBCA:     var_94.Enabled = True
  loc_EDDBD9:   Next var_8A 'Byte
  loc_EDDBE2: Else
  loc_EDDBED:   For var_98 = CByte(6) To CByte(&H11):   var_86 = var_98 'Byte
  loc_EDDC02:     Set var_90 = Me.Txt
  loc_EDDC08:     Call 0.Method_Proc_11_55_EDDC500 (CInt(var_86), var_94)
  loc_EDDC10:     var_94.Enabled = False
  loc_EDDC2C:     Set var_90 = Me.Txt
  loc_EDDC32:     Call 0.Method_Proc_11_55_EDDC500 (CInt(var_86), var_94)
  loc_EDDC3A:     var_94.Text = vbNullString
  loc_EDDC49:   Next var_98 'Byte
  loc_EDDC4F: End If
  loc_EDDC4F: Exit Sub
End Sub

Public Sub Proc_11_56_11CA680
  'Data Table: 4F2ED8
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_124 As Variant
  loc_11CA243: var_A0 = CLng(Me.FGrid.Col)
  loc_11CA253: If (var_A0 = CLng(1)) Then
  loc_11CA25F:   Set var_8C = Me.TxtGrid
  loc_11CA265:   Call 0.Method_Proc_11_56_11CA6800 (0, var_A4)
  loc_11CA27D:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11CA2AF:   Call 0.Method_arg_184 (var_A4, var_AC, CVar(CLng(Me.FGrid.Col)))
  loc_11CA2B7:   var_114 = CVar(var_AC) 'String
  loc_11CA2BF:   Set var_128 = Me.FGrid
  loc_11CA2C5:   LateIdCallSt
  loc_11CA2E6: Else
  loc_11CA2ED:   If Not (var_A0 = CLng(2)) Then
  loc_11CA2F7:     If (var_A0 = CLng(4)) Then
  loc_11CA2FA:     End If
  loc_11CA336:     Set var_8C = Me.TxtGrid
  loc_11CA33C:     Call 0.Method_Proc_11_56_11CA6800 (0, var_A4, var_AC, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11CA344:     var_128 = var_A4.Text
  loc_11CA35A:     LateIdCallSt
  loc_11CA395:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11CA398:       Call Proc_11_53_112A004(Me.FGrid, CVar(var_AC), CVar(var_AC))
  loc_11CA3B6:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CA3BE:       var_F4 = CVar(CLng(4)) 'Long
  loc_11CA3D8:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11CA3F9:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CA446:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11CA45E:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11CA466:         Set var_A4 = Me.FGrid
  loc_11CA482:       End If
  loc_11CA482:     End If
  loc_11CA485:   Else
  loc_11CA48C:     If (var_A0 = CLng(3)) Then
  loc_11CA49B:       Set var_8C = Me.TxtGrid
  loc_11CA4A1:       Call 0.Method_Proc_11_56_11CA6800 (0, var_A4, var_AC, FGrid.DispID_10000, var_C4, var_124)
  loc_11CA4A9:       (var_AC <> vbNullString) = var_A4.Text
  loc_11CA51F:       LateIdCallSt
  loc_11CA546:       Call Proc_11_53_112A004(Me.FGrid, CVar(CStr(Format(CVar(Val(var_AC)), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11CA564:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CA56C:       var_F4 = CVar(CLng(4)) 'Long
  loc_11CA586:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11CA5A7:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11CA5F4:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11CA60C:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11CA614:         Set var_A4 = Me.FGrid
  loc_11CA630:       End If
  loc_11CA630:     End If
  loc_11CA630:   End If
  loc_11CA630: End If
  loc_11CA648: Set var_8C = Me.TxtGrid
  loc_11CA64E: Call 0.Method_Proc_11_56_11CA6800 (0, var_A4, 0, &HFF, &HFF, FGrid.DispID_10000, var_C4)
  loc_11CA656: var_A4.Visible = CVar(CLng(Me.FGrid.Col))
  loc_11CA666: Set var_8C = Me.FGrid
  loc_11CA677: Proc_11_56_11CA680 = FGrid.DispID_8001
  loc_11CA67D: (var_AC <> vbNullString) = var_F4
End Sub

Public Sub Proc_11_57_16ECD1C
  'Data Table: 4F2ED8
  Dim Me As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E4 As String
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim unk_4F2EFF As Connection15
  Dim unk_4F2F01 As Connection15
  Dim var_148 As Recordset15
  Dim var_E0 As Variant
  Dim var_CC As Variant
  Dim var_14C As String
  Dim var_1B0 As Variant
  Dim var_1FC As Label
  Dim var_88 As Recordset15
  Dim var_200 As String
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_8C As Recordset15
  Dim var_206 As Integer
  Dim var_144 As Variant
  Dim var_1C4 As TextBox
  Dim var_21C As String
  Dim var_AA As Integer
  Dim var_A8 As Double
  Dim var_218 As Variant
  Dim var_310 As Variant
  loc_16EB2A8: On Error Goto loc_16ECCB4
  loc_16EB2C2: If (Me.RecordCount > 0) Then
  loc_16EB301:   Set var_CC = Me.Txt
  loc_16EB307:   Call 0.Method_Proc_11_57_16ECD1C0 (CInt(0), var_D0)
  loc_16EB30F:   var_D0.Text = CStr(Me.Fields.Item("subcode").Value)
  loc_16EB332:   var_F4 = "Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY) LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg Where  S.SubCode='"
  loc_16EB37B:   unk_4F2EFF.Execute CStr(var_F4 & Me.Fields.Item("subcode").Value & "'"), var_144, -1
  loc_16EB386:   Set var_88 = var_CC
  loc_16EB3F6:   unk_4F2F01.Execute CStr("Select U_Name,U_AE,U_EntDt From Subgroup where SubCode='" & Me.Fields.Item("subcode").Value & "'  "), var_144, -1
  loc_16EB401:   Set var_148 = var_CC
  loc_16EB455:   var_CC = var_148.Fields
  loc_16EB4BE:   var_1AC = IIf((Proc_6_38_E69628(CVar(var_148.Fields.Item("U_AE")), var_CC) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_CC.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_16EB503:   Me.LblUser.Caption = CStr(var_CC & CVar(Proc_6_38_E69628(CVar(var_148.Fields.Item("U_Name")), var_1AC)))
  loc_16EB57D:   var_D0 = var_148.Fields.Item("U_AE")
  loc_16EB585:   var_104 = CVar(var_D0) 'Address
  loc_16EB5AA:   var_14C = Proc_6_38_E69628(var_104)
  loc_16EB5DE:   var_1AC = IIf((Proc_6_38_E69628(CVar(var_148.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((var_14C = "E"), "Last Update : ", "entdt : "))
  loc_16EB5FD:   var_1C4 = var_148.Fields.Item("U_EntDt")
  loc_16EB623:   Me.LblLDt.Caption = CStr(var_1AC & CVar(Proc_6_38_E69628(CVar(var_1C4))))
  loc_16EB66F:   If (var_88.RecordCount > 0) Then
  loc_16EB6B1:     If (Me.Fields.Item("Name").Value = "Cash") Then
  loc_16EB6BA:       global_60 = "Y"
  loc_16EB6C1:     Else
  loc_16EB6C7:       global_60 = "N"
  loc_16EB6CB:     End If
  loc_16EB6E5:     var_C8 = var_88.Fields.Item("Name")
  loc_16EB704:     Set var_CC = Me.Txt
  loc_16EB70A:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(1), var_D0)
  loc_16EB712:     var_D0.Text = CStr(var_C8.Value)
  loc_16EB736:     Set var_B4 = Me.Txt
  loc_16EB73C:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(1), var_C8)
  loc_16EB74F:     global_80 = var_C8.Text
  loc_16EB793:     Set var_CC = Me.Txt
  loc_16EB799:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(2), var_D0)
  loc_16EB7A1:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("GroupName")))
  loc_16EB7EE:     Set var_CC = Me.Txt
  loc_16EB7F4:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(2), var_D0)
  loc_16EB7FC:     var_D0.Tag = CStr(var_88.Fields.Item("GroupCode").Value)
  loc_16EB843:     global_84 = CStr(var_88.Fields.Item("MainGrCode").Value)
  loc_16EB88C:     Me.LblNature.Caption = CStr(var_88.Fields.Item("Nature").Value)
  loc_16EB8BA:     var_C8 = var_88.Fields.Item("GNature")
  loc_16EB8C2:     var_E0 = var_C8.Value
  loc_16EB8EE:     var_D0 = var_88.Fields.Item("GNature")
  loc_16EB920:     If CBool((var_E0 = "A") Or (var_D0.Value = "L")) Then
  loc_16EB92A:       global_100 = CByte(1)
  loc_16EB931:     Else
  loc_16EB938:       global_100 = CByte(0)
  loc_16EB93C:     End If
  loc_16EB94A:     Set var_B4 = Me.Txt
  loc_16EB950:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(0), var_C8, var_14C)
  loc_16EB963:     var_F4 = 0
  loc_16EB99E:     unk_4F2EFF.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1
  loc_16EB9A6:     var_CC = var_CC.Fields
  loc_16EB9AE:     var_F4 = var_D0.Item(var_D0)
  loc_16EB9B6:     var_1B0 = var_1B0.Value
  loc_16EB9BF:     var_94 = CSng(var_104)
  loc_16EB9F1:     Set var_B4 = Me.Txt
  loc_16EB9F7:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(0), var_C8, var_14C)
  loc_16EB9FF:     var_94 = var_C8.Text
  loc_16EBA0A:     var_F4 = 0
  loc_16EBA45:     unk_4F2EFF.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1
  loc_16EBA4D:     var_CC = var_CC.Fields
  loc_16EBA55:     var_F4 = var_D0.Item(var_D0)
  loc_16EBA5D:     var_1B0 = var_1B0.Value
  loc_16EBA66:     var_9C = CSng(var_104)
  loc_16EBAA7:     var_E0 = CVar(Abs((var_9C - var_94))) 'Double
  loc_16EBAC5:     Set var_B4 = Me.Txt
  loc_16EBACB:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H12), var_C8, CStr(Format(var_E0, "0.00")), 1, 1)
  loc_16EBAD3:     var_C8.Text = var_9C
  loc_16EBB38:     var_E4 = CStr(IIf((var_94 > var_9C), "Cr", IIf((var_94 < var_9C), "Dr", vbNullString)))
  loc_16EBB46:     Me.LblOpBalType.Caption = var_E4
  loc_16EBB70:     Set var_B4 = Me.Txt
  loc_16EBB76:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(0), var_C8, var_E4)
  loc_16EBB96:     Set var_CC = Me.txtCurrBal
  loc_16EBB9C:     var_CC.Text = Proc_183_42_107DF48(var_E4, var_C8.Text)
  loc_16EBBB9:     If (MemVar_1F95078 = "HO") Then
  loc_16EBBDA:       Set var_B4 = Me.Txt
  loc_16EBBE0:       Call 0.Method_Proc_11_57_16ECD1C0 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_16EBBE8:       var_E0 = var_C8.Text
  loc_16EBBF1:       var_14C = -1 & var_E4
  loc_16EBC01:       unk_4F2EFF.Execute var_14C & "'", var_CC, var_C8.Text
  loc_16EBC0C:       Set var_8C = var_CC
  loc_16EBC27:     Else
  loc_16EBC45:       Set var_B4 = Me.Txt
  loc_16EBC4B:       Call 0.Method_Proc_11_57_16ECD1C0 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_16EBC53:       var_E0 = var_C8.Text
  loc_16EBC5C:       var_14C = -1 & var_E4
  loc_16EBC6A:       var_200 = var_14C & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_16EBC7A:       unk_4F2EFF.Execute var_200 & "'", var_CC, 
  loc_16EBC85:       Set var_8C = var_CC
  loc_16EBCA1:     End If
  loc_16EBCB5:     If (var_8C.RecordCount > 0) Then
  loc_16EBCE0:       var_206 = IsNull(CVar(var_8C.Fields.Item("CurrBal")))
  loc_16EBD5E:       Set var_1B0 = Me.Txt
  loc_16EBD64:       Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H13), var_1C4, CStr(Format(IIf(var_206, 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00")))
  loc_16EBD6C:       var_1C4.Text = 1
  loc_16EBDD5:       var_D0 = var_8C.Fields.Item("CurrBal")
  loc_16EBE4F:       Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_D0.Value < 0), "Cr", vbNullString)))
  loc_16EBF17:       global_96 = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", "Cr"))
  loc_16EBF4C:       var_C8 = var_8C.Fields.Item("CurrBal")
  loc_16EBF63:       var_F4 = CVar((var_94 - var_9C)) 'Double
  loc_16EBF67:       var_104 = (var_C8.Value + 0)
  loc_16EBF7A:       Set var_CC = Me.Txt
  loc_16EBF80:       Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H13), var_D0, CStr((var_8C.Fields.Item("CurrBal").Value > 0)))
  loc_16EBF88:       var_D0.Tag = CSng(var_8C.Fields.Item("CurrBal").Value)
  loc_16EBFA5:     Else
  loc_16EBFB7:       Set var_B4 = Me.Txt
  loc_16EBFBD:       Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H13), var_C8, CStr(0))
  loc_16EBFC5:       var_C8.Text = 1
  loc_16EBFE1:       Me.LblCurBalType.Caption = vbNullString
  loc_16EBFF8:       global_96 = "Cr"
  loc_16EC00E:       Set var_B4 = Me.Txt
  loc_16EC014:       Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H13), var_C8, CStr(0))
  loc_16EC01C:       var_C8.Tag = CDbl(0)
  loc_16EC02B:     End If
  loc_16EC061:     Set var_CC = Me.Txt
  loc_16EC067:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H17), var_D0)
  loc_16EC06F:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("DealerType")))
  loc_16EC0B9:     Set var_CC = Me.Txt
  loc_16EC0BF:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(3), var_D0)
  loc_16EC0C7:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPrefix")))
  loc_16EC111:     Set var_CC = Me.Txt
  loc_16EC117:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(4), var_D0)
  loc_16EC11F:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("ConPerson")))
  loc_16EC169:     Set var_CC = Me.Txt
  loc_16EC16F:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(5), var_D0)
  loc_16EC177:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add1")))
  loc_16EC1C1:     Set var_CC = Me.Txt
  loc_16EC1C7:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(6), var_D0)
  loc_16EC1CF:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add2")))
  loc_16EC219:     Set var_CC = Me.Txt
  loc_16EC21F:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(7), var_D0)
  loc_16EC227:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Add3")))
  loc_16EC271:     Set var_CC = Me.Txt
  loc_16EC277:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(8), var_D0)
  loc_16EC27F:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CityName")))
  loc_16EC2C9:     Set var_CC = Me.Txt
  loc_16EC2CF:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(8), var_D0)
  loc_16EC2D7:     var_D0.Tag = Proc_6_38_E69628(CVar(var_88.Fields.Item("CITYCODE")))
  loc_16EC321:     Set var_CC = Me.Txt
  loc_16EC327:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(9), var_D0)
  loc_16EC32F:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Pin")))
  loc_16EC379:     Set var_CC = Me.Txt
  loc_16EC37F:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&HA), var_D0)
  loc_16EC387:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Phone")))
  loc_16EC3D1:     Set var_CC = Me.Txt
  loc_16EC3D7:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&HB), var_D0)
  loc_16EC3DF:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Mobile")))
  loc_16EC429:     Set var_CC = Me.Txt
  loc_16EC42F:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&HC), var_D0)
  loc_16EC437:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Fax")))
  loc_16EC481:     Set var_CC = Me.Txt
  loc_16EC487:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&HD), var_D0)
  loc_16EC48F:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Email")))
  loc_16EC4D9:     Set var_CC = Me.Txt
  loc_16EC4DF:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&HE), var_D0)
  loc_16EC4E7:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("CstNo")))
  loc_16EC531:     Set var_CC = Me.Txt
  loc_16EC537:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&HF), var_D0)
  loc_16EC53F:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("LstNo")))
  loc_16EC589:     Set var_CC = Me.Txt
  loc_16EC58F:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H10), var_D0)
  loc_16EC597:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("PanNo")))
  loc_16EC616:     Set var_CC = Me.Txt
  loc_16EC61C:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H15), var_D0)
  loc_16EC624:     var_D0.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 0), "No", "Yes"))
  loc_16EC67A:     Set var_CC = Me.Txt
  loc_16EC680:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H11), var_D0)
  loc_16EC688:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("Remark")))
  loc_16EC6D2:     Set var_CC = Me.Txt
  loc_16EC6D8:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H14), var_D0)
  loc_16EC6E0:     var_D0.Text = Proc_6_38_E69628(CVar(var_88.Fields.Item("TINNo")))
  loc_16EC70B:     var_C8 = var_88.Fields.Item("GSTIN")
  loc_16EC72A:     Set var_CC = Me.Txt
  loc_16EC730:     Call 0.Method_Proc_11_57_16ECD1C0 (CInt(&H16), var_D0)
  loc_16EC738:     var_D0.Text = Proc_6_38_E69628(CVar(var_C8))
  loc_16EC75F:     Me.FGrid.Rows = 1
  loc_16EC76F:     If (MemVar_1F95078 = "HO") Then
  loc_16EC786:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_16EC78D:       var_14C = var_E4 & "' and V_Type='"
  loc_16EC7AC:       Set var_B4 = Me.Txt
  loc_16EC7B2:       Call 0.Method_Proc_11_57_16ECD1C0 (CInt(0), var_C8, var_200, var_14C & "F_AO" & "' and SubCode='")
  loc_16EC7BA:       var_E0 = var_C8.Text
  loc_16EC7C3:       var_21C = -1 & var_200
  loc_16EC7D3:       unk_4F2EFF.Execute var_21C & "' Order by V_SNo", var_CC, var_206
  loc_16EC7DE:       Set var_88 = var_CC
  loc_16EC801:     Else
  loc_16EC815:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_16EC82D:       Set var_B4 = Me.Txt
  loc_16EC833:       Call 0.Method_Proc_11_57_16ECD1C0 (CInt(0), var_C8, var_14C, var_E4 & "' and SubCode='")
  loc_16EC83B:       var_E0 = var_C8.Text
  loc_16EC844:       var_200 = -1 & var_14C
  loc_16EC862:       unk_4F2EFF.Execute var_200 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_CC, 
  loc_16EC86D:       Set var_88 = var_CC
  loc_16EC88D:     End If
  loc_16EC893:     var_B0 = var_88.RecordCount
  loc_16EC8A1:     If (var_B0 > 0) Then
  loc_16EC8A6:       var_AA = 1
  loc_16EC8D4:       var_E4 = CStr(var_88.Fields.Item("DocID").Value)
  loc_16EC8DA:       global_76 = var_E4
  loc_16EC91A:       global_64 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_16EC92E:       global_68 = CByte(1)
  loc_16EC932:       ' Referenced from: 16ECC06
  loc_16EC941:       If Not(var_88.EOF) Then
  loc_16EC980:         If (var_88.Fields.Item("AmtCr").Value = 0) Then
  loc_16EC986:           var_A0 = "Dr"
  loc_16EC9AF:           Proc_183_3_E7DD58((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("AmtDr")), global_68)
  loc_16EC9B8:           var_A8 = CSng((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_16EC9C8:         Else
  loc_16ECA04:           If (var_88.Fields.Item("AmtDr").Value = 0) Then
  loc_16ECA0A:             var_A0 = "Cr"
  loc_16ECA33:             Proc_183_3_E7DD58((var_8C.Fields.Item("CurrBal").Value > 0), CVar(var_88.Fields.Item("AmtCr")), var_A8)
  loc_16ECA3C:             var_A8 = CSng((var_8C.Fields.Item("CurrBal").Value > 0))
  loc_16ECA49:           End If
  loc_16ECA49:         End If
  loc_16ECA70:         Proc_183_3_E7DD58(var_250, var_A8, var_A8)
  loc_16ECA9E:         var_144 = "dd/MMM/yyyy"
  loc_16ECAA7:         var_124 = CVar(var_88.Fields.Item("V_DATE")) 'Address
  loc_16ECAF9:         var_218 = CVar(var_AA) & Chr(9) & CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Narration")), 1 & Format(var_124, var_144) & Chr(9), 1)) 
  loc_16ECB90:         Proc_183_3_E7DD58(var_2F0, CVar(var_88.Fields.Item("V_NO")), 1 & Format(var_250, "0.00") & Chr(9) & CVar(var_A0) & Chr(9), 1)
  loc_16ECB9D:         var_310 = CVar(CStr(var_218 & Chr(9) & var_2F0)) 'String
  loc_16ECBA5:         Set var_1FC = Me.FGrid
  loc_16ECBFB:         var_AA = (var_AA + 1)
  loc_16ECC01:         var_88.MoveNext
  loc_16ECC06:         GoTo loc_16EC932
  loc_16ECC09:       End If
  loc_16ECC1C:       Me.FGrid.FixedRows = 1
  loc_16ECC27:     Else
  loc_16ECC2D:       global_76 = vbNullString
  loc_16ECC39:       global_64 = 0
  loc_16ECC43:       global_68 = CByte(0)
  loc_16ECC5C:       var_104 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_16ECC64:       Set var_C8 = Me.FGrid
  loc_16ECC93:       Me.FGrid.FixedRows = 1
  loc_16ECC9B:     End If
  loc_16ECCA0:     Set var_88 = Nothing
  loc_16ECCA3:   End If
  loc_16ECCA6: Else
  loc_16ECCA6:   Call Proc_11_50_FC4910(FGrid.DispID_10000, var_104, global_68, global_64, var_AA)
  loc_16ECCAB: End If
  loc_16ECCB0: Set var_88 = Nothing
  loc_16ECCB3: Exit Sub
  loc_16ECCB4: ' Referenced from: 16EB2A8
  loc_16ECCBC: Set var_B4 = Err()
  loc_16ECCC2: Call 0.Method_arg_1C (var_B0, FGrid.DispID_10000, var_310)
  loc_16ECCD3: If (var_B0 <> 0) Then
  loc_16ECCDE:   Set var_B4 = Err()
  loc_16ECCE4:   Call 0.Method_arg_2C (var_E4, global_64)
  loc_16ECD05:   MsgBox(CVar(var_E4), &H40, "Validation", var_124, var_144)
  loc_16ECD18: End If
  loc_16ECD18: Exit Sub
End Sub

Public Sub Proc_11_58_14FD514(arg_C, arg_10, arg_14, arg_18, arg_1C) '14FD514
  'Data Table: 4F2ED8
  Dim var_98 As TextBox
  Dim var_A0 As String
  Dim var_A4 As String
  Dim unk_4F2EFF As Connection15
  Dim var_88 As Recordset15
  Dim var_94 As Fields15
  Dim var_C4 As Variant
  Dim var_3CC As TextBox
  Dim var_9C As String
  Dim var_E8 As String
  Dim var_FC As String
  Dim var_108 As TextBox
  Dim var_124 As String
  Dim var_11C As TextBox
  Dim var_130 As TextBox
  Dim var_144 As TextBox
  Dim var_160 As String
  Dim var_158 As TextBox
  Dim var_174 As String
  Dim var_16C As TextBox
  Dim var_180 As TextBox
  Dim var_194 As TextBox
  Dim var_1A8 As TextBox
  Dim var_1C4 As String
  Dim var_1BC As TextBox
  Dim var_1C8 As String
  Dim var_1D0 As TextBox
  Dim var_1E4 As TextBox
  Dim var_1F8 As TextBox
  Dim var_214 As String
  Dim var_20C As TextBox
  Dim var_220 As String
  Dim var_2E0 As Variant
  Dim var_2E8 As TextBox
  Dim var_334 As TextBox
  Dim var_358 As Variant
  Dim var_380 As TextBox
  Dim var_440 As Variant
  loc_14FC864: On Error Goto loc_14FD4EC
  loc_14FC885: Set var_94 = Me.Txt
  loc_14FC88B: Call 0.Method_Proc_11_58_14FD5140 (CInt(2), var_98, var_9C, "SELECT * From AcGroup Where GroupCode='")
  loc_14FC893: var_C4 = var_98.Tag
  loc_14FC89C: var_A0 = -1 & var_9C
  loc_14FC8AC: unk_4F2EFF.Execute var_A0 & "'", var_C8, 
  loc_14FC8B7: Set var_88 = var_C8
  loc_14FC8E3: If (var_88.RecordCount > 0) Then
  loc_14FC90E:   var_8C = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Nature")))
  loc_14FC92E:   var_98 = var_88.Fields.Item("GroupNature")
  loc_14FC93F:   var_90 = Proc_183_2_E5AE94(CVar(var_98))
  loc_14FC94B: Else
  loc_14FC94E:   var_8C = "Other"
  loc_14FC954:   var_90 = vbNullString
  loc_14FC957: End If
  loc_14FC95F: If (arg_C = "Add") Then
  loc_14FC970:   Set var_3C8 = Me.Txt
  loc_14FC976:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&H15), var_3CC)
  loc_14FC991:   var_A0 = "Insert Into " & arg_10 & " (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,Add1,Add2,Add3,CityCode,Phone,Mobile,Fax,EMail,CSTNo,LSTNo,PANNo,Remark,U_Name,U_EntDt,U_AE,LOGSITE_CODE,TINNo,GSTIN,DealerType,ActiveYN) Values ('"
  loc_14FC9E2:   Set var_94 = Me.Txt
  loc_14FC9E8:   Call 0.Method_Proc_11_58_14FD5140 (CInt(2), var_98)
  loc_14FCA07:   var_FC = var_A0 & MemVar_1F95070 & "','" & arg_14 & "','" & arg_18 & "','" & Proc_183_20_FB48CC(arg_18) & "','" & var_98.Tag & "','" & var_90
  loc_14FCA2D:   Set var_C8 = Me.Txt
  loc_14FCA33:   Call 0.Method_Proc_11_58_14FD5140 (CInt(3), var_108)
  loc_14FCA5C:   Set var_118 = Me.Txt
  loc_14FCA62:   Call 0.Method_Proc_11_58_14FD5140 (CInt(4), var_11C)
  loc_14FCA8B:   Set var_12C = Me.Txt
  loc_14FCA91:   Call 0.Method_Proc_11_58_14FD5140 (CInt(5), var_130)
  loc_14FCABA:   Set var_140 = Me.Txt
  loc_14FCAC0:   Call 0.Method_Proc_11_58_14FD5140 (CInt(6), var_144)
  loc_14FCAD8:   var_160 = var_FC & "','" & var_8C & "','" & var_108.Text & "','" & var_11C.Text & "','" & var_130.Text & "','" & var_144.Text & "','"
  loc_14FCAE9:   Set var_154 = Me.Txt
  loc_14FCAEF:   Call 0.Method_Proc_11_58_14FD5140 (CInt(7), var_158)
  loc_14FCB18:   Set var_168 = Me.Txt
  loc_14FCB1E:   Call 0.Method_Proc_11_58_14FD5140 (CInt(8), var_16C)
  loc_14FCB47:   Set var_17C = Me.Txt
  loc_14FCB4D:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&HA), var_180)
  loc_14FCB76:   Set var_190 = Me.Txt
  loc_14FCB7C:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&HB), var_194)
  loc_14FCBA5:   Set var_1A4 = Me.Txt
  loc_14FCBAB:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&HC), var_1A8)
  loc_14FCBD4:   Set var_1B8 = Me.Txt
  loc_14FCBDA:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&HD), var_1BC)
  loc_14FCBEB:   var_1C8 = var_160 & var_158.Text & "','" & var_16C.Tag & "','" & var_180.Text & "','" & var_194.Text & "','" & var_1A8.Text & "','" & var_1BC.Text
  loc_14FCC03:   Set var_1CC = Me.Txt
  loc_14FCC09:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&HE), var_1D0)
  loc_14FCC32:   Set var_1E0 = Me.Txt
  loc_14FCC38:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&HF), var_1E4)
  loc_14FCC61:   Set var_1F4 = Me.Txt
  loc_14FCC67:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&H10), var_1F8)
  loc_14FCC90:   Set var_208 = Me.Txt
  loc_14FCC96:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&H11), var_20C)
  loc_14FCCB5:   var_220 = var_1C8 & "','" & var_1D0.Text & "','" & var_1E4.Text & "','" & var_1F8.Text & "','" & var_20C.Text & "','" & MemVar_1F950C8
  loc_14FCCCD:   Proc_183_7_EB17D4(var_230, Now)
  loc_14FCD16:   Set var_2E4 = Me.Txt
  loc_14FCD1C:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&H14), var_2E8)
  loc_14FCD4A:   Set var_330 = Me.Txt
  loc_14FCD50:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&H16), var_334)
  loc_14FCD63:   var_358 = CVar(var_220 & "',") & var_230 & ",'" & CVar(arg_1C) & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_2E8.Text) & "','" & CVar(var_334.Text) 
  loc_14FCD7E:   Set var_37C = Me.Txt
  loc_14FCD84:   Call 0.Method_Proc_11_58_14FD5140 (CInt(&H17), var_380)
  loc_14FCDD9:   global_128 = CStr(var_358 & "','" & CVar(var_380.Text) & "'," & IIf((var_3CC.Text = "Yes"), 1, 0) & ")")
  loc_14FCEE3: Else
  loc_14FCEEB:   If (arg_C = "Edit") Then
  loc_14FCEFC:     Set var_3C8 = Me.Txt
  loc_14FCF02:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&H15), var_3CC)
  loc_14FCF16:     var_9C = "Update " & arg_10
  loc_14FCF52:     Set var_94 = Me.Txt
  loc_14FCF58:     Call 0.Method_Proc_11_58_14FD5140 (CInt(2), var_98)
  loc_14FCF70:     var_E8 = var_9C & " Set Name='" & arg_18 & "',NameHelp='" & Proc_183_20_FB48CC(arg_18) & "',GroupCode='" & var_98.Tag & "',GroupNature='"
  loc_14FCFA3:     Call 0.Method_Proc_11_58_14FD5140 (CInt(3), var_108)
  loc_14FCFCC:     Set var_118 = Me.Txt
  loc_14FCFD2:     Call 0.Method_Proc_11_58_14FD5140 (CInt(4), var_11C)
  loc_14FCFFB:     Set var_12C = Me.Txt
  loc_14FD001:     Call 0.Method_Proc_11_58_14FD5140 (CInt(5), var_130)
  loc_14FD012:     var_124 = var_E8 & var_90 & "',Nature='" & var_8C & "',ConPrefix='" & var_108.Text & "',ConPerson='" & var_11C.Text & "',Add1='" & var_130.Text
  loc_14FD02A:     Set var_140 = Me.Txt
  loc_14FD030:     Call 0.Method_Proc_11_58_14FD5140 (CInt(6), var_144)
  loc_14FD059:     Set var_154 = Me.Txt
  loc_14FD05F:     Call 0.Method_Proc_11_58_14FD5140 (CInt(7), var_158)
  loc_14FD088:     Set var_168 = Me.Txt
  loc_14FD08E:     Call 0.Method_Proc_11_58_14FD5140 (CInt(8), var_16C)
  loc_14FD0B7:     Set var_17C = Me.Txt
  loc_14FD0BD:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&HA), var_180)
  loc_14FD0CE:     var_174 = var_124 & "',Add2='" & var_144.Text & "',Add3='" & var_158.Text & "',CityCode='" & var_16C.Tag & "',Phone='" & var_180.Text
  loc_14FD0E6:     Set var_190 = Me.Txt
  loc_14FD0EC:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&HB), var_194)
  loc_14FD115:     Set var_1A4 = Me.Txt
  loc_14FD11B:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&HC), var_1A8)
  loc_14FD144:     Set var_1B8 = Me.Txt
  loc_14FD14A:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&HD), var_1BC)
  loc_14FD173:     Set var_1CC = Me.Txt
  loc_14FD179:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&HE), var_1D0)
  loc_14FD18A:     var_1C4 = var_174 & "',Mobile='" & var_194.Text & "',Fax='" & var_1A8.Text & "',EMail='" & var_1BC.Text & "',CSTNo='" & var_1D0.Text
  loc_14FD1A2:     Set var_1E0 = Me.Txt
  loc_14FD1A8:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&HF), var_1E4)
  loc_14FD1D8:     Set var_1F4 = Me.Txt
  loc_14FD1DE:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&H10), var_1F8)
  loc_14FD207:     Set var_208 = Me.Txt
  loc_14FD20D:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&H11), var_20C)
  loc_14FD22C:     var_214 = var_1C4 & "',LSTNo='" & var_1E4.Text & "'," & "PANNo='" & var_1F8.Text & "',Remark='" & var_20C.Text & "',U_Name='" & MemVar_1F950C8
  loc_14FD244:     Proc_183_7_EB17D4(var_230, Now)
  loc_14FD27B:     var_2E0 = CVar(var_214 & "',U_EntDt=") & var_230 & ",U_AE='" & CVar(arg_1C) & "',LOGSITE_CODE='" & CVar(MemVar_1F95078) & "',TINNo='" 
  loc_14FD28D:     Set var_2E4 = Me.Txt
  loc_14FD293:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&H14), var_2E8)
  loc_14FD2C1:     Set var_330 = Me.Txt
  loc_14FD2C7:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&H16), var_334)
  loc_14FD2F5:     Set var_37C = Me.Txt
  loc_14FD2FB:     Call 0.Method_Proc_11_58_14FD5140 (CInt(&H17), var_380)
  loc_14FD33C:     var_440 = var_2E0 & CVar(var_2E8.Text) & "',GSTIN='" & CVar(var_334.Text) & "',DealerType='" & CVar(var_380.Text) & "',ActiveYN=" & IIf((var_3CC.Text = "Yes"), 1, 0) 
  loc_14FD363:     global_128 = CStr(var_440 & " Where SUBCODE='" & CVar(arg_14) & "'")
  loc_14FD486:     Set var_94 = Me.Txt
  loc_14FD48C:     Call 0.Method_Proc_11_58_14FD5140 (CInt(2), var_98, var_9C, "UPDATE LEDGER SET LEDGER.GROUPCODE='")
  loc_14FD494:     var_C4 = var_98.Tag
  loc_14FD49D:     var_A0 = -1 & var_9C
  loc_14FD4C9:     unk_4F2EFF.Execute var_9C & " Set Name='" & "',LEDGER.GROUPNATURE='" & var_90 & "' Where LEDGER.SUBCODE='" & arg_14 & "'", Me.Txt, 
  loc_14FD4EB:   End If
  loc_14FD4EB: End If
  loc_14FD4EB: Exit Sub
  loc_14FD4EC: ' Referenced from: 14FC864
  loc_14FD4F2: Call 0.Method_arg_50 (var_9C)
  loc_14FD4FA: var_A4 = "SubGroupUpdate"
  loc_14FD507: Proc_183_57_104B0BC(var_9C)
  loc_14FD513: Exit Sub
End Sub

Public Sub Proc_11_59_14BE470
  'Data Table: 4F2ED8
  Dim var_CC As String
  Dim var_110 As Variant
  Dim var_E0 As Variant
  Dim var_120 As Variant
  Dim var_124 As Variant
  Dim var_12C As Variant
  Dim var_130 As String
  Dim var_134 As String
  Dim unk_4F2EFF As Connection15
  Dim var_128 As Variant
  Dim var_138 As Variant
  Dim var_148 As Variant
  Dim var_B4 As Long
  Dim var_98 As Integer
  Dim var_B8 As MSHFlexGrid
  Dim var_C8 As Variant
  Dim var_180 As Variant
  Dim var_1A0 As Variant
  Dim var_100 As Variant
  Dim var_208 As Date
  Dim var_B0 As Recordset15
  Dim var_294 As Double
  Dim var_190 As Variant
  Dim var_1E8 As Double
  Dim var_398 As Variant
  Dim var_218 As Variant
  Dim var_278 As Variant
  Dim var_3F8 As Variant
  Dim var_548 As Variant
  Dim Me As Recordset15
  loc_14BD828: On Error Goto loc_14BE433
  loc_14BD82F: Set var_B8 = Me.TopCtrl1
  loc_14BD835: Call {90B5C36E-32BD-4CC7-B00ED64AB27DABE9}.DispID_68030005()
  loc_14BD84E: If (CStr() = "Add") Then
  loc_14BD851:   ' Referenced from: 14BD9C4
  loc_14BD853:   If &HFF Then
  loc_14BD863:     var_110 = CVar(Proc_183_15_EAD490(MemVar_1F95070)) 'String
  loc_14BD875:     var_C8 = "000000"
  loc_14BD88E:     var_120 = (1 + Format(var_B4, var_C8))
  loc_14BD892:     var_CC = CStr(var_120)
  loc_14BD8A1:     Set var_B8 = Me.Txt
  loc_14BD8A7:     Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_124, var_CC)
  loc_14BD8AF:     var_124.Text = 1
  loc_14BD8D7:     Set var_B8 = Me.Txt
  loc_14BD8DD:     Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_124, var_CC)
  loc_14BD8E5:     var_110 = var_124.Text
  loc_14BD8F8:     Set var_128 = Me.Txt
  loc_14BD8FE:     Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_12C)
  loc_14BD906:     var_12C.Tag = var_CC
  loc_14BD946:     Set var_B8 = Me.Txt
  loc_14BD94C:     Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_124, var_CC, "Select COUNT(*) From SubGroup Where SubCode='", var_C8, -1)
  loc_14BD964:     var_134 = var_12C & var_CC & "'"
  loc_14BD96D:     unk_4F2EFF.Execute var_134, 0, var_138
  loc_14BD97D:      = var_12C.Item(2)
  loc_14BD985:      = var_138.Value
  loc_14BD9B2:     If (var_124.Text.Fields <= 0) Then
  loc_14BD9B5:       GoTo loc_14BD9C7
  loc_14BD9B8:     End If
  loc_14BD9C1:     var_B4 = (var_B4 + 1)
  loc_14BD9C4:     GoTo loc_14BD851
  loc_14BD9C7:     ' Referenced from: 14BD9B5
  loc_14BD9C7:   End If
  loc_14BD9CA: Else
  loc_14BD9D8:   Set var_B8 = Me.Txt
  loc_14BD9DE:   Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_124)
  loc_14BD9F9:   Set var_128 = Me.Txt
  loc_14BD9FF:   Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_12C)
  loc_14BDA07:   var_12C.Tag = var_124.Text
  loc_14BDA1A: End If
  loc_14BDA23: unk_4F2EFF.BeginTrans var_14C
  loc_14BDA2A: var_98 = &HFF
  loc_14BDA3B: Set var_B8 = Me.Txt
  loc_14BDA41: Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_124, var_134)
  loc_14BDA49: var_98 = var_124.Text
  loc_14BDA5C: Set var_128 = Me.Txt
  loc_14BDA62: Call 0.Method_Proc_11_59_14BE4700 (CInt(1), var_12C)
  loc_14BDA89: var_130 = "SubGroup"
  loc_14BDA98: Call Proc_11_58_14FD514("Add", var_130, var_134, var_12C.Text, "A")
  loc_14BDACE: unk_4F2EFF.Execute global_128, var_C8, -1
  loc_14BDAFE: For var_160 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_160 'Integer
  loc_14BDB08:   var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BDB10:   var_148 = CVar(CLng(3)) 'Long
  loc_14BDB40:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_14BDB47:     var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BDB4F:     var_148 = CVar(CLng(1)) 'Long
  loc_14BDB6E:     var_180 = CVar(CLng(var_9E)) 'Long
  loc_14BDB76:     var_1A0 = CVar(CLng(1)) 'Long
  loc_14BDB85:     var_100 = Me.FGrid.TextMatrix)
  loc_14BDB90:     var_120 = CVar(CStr(var_100)) 'String
  loc_14BDB9B:     var_110 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_14BDBC3:     Call Proc_11_54_10BCCEC(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), var_110, var_120)))
  loc_14BDBCE:     global_76 = var_130
  loc_14BDC12:     If (Trim(global_76) = vbNullString) Then
  loc_14BDC2E:       MsgBox("Pl. Configur Numbring System ", 0, var_100, var_110, var_120)
  loc_14BDC3E:       GoTo loc_14BE433
  loc_14BDC41:     End If
  loc_14BDC5C:     var_C8 = Me.FGrid.TextMatrix)
  loc_14BDC6C:     var_180 = CVar(CLng(var_9E)) 'Long
  loc_14BDC74:     var_1A0 = CVar(CLng(1)) 'Long
  loc_14BDC7D:     Set var_124 = Me.FGrid
  loc_14BDC99:     var_110 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_14BDCB0:     var_1E0 = IIf((CStr(var_C8) = vbNullString), var_110, CVar(CStr(var_124.TextMatrix))))
  loc_14BDCBA:     var_208 = CDate(CDate(var_1E0))
  loc_14BDCC1:     Proc_183_7_EB17D4(var_218, var_208, var_1A0, var_180, var_C8, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_14BDCDA:     var_CC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_14BDCE1:     var_130 = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_14BDCE8:     var_134 = var_130 & MemVar_1F95078
  loc_14BDD1A:     unk_4F2EFF.Execute CStr(CVar(var_134 & "' AND V_Type='" & "F_AO" & "' AND ") & var_218 & " BETWEEN DATE_FROM AND DATE_TO"), var_278, -1
  loc_14BDD76:     Set var_B8 = Me.Txt
  loc_14BDD7C:     Call 0.Method_Proc_11_59_14BE4700 (CInt(2), var_124, CStr(Me.FGrid.TextMatrix)), "SELECT GROUPCODE,GROUPNATURE FROM ACGROUP WHERE GROUPCODE='", var_1E0, -1, var_128)
  loc_14BDDB1:     unk_4F2EFF.Execute CStr(var_130 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_1A0, var_180
  loc_14BDDBC:     Set var_B0 = var_124.Tag
  loc_14BDDEC:     If (var_B0.RecordCount > 0) Then
  loc_14BDDF3:       var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BDE26:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_14BDE2C:         var_A4 = "AmtCr"
  loc_14BDE3D:         Set var_B8 = Me.Txt
  loc_14BDE43:         Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_124, var_134, CVar(CLng(4)))
  loc_14BDE4B:         var_E0 = var_124.Text
  loc_14BDE54:         var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BDE5C:         var_148 = CVar(CLng(3)) 'Long
  loc_14BDE7E:         var_294 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BDEAC:         var_190 = CVar(CLng(var_9E)) 'Long
  loc_14BDEC3:         var_100 = Me.FGrid.TextMatrix)
  loc_14BDEFC:         Proc_183_0_127A384(MemVar_1F951E0, var_134, CDbl(0), var_294, CStr(var_B0.Fields.Item("GroupCode").Value), CDate(CStr(var_100)), var_100, CVar(CLng(1)))
  loc_14BDF27:       Else
  loc_14BDF2A:         var_A4 = "AmtDr"
  loc_14BDF3B:         Set var_B8 = Me.Txt
  loc_14BDF41:         Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_124, var_134, var_190, var_294)
  loc_14BDF49:         var_148 = var_124.Text
  loc_14BDF52:         var_E0 = CVar(CLng(var_9E)) 'Long
  loc_14BDF5A:         var_148 = CVar(CLng(3)) 'Long
  loc_14BDF7C:         var_294 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BDF91:         var_12C = var_B0.Fields
  loc_14BDFAA:         var_190 = CVar(CLng(var_9E)) 'Long
  loc_14BDFC1:         var_100 = Me.FGrid.TextMatrix)
  loc_14BDFFA:         Proc_183_0_127A384(MemVar_1F951E0, var_134, var_294, CDbl(0), CStr(var_12C.Item("GroupCode").Value), CDate(CStr(var_100)), var_100, CVar(CLng(1)))
  loc_14BE022:       End If
  loc_14BE03D:       var_C8 = Me.FGrid.TextMatrix)
  loc_14BE05E:       Set var_124 = Me.FGrid
  loc_14BE064:       var_100 = var_124.TextMatrix)
  loc_14BE06F:       var_120 = CVar(CStr(var_100)) 'String
  loc_14BE07A:       var_110 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_14BE09C:       Proc_183_7_EB17D4(var_208, IIf((CStr(var_C8) = vbNullString), var_12C.Item("GroupCode").Value, var_120), CVar(CLng(1)), CVar(CLng(var_9E)), var_C8, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_14BE0AF:       Set var_128 = Me.Txt
  loc_14BE0B5:       Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_12C, var_2B4, var_190, var_294)
  loc_14BE0BD:       var_148 = var_12C.Text
  loc_14BE0F0:       var_1E8 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14BE10E:       var_398 = Me.FGrid.TextMatrix)
  loc_14BE125:       Proc_183_7_EB17D4(var_438, MemVar_1F950EC, var_398, CVar(CLng(2)), CVar(CLng(var_9E)), var_1E8)
  loc_14BE135:       Proc_183_9_EAB2F0(var_488, var_AC, CVar(CLng(3)), CVar(CLng(var_9E)))
  loc_14BE1A3:       var_130 = "Insert Into Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A4 & ",NARRATION,U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_14BE1F9:       var_218 = CVar(var_130 & global_76 & "'," & CStr(var_9E) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F95070 & "',") 'String
  loc_14BE24D:       var_3F8 = var_218 & var_208 & ",'" & CVar(var_2B4) & "'," & CVar(var_1E8) & ",'" & CVar(CStr(var_398)) & "','" & CVar(MemVar_1F950C8) 
  loc_14BE28D:       var_548 = var_3F8 & "'," & var_438 & ",'A'," & var_488 & ",'" & var_B0.Fields.Item("GroupCode").Value & "','" & var_B0.Fields.Item("GroupNature").Value 
  loc_14BE2B7:       unk_4F2EFF.Execute CStr(var_548 & "','" & CVar(MemVar_1F95078) & "')"), var_5CC, -1
  loc_14BE348:     Else
  loc_14BE356:       var_E0 = "Group Not Defined"
  loc_14BE361:       MsgBox(var_E0, 0, var_100, var_12C.Item("GroupCode").Value, var_120)
  loc_14BE371:       GoTo loc_14BE433
  loc_14BE374:     End If
  loc_14BE374:   End If
  loc_14BE377: Next var_160 'Integer
  loc_14BE382: unk_4F2EFF.CommitTrans
  loc_14BE392: Me.Requery -1
  loc_14BE399: var_98 = 0
  loc_14BE3AA: Set var_B8 = Me.Txt
  loc_14BE3B0: Call 0.Method_Proc_11_59_14BE4700 (CInt(0), var_124)
  loc_14BE3DC: Me.Requery -1
  loc_14BE3F9: var_CC = "SearchCode = '" & var_124.Text
  loc_14BE409: Me.Find var_CC & "'", 0, 1
  loc_14BE415: Call TopCtrl1_UnknownEvent_A()
  loc_14BE41F: Set var_9C = Nothing
  loc_14BE427: Set var_A8 = Nothing
  loc_14BE42F: Set var_B0 = Nothing
  loc_14BE432: Exit Sub
  loc_14BE433: ' Referenced from: 14BE371
  loc_14BE433: ' Referenced from: 14BDC3E
  loc_14BE433: ' Referenced from: 14BD828
  loc_14BE439: If (var_98 = &HFF) Then
  loc_14BE442:   unk_4F2EFF.RollbackTrans
  loc_14BE447: End If
  loc_14BE44D: Call 0.Method_arg_50 (var_CC, var_E0)
  loc_14BE462: Proc_183_57_104B0BC(var_CC, "UpdateDataBaseAdd")
  loc_14BE46E: Exit Sub
End Sub

Public Sub Proc_11_60_1553978
  'Data Table: 4F2ED8
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_4F2EFF As Connection15
  Dim var_E4 As Variant
  Dim var_E8 As Variant
  Dim var_FC As Variant
  Dim var_8A As Integer
  Dim var_B8 As String
  Dim var_114 As String
  Dim var_118 As String
  Dim var_94 As Recordset15
  Dim var_D0 As Variant
  Dim var_B0 As Variant
  Dim var_12C As Variant
  Dim var_15C As Variant
  Dim var_1AC As String
  Dim var_1B0 As String
  Dim var_AC As Recordset15
  Dim var_E0 As Variant
  Dim var_178 As Variant
  Dim var_190 As Variant
  Dim var_98 As Recordset15
  Dim var_1F4 As Variant
  Dim var_10C As Variant
  Dim var_244 As Date
  Dim var_2BC As Double
  Dim var_1E4 As Variant
  Dim var_2A4 As Variant
  Dim var_2FC As Variant
  Dim var_168 As Double
  Dim var_3B0 As Variant
  Dim var_1BC As String
  Dim var_1C4 As String
  Dim var_1C8 As String
  Dim var_1D0 As String
  Dim var_254 As Variant
  Dim var_2B4 As Variant
  Dim var_410 As Variant
  Dim var_500 As Variant
  Dim Me As Recordset15
  loc_1552A24: On Error Goto loc_155393A
  loc_1552A54: Set var_B0 = Me.Txt
  loc_1552A5A: Call 0.Method_Proc_11_60_15539780 (CInt(2), var_B4, var_B8, "Select MainGrCode From AcGroup Where GroupCode='", var_E0, -1)
  loc_1552A62: var_E4 = var_B4.Tag
  loc_1552A6B: var_BC = var_E8 & var_B8
  loc_1552A7B: unk_4F2EFF.Execute var_BC & "'", 0, var_FC
  loc_1552A8B:  = var_E8.Item()
  loc_1552A93:  = var_FC.Value
  loc_1552A9C: var_A4 = CStr(var_E4.Fields)
  loc_1552AC5: unk_4F2EFF.BeginTrans var_110
  loc_1552AFB: Set var_B0 = Me.Txt
  loc_1552B01: Call 0.Method_Proc_11_60_15539780 (CInt(0), var_B4, var_BC, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_1552B09: var_E0 = var_B4.Text
  loc_1552B12: var_114 = -1 & var_BC
  loc_1552B22: unk_4F2EFF.Execute var_114 & "'", var_E4, &HFF
  loc_1552B2D: Set var_94 = var_E4
  loc_1552B49: ' Referenced from: 1552C82
  loc_1552B58: If Not(var_94.EOF) Then
  loc_1552B75:   var_B4 = var_94.Fields.Item("subcode")
  loc_1552B7D:   var_E0 = var_B4.Value
  loc_1552B94:   var_E4 = var_94.Fields
  loc_1552B9C:   var_E8 = var_E4.Item("AmtCr")
  loc_1552BCB:   var_178 = var_94.Fields.Item("AmtDr").Value
  loc_1552BF2:   var_190 = var_94.Fields.Item("GroupCode").Value
  loc_1552C19:   var_1A0 = var_94.Fields.Item("V_DATE").Value
  loc_1552C4A:   Proc_183_0_127A384(MemVar_1F951E0, CStr(var_E0), CSng(var_E8.Value))
  loc_1552C7D:   var_94.MoveNext
  loc_1552C82:   GoTo loc_1552B49
  loc_1552C85: End If
  loc_1552C8D: If (MemVar_1F95078 = "HO") Then
  loc_1552CA4:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1552CAB:   var_BC = var_B8 & "' and V_Type='"
  loc_1552CCA:   Set var_B0 = Me.Txt
  loc_1552CD0:   Call 0.Method_Proc_11_60_15539780 (CInt(0), var_B4, var_114, var_BC & "F_AO" & "' and SubCode='", var_E0)
  loc_1552CD8:   -1 = var_B4.Text
  loc_1552CF1:   unk_4F2EFF.Execute var_E4 & var_114 & "' Order by V_SNo", CSng(var_178), CStr(var_190)
  loc_1552CFC:   Set var_AC = var_E4
  loc_1552D1F: Else
  loc_1552D33:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_1552D4B:   Set var_B0 = Me.Txt
  loc_1552D51:   Call 0.Method_Proc_11_60_15539780 (CInt(0), var_B4, var_BC, var_B8 & "' and SubCode='")
  loc_1552D59:   var_E0 = var_B4.Text
  loc_1552D62:   var_114 = -1 & var_BC
  loc_1552D80:   unk_4F2EFF.Execute var_114 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_E4, CDate(var_1A0)
  loc_1552D8B:   Set var_AC = var_E4
  loc_1552DAB:   ' Referenced from:   1552EB1
  loc_1552DAB: End If
  loc_1552DBA: If Not(var_AC.EOF) Then
  loc_1552DD7:   var_B4 = var_AC.Fields.Item("DocID")
  loc_1552DDF:   var_E0 = var_B4.Value
  loc_1552DE9:   var_1D0 = 0
  loc_1552DFC:   var_1C8 = 0
  loc_1552E07:   var_1C4 = 0
  loc_1552E1A:   var_1BC = 0
  loc_1552E25:   var_1B0 = 0
  loc_1552E38:   var_1AC = 0
  loc_1552E6F:   var_BC = "DocId"
  loc_1552E81:   Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGER", var_BC, &HC8, CStr(var_E0), 0, 0, 0)
  loc_1552EAC:   var_AC.MoveNext
  loc_1552EB1:   GoTo loc_1552DAB
  loc_1552EB4: End If
  loc_1552EB9: Set var_AC = Nothing
  loc_1552ED7: var_C0 = "Delete From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '"
  loc_1552EE8: Set var_B0 = Me.Txt
  loc_1552EEE: Call 0.Method_Proc_11_60_15539780 (CInt(0), var_B4, var_BC, var_C0, var_E0, -1, var_E4)
  loc_1552EF6: var_1AC = var_B4.Text
  loc_1552F06: var_118 = 0 & var_BC & "'"
  loc_1552F0F: unk_4F2EFF.Execute var_118, var_1B0, var_1BC
  loc_1552F3B: Set var_B0 = Me.Txt
  loc_1552F41: Call 0.Method_Proc_11_60_15539780 (CInt(0), var_B4, var_C0)
  loc_1552F49: 0 = var_B4.Text
  loc_1552F5C: Set var_E4 = Me.Txt
  loc_1552F62: Call 0.Method_Proc_11_60_15539780 (CInt(1), var_E8, var_118)
  loc_1552F6A: var_1C4 = var_E8.Text
  loc_1552F89: var_BC = "SubGroup"
  loc_1552F98: Call Proc_11_58_14FD514("Edit", var_BC, var_C0, var_118, "E")
  loc_1552FCE: unk_4F2EFF.Execute global_128, var_E0, -1
  loc_1553001: For var_1D4 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_8C = var_1D4 'Byte
  loc_155300C:   var_D0 = CVar(CLng(var_8C)) 'Long
  loc_1553044:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1553054:     var_D0 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='"
  loc_1553064:     Set var_B0 = Me.Txt
  loc_155306A:     Call 0.Method_Proc_11_60_15539780 (CInt(0), var_B4, var_D0, var_1A0, -1, var_E4)
  loc_1553098:     unk_4F2EFF.Execute CStr(CVar(CLng(3)) & Trim(CVar(var_B4)) & "'"), var_D0, CByte(1)
  loc_15530A3:     Set var_98 = var_E4
  loc_15530D1:     If (var_98.RecordCount > 0) Then
  loc_15530D9:       var_D0 = CVar(CLng(var_8C)) 'Long
  loc_15530E1:       var_12C = CVar(CLng(1)) 'Long
  loc_1553101:       var_15C = CVar(CLng(var_8C)) 'Long
  loc_1553109:       var_1F4 = CVar(CLng(1)) 'Long
  loc_1553118:       var_10C = Me.FGrid.TextMatrix)
  loc_1553123:       var_190 = CVar(CStr(var_10C)) 'String
  loc_155312E:       var_178 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_1553156:       Call Proc_11_54_10BCCEC(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_190)))
  loc_1553161:       global_76 = var_BC
  loc_15531A5:       If (Trim(global_76) = vbNullString) Then
  loc_15531C1:         MsgBox("Pl. Configur Numbring System ", 0, var_10C, CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_190)
  loc_15531D1:         GoTo loc_155393A
  loc_15531D4:       End If
  loc_15531F0:       var_E0 = Me.FGrid.TextMatrix)
  loc_1553212:       Set var_B4 = Me.FGrid
  loc_155322E:       var_178 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_155324F:       var_244 = CDate(CDate(IIf((CStr(var_E0) = vbNullString), CVar(CLng(3)) & Trim(CVar(var_B4)), CVar(CStr(var_B4.TextMatrix))))))
  loc_1553256:       Proc_183_7_EB17D4(var_254, var_244, CVar(CLng(1)), CVar(CLng(var_8C)), var_E0, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_155326F:       var_B8 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_1553276:       var_BC = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_155327D:       var_C0 = var_BC & MemVar_1F95078
  loc_15532AF:       unk_4F2EFF.Execute CStr(CVar(var_C0 & "' AND V_Type='" & "F_AO" & "' AND ") & var_254 & " BETWEEN DATE_FROM AND DATE_TO"), var_2B4, -1
  loc_1553323:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_1553329:         var_A8 = "AmtCr"
  loc_155333A:         Set var_B0 = Me.Txt
  loc_1553340:         Call 0.Method_Proc_11_60_15539780 (CInt(0), var_B4, var_C0, CVar(CLng(4)), CVar(CLng(var_8C)), var_E4, var_BC)
  loc_1553348:         var_1F4 = var_B4.Text
  loc_1553352:         var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155335A:         var_12C = CVar(CLng(3)) 'Long
  loc_155337C:         var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_15533AB:         var_1E4 = CVar(CLng(var_8C)) 'Long
  loc_15533C2:         var_10C = Me.FGrid.TextMatrix)
  loc_15533FB:         Proc_183_0_127A384(MemVar_1F951E0, var_C0, CDbl(0), var_2BC, CStr(var_98.Fields.Item("GroupCode").Value), CDate(CStr(var_10C)), var_10C, CVar(CLng(1)))
  loc_1553426:       Else
  loc_1553429:         var_A8 = "AmtDr"
  loc_155343A:         Set var_B0 = Me.Txt
  loc_1553440:         Call 0.Method_Proc_11_60_15539780 (CInt(0), var_B4, var_C0, var_1E4, var_2BC, var_12C)
  loc_1553448:         var_D0 = var_B4.Text
  loc_1553452:         var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155345A:         var_12C = CVar(CLng(3)) 'Long
  loc_155347C:         var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1553491:         var_E8 = var_98.Fields
  loc_15534AB:         var_1E4 = CVar(CLng(var_8C)) 'Long
  loc_15534C2:         var_10C = Me.FGrid.TextMatrix)
  loc_15534FB:         Proc_183_0_127A384(MemVar_1F951E0, var_C0, var_2BC, CDbl(0), CStr(var_E8.Item("GroupCode").Value), CDate(CStr(var_10C)), var_10C, CVar(CLng(1)))
  loc_1553523:       End If
  loc_155353F:       var_E0 = Me.FGrid.TextMatrix)
  loc_1553561:       Set var_B4 = Me.FGrid
  loc_1553567:       var_10C = var_B4.TextMatrix)
  loc_1553572:       var_190 = CVar(CStr(var_10C)) 'String
  loc_155357D:       var_178 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_155359F:       Proc_183_7_EB17D4(var_244, IIf((CStr(var_E0) = vbNullString), var_E8.Item("GroupCode").Value, var_190), CVar(CLng(1)), CVar(CLng(var_8C)), var_E0, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_15535B2:       Set var_E4 = Me.Txt
  loc_15535B8:       Call 0.Method_Proc_11_60_15539780 (CInt(0), var_E8, var_2CC, var_1E4, var_2BC)
  loc_15535C0:       var_12C = var_E8.Text
  loc_15535CA:       var_2A4 = CVar(CLng(var_8C)) 'Long
  loc_15535D2:       var_2FC = CVar(CLng(3)) 'Long
  loc_15535F4:       var_168 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_1553613:       var_3B0 = Me.FGrid.TextMatrix)
  loc_155362A:       Proc_183_7_EB17D4(var_450, MemVar_1F950EC, var_3B0, CVar(CLng(2)), CVar(CLng(var_8C)), var_168)
  loc_1553698:       var_BC = "Insert Into Ledger (DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A8 & ",NARRATION,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_15536EF:       var_254 = CVar(var_BC & global_76 & "'," & CStr(var_8C) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F95070 & "',") 'String
  loc_1553743:       var_410 = var_254 & var_244 & ",'" & CVar(var_2CC) & "'," & CVar(var_168) & ",'" & CVar(CStr(var_3B0)) & "','" & CVar(MemVar_1F950C8) 
  loc_1553773:       var_500 = var_410 & "'," & var_450 & ",'E','" & var_98.Fields.Item("GroupCode").Value & "','" & var_98.Fields.Item("GroupNature").Value 
  loc_155379D:       unk_4F2EFF.Execute CStr(var_500 & "','" & CVar(MemVar_1F95078) & " ')"), var_584, -1
  loc_1553828:     Else
  loc_1553836:       var_D0 = "Group Not Defined"
  loc_1553841:       MsgBox(var_D0, 0, var_10C, var_E8.Item("GroupCode").Value, var_190)
  loc_1553851:       GoTo loc_155393A
  loc_1553854:     End If
  loc_1553854:   End If
  loc_1553857: Next var_1D4 'Byte
  loc_1553863: unk_4F2EFF.CommitTrans
  loc_1553873: Me.Requery -1
  loc_155387A: var_8A = 0
  loc_155388B: Set var_B0 = Me.Txt
  loc_1553891: Call 0.Method_Proc_11_60_15539780 (CInt(0), var_B4)
  loc_15538BD: Me.Requery -1
  loc_15538EA: Me.Find "SearchCode = '" & var_B4.Text & "'", 0, 1
  loc_155390B: var_B8 = "INI"
  loc_1553919: Call Proc_11_49_E88C08(Proc_5_1_100EC1C(var_B8, Me, global_108))
  loc_1553924: Call Proc_11_57_16ECD1C(var_D0)
  loc_155392E: Set var_88 = Nothing
  loc_1553936: Set var_98 = Nothing
  loc_1553939: Exit Sub
  loc_155393A: ' Referenced from: 1553851
  loc_155393A: ' Referenced from: 15531D1
  loc_155393A: ' Referenced from: 1552A24
  loc_1553940: If (var_8A = &HFF) Then
  loc_1553949:   unk_4F2EFF.RollbackTrans
  loc_155394E: End If
  loc_1553954: Call 0.Method_arg_50 (var_B8)
  loc_1553969: Proc_183_57_104B0BC(var_B8, "UpdateDataBaseEdit")
  loc_1553975: Exit Sub
End Sub

Public Sub Proc_11_61_11B5824
  'Data Table: 4F2ED8
  Dim Me As Recordset15
  Dim unk_4F2EFF As Connection15
  Dim var_96 As Integer
  Dim var_124 As String
  Dim var_12C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_140 As Fields15
  Dim var_130 As String
  Dim var_BC As Variant
  loc_11B5420: On Error Goto loc_11B57E6
  loc_11B542E: If (global_60 = "Y") Then
  loc_11B5452:   MsgBox("You Can not Delete this A/c", &H40, "Validation Check", var_FC, var_11C)
  loc_11B5462:   Exit Sub
  loc_11B5463: End If
  loc_11B549A: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_11B54A6:   var_120 = Me.AbsolutePosition
  loc_11B54B2:   var_94 = CVar(var_120) 'Variant
  loc_11B54BF:   unk_4F2EFF.BeginTrans var_120
  loc_11B54F5:   Set var_128 = Me.Txt
  loc_11B54FB:   Call 0.Method_Proc_11_61_11B58240 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_11B5503:   var_BC = var_12C.Text
  loc_11B550C:   var_138 = -1 & var_130
  loc_11B551C:   unk_4F2EFF.Execute var_138 & "'", var_140, &HFF
  loc_11B5527:   Set var_9C = var_140
  loc_11B5543:   ' Referenced from: 11B567C
  loc_11B5552:   If Not(var_9C.EOF) Then
  loc_11B556F:     var_12C = var_9C.Fields.Item("subcode")
  loc_11B5577:     var_BC = var_12C.Value
  loc_11B558E:     var_140 = var_9C.Fields
  loc_11B55C5:     var_FC = var_9C.Fields.Item("AmtDr").Value
  loc_11B55EC:     var_11C = var_9C.Fields.Item("GroupCode").Value
  loc_11B5613:     var_190 = var_9C.Fields.Item("V_DATE").Value
  loc_11B5644:     Proc_183_0_127A384(MemVar_1F951E0, CStr(var_BC), CSng(var_140.Item("AmtCr").Value))
  loc_11B5677:     var_9C.MoveNext
  loc_11B567C:     GoTo loc_11B5543
  loc_11B567F:   End If
  loc_11B5693:   var_124 = "Delete From Ledger Where V_Type='" & "F_AO"
  loc_11B56AB:   Set var_128 = Me.Txt
  loc_11B56B1:   Call 0.Method_Proc_11_61_11B58240 (CInt(0), var_12C, var_130, var_124 & "' and SubCode= '", var_BC)
  loc_11B56B9:   -1 = var_12C.Text
  loc_11B56D2:   unk_4F2EFF.Execute var_140 & var_130 & "'", CSng(var_FC), CStr(var_11C)
  loc_11B570E:   Set var_128 = Me.Txt
  loc_11B5714:   Call 0.Method_Proc_11_61_11B58240 (CInt(0), var_12C, var_124, "Delete From SubGroup Where SUBCode='")
  loc_11B571C:   var_BC = var_12C.Text
  loc_11B5725:   var_130 = -1 & var_124
  loc_11B5735:   unk_4F2EFF.Execute var_130 & "'", var_140, CDate(var_190)
  loc_11B5755:   unk_4F2EFF.CommitTrans
  loc_11B575C:   var_96 = 0
  loc_11B576A:   Me.Requery -1
  loc_11B5786:   If (Me.RecordCount > 0) Then
  loc_11B57A0:     If (Me.AbsolutePosition > 1) Then
  loc_11B57AB:       var_BC = (var_94 - 1)
  loc_11B57B7:       Me.AbsolutePosition = CLng(var_BC)
  loc_11B57BC:     End If
  loc_11B57BC:   End If
  loc_11B57D8:   Proc_5_0_1107AD0(&HFF, Me, global_108)
  loc_11B57E0:   Call Proc_11_57_16ECD1C(0)
  loc_11B57E5: End If
  loc_11B57E5: Exit Sub
  loc_11B57E6: ' Referenced from: 11B5420
  loc_11B57EC: If (var_96 = &HFF) Then
  loc_11B57F5:   unk_4F2EFF.RollbackTrans
  loc_11B57FA: End If
  loc_11B5800: Call 0.Method_arg_50 (var_124)
  loc_11B5815: Proc_183_57_104B0BC(var_124, "UpdateDataBaseDelete")
  loc_11B5821: Exit Sub
End Sub

Public Sub Proc_11_62_E6F730
  'Data Table: 4F2ED8
  loc_E6F6DC: Call Proc_11_51_F20718()
  loc_E6F718: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E6F71B:   Call TopCtrl1_UnknownEvent_16()
  loc_E6F723: Else
  loc_E6F726:   Call Me.SetFocus
  loc_E6F72C: End If
  loc_E6F72C: Exit Sub
End Sub
