VERSION 5.00
Begin VB.Form FaSubGroup
  Caption = "Ledger Accounts Entry"
  BackColor = &HFFC0C0&
  ForeColor = &HFF0000&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  FillColor = &HC00000&
  Icon = "FaSubGroup.frx":0
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 15210
  ClientHeight = 8025
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 31
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 5280
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 25
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
    Width = 15210
    Height = 450
    TabIndex = 89
  End
  Begin Frame FrBankDetail
    Caption = "Bank Detail :"
    BackColor = &HFFC0C0&
    ForeColor = &HC00000&
    Left = 6465
    Top = 6285
    Width = 3090
    Height = 645
    TabIndex = 79
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
      Index = 30
      BackColor = &HFFFFFF&
      ForeColor = &HC00000&
      Left = 1515
      Top = 240
      Width = 1395
      Height = 285
      Enabled = 0   'False
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
      DataFormat = 80
      DataFormat = 38
    End
    Begin Label Lbl
      Caption = "Cheque Type"
      Index = 25
      ForeColor = &HC00000&
      Left = 120
      Top = 255
      Width = 1260
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
  End
  Begin TextBox Txt
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11130
    Top = 1500
    Width = 1005
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
    Index = 28
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 1500
    Width = 2085
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
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 4965
    Width = 2790
    Height = 285
    Enabled = 0   'False
    TabIndex = 24
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
  Begin DataGrid DGAcName
    Left = 12795
    Top = 3165
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 49
  End
  Begin DataGrid DGArea
    Left = 13530
    Top = 1950
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 62
  End
  Begin DataGrid DGCity
    Left = 13365
    Top = 1170
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 50
  End
  Begin MSHFlexGrid FGrid
    Left = 555
    Top = 3420
    Width = 5640
    Height = 3915
    TabIndex = 5
  End
  Begin DataGrid DGUnderAc
    Left = 13020
    Top = 675
    Width = 5700
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 48
  End
  Begin DataGrid DGTDSCat
    Left = 13005
    Top = 0
    Width = 4845
    Height = 2985
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 73
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2040
    Top = 1815
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
  Begin Frame Frame2
    Index = 1
    BackColor = &HFFC0C0&
    ForeColor = &H0&
    Left = 9195
    Top = 7515
    Width = 6180
    Height = 1770
    TabIndex = 65
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8.25
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin Frame Frame2
      Caption = "A/c Group"
      Index = 0
      BackColor = &HC0FFFF&
      ForeColor = &HC00000&
      Left = 465
      Top = 105
      Width = 5115
      Height = 870
      TabIndex = 66
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8.25
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      BorderStyle = 0 'None
      Begin OptionButton Opt3
        Caption = "All"
        Index = 2
        BackColor = &HC0FFC0&
        ForeColor = &HC00000&
        Left = 420
        Top = 165
        Width = 840
        Height = 255
        TabIndex = 68
        Value = 255
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
      Begin OptionButton Opt3
        Caption = "Particular Group"
        Index = 3
        BackColor = &HFFFFC0&
        ForeColor = &HC00000&
        Left = 2910
        Top = 150
        Width = 1875
        Height = 285
        TabIndex = 67
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
      Begin DataCombo DCGroup
        Left = 270
        Top = 450
        Width = 4740
        Height = 360
        TabIndex = 69
      End
    End
    Begin OptionButton Opt6
      Caption = "Detail"
      Index = 0
      BackColor = &HCFE0E0&
      ForeColor = &H800080&
      Left = 1680
      Top = 330
      Width = 945
      Height = 360
      Visible = 0   'False
      TabIndex = 71
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
    End
    Begin OptionButton Opt6
      Caption = "Summary"
      Index = 1
      BackColor = &HCFE0E0&
      ForeColor = &H800080&
      Left = 3330
      Top = 405
      Width = 1260
      Height = 240
      Visible = 0   'False
      TabIndex = 70
      Value = 255
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
    End
    Begin BtnEnh BtnPrint
      Left = 540
      Top = 1095
      Width = 1080
      Height = 570
      TabIndex = 87
    End
    Begin BtnEnh BtnExit
      Left = 4395
      Top = 1080
      Width = 1080
      Height = 570
      TabIndex = 88
    End
  End
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 690
    Top = 3615
    Width = 1200
    Height = 285
    Visible = 0   'False
    TabIndex = 4
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
    Index = 23
    BackColor = &HFFFFFF&
    Left = 180
    Top = 3030
    Width = 570
    Height = 255
    Visible = 0   'False
    TabIndex = 64
    BorderStyle = 0 'None
    MaxLength = 50
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
    Left = 3960
    Top = 2940
    Width = 1485
    Height = 285
    Enabled = 0   'False
    TabIndex = 63
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
    Index = 26
    BackColor = &HFFFFFF&
    Left = 3945
    Top = 2955
    Width = 1500
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
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
    ForeColor = &HC00000&
    Left = 885
    Top = 2940
    Width = 1575
    Height = 285
    Enabled = 0   'False
    TabIndex = 59
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
    ForeColor = &HFF0000&
    Left = 17865
    Top = 4140
    Width = 2520
    Height = 1830
    Visible = 0   'False
    TabIndex = 58
    BorderStyle = 0 'None
    Begin ListView ListView
      Left = 75
      Top = 180
      Width = 2415
      Height = 1800
      TabIndex = 61
    End
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2040
    Top = 1500
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
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 8535
    Top = 1185
    Width = 3600
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
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
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 5910
    Width = 1260
    Height = 285
    Enabled = 0   'False
    TabIndex = 28
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
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 1185
    Width = 525
    Height = 285
    Enabled = 0   'False
    Text = "Mr."
    TabIndex = 6
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
    Index = 21
    BackColor = &HFFFFFF&
    Left = 17130
    Top = 8385
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    MaxLength = 20
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
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2040
    Top = 870
    Width = 1200
    Height = 285
    Visible = 0   'False
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
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 5595
    Width = 4140
    Height = 285
    TabIndex = 27
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
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 2760
    Width = 2565
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
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
    Left = 2040
    Top = 1185
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
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 1815
    Width = 4140
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
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 2130
    Width = 4140
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
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 2445
    Width = 4140
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
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 17145
    Top = 8760
    Width = 2565
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    MaxLength = 25
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
    ForeColor = &HC00000&
    Left = 7995
    Top = 3075
    Width = 4140
    Height = 285
    Enabled = 0   'False
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
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 3390
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    MaxLength = 24
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
    Left = 7995
    Top = 3705
    Width = 4140
    Height = 285
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 24
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
    Left = 7995
    Top = 4020
    Width = 4140
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
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 10845
    Top = 4335
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
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
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 7995
    Top = 4335
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 19
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
    Index = 24
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 11550
    Top = 2760
    Width = 585
    Height = 285
    Enabled = 0   'False
    Text = "Yes"
    TabIndex = 75
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
    Left = 7995
    Top = 4650
    Width = 2790
    Height = 285
    Enabled = 0   'False
    TabIndex = 23
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
    Index = 19
    BackColor = &HFFFFFF&
    Left = 17130
    Top = 7575
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 30
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
    Left = 17130
    Top = 7305
    Width = 2790
    Height = 255
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 30
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
  Begin Label Lbl
    Caption = "GSTIN"
    Index = 28
    ForeColor = &HC00000&
    Left = 6555
    Top = 5280
    Width = 600
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
  Begin Label LblLDt
    Caption = "Last Update"
    ForeColor = &HFF0000&
    Left = 4155
    Top = 7650
    Width = 2790
    Height = 285
    TabIndex = 86
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
    Left = 780
    Top = 7650
    Width = 2880
    Height = 255
    TabIndex = 85
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
    TabIndex = 84
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
    Caption = "Last Name"
    Index = 27
    ForeColor = &HC00000&
    Left = 10110
    Top = 1500
    Width = 975
    Height = 240
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
  Begin Label Lbl
    Caption = "Middle Name"
    Index = 26
    ForeColor = &HC00000&
    Left = 6570
    Top = 1485
    Width = 1260
    Height = 240
    TabIndex = 82
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
    Caption = "Last Name"
    Index = 1
    Left = 18810
    Top = 7035
    Width = 885
    Height = 195
    Visible = 0   'False
    TabIndex = 78
    AutoSize = -1  'True
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
  Begin Label Label2
    Caption = "Middle Name"
    Index = 0
    Left = 16230
    Top = 7035
    Width = 1080
    Height = 195
    Visible = 0   'False
    TabIndex = 77
    AutoSize = -1  'True
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
  Begin Label Label1
    Caption = "Nature"
    ForeColor = &H0&
    Left = 0
    Top = 0
    Width = 705
    Height = 240
    TabIndex = 76
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
    Index = 24
    ForeColor = &HC00000&
    Left = 6555
    Top = 4965
    Width = 690
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
    Caption = "T.D.S.Category"
    Index = 19
    ForeColor = &HC00000&
    Left = 615
    Top = 1815
    Width = 1425
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
  Begin Label Lbl
    Caption = "Nature"
    Index = 1
    ForeColor = &HC00000&
    Left = 2085
    Top = 2385
    Width = 630
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
  Begin Shape Shape2
    BorderColor = &HC00000&
    Left = 675
    Top = 2295
    Width = 5295
    Height = 1110
    Shape = 4
    BorderWidth = 2
  End
  Begin Label LblOpBalType
    Caption = "Dr/Cr"
    ForeColor = &HC0&
    Left = 2460
    Top = 2955
    Width = 480
    Height = 240
    TabIndex = 56
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
    ForeColor = &HC0&
    Left = 5445
    Top = 2955
    Width = 480
    Height = 240
    Visible = 0   'False
    TabIndex = 55
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
    Index = 21
    ForeColor = &HC00000&
    Left = 840
    Top = 2625
    Width = 1650
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
    Caption = "Current Balance"
    Index = 22
    ForeColor = &HC00000&
    Left = 3930
    Top = 2625
    Width = 1545
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
    Caption = "Religion"
    Index = 23
    ForeColor = &HC00000&
    Left = 6555
    Top = 5940
    Width = 795
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
  Begin Label Lbl
    Caption = "IT Ward No."
    Index = 20
    ForeColor = &H0&
    Left = 15600
    Top = 8385
    Width = 1080
    Height = 240
    Visible = 0   'False
    TabIndex = 51
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
  Begin Label Lbl
    Caption = "Code"
    Index = 18
    ForeColor = &HC00000&
    Left = 630
    Top = 870
    Width = 495
    Height = 240
    Visible = 0   'False
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
    Caption = "Remark"
    Index = 17
    ForeColor = &HC00000&
    Left = 6555
    Top = 5595
    Width = 735
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
  Begin Label LblNature
    Caption = "Nature"
    ForeColor = &HC0&
    Left = 2865
    Top = 2400
    Width = 1260
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
  Begin Label Lbl
    Caption = "Credit Days"
    Index = 16
    ForeColor = &HC00000&
    Left = 9690
    Top = 4350
    Width = 1080
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
    Caption = "Credit Limit"
    Index = 15
    ForeColor = &HC00000&
    Left = 6570
    Top = 4350
    Width = 1110
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
  Begin Label Lbl
    Caption = "Active"
    Index = 14
    ForeColor = &HC00000&
    Left = 10950
    Top = 2775
    Width = 585
    Height = 240
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
    Caption = "PAN No."
    Index = 13
    ForeColor = &HC00000&
    Left = 6555
    Top = 4665
    Width = 780
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
    Caption = "LST No."
    Index = 12
    ForeColor = &H0&
    Left = 15600
    Top = 7575
    Width = 735
    Height = 255
    Visible = 0   'False
    TabIndex = 40
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
  Begin Label Lbl
    Caption = "CST No."
    Index = 11
    ForeColor = &H0&
    Left = 15600
    Top = 7305
    Width = 765
    Height = 255
    Visible = 0   'False
    TabIndex = 39
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
  Begin Label Lbl
    Caption = "E-Mail"
    Index = 10
    ForeColor = &HC00000&
    Left = 6570
    Top = 4035
    Width = 585
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
  Begin Label Lbl
    Caption = "Fax No"
    Index = 9
    ForeColor = &HC00000&
    Left = 6570
    Top = 3720
    Width = 675
    Height = 240
    TabIndex = 37
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
    Left = 6570
    Top = 3405
    Width = 1020
    Height = 240
    TabIndex = 36
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
    Caption = "Area Name"
    Index = 6
    ForeColor = &HC00000&
    Left = 15705
    Top = 8760
    Width = 975
    Height = 210
    Visible = 0   'False
    TabIndex = 35
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
  Begin Label Lbl
    Caption = "City Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 6570
    Top = 2760
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
  Begin Label Lbl
    Caption = "Address"
    Index = 4
    ForeColor = &HC00000&
    Left = 6570
    Top = 1815
    Width = 750
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
    Caption = "Contact Person"
    Index = 3
    ForeColor = &HC00000&
    Left = 6570
    Top = 1185
    Width = 1440
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
  Begin Label Lbl
    Caption = "Phone No(s)"
    Index = 7
    ForeColor = &HC00000&
    Left = 6570
    Top = 3090
    Width = 1140
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
  Begin Label Lbl
    Caption = "Under Group"
    Index = 2
    ForeColor = &HC00000&
    Left = 615
    Top = 1500
    Width = 1215
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
    Caption = "Account Name"
    Index = 0
    ForeColor = &HC00000&
    Left = 615
    Top = 1185
    Width = 1380
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
End

Attribute VB_Name = "FaSubGroup"

Private global_96 As Byte
Private global_54 As Integer
Private global_52 As Integer
Private global_84 As Double
Private global_64 As Long

Private Sub Form_Load() '1277FD0
  'Data Table: 52BB2C
  Dim var_8C As Variant
  Dim var_B0 As Variant
  Dim var_C4 As Variant
  Dim var_B4 As String
  Dim Me As Recordset15
  Dim var_C8 As String
  Dim unk_52BB4C As Connection15
  loc_1277A1C: On Error Goto loc_1277FA6
  loc_1277A2E: Me.LblUser.Left = CDbl(13500)
  loc_1277A45: Me.LblUser.Top = CDbl(7800)
  loc_1277A5C: Me.LblLDt.Top = CDbl(8160)
  loc_1277A73: Me.LblLDt.Left = CDbl(13500)
  loc_1277A82: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1277A9A: Me.FGrid.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1277AB0: Me.FrBankDetail.BackColor = CLng(MemVar_1F951B4)
  loc_1277AC5: Set var_8C = Me.Frame2
  loc_1277ACB: Call 0.Method_Form_Load0 (1, var_B0)
  loc_1277AD3: var_B0.BackColor = CLng(MemVar_1F951B4)
  loc_1277AEC: Set var_8C = Me.Frame2
  loc_1277AF2: Call 0.Method_Form_Load0 (0, var_B0)
  loc_1277AFA: var_B0.BackColor = CLng(MemVar_1F951B4)
  loc_1277B13: Set var_8C = Me.Opt3
  loc_1277B19: Call 0.Method_Form_Load0 (2, var_B0)
  loc_1277B21: var_B0.BackColor = CLng(MemVar_1F951B4)
  loc_1277B3A: Set var_8C = Me.Opt3
  loc_1277B40: Call 0.Method_Form_Load0 (3, var_B0)
  loc_1277B48: var_B0.BackColor = CLng(MemVar_1F951B4)
  loc_1277B5E: Set var_8C = Me.TopCtrl1
  loc_1277B64: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_8001000B("AEDP")
  loc_1277B72: Call 0.Method_arg_50 (var_B4)
  loc_1277B82: Set var_8C = Me.TopCtrl1
  loc_1277B88: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030007(CVar(var_B4))
  loc_1277B9F: Call 0.Method_arg_38 (MemVar_1F953B0)
  loc_1277BB0: Call 0.Method_arg_3C (MemVar_1F950EC)
  loc_1277BC1: Call 0.Method_arg_54 (MemVar_1F9506C)
  loc_1277BD2: Call 0.Method_arg_1C (MemVar_1F95070)
  loc_1277BE3: Call 0.Method_arg_20 (MemVar_1F95078)
  loc_1277BF4: Call 0.Method_arg_28 (MemVar_1F953D4)
  loc_1277C05: Call 0.Method_arg_24 (MemVar_1F953D8)
  loc_1277C16: Call 0.Method_Form_Load0 (MemVar_1F950C8)
  loc_1277C27: Call 0.Method_arg_30 (MemVar_1F953B8)
  loc_1277C38: Call 0.Method_arg_34 (MemVar_1F953BC)
  loc_1277C52: Call 0.Method_Form_Load4 (MemVar_1F951E0)
  loc_1277C60: Set var_8C = MemVar_1F95044
  loc_1277C6F: Call 0.Method_Form_Load8 (var_8C)
  loc_1277C85: Me.TopCtrl1.Clone
  loc_1277C90: Set var_B0 = var_8C
  loc_1277C9F: Call 0.Method_arg_50 (var_B0, -1)
  loc_1277CB2: global_96 = CByte(1)
  loc_1277CC0: Set global_104 = New 
  loc_1277CD2: Me.Recordset15.CursorLocation = 3
  loc_1277CFC: var_C4 = CVar("Select SubCode As Code,Name,NameHelp,GroupCode From SubGroup WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_1277D06: Me.Open var_C4, CVar(MemVar_1F951E0), 2
  loc_1277D1A: CVarUnk
  loc_1277D1F: VerifyVarObj
  loc_1277D25: Set var_8C = Me.DGAcName
  loc_1277D2B: LateIdStAd
  loc_1277D55: Me.DGAcName.CursorLocation = 3
  loc_1277D78: var_B4 = "Select GroupCode As Code,GroupName As Name,GroupNature,MainGrCode,CurrentBalance,SubLedYN,AliasYN,GroupHelp,Nature From AcGroup WHERE (LOGSITE_CODE='" & MemVar_1F95078
  loc_1277D89: Me.Open CVar(var_B4 & "' OR LOGSITE_CODE='HO') Order by GroupName"), CVar(MemVar_1F951E0), 2
  loc_1277D9D: CVarUnk
  loc_1277DA2: VerifyVarObj
  loc_1277DA8: Set var_8C = Me.DGUnderAc
  loc_1277DAE: LateIdStAd
  loc_1277DD8: Me.DGUnderAc.CursorLocation = 3
  loc_1277E02: var_C4 = CVar("Select CityCode As Code,CityName As Name,CityHelp From City WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by CityName") 'String
  loc_1277E20: CVarUnk
  loc_1277E25: VerifyVarObj
  loc_1277E2B: Set var_8C = Me.DGCity
  loc_1277E31: LateIdStAd
  loc_1277E5B: Me.DGCity.CursorLocation = 3
  loc_1277E85: var_C4 = CVar("Select Code,Name From TDSCAT WHERE (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') Order by Name") 'String
  loc_1277E8F: r_C4, CVar(MemVar_1F951E0), 2 var_C4, CVar(MemVar_1F951E0), 2
  loc_1277EA3: CVarUnk
  loc_1277EA8: VerifyVarObj
  loc_1277EAE: Set var_8C = Me.DGTDSCat
  loc_1277EB4: LateIdStAd
  loc_1277ECC: Set global_112 = New 
  loc_1277EDE: Me.DGTDSCat.LockType = 3
  loc_1277EEE: Me.CursorLocation = 3
  loc_1277EFE: Me.CursorType = 2
  loc_1277F1E: var_C8 = "Select SubCode As SearchCode,SubCode,Site_Code,Name,LOGSITE_CODE From SubGroup Where (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') order by Name"
  loc_1277F27: unk_52BB4C.Execute var_C8, var_C4, -1
  loc_1277F4D: Call Proc_184_58_18BE944(var_8C, var_8C, New, 3, -1, var_8C)
  loc_1277F67: var_B4 = "INI"
  loc_1277F75: Call Proc_184_49_E8A38C(Proc_5_1_100EC1C(var_B4, Me, Me, New, 3), -1, Me)
  loc_1277F8B: Set var_8C = Me.Frame2
  loc_1277F91: Call 0.Method_Form_Load0 (1, var_B0, 0)
  loc_1277F99: var_B0.Visible = New
  loc_1277FA5: Exit Sub
  loc_1277FA6: ' Referenced from: 1277A1C
  loc_1277FAC: Call 0.Method_arg_50 (var_B4)
  loc_1277FC1: Proc_183_57_104B0BC(var_B4, "Form_Load")
  loc_1277FCD: Exit Sub
End Sub

Private Sub Form_Resize() '11A1A50
  'Data Table: 52BB2C
  Dim var_8C As Label
  Dim var_B4 As Variant
  Dim var_A0 As TextBox
  Dim var_C8 As Variant
  Dim var_DC As TextBox
  loc_11A163E: Call 0.Method_arg_50 (var_88)
  loc_11A1650: Me.LblFormCaption.Caption = var_88
  loc_11A1669: Me.LblFormCaption.Left = CDbl(0)
  loc_11A1675: Set var_A0 = Me.TopCtrl1
  loc_11A167B: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010006()
  loc_11A1688: Set var_8C = Me.TopCtrl1
  loc_11A168E: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_80010004()
  loc_11A16A8: Me.LblFormCaption.Top = (CDbl() + CDbl(var_B0))
  loc_11A16C3: Call 0.Method_arg_100 (var_B8)
  loc_11A16D5: Me.LblFormCaption.Width = var_B8
  loc_11A16DD: Call Proc_184_52_10CAAD0()
  loc_11A16F0: Set var_8C = Me.Txt
  loc_11A16F6: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_11A1715: Me.DGAcName.Left = CVar(var_A0.Left)
  loc_11A1731: Set var_B4 = Me.Txt
  loc_11A1737: Call 0.Method_Form_Resize0 (CInt(1), var_DC)
  loc_11A1752: Set var_8C = Me.Txt
  loc_11A1758: Call 0.Method_Form_Resize0 (CInt(1), var_A0)
  loc_11A1770: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A177F: Me.DGAcName.Top = CVar(var_A0.Left)
  loc_11A179F: Set var_8C = Me.Txt
  loc_11A17A5: Call 0.Method_Form_Resize0 (CInt(3), var_A0)
  loc_11A17C4: Me.DGUnderAc.Left = CVar(var_A0.Left)
  loc_11A17E0: Set var_B4 = Me.Txt
  loc_11A17E6: Call 0.Method_Form_Resize0 (CInt(3), var_DC)
  loc_11A1801: Set var_8C = Me.Txt
  loc_11A1807: Call 0.Method_Form_Resize0 (CInt(3), var_A0)
  loc_11A181F: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A182E: Me.DGUnderAc.Top = CVar(var_A0.Left)
  loc_11A184E: Set var_8C = Me.Txt
  loc_11A1854: Call 0.Method_Form_Resize0 (CInt(9), var_A0)
  loc_11A1873: Me.DGCity.Left = CVar(var_A0.Left)
  loc_11A188F: Set var_B4 = Me.Txt
  loc_11A1895: Call 0.Method_Form_Resize0 (CInt(9), var_DC)
  loc_11A18B0: Set var_8C = Me.Txt
  loc_11A18B6: Call 0.Method_Form_Resize0 (CInt(9), var_A0)
  loc_11A18CE: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A18DD: Me.DGCity.Top = CVar(var_A0.Left)
  loc_11A18FD: Set var_8C = Me.Txt
  loc_11A1903: Call 0.Method_Form_Resize0 (CInt(&HA), var_A0)
  loc_11A1922: Me.DGArea.Left = CVar(var_A0.Left)
  loc_11A193E: Set var_B4 = Me.Txt
  loc_11A1944: Call 0.Method_Form_Resize0 (CInt(&HA), var_DC)
  loc_11A195F: Set var_8C = Me.Txt
  loc_11A1965: Call 0.Method_Form_Resize0 (CInt(&HA), var_A0)
  loc_11A197D: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A198C: Me.DGArea.Top = CVar(var_A0.Left)
  loc_11A19AC: Set var_8C = Me.Txt
  loc_11A19B2: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_11A19D1: Me.DGTDSCat.Left = CVar(var_A0.Left)
  loc_11A19ED: Set var_B4 = Me.Txt
  loc_11A19F3: Call 0.Method_Form_Resize0 (CInt(2), var_DC)
  loc_11A1A0E: Set var_8C = Me.Txt
  loc_11A1A14: Call 0.Method_Form_Resize0 (CInt(2), var_A0)
  loc_11A1A2C: var_C8 = CVar(((var_A0.Top + var_DC.Height) + CDbl(&HF))) 'Single
  loc_11A1A3B: Me.DGTDSCat.Top = CVar(var_A0.Left)
  loc_11A1A4D: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E9075C
  'Data Table: 52BB2C
  loc_E906E7: Set global_112 = Nothing
  loc_E906F9: Set global_104 = Nothing
  loc_E9070B: Set global_108 = Nothing
  loc_E9071D: Set global_116 = Nothing
  loc_E9072F: Set global_120 = Nothing
  loc_E90741: Set global_128 = Nothing
  loc_E90753: Set global_156 = Nothing
  loc_E9075A: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) '105629C
  'Data Table: 52BB2C
  Dim var_86 As Integer
  Dim var_88 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A0 As DataGrid
  loc_1056050: On Error Goto loc_1056272
  loc_1056056: var_86 = KeyCode
  loc_1056063: If Not (var_86 = CInt(&HD)) Then
  loc_1056070:   If Not (var_86 = CInt(&H28)) Then
  loc_105607D:     If (var_86 = CInt(&H26)) Then
  loc_1056080:     End If
  loc_1056080:   End If
  loc_1056083:   var_88 = KeyCode
  loc_1056090:   If Not (var_88 = CInt(&H28)) Then
  loc_105609D:     If (var_88 = CInt(&H26)) Then
  loc_10560A0:     End If
  loc_10560A4:     Set var_8C = Me.DGAcName
  loc_10560BA:     Set var_A0 = Me.DGUnderAc
  loc_10560F1:     var_CA = Me.FrmList.Visible
  loc_105612C:     If (((((CBool(var_8C.Visible) = &HFF) Or (CBool(var_A0.Visible) = &HFF)) Or (CBool(Me.DGCity.Visible) = &HFF)) Or (var_CA = &HFF)) Or (CBool(Me.DGArea.Visible) = &HFF)) Then
  loc_105612F:       Exit Sub
  loc_1056130:     End If
  loc_1056130:   End If
  loc_1056136:   Call 0.Method_arg_1E8 (var_8C, var_88)
  loc_1056145:   If TypeOf var_8C Is arg_2 Then
  loc_105614E:     Call 0.Method_arg_1E8 (var_8C)
  loc_1056169:     Call Txt_Validate(CInt(var_8C.index))
  loc_1056174:   End If
  loc_1056180:   Set var_8C = Me 
  loc_1056190:   Call 0.Method_arg_58 (var_8C, KeyCode, Shift, var_CA)
  loc_105619E:   If (var_CA = &HFF) Then
  loc_10561A7:     Call 0.Method_arg_1E8 (var_8C, 0)
  loc_10561AF:     var_9C = var_8C.Name
  loc_10561CF:     Call 0.Method_arg_1E8 (var_A0, (Ucase(var_9C) = "TXTGRID"))
  loc_1056209:     If CBool(var_9C Or (Ucase(var_A0.Name) = "FGRID")) Then
  loc_1056216:       If (CLng(KeyCode) = &H28) Then
  loc_105621F:         Call 0.Method_arg_1E8 (var_8C)
  loc_105622D:         Call Proc_184_63_E753B0(var_8C)
  loc_1056235:       End If
  loc_1056238:     Else
  loc_105623E:       Call 0.Method_arg_1E8 (var_8C)
  loc_105624C:       Call Proc_184_63_E753B0(var_8C)
  loc_1056254:     End If
  loc_1056254:   End If
  loc_1056257: Else
  loc_1056269:   Proc_183_40_F3169C(Me, KeyCode)
  loc_1056271: End If
  loc_1056271: Exit Sub
  loc_1056272: ' Referenced from: 1056050
  loc_1056278: Call 0.Method_arg_50 (var_138, Shift)
  loc_105628D: Proc_183_57_104B0BC(var_138, "Form_KeyDown")
  loc_1056299: Exit Sub
  loc_105629A: Result var_86 End Sub 'Double
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'E1B23C
  'Data Table: 52BB2C
  Dim KeyAscii As Integer
  loc_E1B230: If (KeyAscii = CInt(&HD)) Then
  loc_E1B235:   KeyAscii = 0
  loc_E1B238: End If
  loc_E1B238: Exit Sub
End Sub

Private Sub DGCity_UnknownEvent_9 'FBA330
  'Data Table: 52BB2C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FBA198: On Error Goto loc_FBA307
  loc_FBA1AA: Me.DGCity.Visible = False
  loc_FBA1C9: If (Me.RecordCount > 0) Then
  loc_FBA21B:   Set var_CC = Me.Txt
  loc_FBA221:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(Me.DGCity.Tag)), var_D0)
  loc_FBA229:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FBA281:   Set var_B4 = Me.DGCity
  loc_FBA298:   Set var_CC = Me.Txt
  loc_FBA29E:   Call 0.Method_DGCity_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FBA2A6:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FBA2C6: End If
  loc_FBA2DB: var_C8 = CStr(Me.DGCity.Tag)
  loc_FBA2E4: Set var_B0 = Me.Txt
  loc_FBA2EA: Call 0.Method_DGCity_UnknownEvent_90 (CInt(var_C8))
  loc_FBA2F2: var_B4.SetFocus
  loc_FBA306: Exit Sub
  loc_FBA307: ' Referenced from: FBA198
  loc_FBA30D: Call 0.Method_arg_50 (var_C8)
  loc_FBA322: Proc_183_57_104B0BC(var_C8, "DGCity_Click")
  loc_FBA32E: Exit Sub
End Sub

Private Sub DGUnderAc_UnknownEvent_9 'F813CC
  'Data Table: 52BB2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F81288: On Error Goto loc_F813A2
  loc_F8129A: Me.DGUnderAc.Visible = False
  loc_F812B9: If (Me.RecordCount > 0) Then
  loc_F812F8:   Set var_B4 = Me.Txt
  loc_F812FE:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F81306:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F81339:   var_B0 = Me.Fields.Item("Code")
  loc_F8134A:   var_CC = CStr(var_B0.Value)
  loc_F81358:   Set var_B4 = Me.Txt
  loc_F8135E:   Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(3), var_B8)
  loc_F81366:   var_B8.Tag = var_CC
  loc_F8137C: End If
  loc_F81387: Set var_A8 = Me.Txt
  loc_F8138D: Call 0.Method_DGUnderAc_UnknownEvent_90 (CInt(3))
  loc_F81395: var_B0.SetFocus
  loc_F813A1: Exit Sub
  loc_F813A2: ' Referenced from: F81288
  loc_F813A8: Call 0.Method_arg_50 (var_CC)
  loc_F813BD: Proc_183_57_104B0BC(var_CC, "DGUnderAc_Click")
  loc_F813C9: Exit Sub
End Sub

Private Sub ListView_UnknownEvent_13 'F3FF24
  'Data Table: 52BB2C
  Dim var_A4 As Variant
  Dim var_C8 As Double
  Dim var_9C As ListItem
  Dim var_C0 As TextBox
  Dim var_A0 As String
  loc_F3FE1C: On Error Goto loc_F3FEFA
  loc_F3FE23: Set var_A4 = Me.ListView
  loc_F3FE6D: Set var_BC = Me.Txt
  loc_F3FE73: Call 0.Method_ListView_UnknownEvent_130 (CInt(Val(CStr(var_A4.Tag))), var_C0)
  loc_F3FE7B: var_C0.Text = Me.ListView.SelectedItem.Text
  loc_F3FEA7: Me.FrmList.Visible = False
  loc_F3FEC1: var_A0 = CStr(Me.ListView.Tag)
  loc_F3FEC9: var_C8 = Val(var_A0)
  loc_F3FED7: Set var_9C = Me.Txt
  loc_F3FEDD: Call 0.Method_ListView_UnknownEvent_130 (CInt(var_C8), var_A4)
  loc_F3FEE5: var_A4.SetFocus
  loc_F3FEF9: Exit Sub
  loc_F3FEFA: ' Referenced from: F3FE1C
  loc_F3FF00: Call 0.Method_arg_50 (var_A0, var_C8)
  loc_F3FF15: Proc_183_57_104B0BC(var_A0, "ListView_Click")
  loc_F3FF21: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F88C2C
  'Data Table: 52BB2C
  Dim var_A0 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_8C As Variant
  Dim var_10C As String
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F88AE8: On Error Goto loc_F88C01
  loc_F88AF5: Set var_88 = Me.TxtGrid
  loc_F88AFB: Call 0.Method_TxtGrid_GotFocus0 (Index)
  loc_F88B09: Proc_183_28_E216B0(var_8C)
  loc_F88B15: Call Proc_184_51_F6C9CC(var_8C)
  loc_F88B2D: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F88B48: var_A0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F88B51: Set var_8C = Me.FGrid
  loc_F88B7A: var_10C = CStr(Me.FGrid.TextMatrix))
  loc_F88B86: Set var_104 = Me.TxtGrid
  loc_F88B8C: Call 0.Method_TxtGrid_GotFocus0 (0, var_108, var_10C)
  loc_F88B94: var_108.Tag = CVar(CLng(var_8C.Col))
  loc_F88BC5: var_110 = CLng(Me.FGrid.Col)
  loc_F88BD5: If (var_110 = CLng(2)) Then
  loc_F88BE6:   Set var_88 = Me.TxtGrid
  loc_F88BEC:   Call 0.Method_TxtGrid_GotFocus0 (0, var_8C, &HF)
  loc_F88BF4:   var_8C.MaxLength = var_110
  loc_F88C00: End If
  loc_F88C00: Exit Sub
  loc_F88C01: ' Referenced from: F88AE8
  loc_F88C07: Call 0.Method_arg_50 (var_10C)
  loc_F88C1C: Proc_183_57_104B0BC(var_10C, "TxtGrid_GotFocus")
  loc_F88C28: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FF89E0
  'Data Table: 52BB2C
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_FF87F4: On Error Goto loc_FF89B5
  loc_FF8801: If (CLng(Shift) = &H1B) Then
  loc_FF8810:   Set var_88 = Me.TxtGrid
  loc_FF8816:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_FF881E:   var_90 = var_8C.Tag
  loc_FF882F:   Set var_94 = Me.TxtGrid
  loc_FF8835:   Call 0.Method_TxtGrid_KeyDown0 (0, var_98)
  loc_FF883D:   var_98.Text = var_90
  loc_FF8859:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FF8869:   Set var_88 = Me.TxtGrid
  loc_FF886F:   Call 0.Method_TxtGrid_KeyDown0 (0, var_8C)
  loc_FF8877:   var_8C.Visible = False
  loc_FF8887:   Set var_88 = Me.FGrid
  loc_FF8898:   Exit Sub
  loc_FF8899: End If
  loc_FF88AC: var_AC = CLng(Me.FGrid.Col)
  loc_FF88BC: If Not (var_AC = CLng(1)) Then
  loc_FF88C6:   If Not (var_AC = CLng(2)) Then
  loc_FF88D0:     If Not (var_AC = CLng(4)) Then
  loc_FF88DA:       If (var_AC = CLng(3)) Then
  loc_FF88DD:       End If
  loc_FF88DD:     End If
  loc_FF88DD:   End If
  loc_FF891D:   If ((CLng(Shift) = &HD) Or (((((CLng(Shift) = &H27) Or (CLng(Shift) = &H25)) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) And (global_52 = &HFF))) Then
  loc_FF8923:     Call Proc_184_57_11F5B9C(var_AE, var_AC)
  loc_FF892E:     If (var_AE = &HFF) Then
  loc_FF8965:       Set var_8C = Me.TxtGrid
  loc_FF8974:       Proc_183_25_11BCFD4(Me.FGrid, var_8C, KeyCode, Shift, global_52, 4)
  loc_FF8987:     Else
  loc_FF898C:       Call TxtGrid_LostFocus()
  loc_FF899A:       Set var_88 = Me.TxtGrid
  loc_FF89A0:       Call 0.Method_TxtGrid_KeyDown0 (0, var_8C, 0, 0)
  loc_FF89A8:       var_8C.SetFocus
  loc_FF89B4:     End If
  loc_FF89B4:   End If
  loc_FF89B4: End If
  loc_FF89B4: Exit Sub
  loc_FF89B5: ' Referenced from: FF87F4
  loc_FF89BB: Call 0.Method_arg_50 (var_90, 0, 0)
  loc_FF89D0: Proc_183_57_104B0BC(var_90, "TxtGrid_KeyDown")
  loc_FF89DC: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'EBFF38
  'Data Table: 52BB2C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim arg_61FF As Double
  loc_EBFEA4: On Error Goto loc_EBFF0D
  loc_EBFEAA: Proc_183_46_E07C50(arg_10)
  loc_EBFEC2: var_9C = CLng(Me.FGrid.Col)
  loc_EBFED2: If (var_9C = CLng(3)) Then
  loc_EBFEDF:   Set var_88 = Me.TxtGrid
  loc_EBFEE5:   Call 0.Method_TxtGrid_KeyPress0 (KeyAscii, var_A0)
  loc_EBFF00:   Proc_183_22_129BBAC(var_A0, arg_10, &HA)
  loc_EBFF0C: End If
  loc_EBFF0C: Exit Sub
  loc_EBFF0D: ' Referenced from: EBFEA4
  loc_EBFF13: Call 0.Method_arg_50 (var_AC, 2)
  loc_EBFF28: Proc_183_57_104B0BC(var_AC, "TxtGrid_KeyPress")
  loc_EBFF34: Exit Sub
  loc_EBFF35: arg_61FF = var_9C
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) '107ADD0
  'Data Table: 52BB2C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_A0 As TextBox
  Dim var_11C As Variant
  Dim var_12C As Variant
  Dim var_178 As Double
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As MSHFlexGrid
  Dim var_14C As Variant
  loc_107AB50: On Error Goto loc_107ADA5
  loc_107AB66: var_9C = CLng(Me.FGrid.Col)
  loc_107AB76: If (var_9C = CLng(4)) Then
  loc_107AB83:   Set var_A8 = Me.TxtGrid
  loc_107AB89:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_AC)
  loc_107AB9B:   Set var_88 = Me.TxtGrid
  loc_107ABA1:   Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107AC0C:   If CBool((Len(var_A0.Text) = 0) Or (Ucase(Mid(CVar(var_AC), 1, 1)) = "C")) Then
  loc_107AC1C:     Set var_88 = Me.TxtGrid
  loc_107AC22:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107AC2A:     var_A0.Text = "Cr"
  loc_107AC39:   Else
  loc_107AC43:     Set var_88 = Me.TxtGrid
  loc_107AC49:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107AC8B:     If (Ucase(Mid(CVar(var_A0), 1, 1)) = "D") Then
  loc_107AC9B:       Set var_88 = Me.TxtGrid
  loc_107ACA1:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107ACA9:       var_A0.Text = "Dr"
  loc_107ACB8:     Else
  loc_107ACC5:       Set var_88 = Me.TxtGrid
  loc_107ACCB:       Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107ACD3:       var_A0.Text = "Cr"
  loc_107ACDF:     End If
  loc_107ACDF:   End If
  loc_107ACE2: Else
  loc_107ACE9:   If (var_9C = CLng(3)) Then
  loc_107ACF9:     Set var_88 = Me.TxtGrid
  loc_107ACFF:     Call 0.Method_TxtGrid_KeyUp0 (KeyCode, var_A0)
  loc_107AD07:     var_A4 = var_A0.Text
  loc_107AD14:     var_178 = Val(var_A4)
  loc_107AD2A:     var_11C = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_107AD42:     var_14C = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_107AD6F:     var_12C = CVar(CStr(Format(CVar(var_178), "0.00"))) 'String
  loc_107AD77:     Set var_170 = Me.FGrid
  loc_107AD7D:     LateIdCallSt
  loc_107ADA4:   End If
  loc_107ADA4: End If
  loc_107ADA4: Exit Sub
  loc_107ADA5: ' Referenced from: 107AB50
  loc_107ADAB: Call 0.Method_arg_50 (var_A4, var_170, var_12C, 1, 1)
  loc_107ADC0: Proc_183_57_104B0BC(var_A4, "TxtGrid_KeyUp", var_14C)
  loc_107ADCC: Exit Sub
  loc_107ADCE: Loop Until (var_178 = var_11C) 'do at: 107601A
End Sub

Private Sub TxtGrid_LostFocus(Index As Integer) 'E8ACE4
  'Data Table: 52BB2C
  loc_E8AC80: On Error Goto loc_E8ACBB
  loc_E8AC8C: If (global_56 = 0) Then
  loc_E8AC8F:   Exit Sub
  loc_E8AC90: End If
  loc_E8AC9A: Set var_88 = Me.TxtGrid
  loc_E8ACA0: Call 0.Method_TxtGrid_LostFocus0 (Index)
  loc_E8ACAE: Proc_183_27_E23198(var_8C)
  loc_E8ACBA: Exit Sub
  loc_E8ACBB: ' Referenced from: E8AC80
  loc_E8ACC1: Call 0.Method_arg_50 (var_94)
  loc_E8ACD6: Proc_183_57_104B0BC(var_94, "TxtGrid_LostFocus")
  loc_E8ACE2: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) '11BB3FC
  'Data Table: 52BB2C
  Dim var_88 As MSHFlexGrid
  Dim var_9C As Long
  Dim var_D0 As Variant
  Dim var_C0 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_A0 As Variant
  Dim var_A8 As String
  Dim var_120 As Variant
  Dim var_190 As Double
  loc_11BAFCC: On Error Goto loc_11BB3D3
  loc_11BAFE2: var_9C = CLng(Me.FGrid.Col)
  loc_11BAFF2: If (var_9C = CLng(1)) Then
  loc_11BAFFF:   Set var_88 = Me.TxtGrid
  loc_11BB005:   Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0)
  loc_11BB01D:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11BB04F:   Call 0.Method_arg_184 (var_A0, var_A8, CVar(CLng(Me.FGrid.Col)))
  loc_11BB057:   var_110 = CVar(var_A8) 'String
  loc_11BB05F:   Set var_124 = Me.FGrid
  loc_11BB065:   LateIdCallSt
  loc_11BB086: Else
  loc_11BB08D:   If Not (var_9C = CLng(2)) Then
  loc_11BB097:     If (var_9C = CLng(4)) Then
  loc_11BB09A:     End If
  loc_11BB0D7:     Set var_88 = Me.TxtGrid
  loc_11BB0DD:     Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11BB0E5:     var_124 = var_A0.Text
  loc_11BB0FB:     LateIdCallSt
  loc_11BB136:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11BB139:       Call Proc_184_53_1147C8C(Me.FGrid, CVar(var_A8), CVar(var_A8))
  loc_11BB157:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11BB15F:       var_F0 = CVar(CLng(4)) 'Long
  loc_11BB179:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11BB19A:       var_120 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11BB1E7:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11BB1FF:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11BB207:         Set var_A0 = Me.FGrid
  loc_11BB223:       End If
  loc_11BB223:     End If
  loc_11BB226:   Else
  loc_11BB22D:     If (var_9C = CLng(3)) Then
  loc_11BB23D:       Set var_88 = Me.TxtGrid
  loc_11BB243:       Call 0.Method_TxtGrid_Validate0 (Cancel, var_A0, var_A8, FGrid.DispID_10000, var_C0, var_120)
  loc_11BB24B:       (var_A8 <> vbNullString) = var_A0.Text
  loc_11BB258:       var_190 = Val(var_A8)
  loc_11BB2C1:       LateIdCallSt
  loc_11BB2E8:       Call Proc_184_53_1147C8C(Me.FGrid, CVar(CStr(Format(CVar(var_190), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11BB306:       var_D0 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11BB30E:       var_F0 = CVar(CLng(4)) 'Long
  loc_11BB328:       var_A8 = CStr(Me.FGrid.TextMatrix))
  loc_11BB349:       var_120 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11BB396:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11BB3AE:         var_C0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11BB3B6:         Set var_A0 = Me.FGrid
  loc_11BB3D2:       End If
  loc_11BB3D2:     End If
  loc_11BB3D2:   End If
  loc_11BB3D2: End If
  loc_11BB3D2: Exit Sub
  loc_11BB3D3: ' Referenced from: 11BAFCC
  loc_11BB3D9: Call 0.Method_arg_50 (var_A8, FGrid.DispID_10000, var_C0, CVar(CLng(Me.FGrid.Col)), (var_A8 <> vbNullString), var_F0)
  loc_11BB3EE: Proc_183_57_104B0BC(var_A8, "TxtGrid_Validate", CVar(CLng(Me.FGrid.Row)), var_190)
  loc_11BB3FA: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E3C904
  'Data Table: 52BB2C
  Dim var_8C As Frame
  loc_E3C8E7: Set var_88 = Me.Frame2
  loc_E3C8ED: Call 0.Method_btnExit_UnknownEvent_90 (1, var_8C)
  loc_E3C8F5: var_8C.Visible = False
  loc_E3C901: Exit Sub
End Sub

Private Sub DGArea_UnknownEvent_9 'FBA710
  'Data Table: 52BB2C
  Dim Me As Recordset15
  Dim var_B0 As Field20
  Dim var_B4 As Variant
  Dim var_C8 As String
  Dim var_D0 As TextBox
  loc_FBA578: On Error Goto loc_FBA6E7
  loc_FBA58A: Me.DGArea.Visible = False
  loc_FBA5A9: If (Me.RecordCount > 0) Then
  loc_FBA5FB:   Set var_CC = Me.Txt
  loc_FBA601:   Call 0.Method_DGArea_UnknownEvent_90 (CInt(CStr(Me.DGArea.Tag)), var_D0)
  loc_FBA609:   var_D0.Text = CStr(Me.Fields.Item("Name").Value)
  loc_FBA661:   Set var_B4 = Me.DGArea
  loc_FBA678:   Set var_CC = Me.Txt
  loc_FBA67E:   Call 0.Method_DGArea_UnknownEvent_90 (CInt(CStr(var_B4.Tag)), var_D0)
  loc_FBA686:   var_D0.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_FBA6A6: End If
  loc_FBA6BB: var_C8 = CStr(Me.DGArea.Tag)
  loc_FBA6C4: Set var_B0 = Me.Txt
  loc_FBA6CA: Call 0.Method_DGArea_UnknownEvent_90 (CInt(var_C8))
  loc_FBA6D2: var_B4.SetFocus
  loc_FBA6E6: Exit Sub
  loc_FBA6E7: ' Referenced from: FBA578
  loc_FBA6ED: Call 0.Method_arg_50 (var_C8)
  loc_FBA702: Proc_183_57_104B0BC(var_C8, "DGArea_Click")
  loc_FBA70E: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E2725C
  'Data Table: 52BB2C
  loc_E2724B: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E27253: Call Proc_184_51_F6C9CC()
  loc_E27258: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1F810
  'Data Table: 52BB2C
  loc_E1F807: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1F80F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 'E38AC4
  'Data Table: 52BB2C
  Dim var_8C As TextBox
  loc_E38AA7: Set var_88 = Me.TxtGrid
  loc_E38AAD: Call 0.Method_FGrid_UnknownEvent_90 (0, var_8C)
  loc_E38AB5: var_8C.Visible = False
  loc_E38AC1: Exit Sub
  loc_E38AC2: Loop Until  'do at: E33F56
End Sub

Private Sub FGrid_UnknownEvent_A '1113F94
  'Data Table: 52BB2C
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
  loc_1113C58: On Error Goto loc_1113F6B
  loc_1113C5F: Set var_88 = Me.TopCtrl1
  loc_1113C65: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1113C7E: If (CStr() = "Browse") Then
  loc_1113C81:   Exit Sub
  loc_1113C82: End If
  loc_1113C9F: var_C4 = Me.FGrid.Rows
  loc_1113CF6: If ((CLng(Cancel) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(var_C4) - 1))))) Then
  loc_1113D01:   var_9C = "+{Tab}"
  loc_1113D07:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_1113D11:   Cancel = 0
  loc_1113D17: Else
  loc_1113D21:   var_B0 = Me.FGrid.Rows
  loc_1113D6E:   If ((CLng(Cancel) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(var_B0) - 1)))) Then
  loc_1113D79:     var_9C = "{Tab}"
  loc_1113D7F:     Proc_303_0_FBACC8(var_9C, 0, var_B0)
  loc_1113D93:     If (CInt(global_96) = 0) Then
  loc_1113DCD:       If (MsgBox("Save Record ?", 4, "Save Data", var_C4, var_118) = 6) Then
  loc_1113DD0:         Call TopCtrl1_UnknownEvent_16()
  loc_1113DD5:       End If
  loc_1113DD5:     End If
  loc_1113DD7:     Cancel = 0
  loc_1113DDA:   End If
  loc_1113DDA: End If
  loc_1113DE0: global_54 = Cancel
  loc_1113E06: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_1113E2C: var_11C = CLng(Me.FGrid.Col)
  loc_1113E3C: If Not (var_11C = CLng(1)) Then
  loc_1113E46:   If Not (var_11C = CLng(2)) Then
  loc_1113E50:     If Not (var_11C = CLng(4)) Then
  loc_1113E5A:       If (var_11C = CLng(3)) Then
  loc_1113E5D:       End If
  loc_1113E5D:     End If
  loc_1113E5D:   End If
  loc_1113E6E:   If ((CLng(Cancel) = &H2E) And (arg_10 = 0)) Then
  loc_1113E84:     var_D8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1113E9C:     var_F8 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1113EA1:     var_12C = vbNullString
  loc_1113EAB:     Set var_B4 = Me.FGrid
  loc_1113EB1:     LateIdCallSt
  loc_1113EC9:   End If
  loc_1113EC9: End If
  loc_1113ED3: If (CLng(Cancel) = &HD) Then
  loc_1113EE9:   var_140 = CLng(Me.FGrid.Col)
  loc_1113EF9:   If Not (var_140 = CLng(1)) Then
  loc_1113F03:     If Not (var_140 = CLng(2)) Then
  loc_1113F0D:       If Not (var_140 = CLng(4)) Then
  loc_1113F17:         If (var_140 = CLng(3)) Then
  loc_1113F1A:         End If
  loc_1113F1A:       End If
  loc_1113F1A:     End If
  loc_1113F4B:     Proc_183_24_1045ECC(Me, Me.FGrid, Me.TxtGrid, 0, var_140, Me.TxtGrid, var_12C, var_F8)
  loc_1113F5D:   End If
  loc_1113F62:   global_52 = 0
  loc_1113F65: End If
  loc_1113F67: Cancel = 0
  loc_1113F6A: Exit Sub
  loc_1113F6B: ' Referenced from: 1113C58
  loc_1113F71: Call 0.Method_arg_50 (var_9C, Cancel, global_52, var_D8, var_11C)
  loc_1113F86: Proc_183_57_104B0BC(var_9C, "FGrid_KeyDown", global_54, Cancel)
  loc_1113F92: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_B 'F19BFC
  'Data Table: 52BB2C
  Dim var_9C As String
  Dim var_88 As MSHFlexGrid
  Dim var_A0 As Long
  loc_F19B18: On Error Goto loc_F19BD2
  loc_F19B1F: Set var_88 = Me.TopCtrl1
  loc_F19B25: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_F19B2D: var_9C = CStr()
  loc_F19B3E: If (var_9C = "Browse") Then
  loc_F19B41:   Exit Sub
  loc_F19B42: End If
  loc_F19B55: var_A0 = CLng(Me.FGrid.Col)
  loc_F19B65: If Not (var_A0 = CLng(1)) Then
  loc_F19B6F:   If Not (var_A0 = CLng(2)) Then
  loc_F19B79:     If Not (var_A0 = CLng(4)) Then
  loc_F19B83:       If (var_A0 = CLng(3)) Then
  loc_F19B86:       End If
  loc_F19B86:     End If
  loc_F19B86:   End If
  loc_F19BB7:   Proc_183_24_1045ECC(Me, Me.FGrid, Me.TxtGrid)
  loc_F19BC9: End If
  loc_F19BCE: global_52 = 0
  loc_F19BD1: Exit Sub
  loc_F19BD2: ' Referenced from: F19B18
  loc_F19BD8: Call 0.Method_arg_50 (var_9C, global_52)
  loc_F19BED: Proc_183_57_104B0BC(var_9C, "FGrid_DblClick")
  loc_F19BF9: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'F655A8
  'Data Table: 52BB2C
  Dim var_9C As Long
  loc_F65488: On Error Goto loc_F6557E
  loc_F6549E: var_9C = CLng(Me.FGrid.Col)
  loc_F654AE: If Not (var_9C = CLng(1)) Then
  loc_F654B8:   If Not (var_9C = CLng(2)) Then
  loc_F654C2:     If (var_9C = CLng(4)) Then
  loc_F654C5:     End If
  loc_F654C5:   End If
  loc_F654FE:   Proc_183_26_11578C8(Me, Me.FGrid, Me.TxtGrid, 0)
  loc_F65513: Else
  loc_F6551A:   If (var_9C = CLng(3)) Then
  loc_F65556:     Proc_183_26_11578C8(Me, Me.FGrid, Me.TxtGrid, 0, &HFF)
  loc_F65568:   End If
  loc_F65568: End If
  loc_F65572: If (CLng(Cancel) <> &HD) Then
  loc_F6557A:   global_52 = &HFF
  loc_F6557D: End If
  loc_F6557D: Exit Sub
  loc_F6557E: ' Referenced from: F65488
  loc_F65584: Call 0.Method_arg_50 (var_B4, global_52, Cancel)
  loc_F65599: Proc_183_57_104B0BC(var_B4, "FGrid_KeyPress", 0)
  loc_F655A5: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '1054784
  'Data Table: 52BB2C
  Dim var_A0 As String
  Dim var_8C As MSHFlexGrid
  Dim var_9C As Variant
  Dim var_B0 As Variant
  Dim var_D0 As Variant
  Dim var_E0 As Variant
  loc_1054524: On Error Goto loc_105475B
  loc_105452B: Set var_8C = Me.TopCtrl1
  loc_1054531: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1054539: var_A0 = CStr()
  loc_105454A: If (var_A0 = "Browse") Then
  loc_105454D:   Exit Sub
  loc_105454E: End If
  loc_105456B: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_105456E:   Exit Sub
  loc_105456F: End If
  loc_1054580: If ((CLng(Cancel) = &H44) And (arg_10 = 2)) Then
  loc_10545A2:   If (CLng(Me.FGrid.Row) >= 1) Then
  loc_10545DC:     If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_F0, var_110) = 6) Then
  loc_10545FE:       If (CLng(Me.FGrid.Rows) > 2) Then
  loc_1054614:         var_B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_105461D:         Set var_114 = Me.FGrid
  loc_1054635:         Call Proc_184_53_1147C8C(FGrid.DispID_10000)
  loc_105463D:       Else
  loc_1054650:         Me.FGrid.Rows = 1
  loc_105466D:         var_D0 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_1054675:         Set var_114 = Me.FGrid
  loc_10546A4:         Me.FGrid.FixedRows = 1
  loc_10546AC:       End If
  loc_10546AC:     End If
  loc_10546D1:     For var_118 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_118 'Integer
  loc_10546DB:       var_B0 = CVar(CLng(var_86)) 'Long
  loc_10546E3:       var_E0 = CVar(CLng(0)) 'Long
  loc_10546ED:       var_9C = CVar(CStr(var_86)) 'String
  loc_10546F5:       Set var_8C = Me.FGrid
  loc_10546FB:       LateIdCallSt
  loc_105470C:     Next var_118 'Integer
  loc_1054714:   Else
  loc_1054735:     MsgBox("No Entries To Delete", &H10, "Delete Module", var_F0, var_110)
  loc_1054745:   End If
  loc_1054749:   Set var_8C = Me.FGrid
  loc_105475A: End If
  loc_105475A: Exit Sub
  loc_105475B: ' Referenced from: 1054524
  loc_1054761: Call 0.Method_arg_50 (var_A0)
  loc_1054776: Proc_183_57_104B0BC(var_A0, "FGrid_KeyUp")
  loc_1054782: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_13 'E1D240
  'Data Table: 52BB2C
  loc_E1D237: Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_E1D23F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1D150
  'Data Table: 52BB2C
  loc_E1D147: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1D14F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40AA8
  'Data Table: 52BB2C
  Dim var_8C As TextBox
  loc_E40A87: Set var_88 = Me.TxtGrid
  loc_E40A8D: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40A95: var_8C.Visible = False
  loc_E40AA1: Call Proc_184_51_F6C9CC()
  loc_E40AA6: Exit Sub
End Sub

Private Sub DGTDSCat_UnknownEvent_9 'F80D7C
  'Data Table: 52BB2C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_CC As String
  Dim var_B8 As TextBox
  loc_F80C38: On Error Goto loc_F80D52
  loc_F80C4A: Me.DGTDSCat.Visible = False
  loc_F80C69: If (Me.RecordCount > 0) Then
  loc_F80CA8:   Set var_B4 = Me.Txt
  loc_F80CAE:   Call 0.Method_DGTDSCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F80CB6:   var_B8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_F80CE9:   var_B0 = Me.Fields.Item("Code")
  loc_F80CFA:   var_CC = CStr(var_B0.Value)
  loc_F80D08:   Set var_B4 = Me.Txt
  loc_F80D0E:   Call 0.Method_DGTDSCat_UnknownEvent_90 (CInt(2), var_B8)
  loc_F80D16:   var_B8.Tag = var_CC
  loc_F80D2C: End If
  loc_F80D37: Set var_A8 = Me.Txt
  loc_F80D3D: Call 0.Method_DGTDSCat_UnknownEvent_90 (CInt(2))
  loc_F80D45: var_B0.SetFocus
  loc_F80D51: Exit Sub
  loc_F80D52: ' Referenced from: F80C38
  loc_F80D58: Call 0.Method_arg_50 (var_CC)
  loc_F80D6D: Proc_183_57_104B0BC(var_CC, "DGTDSCat_Click")
  loc_F80D79: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_A 'F5F590
  'Data Table: 52BB2C
  Dim var_94 As TextBox
  Dim var_8C As Label
  loc_F5F468: On Error Goto loc_F5F568
  loc_F5F46B: Call Proc_184_50_FBE768()
  loc_F5F485: var_88 = "ADD"
  loc_F5F493: Call Proc_184_49_E8A38C(Proc_5_1_100EC1C(var_88, Me))
  loc_F5F4A6: Call Proc_184_56_F7B8D0(CByte(0))
  loc_F5F4B9: Set var_8C = Me.Txt
  loc_F5F4BF: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H18), var_94)
  loc_F5F4C7: var_94.Text = "Yes"
  loc_F5F4E1: Set var_8C = Me.Txt
  loc_F5F4E7: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(&H11), var_94)
  loc_F5F4EF: var_94.Text = "N/A"
  loc_F5F506: Set var_8C = Me.Txt
  loc_F5F50C: Call 0.Method_TopCtrl1_UnknownEvent_A0 (CInt(1), var_94)
  loc_F5F514: var_94.SetFocus
  loc_F5F526: global_84 = CDbl(0)
  loc_F5F52F: global_92 = vbNullString
  loc_F5F539: global_60 = "N"
  loc_F5F54A: Me.LblUser.Caption = vbNullString
  loc_F5F55F: Me.LblLDt.Caption = vbNullString
  loc_F5F567: Exit Sub
  loc_F5F568: ' Referenced from: F5F468
  loc_F5F56E: Call 0.Method_arg_50 (var_88, global_84)
  loc_F5F583: Proc_183_57_104B0BC(var_88, "TopCtrl1_eAdd")
  loc_F5F58F: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_B 'F78D28
  'Data Table: 52BB2C
  Dim var_11C As TextBox
  loc_F78BF0: On Error Goto loc_F78CFD
  loc_F78BF3: Call Proc_184_51_F6C9CC()
  loc_F78C2F: If (MsgBox("Cancel ?", 4, "Terminate Process", var_E8, var_108) = 6) Then
  loc_F78C47:   var_10C = "INI"
  loc_F78C55:   Call Proc_184_49_E8A38C(Proc_5_1_100EC1C(var_10C, Me))
  loc_F78C60:   Call Proc_184_58_18BE944(global_112)
  loc_F78C73:   Set var_110 = Me.Txt
  loc_F78C79:   Call 0.Method_TopCtrl1_UnknownEvent_BC (var_112, var_86)
  loc_F78C89:   For var_116 =  To CByte((var_112 - 1)): CByte(0) = var_116 'Byte
  loc_F78C98:     If (CInt(var_86) <> 3) Then
  loc_F78CAD:       Set var_110 = Me.Txt
  loc_F78CB3:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F78CBB:       var_11C.BackColor = -2147483643
  loc_F78CD9:       Set var_110 = Me.Txt
  loc_F78CDF:       Call 0.Method_TopCtrl1_UnknownEvent_B0 (CInt(var_86), var_11C)
  loc_F78CE7:       var_11C.ForeColor = &HC00000
  loc_F78CF3:     End If
  loc_F78CF6:   Next var_116 'Byte
  loc_F78CFC: End If
  loc_F78CFC: Exit Sub
  loc_F78CFD: ' Referenced from: F78BF0
  loc_F78D03: Call 0.Method_arg_50 (var_10C)
  loc_F78D0B: var_124 = "TopCtrl1_eCancel"
  loc_F78D18: Proc_183_57_104B0BC(var_10C)
  loc_F78D24: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_C 'FD101C
  'Data Table: 52BB2C
  Dim Me As Recordset15
  Dim var_E8 As Variant
  Dim var_90 As TextBox
  Dim var_A0 As TextBox
  Dim unk_52BB4C As Connection15
  Dim var_D8 As Fields15
  Dim var_EC As Field20
  loc_FD0E84: On Error Goto loc_FD0FF4
  loc_FD0E9E: If (Me.RecordCount > 0) Then
  loc_FD0EAF:   If (Proc_183_56_FE8B08(global_112) = &HFF) Then
  loc_FD0EB2:     Exit Sub
  loc_FD0EB3:   End If
  loc_FD0EB9:   var_E8 = 0
  loc_FD0EE0:   Set var_8C = Me.Txt
  loc_FD0EE6:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_90, var_94, "SELECT COUNT(*) From Ledger Where (SubCode= '", var_D0, -1)
  loc_FD0F0F:   Set var_9C = Me.Txt
  loc_FD0F15:   Call 0.Method_TopCtrl1_UnknownEvent_C0 (CInt(0), var_A0, var_A4, var_D8 & var_94 & "' or Contrasub='")
  loc_FD0F1D:   var_E8 = var_A0.Text
  loc_FD0F36:   unk_52BB4C.Execute var_EC & var_A4 & "')", var_FC, 
  loc_FD0F3E:    = var_90.Text.Fields
  loc_FD0F46:    = var_D8.Item()
  loc_FD0F4E:    = var_EC.Value
  loc_FD0F85:   If (var_FC > 0) Then
  loc_FD0FA9:     MsgBox("Transactions Exist Can't Delete it", &H40, "Information", var_11C, var_13C)
  loc_FD0FB9:     Exit Sub
  loc_FD0FBA:   End If
  loc_FD0FBA:   Call Proc_184_62_12429C8()
  loc_FD0FC2: Else
  loc_FD0FE3:   MsgBox("There Is No Record To Delete", &H40, "Information", var_11C, var_13C)
  loc_FD0FF3: End If
  loc_FD0FF3: Exit Sub
  loc_FD0FF4: ' Referenced from: FD0E84
  loc_FD0FFA: Call 0.Method_arg_50 (var_94)
  loc_FD1002: var_A4 = "TopCtrl1_eDel"
  loc_FD100F: Proc_183_57_104B0BC(var_94)
  loc_FD101B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D '1001AF8
  'Data Table: 52BB2C
  Dim Me As Recordset15
  Dim var_98 As TextBox
  Dim var_90 As Variant
  loc_1001900: On Error Goto loc_1001AD0
  loc_100191A: If (Me.RecordCount > 0) Then
  loc_100192B:   If (Proc_183_55_FE8490(global_112) = &HFF) Then
  loc_100192E:     Exit Sub
  loc_100192F:   End If
  loc_1001944:   var_8C = "EDIT"
  loc_1001952:   Call Proc_184_49_E8A38C(Proc_5_1_100EC1C(var_8C, Me))
  loc_100196A:   Set var_90 = Me.Txt
  loc_1001970:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_1001978:   var_98.Enabled = False
  loc_100198A:   Call Proc_184_56_F7B8D0(global_96)
  loc_10019AC:   Set var_98 = Me.FGrid
  loc_10019D3:   If (global_60 = "Y") Then
  loc_10019E3:     Set var_90 = Me.Txt
  loc_10019E9:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98, 0)
  loc_10019F1:     var_98.Enabled = FGrid.DispID_10000
  loc_1001A0A:     Set var_90 = Me.Txt
  loc_1001A10:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(3), var_98, 0)
  loc_1001A18:     var_98.Enabled = CVar(CStr(CLng(Me.FGrid.Rows)))
  loc_1001A2F:     Set var_90 = Me.Txt
  loc_1001A35:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_1001A3D:     var_98.SetFocus
  loc_1001A4C:   Else
  loc_1001A57:     Set var_90 = Me.Txt
  loc_1001A5D:     Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(1), var_98)
  loc_1001A65:     var_98.SetFocus
  loc_1001A71:   End If
  loc_1001A74: Else
  loc_1001A95:   MsgBox("There Is No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_1001AA5: End If
  loc_1001AB2: Me.LblUser.Caption = vbNullString
  loc_1001AC7: Me.LblLDt.Caption = vbNullString
  loc_1001ACF: Exit Sub
  loc_1001AD0: ' Referenced from: 1001900
  loc_1001AD6: Call 0.Method_arg_50 (var_8C)
  loc_1001AEB: Proc_183_57_104B0BC(var_8C, "TopCtrl1_eEdit")
  loc_1001AF7: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_E 'E1B1EC
  'Data Table: 52BB2C
  loc_E1B1E1: Me.Global.Unload Me
  loc_E1B1E9: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'EEF37C
  'Data Table: 52BB2C
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim var_10C As String
  Dim MemVar_1F950E4 As String
  loc_EEF2BC: On Error Goto loc_EEF354
  loc_EEF2D6: If (Me.RecordCount <= 0) Then
  loc_EEF2DF:   var_B8 = "Information"
  loc_EEF2FA:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_EEF30A:   Exit Sub
  loc_EEF30B: End If
  loc_EEF312: var_10C = "Select SubCode As SearchCode,SubCode as Code,Name,Case ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' End As Active,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,GSTIN,CreditLimit,CreditDays,Remark From ((SubGroup S Left Join AcGroup G on (S.GroupCode=G.GroupCode)) Left Join City C on (S.CityCode=C.CityCode)) Where G.AliasYN<>'Y' AND (S.LOGSITE_CODE='" & MemVar_1F95078
  loc_EEF319: MemVar_1F950E4 = var_10C & "' OR S.LOGSITE_CODE='HO') Order by Name"
  loc_EEF326: MemVar_1F95120 = Me
  loc_EEF32D: var_10C = "1000,3000,800,2000,1500,900,2000,2000"
  loc_EEF333: Proc_183_54_F1EA10(var_10C)
  loc_EEF34E: Call 0.Method_arg_2B0 (1, var_B8)
  loc_EEF353: Exit Sub
  loc_EEF354: ' Referenced from: EEF2BC
  loc_EEF35A: Call 0.Method_arg_50 (var_10C)
  loc_EEF36F: Proc_183_57_104B0BC(var_10C, "TopCtrl1_eFind")
  loc_EEF37B: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_10 'E39008
  'Data Table: 52BB2C
  loc_E38FF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E39000: Call Proc_184_58_18BE944(global_112)
  loc_E39005: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_11 'E3CBA8
  'Data Table: 52BB2C
  loc_E3CB98: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CBA0: Call Proc_184_58_18BE944(global_112)
  loc_E3CBA5: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_12 'E3CC08
  'Data Table: 52BB2C
  loc_E3CBF8: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CC00: Call Proc_184_58_18BE944(global_112)
  loc_E3CC05: Exit Sub
  loc_E3CC06: Result 3 End Sub 'Double
End Sub

Private Sub TopCtrl1_UnknownEvent_13 'E3CC68
  'Data Table: 52BB2C
  loc_E3CC58: Proc_5_0_1107AD0(&HFF, Me)
  loc_E3CC60: Call Proc_184_58_18BE944(global_112)
  loc_E3CC65: Exit Sub
  loc_E3CC66: Result 2 End Sub 'Double
End Sub

Private Sub TopCtrl1_UnknownEvent_14 'EB6C04
  'Data Table: 52BB2C
  Dim var_8C As Frame
  loc_EB6B72: Set var_88 = Me.Frame2
  loc_EB6B78: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB6B80: var_8C.Left = CDbl(1000)
  loc_EB6B9A: Set var_88 = Me.Frame2
  loc_EB6BA0: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB6BA8: var_8C.Top = CDbl(1000)
  loc_EB6BBF: Set var_88 = Me.Frame2
  loc_EB6BC5: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB6BCD: var_8C.Visible = True
  loc_EB6BE8: Set var_88 = Me.Frame2
  loc_EB6BEE: Call 0.Method_TopCtrl1_UnknownEvent_140 (1, var_8C)
  loc_EB6BF6: var_8C.ZOrder 0
  loc_EB6C02: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_15 'E58194
  'Data Table: 52BB2C
  Dim Me As Recordset15
  loc_E5815B: Me.Requery -1
  loc_E5816B: Me.Requery -1
  loc_E5817B: Me.Requery -1
  loc_E5818B: Me.Requery -1
  loc_E58190: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_16 '1314CE8
  'Data Table: 52BB2C
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
  Dim unk_52BB4C As Connection15
  Dim var_90 As MSHFlexGrid
  loc_13145C4: Set var_90 = Me.TxtGrid
  loc_13145CA: Call 0.Method_TopCtrl1_UnknownEvent_160 (0, var_94)
  loc_13145D2: var_96 = var_94.Visible
  loc_13145E4: If (var_96 = &HFF) Then
  loc_13145EA:   Call Proc_184_57_11F5B9C(var_96)
  loc_13145F5:   If (var_96 = 0) Then
  loc_13145FD:     Call TxtGrid_LostFocus(0)
  loc_131460B:     Set var_90 = Me.TxtGrid
  loc_1314611:     Call 0.Method_TopCtrl1_UnknownEvent_160 (0)
  loc_1314619:     var_94.SetFocus
  loc_1314625:     Exit Sub
  loc_1314626:   End If
  loc_1314626: End If
  loc_1314626: Call Proc_184_51_F6C9CC(var_94)
  loc_1314636: Set var_90 = Me.Txt
  loc_131463C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1314665: If (Proc_183_19_E8E68C(var_94, "A/C Name") = 0) Then
  loc_1314668:   Exit Sub
  loc_1314669: End If
  loc_1314674: Set var_90 = Me.Txt
  loc_131467A: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(3), var_94)
  loc_13146A3: If (Proc_183_19_E8E68C(var_94, "Under Group") = 0) Then
  loc_13146A6:   Exit Sub
  loc_13146A7: End If
  loc_13146B5: Set var_90 = Me.Txt
  loc_13146BB: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_94)
  loc_13146DA: If (var_94.Text <> vbNullString) Then
  loc_13146ED:   Set var_90 = Me.Txt
  loc_13146F3:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_94)
  loc_1314709:   var_D0 = InStr(1, CVar(var_94), "@", 0)
  loc_1314727:   Set var_9C = Me.Txt
  loc_131472D:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_F4, 1)
  loc_1314735:   var_114 = CVar(var_F4) 'Address
  loc_1314769:   If CBool(var_94 Or (InStr((var_D0 = 0), var_114, ".", 0) = 0)) Then
  loc_1314785:     MsgBox("Please fill a Valid EMail Id.", 0, var_D0, var_F0, var_114)
  loc_13147A0:     Set var_90 = Me.Txt
  loc_13147A6:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE))
  loc_13147AE:     var_94.SetFocus
  loc_13147BA:     Exit Sub
  loc_13147BB:   End If
  loc_13147C6:   Set var_90 = Me.Txt
  loc_13147CC:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_94)
  loc_13147F2:   Set var_9C = Me.Txt
  loc_13147F8:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&HE), var_F4)
  loc_1314800:   var_F4.Text = CStr(LCase(CVar(var_94)))
  loc_1314818: End If
  loc_1314823: Set var_90 = Me.Txt
  loc_1314829: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_94)
  loc_1314852: If CBool(Trim(CVar(var_94)) <> vbNullString) Then
  loc_1314860:   Set var_90 = Me.Txt
  loc_1314866:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_94)
  loc_1314875:   var_D0 = Trim(CVar(var_94))
  loc_131487D:   var_F0 = Len(var_D0)
  loc_1314893:   If CBool(var_F0 <> 15) Then
  loc_13148AF:     MsgBox("Please fill a Valid GSTIN of 15 DIGIT", 0, var_D0, var_F0, var_114)
  loc_13148CA:     Set var_90 = Me.Txt
  loc_13148D0:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(&H1F), var_94)
  loc_13148D8:     var_94.SetFocus
  loc_13148E4:     Exit Sub
  loc_13148E5:   End If
  loc_13148E5: End If
  loc_13148E9: Set var_90 = Me.TopCtrl1
  loc_13148EF: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_13148F7: var_A0 = CStr()
  loc_1314908: If (var_A0 = "Add") Then
  loc_1314929:   Set var_90 = Me.Txt
  loc_131492F:   Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1314937:   var_C0 = var_94.Text
  loc_1314948:   var_15C = Proc_183_20_FB48CC(var_A0, -1)
  loc_131495C:   unk_52BB4C.Execute var_9C & var_15C & "'", , 
  loc_1314995:   If (var_9C.RecordCount > 0) Then
  loc_13149B9:     MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_13149D4:     Set var_90 = Me.Txt
  loc_13149DA:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_13149E2:     var_94.SetFocus
  loc_13149EE:     Exit Sub
  loc_13149EF:   End If
  loc_13149F2: Else
  loc_13149F6:   Set var_90 = Me.TopCtrl1
  loc_13149FC:   Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_94)
  loc_1314A04:   var_A0 = CStr()
  loc_1314A15:   If (var_A0 = "Edit") Then
  loc_1314A36:     Set var_90 = Me.Txt
  loc_1314A3C:     Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_1314A44:     var_C0 = var_94.Text
  loc_1314A55:     var_15C = Proc_183_20_FB48CC(var_A0, -1)
  loc_1314A7A:     unk_52BB4C.Execute var_9C & var_15C & "' and Name<>'" & global_76 & "'", , 
  loc_1314AB7:     If (var_9C.RecordCount > 0) Then
  loc_1314ADB:       MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_F0, var_114)
  loc_1314AFC:       Set var_90 = Me.Txt
  loc_1314B02:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1), var_94)
  loc_1314B0A:       var_94.Text = global_76
  loc_1314B21:       Set var_90 = Me.Txt
  loc_1314B27:       Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(1))
  loc_1314B2F:       var_94.SetFocus
  loc_1314B3B:       Exit Sub
  loc_1314B3C:     End If
  loc_1314B3C:   End If
  loc_1314B3C: End If
  loc_1314B61: For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_174 'Integer
  loc_1314B6B:   var_B0 = CVar(CLng(var_86)) 'Long
  loc_1314B73:   var_104 = CVar(CLng(3)) 'Long
  loc_1314BA3:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_1314BAA:     var_B0 = CVar(CLng(var_86)) 'Long
  loc_1314BB2:     var_104 = CVar(CLng(4)) 'Long
  loc_1314BDD:     If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1314C05:       MsgBox(CVar("Please Specify Cr/Dr in Row No " & CStr(var_86)), &H40, "Validation", var_F0, var_114)
  loc_1314C2B:       Me.FGrid.Row = CVar(CLng(var_86))
  loc_1314C45:       Me.FGrid.Col = CVar(CLng(4))
  loc_1314C51:       Set var_90 = Me.FGrid
  loc_1314C75:       Me.FGrid.CellBackColor = CVar(CLng("14737632"))
  loc_1314C7D:       Exit Sub
  loc_1314C7E:     End If
  loc_1314C7E:   End If
  loc_1314C81: Next var_174 'Integer
  loc_1314C8A: Set var_90 = Me.TopCtrl1
  loc_1314C90: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_1314C98: var_A0 = CStr()
  loc_1314CA9: If (var_A0 = "Add") Then
  loc_1314CAC:   Call Proc_184_60_14A96A4()
  loc_1314CB4: Else
  loc_1314CB4:   Call Proc_184_61_155E014()
  loc_1314CB9: End If
  loc_1314CB9: Call Proc_184_51_F6C9CC()
  loc_1314CBE: Exit Sub
  loc_1314CC5: Call 0.Method_arg_50 (var_A0)
  loc_1314CCD: var_15C = "TopCtrl1_eSave"
  loc_1314CDA: Proc_183_57_104B0BC(var_A0)
  loc_1314CE6: Exit Sub
End Sub

Private Sub BTNPRINT_UnknownEvent_9 '11358B0
  'Data Table: 52BB2C
  Dim Me As Recordset15
  Dim var_AC As OptionButton
  Dim var_C4 As String
  Dim var_A8 As DataCombo
  Dim var_C0 As Variant
  Dim var_DC As Variant
  Dim var_11C As String
  Dim var_EC As String
  Dim var_17C As Variant
  Dim unk_52BB4C As Connection15
  Dim var_88 As Recordset15
  Dim var_AE As Integer
  Dim &HFF.global_-19384 As Single
  loc_1135560: On Error Goto loc_1135886
  loc_113557A: If (Me.RecordCount <= 0) Then
  loc_113557D:   Exit Sub
  loc_113557E: End If
  loc_1135590: Set var_A8 = Me.Opt3
  loc_1135596: Call 0.Method_BTNPRINT_UnknownEvent_90 (3, var_AC)
  loc_11355B0: If (var_AC.Value = &HFF) Then
  loc_11355C1:   Set var_A8 = Me.DCGroup
  loc_11355DA:   var_A0 = vbNullString & " Where g.groupname='" & CStr(var_A8.Text) & "'"
  loc_11355EC: End If
  loc_11355F7: var_C0 = Trim(var_A0)
  loc_113560D: var_11C = " WHERE "
  loc_1135612: var_12C = var_11C
  loc_113561B: var_EC = vbNullString
  loc_1135625: var_10C = (var_C0 = var_EC) 'Variant
  loc_113563C: var_17C = (IIf(var_10C, var_12C, " AND ") + "(S.LOGSITE_CODE='")
  loc_1135684: var_C4 = "Select SubCode,Name,G.GroupName As UnderGroup,ConPrefix,ConPerson,Add1 As Address1,Add2 As Address2,Add3 As Address3,C.CityName,Phone,Mobile,FAX,EMail,CSTNo As CST,LSTNo As LST,PANNo As PAN,Active=CASE ActiveYN WHEN 0 THEN 'No' WHEN 1 THEN 'Yes' END,CreditLimit,CreditDays,Remark,GSTIN From (SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode " & CStr(CVar(var_A0) & var_17C & CVar(MemVar_1F95078) & "' OR S.LOGSITE_CODE='HO')")
  loc_113568D: unk_52BB4C.Execute var_C4, var_C0, -1
  loc_1135698: Set var_88 = var_A8
  loc_11356AA: var_A4 = var_88.RecordCount
  loc_11356B8: If (var_A4 = 0) Then
  loc_11356D4:   MsgBox("No record Found to Print", 0, var_FC, var_10C, var_12C)
  loc_11356E4:   Exit Sub
  loc_11356E5: End If
  loc_11356FB: Set var_A8 = var_88 
  loc_1135707: var_AE = CreateFieldDefFile(var_A8, MemVar_1F953B4 & "\FaPartyMast.ttx")
  loc_1135711: Set var_88 = var_A8
  loc_1135717: var_DC = CVar(var_AE) 'Integer
  loc_113571A: var_98 = var_DC 'Variant
  loc_1135736: var_C4 = MemVar_1F953B4 & "\FaPartyMast.RPT"
  loc_113573F: Call 0.Method_arg_1C (var_C4, var_DC, var_A8)
  loc_113574A: MemVar_1F951E8 = var_A8
  loc_1135765: Call 0.Method_arg_90 (var_A8, var_A4, var_9A, 1)
  loc_113576D: Call 0.Method_arg_24 (var_AE, &HFF)
  loc_1135779: For var_1E0 =  To CInt(var_A4): var_A8 = var_1E0 'Integer
  loc_1135792:   Call 0.Method_arg_90 (var_A8, CLng(var_9A))
  loc_113579A:   Call 0.Method_arg_20 (var_AC)
  loc_11357A2:   Call 0.Method_arg_30 (var_C4)
  loc_11357E8:   If (Ucase(CVar(var_C4)) = Ucase("Title")) Then
  loc_11357FE:     Call 0.Method_arg_90 (var_A8, CLng(var_9A))
  loc_1135806:     Call 0.Method_arg_20 (var_AC)
  loc_113580E:     Call 0.Method_arg_38 ("'Ledger A/C List'")
  loc_113581A:   End If
  loc_113581D: Next var_1E0 'Integer
  loc_113583B: Call 0.Method_arg_64 (var_A8, CVar(var_88))
  loc_1135843: Call 0.Method_arg_2C (var_EC)
  loc_1135851: Call 0.Method_arg_150 (var_11C)
  loc_113585C: Call 0.Method_arg_50 (var_C4)
  loc_1135875: Proc_183_10_1499E94(MemVar_1F951E8, 0)
  loc_1135882: Set var_88 = Nothing
  loc_1135885: Exit Sub
  loc_1135886: ' Referenced from: 1135560
  loc_113588C: Call 0.Method_arg_50 (var_C4, var_C4)
  loc_11358A1: Proc_183_57_104B0BC(var_C4, "BTNPRINT_Click")
  loc_11358AD: Exit Sub
  loc_11358AE: &HFF.global_-19384 = 
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1409194
  'Data Table: 52BB2C
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_B4 As Variant
  Dim var_88 As DataGrid
  loc_1408750: On Error Goto loc_1409169
  loc_140875D: Set var_88 = Me.Txt
  loc_1408763: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1408771: Proc_183_28_E216B0(var_8C)
  loc_140877D: Call Proc_184_51_F6C9CC(var_8C)
  loc_1408785: var_92 = Index
  loc_1408790: If (var_92 = CInt(1)) Then
  loc_14087E1:   Set var_88 = Me.Txt
  loc_14087E7:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_14087EF:   ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1408807:   If (var_92 Or (var_A0 = vbNullString)) Then
  loc_140880A:     Exit Sub
  loc_140880B:   End If
  loc_1408818:   Set var_88 = Me.Txt
  loc_140881E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1408826:   var_A0 = var_8C.Text
  loc_1408838:   var_B0 = "Name"
  loc_1408873:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_140887C:     Me.MoveFirst
  loc_140889F:     Set var_88 = Me.Txt
  loc_14088A5:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_14088AD:     0 = var_8C.Text
  loc_14088C6:     Me.Find 1 & var_A0 & "'", var_B0, 
  loc_14088DB:   End If
  loc_14088DE: Else
  loc_14088E6:   If (var_92 = CInt(3)) Then
  loc_1408937:     Set var_88 = Me.Txt
  loc_140893D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_140895D:     If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1408960:       Exit Sub
  loc_1408961:     End If
  loc_140896E:     Set var_88 = Me.Txt
  loc_1408974:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_140897C:     var_A0 = var_8C.Text
  loc_140898E:     var_B0 = "Name"
  loc_14089C9:     If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_14089D2:       Me.MoveFirst
  loc_14089F5:       Set var_88 = Me.Txt
  loc_14089FB:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1408A03:       0 = var_8C.Text
  loc_1408A1C:       Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1408A31:     End If
  loc_1408A34:   Else
  loc_1408A3C:     If (var_92 = CInt(2)) Then
  loc_1408A48:       var_98 = Me.RecordCount
  loc_1408A8D:       Set var_88 = Me.Txt
  loc_1408A93:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1408AB3:       If (((var_98 = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1408AB6:         Exit Sub
  loc_1408AB7:       End If
  loc_1408AC4:       Set var_88 = Me.Txt
  loc_1408ACA:       Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1408AD2:       var_A0 = var_8C.Text
  loc_1408AE4:       var_B0 = "Name"
  loc_1408B1F:       If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_1408B28:         Me.MoveFirst
  loc_1408B4B:         Set var_88 = Me.Txt
  loc_1408B51:         Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1408B59:         0 = var_8C.Text
  loc_1408B72:         Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1408B87:       End If
  loc_1408B8A:     Else
  loc_1408B92:       If (var_92 = CInt(4)) Then
  loc_1408BA2:         ReDim var_F0(0 To 3)
  loc_1408BB9:         var_F0(0) = "Mr."
  loc_1408BC8:         var_F0(1) = "Mrs."
  loc_1408BD7:         var_F0(2) = "Miss"
  loc_1408BE6:         var_F0(3) = "M/S"
  loc_1408BFD:         global_136 = Array(var_F0)
  loc_1408C08:         Set var_B4 = Me.ListView
  loc_1408C23:         Set var_8C = Me.Txt
  loc_1408C3D:         Set global_152 = Proc_183_37_EFEF78(var_B4, var_8C, Index)
  loc_1408C51:       Else
  loc_1408C59:         If (var_92 = CInt(9)) Then
  loc_1408C6F:           Me.DGCity.Tag = CVar(CStr(Index))
  loc_1408C87:           Set var_88 = Me.Txt
  loc_1408C8D:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_98)
  loc_1408CAC:           Me.DGCity.Left = CVar(var_98)
  loc_1408CC7:           Set var_90 = Me.Txt
  loc_1408CCD:           Call 0.Method_Txt_GotFocus0 (Index, var_B4, var_128)
  loc_1408CD5:           4 = var_B4.Height
  loc_1408CE7:           Set var_88 = Me.Txt
  loc_1408CED:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1408D05:           var_B0 = CVar(((var_8C.Top + var_128) + CDbl(&HF))) 'Single
  loc_1408D14:           Me.DGCity.Top = CVar(var_8C.Top)
  loc_1408D74:           Set var_88 = Me.Txt
  loc_1408D7A:           Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_1408D82:           ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_1408D9A:           If (var_8C.Left Or (var_A0 = vbNullString)) Then
  loc_1408D9D:             Exit Sub
  loc_1408D9E:           End If
  loc_1408DAB:           Set var_88 = Me.Txt
  loc_1408DB1:           Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1408DB9:           var_A0 = var_8C.Text
  loc_1408DCB:           var_B0 = "Name"
  loc_1408DE2:           var_B4 = Me.Fields.Item(var_B0)
  loc_1408E06:           If CBool(CVar(var_A0) <> var_B4.Value) Then
  loc_1408E0F:             Me.MoveFirst
  loc_1408E32:             Set var_88 = Me.Txt
  loc_1408E38:             Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_1408E40:             0 = var_8C.Text
  loc_1408E59:             Me.Find 1 & var_A0 & "'", var_B0, 
  loc_1408E6E:           End If
  loc_1408E71:         Else
  loc_1408E79:           If (var_92 = CInt(&HA)) Then
  loc_1408E8F:             Me.DGArea.Tag = CVar(CStr(Index))
  loc_1408EA7:             Set var_88 = Me.Txt
  loc_1408EAD:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1408ECC:             Me.DGArea.Left = CVar(var_8C.Left)
  loc_1408EE7:             Set var_90 = Me.Txt
  loc_1408EED:             Call 0.Method_Txt_GotFocus0 (Index, var_B4)
  loc_1408F07:             Set var_88 = Me.Txt
  loc_1408F0D:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1408F25:             var_B0 = CVar(((var_8C.Top + var_B4.Height) + CDbl(&HF))) 'Single
  loc_1408F34:             Me.DGArea.Top = CVar(var_8C.Left)
  loc_1408F94:             Set var_88 = Me.Txt
  loc_1408F9A:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1408FBA:             If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_8C.Text = vbNullString)) Then
  loc_1408FBD:               Exit Sub
  loc_1408FBE:             End If
  loc_1408FCB:             Set var_88 = Me.Txt
  loc_1408FD1:             Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1408FD9:             var_A0 = var_8C.Text
  loc_1408FEB:             var_B0 = "AreaName"
  loc_1409026:             If CBool(CVar(var_A0) <> Me.Fields.Item(var_B0).Value) Then
  loc_140902F:               Me.MoveFirst
  loc_1409052:               Set var_88 = Me.Txt
  loc_1409058:               Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "AreaName ='")
  loc_1409060:               0 = var_8C.Text
  loc_1409079:               Me.Find 1 & var_A0 & "'", var_B0, 
  loc_140908E:             End If
  loc_1409091:           Else
  loc_1409099:             If (var_92 = CInt(&H11)) Then
  loc_14090A9:               ReDim var_F0(0 To 4)
  loc_14090C0:               var_F0(0) = "N/A"
  loc_14090CF:               var_F0(1) = "Hindu"
  loc_14090DE:               var_F0(2) = "Muslim"
  loc_14090ED:               var_F0(3) = "Sikh"
  loc_14090FC:               var_F0(4) = "Christian"
  loc_1409113:               global_136 = Array(var_F0)
  loc_1409157:               Set global_152 = Proc_183_37_EFEF78(Me.ListView, Me.Txt, CInt(&H11))
  loc_1409168:             End If
  loc_1409168:           End If
  loc_1409168:         End If
  loc_1409168:       End If
  loc_1409168:     End If
  loc_1409168:   End If
  loc_1409168: End If
  loc_1409168: Exit Sub
  loc_1409169: ' Referenced from: 1408750
  loc_140916F: Call 0.Method_arg_50 (var_A0, global_136)
  loc_1409184: Proc_183_57_104B0BC(var_A0, "Txt_GotFocus")
  loc_1409190: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '11FF5A4
  'Data Table: 52BB2C
  Dim var_86 As Integer
  Dim var_90 As TextBox
  Dim var_9C As TextBox
  Dim var_AC As TextBox
  Dim var_B8 As TextBox
  loc_11FF128: On Error Goto loc_11FF579
  loc_11FF135: If (CLng(Shift) = &H1B) Then
  loc_11FF138:   Call Proc_184_51_F6C9CC()
  loc_11FF13D:   Exit Sub
  loc_11FF13E: End If
  loc_11FF141: var_86 = KeyCode
  loc_11FF14C: If (var_86 = CInt(1)) Then
  loc_11FF185:   Proc_183_31_100957C(Me.DGAcName, Me.Txt, KeyCode, global_104)
  loc_11FF198: Else
  loc_11FF1A0:   If (var_86 = CInt(3)) Then
  loc_11FF1D9:     Proc_183_34_1307118(Me.DGUnderAc, Me.Txt, KeyCode, global_116, Shift, 0)
  loc_11FF1EC:   Else
  loc_11FF1F4:     If (var_86 = CInt(2)) Then
  loc_11FF202:       Set var_9C = Me.Txt
  loc_11FF21E:       Set var_90 = var_9C
  loc_11FF22D:       Proc_183_34_1307118(Me.DGTDSCat, var_90, KeyCode, global_128, Shift, 0)
  loc_11FF240:     Else
  loc_11FF248:       If (var_86 = CInt(4)) Then
  loc_11FF26D:         Set var_8C = Me.Txt
  loc_11FF273:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A0, 1, 1)
  loc_11FF27B:         Shift = var_90.Left
  loc_11FF28D:         Set var_98 = Me.Txt
  loc_11FF293:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A4)
  loc_11FF29B:         0 = var_9C.Top
  loc_11FF2AD:         Set var_A8 = Me.Txt
  loc_11FF2B3:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_11FF2BB:         1 = var_AC.Height
  loc_11FF2CD:         Set var_B4 = Me.Txt
  loc_11FF2D3:         Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_11FF2DB:         var_BC = var_B8.Width
  loc_11FF323:         Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11FF34A:       Else
  loc_11FF352:         If (var_86 = CInt(9)) Then
  loc_11FF38B:           Proc_183_34_1307118(Me.DGCity, Me.Txt, KeyCode, global_120, Shift, 0)
  loc_11FF39E:         Else
  loc_11FF3A6:           If (var_86 = CInt(&HA)) Then
  loc_11FF3B4:             Set var_9C = Me.Txt
  loc_11FF3D0:             Set var_90 = var_9C
  loc_11FF3DF:             Proc_183_34_1307118(Me.DGArea, var_90, KeyCode, global_124, Shift, 0, 1)
  loc_11FF3F2:           Else
  loc_11FF3FA:             If (var_86 = CInt(&H11)) Then
  loc_11FF41F:               Set var_8C = Me.Txt
  loc_11FF425:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, var_A0, 1, CInt(var_A0))
  loc_11FF42D:               CInt((var_A4 + var_B0)) = var_90.Left
  loc_11FF43F:               Set var_98 = Me.Txt
  loc_11FF445:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_9C, var_A4)
  loc_11FF44D:               CInt(var_BC) = var_9C.Top
  loc_11FF45F:               Set var_A8 = Me.Txt
  loc_11FF465:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_AC, var_B0)
  loc_11FF46D:               1200 = var_AC.Height
  loc_11FF47F:               Set var_B4 = Me.Txt
  loc_11FF485:               Call 0.Method_Txt_KeyDown0 (KeyCode, var_B8)
  loc_11FF48D:               var_BC = var_B8.Width
  loc_11FF4D5:               Proc_183_36_114A39C(Me.FrmList, Me.ListView, Me.Txt, KeyCode, Shift, arg_14)
  loc_11FF50E:               If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_11FF548:                 If (MsgBox("Save Record ?", 4, "Save Data", var_138, var_158) = 6) Then
  loc_11FF54B:                   Call TopCtrl1_UnknownEvent_16()
  loc_11FF553:                 Else
  loc_11FF55D:                   Set var_8C = Me.Txt
  loc_11FF563:                   Call 0.Method_Txt_KeyDown0 (KeyCode, var_90, CInt(var_A0), CInt((var_A4 + var_B0)))
  loc_11FF56B:                   var_90.SetFocus
  loc_11FF577:                   Exit Sub
  loc_11FF578:                 End If
  loc_11FF578:               End If
  loc_11FF578:             End If
  loc_11FF578:           End If
  loc_11FF578:         End If
  loc_11FF578:       End If
  loc_11FF578:     End If
  loc_11FF578:   End If
  loc_11FF578: End If
  loc_11FF578: Exit Sub
  loc_11FF579: ' Referenced from: 11FF128
  loc_11FF57F: Call 0.Method_arg_50 (var_15C, CInt(var_BC))
  loc_11FF594: Proc_183_57_104B0BC(var_15C, "Txt_KeyDown")
  loc_11FF5A0: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) '1127E74
  'Data Table: 52BB2C
  Dim arg_10 As Integer
  Dim var_86 As Integer
  Dim var_8C As DataGrid
  Dim var_9C As Variant
  Dim var_A8 As TextBox
  loc_1127B04: On Error Goto loc_1127E4B
  loc_1127B0D: If (arg_10 = &H27) Then
  loc_1127B12:   arg_10 = 0
  loc_1127B15:   Exit Sub
  loc_1127B16: End If
  loc_1127B19: var_86 = KeyAscii
  loc_1127B24: If (var_86 = CInt(3)) Then
  loc_1127B43:   If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_1127B55:     var_A0 = "Name"
  loc_1127B70:     Proc_183_41_145A968(Me.Txt, KeyAscii, global_116, arg_10)
  loc_1127B7F:   End If
  loc_1127B82: Else
  loc_1127B8A:   If (var_86 = CInt(9)) Then
  loc_1127BA9:     If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_1127BD6:       Proc_183_41_145A968(Me.Txt, KeyAscii, global_120, arg_10, "Name")
  loc_1127BE5:     End If
  loc_1127BE8:   Else
  loc_1127BF0:     If (var_86 = CInt(&HA)) Then
  loc_1127C0F:       If (CBool(Me.DGArea.Visible) = &HFF) Then
  loc_1127C3C:         Proc_183_41_145A968(Me.Txt, KeyAscii, global_124, arg_10, "AreaName", 0)
  loc_1127C4B:       End If
  loc_1127C4E:     Else
  loc_1127C56:       If (var_86 = CInt(2)) Then
  loc_1127C63:         var_9C = Me.DGTDSCat.Visible
  loc_1127C75:         If (CBool(var_9C) = &HFF) Then
  loc_1127C7C:           Set var_A8 = Me.Txt
  loc_1127C87:           var_A0 = "Name"
  loc_1127CA2:           Proc_183_41_145A968(var_A8, KeyAscii, global_128, arg_10, var_A0, 0)
  loc_1127CB1:         End If
  loc_1127CB4:       Else
  loc_1127CBC:         If (var_86 = CInt(&HF)) Then
  loc_1127CCA:           Set var_8C = Me.Txt
  loc_1127CD0:           Call 0.Method_Txt_KeyPress0 (CInt(&HF), var_A8, 0, var_A0)
  loc_1127CEB:           Proc_183_22_129BBAC(var_A8, arg_10, 9, 2)
  loc_1127CFA:         Else
  loc_1127D02:           If (var_86 = CInt(&H10)) Then
  loc_1127D10:             Set var_8C = Me.Txt
  loc_1127D16:             Call 0.Method_Txt_KeyPress0 (CInt(&H10), var_A8, 0)
  loc_1127D31:             Proc_183_22_129BBAC(var_A8, arg_10, 3)
  loc_1127D40:           Else
  loc_1127D48:             If (var_86 = CInt(&H18)) Then
  loc_1127D66:               If ((((arg_10 = &H59) Or (arg_10 = &H79)) Or (arg_10 = &H4E)) Or (arg_10 = &H6E)) Then
  loc_1127D76:                 If ((arg_10 = &H59) Or (arg_10 = &H79)) Then
  loc_1127D86:                   Set var_8C = Me.Txt
  loc_1127D8C:                   Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "Yes")
  loc_1127D94:                   var_A8.Text = 0
  loc_1127DA2:                   arg_10 = 0
  loc_1127DA8:                 Else
  loc_1127DB5:                   If ((arg_10 = &H4E) Or (arg_10 = &H6E)) Then
  loc_1127DC5:                     Set var_8C = Me.Txt
  loc_1127DCB:                     Call 0.Method_Txt_KeyPress0 (KeyAscii, var_A8, "No")
  loc_1127DD3:                     var_A8.Text = arg_10
  loc_1127DE1:                     arg_10 = 0
  loc_1127DE4:                   End If
  loc_1127DE4:                 End If
  loc_1127DE7:               Else
  loc_1127DE9:                 arg_10 = 0
  loc_1127DEC:               End If
  loc_1127DEF:             Else
  loc_1127DF7:               If (var_86 = CInt(&H1F)) Then
  loc_1127E00:                 Proc_6_133_E7FB08(var_9C, arg_10, arg_10)
  loc_1127E3F:                 If (((((CInt(var_9C) >= &H41) And (CInt(var_9C) <= &H5A)) Or ((CInt(var_9C) >= &H61) And (CInt(var_9C) <= &H7A))) Or ((CInt(var_9C) >= &H30) And (CInt(var_9C) <= &H39))) Or (CInt(var_9C) = 8)) Then
  loc_1127E42:                   GoTo loc_1127E4A
  loc_1127E45:                 End If
  loc_1127E47:                 arg_10 = 0
  loc_1127E4A:                 ' Referenced from:               1127E42
  loc_1127E4A:               End If
  loc_1127E4A:             End If
  loc_1127E4A:           End If
  loc_1127E4A:         End If
  loc_1127E4A:       End If
  loc_1127E4A:     End If
  loc_1127E4A:   End If
  loc_1127E4A: End If
  loc_1127E4A: Exit Sub
  loc_1127E4B: ' Referenced from: 1127B04
  loc_1127E51: Call 0.Method_arg_50 (var_A0, arg_10, arg_10)
  loc_1127E66: Proc_183_57_104B0BC(var_A0, "TXT_KeyPress", arg_10)
  loc_1127E72: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F30E7C
  'Data Table: 52BB2C
  Dim var_86 As Integer
  loc_F30D78: On Error Goto loc_F30E53
  loc_F30D7E: var_86 = KeyCode
  loc_F30D89: If (var_86 = CInt(1)) Then
  loc_F30DA8:   If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F30DB5:     var_A0 = "Name"
  loc_F30DD0:     Proc_183_32_FE97F0(Me.Txt, KeyCode, global_104)
  loc_F30DDF:   End If
  loc_F30DE2: Else
  loc_F30DEA:   If Not (var_86 = CInt(4)) Then
  loc_F30DF5:     If (var_86 = CInt(&H11)) Then
  loc_F30DF8:     End If
  loc_F30E13:     If (Me.FrmList.Visible = &HFF) Then
  loc_F30E42:       Proc_183_35_F2A594(Me.ListView, Me.Txt, KeyCode, Shift)
  loc_F30E52:     End If
  loc_F30E52:   End If
  loc_F30E52: End If
  loc_F30E52: Exit Sub
  loc_F30E53: ' Referenced from: F30D78
  loc_F30E59: Call 0.Method_arg_50 (var_A0, global_152, Shift)
  loc_F30E6E: Proc_183_57_104B0BC(var_A0, "Txt_KeyUp")
  loc_F30E7A: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E492FC
  'Data Table: 52BB2C
  loc_E492DA: Set var_88 = Me.Txt
  loc_E492E0: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E492EE: Proc_183_27_E23198(var_8C)
  loc_E492FA: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '156245C
  'Data Table: 52BB2C
  Dim var_8E As Integer
  Dim var_98 As Variant
  Dim var_A8 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim unk_52BB4C As Connection15
  Dim var_A4 As Variant
  Dim var_A0 As String
  Dim var_88 As Recordset15
  Dim arg_10 As Integer
  Dim Me As Variant
  Dim var_94 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_D0 As Variant
  Dim var_9A As Integer
  Dim var_134 As Variant
  loc_15613E8: On Error Goto loc_1562433
  loc_15613EE: var_8E = Cancel
  loc_15613F9: If (var_8E = CInt(0)) Then
  loc_156140A:   Set var_94 = Me.Txt
  loc_1561410:   Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_156142A:   If (var_98.Visible = &HFF) Then
  loc_156143B:     Set var_94 = Me.Txt
  loc_1561441:     Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_1561460:     If (var_98.Text = vbNullString) Then
  loc_1561471:       Set var_94 = Me.Txt
  loc_1561477:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_156147F:       var_A0 = var_98.Tag
  loc_1561492:       Set var_A4 = Me.Txt
  loc_1561498:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_15614A0:       var_A8.Text = var_A0
  loc_15614BE:       Set var_94 = Me.Txt
  loc_15614C4:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15614CC:       var_98.SetFocus
  loc_15614D8:       Exit Sub
  loc_15614D9:     End If
  loc_15614FA:     Set var_94 = Me.Txt
  loc_1561500:     Call 0.Method_Txt_Validate0 (CInt(0), var_98, var_A0, "Select AcCode From SubGroup Where AcCode='", var_D0)
  loc_1561508:     -1 = var_98.Text
  loc_1561521:     unk_52BB4C.Execute var_A4 & var_A0 & "'", var_D4, var_8E
  loc_1561529:      = var_A4.RecordCount
  loc_156154C:     If (var_D4 > 0) Then
  loc_1561570:       MsgBox("A/c Code Already Exists", &H40, "Validation", var_114, var_134)
  loc_156158E:       Set var_94 = Me.Txt
  loc_1561594:       Call 0.Method_Txt_Validate0 (CInt(0), var_98)
  loc_15615AF:       Set var_A4 = Me.Txt
  loc_15615B5:       Call 0.Method_Txt_Validate0 (CInt(0), var_A8)
  loc_15615BD:       var_A8.Text = var_98.Tag
  loc_15615DB:       Set var_94 = Me.Txt
  loc_15615E1:       Call 0.Method_Txt_Validate0 (CInt(0))
  loc_15615E9:       var_98.SetFocus
  loc_15615F5:       Exit Sub
  loc_15615F6:     End If
  loc_15615F6:   End If
  loc_15615F9: Else
  loc_1561601:   If (var_8E = CInt(1)) Then
  loc_1561611:     Set var_94 = Me.Txt
  loc_1561617:     Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1561636:     If (var_98.Text = vbNullString) Then
  loc_1561639:       Exit Sub
  loc_156163A:     End If
  loc_156163E:     Set var_94 = Me.TopCtrl1
  loc_1561644:     Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(var_98)
  loc_156164C:     var_A0 = CStr()
  loc_156165D:     If (var_A0 = "Add") Then
  loc_156167E:       Set var_94 = Me.Txt
  loc_1561684:       Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_156168C:       var_D0 = var_98.Text
  loc_156169D:       var_B0 = Proc_183_20_FB48CC(var_A0, -1)
  loc_15616B1:       unk_52BB4C.Execute var_A4 & var_A4 & var_A0 & "'" & "'", , 
  loc_15616EA:       If (var_A4.RecordCount > 0) Then
  loc_156170E:         MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_114, var_134)
  loc_1561729:         Set var_94 = Me.Txt
  loc_156172F:         Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1561737:         var_98.SetFocus
  loc_1561745:         arg_10 = &HFF
  loc_1561748:         Exit Sub
  loc_1561749:       End If
  loc_156174C:     Else
  loc_1561750:       Set var_94 = Me.TopCtrl1
  loc_1561756:       Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005(arg_10)
  loc_156175E:       var_A0 = CStr(var_98)
  loc_156176F:       If (var_A0 = "Edit") Then
  loc_1561790:         Set var_94 = Me.Txt
  loc_1561796:         Call 0.Method_Txt_Validate0 (CInt(1), var_98, var_A0, "Select NameHelp From SubGroup Where NameHelp='")
  loc_156179E:         var_D0 = var_98.Text
  loc_15617AF:         var_B0 = Proc_183_20_FB48CC(var_A0, -1)
  loc_15617D4:         unk_52BB4C.Execute var_A4 & var_A4 & var_A0 & "'" & "' and Name<>'" & global_76 & "'", , 
  loc_1561811:         If (var_A4.RecordCount > 0) Then
  loc_1561835:           MsgBox("Duplicate A/c Name not Allowed", &H40, "Validation", var_114, var_134)
  loc_1561856:           Set var_94 = Me.Txt
  loc_156185C:           Call 0.Method_Txt_Validate0 (CInt(1), var_98)
  loc_1561864:           var_98.Text = global_76
  loc_156187B:           Set var_94 = Me.Txt
  loc_1561881:           Call 0.Method_Txt_Validate0 (CInt(1))
  loc_1561889:           var_98.SetFocus
  loc_1561897:           arg_10 = &HFF
  loc_156189A:           Exit Sub
  loc_156189B:         End If
  loc_156189B:       End If
  loc_156189B:     End If
  loc_156189E:   Else
  loc_15618A6:     If (var_8E = CInt(3)) Then
  loc_15618B6:       Set var_94 = Me.Txt
  loc_15618BC:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_15618C4:       arg_10 = var_98.Text
  loc_15618DB:       If (var_A0 = vbNullString) Then
  loc_15618DE:         Exit Sub
  loc_15618DF:       End If
  loc_156192D:       Set var_94 = Me.Txt
  loc_1561933:       Call 0.Method_Txt_Validate0 (Cancel, var_98, var_A0)
  loc_156193B:       ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) = var_98.Text
  loc_1561953:       If (var_98 Or (var_A0 <> vbNullString)) Then
  loc_1561995:         var_F4 = "Select ID,GroupCode,GroupName,Nature,AliasYN,GroupNature From AcGroup Where GroupCode='" & Me.Fields.Item("Code").Value 
  loc_15619AC:         unk_52BB4C.Execute CStr(var_F4 & "'"), var_134, -1
  loc_15619B7:         Set var_88 = var_A4
  loc_15619E5:         If (var_88.RecordCount > 0) Then
  loc_15619F9:           Call Proc_184_56_F7B8D0(CByte(1), CByte(1))
  loc_1561A26:           var_9A = IsNull(CVar(var_88.Fields.Item("Nature")))
  loc_1561A77:           Me.LblNature.Caption = CStr(IIf(var_9A, vbNullString, CVar(var_88.Fields.Item("Nature"))))
  loc_1561AAF:           var_98 = var_88.Fields.Item("Nature")
  loc_1561AD1:           If (var_98.Value = "Bank") Then
  loc_1561AE0:             Me.FrBankDetail.Visible = True
  loc_1561AEB:           Else
  loc_1561AF9:             Set var_94 = Me.Txt
  loc_1561AFF:             Call 0.Method_Txt_Validate0 (CInt(&H1E), var_98, vbNullString)
  loc_1561B07:             var_98.Text = var_9A
  loc_1561B1F:             Me.FrBankDetail.Visible = False
  loc_1561B27:           End If
  loc_1561B75:           var_A8 = var_88.Fields.Item("GroupNature")
  loc_1561B7D:           var_114 = var_A8.Value
  loc_1561BA7:           If CBool((var_88.Fields.Item("GroupNature").Value = "A") Or (var_114 = "L")) Then
  loc_1561BB1:             global_96 = CByte(1)
  loc_1561BB8:           Else
  loc_1561BBF:             global_96 = CByte(0)
  loc_1561BC3:           End If
  loc_1561BC9:           Call Proc_184_56_F7B8D0(global_96, global_96)
  loc_1561BCE:           ' Referenced from:     1561CE7
  loc_1561BDD:           If Not(var_88.EOF) Then
  loc_1561C1C:             If (var_88.Fields.Item("AliasYN").Value = "N") Then
  loc_1561C5C:               Set var_A4 = Me.Txt
  loc_1561C62:               Call 0.Method_Txt_Validate0 (CInt(3), var_A8, CStr(Trim(CVar(var_88.Fields.Item("GroupName")))))
  loc_1561C6A:               var_A8.Text = global_96
  loc_1561C9C:               var_98 = var_88.Fields.Item("GroupCode")
  loc_1561CBB:               Set var_A4 = Me.Txt
  loc_1561CC1:               Call 0.Method_Txt_Validate0 (CInt(3), var_A8)
  loc_1561CC9:               var_A8.Tag = CStr(var_98.Value)
  loc_1561CDF:             End If
  loc_1561CE2:             var_88.MoveNext
  loc_1561CE7:             GoTo loc_1561BCE
  loc_1561CEA:           End If
  loc_1561CEA:         End If
  loc_1561CEA:       End If
  loc_1561CED:     Else
  loc_1561CF5:       If Not (var_8E = CInt(4)) Then
  loc_1561D00:         If (var_8E = CInt(&H11)) Then
  loc_1561D03:         End If
  loc_1561D10:         Set var_94 = Me.Txt
  loc_1561D16:         Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1561D35:         If (var_98.Text <> vbNullString) Then
  loc_1561D50:           Set var_98 = Me.ListView.SelectedItem
  loc_1561D68:           Set var_A4 = Me.Txt
  loc_1561D6E:           Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1561D76:           var_A8.Text = var_98.Text
  loc_1561D8C:         End If
  loc_1561D8F:       Else
  loc_1561D97:         If (var_8E = CInt(9)) Then
  loc_1561DDB:           If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_1561DEB:             Set var_94 = Me.Txt
  loc_1561DF1:             Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1561E10:             If (var_98.Text <> vbNullString) Then
  loc_1561E4E:               Set var_A4 = Me.Txt
  loc_1561E54:               Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1561E5C:               var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_1561E8F:               var_98 = Me.Fields.Item("Code")
  loc_1561EAD:               Set var_A4 = Me.Txt
  loc_1561EB3:               Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1561EBB:               var_A8.Tag = CStr(var_98.Value)
  loc_1561ED4:             Else
  loc_1561EE1:               Set var_94 = Me.Txt
  loc_1561EE7:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1561EEF:               var_98.Text = vbNullString
  loc_1561F08:               Set var_94 = Me.Txt
  loc_1561F0E:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1561F16:               var_98.Tag = vbNullString
  loc_1561F22:             End If
  loc_1561F22:           End If
  loc_1561F25:         Else
  loc_1561F2D:           If (var_8E = CInt(&HA)) Then
  loc_1561F71:             If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_1561F81:               Set var_94 = Me.Txt
  loc_1561F87:               Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1561FA6:               If (var_98.Text <> vbNullString) Then
  loc_1561FE4:                 Set var_A4 = Me.Txt
  loc_1561FEA:                 Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1561FF2:                 var_A8.Text = CStr(Me.Fields.Item("AreaName").Value)
  loc_1562025:                 var_98 = Me.Fields.Item("AREACode")
  loc_1562043:                 Set var_A4 = Me.Txt
  loc_1562049:                 Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1562051:                 var_A8.Tag = CStr(var_98.Value)
  loc_156206A:               Else
  loc_1562077:                 Set var_94 = Me.Txt
  loc_156207D:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562085:                 var_98.Text = vbNullString
  loc_156209E:                 Set var_94 = Me.Txt
  loc_15620A4:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_15620AC:                 var_98.Tag = vbNullString
  loc_15620B8:               End If
  loc_15620B8:             End If
  loc_15620BB:           Else
  loc_15620C3:             If (var_8E = CInt(2)) Then
  loc_1562107:               If ((Me.RecordCount > 0) Or ((Me.EOF = 0) Or (Me.BOF = 0))) Then
  loc_1562117:                 Set var_94 = Me.Txt
  loc_156211D:                 Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_156213C:                 If (var_98.Text <> vbNullString) Then
  loc_156217A:                   Set var_A4 = Me.Txt
  loc_1562180:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1562188:                   var_A8.Text = CStr(Me.Fields.Item("Name").Value)
  loc_15621BB:                   var_98 = Me.Fields.Item("Code")
  loc_15621D9:                   Set var_A4 = Me.Txt
  loc_15621DF:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_15621E7:                   var_A8.Tag = CStr(var_98.Value)
  loc_1562200:                 Else
  loc_156220D:                   Set var_94 = Me.Txt
  loc_1562213:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_156221B:                   var_98.Text = vbNullString
  loc_1562234:                   Set var_94 = Me.Txt
  loc_156223A:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562242:                   var_98.Tag = vbNullString
  loc_156224E:                 End If
  loc_156224E:               End If
  loc_1562251:             Else
  loc_1562259:               If (var_8E = CInt(&HE)) Then
  loc_156226A:                 Set var_94 = Me.Txt
  loc_1562270:                 Call 0.Method_Txt_Validate0 (CInt(&HE), var_98)
  loc_156228F:                 If (var_98.Text <> vbNullString) Then
  loc_15622A2:                   Set var_94 = Me.Txt
  loc_15622A8:                   Call 0.Method_Txt_Validate0 (CInt(&HE), var_98)
  loc_15622BE:                   var_F4 = InStr(1, CVar(var_98), "@", 0)
  loc_15622E2:                   Call 0.Method_Txt_Validate0 (CInt(&HE), var_A8, 1)
  loc_15622EA:                   var_134 = CVar(var_A8) 'Address
  loc_156231E:                   If CBool(Me.Txt Or (InStr((var_F4 = 0), var_134, ".", 0) = 0)) Then
  loc_156233A:                     MsgBox("Please fill a Valid EMail Id.", 0, var_F4, var_114, var_134)
  loc_156234C:                     arg_10 = &HFF
  loc_156234F:                     Exit Sub
  loc_1562350:                   End If
  loc_156235A:                   Set var_94 = Me.Txt
  loc_1562360:                   Call 0.Method_Txt_Validate0 (Cancel, var_98)
  loc_1562385:                   Set var_A4 = Me.Txt
  loc_156238B:                   Call 0.Method_Txt_Validate0 (Cancel, var_A8)
  loc_1562393:                   var_A8.Text = CStr(LCase(CVar(var_98)))
  loc_15623AB:                 End If
  loc_15623AE:               Else
  loc_15623B6:                 If (var_8E = CInt(&H1F)) Then
  loc_15623C7:                   Set var_94 = Me.Txt
  loc_15623CD:                   Call 0.Method_Txt_Validate0 (CInt(&H1F), var_98)
  loc_15623D5:                   var_A0 = var_98.Text
  loc_15623F7:                   var_AC = Replace(var_A0, " ", vbNullString, 1, -1, 0)
  loc_1562405:                   Set var_A4 = Me.Txt
  loc_156240B:                   Call 0.Method_Txt_Validate0 (CInt(&H1F), var_A8)
  loc_1562413:                   var_A8.Text = var_A4 & var_A0
  loc_156242A:                 End If
  loc_156242A:               End If
  loc_156242A:             End If
  loc_156242A:           End If
  loc_156242A:         End If
  loc_156242A:       End If
  loc_156242A:     End If
  loc_156242A:   End If
  loc_156242A: End If
  loc_156242F: Set var_88 = Nothing
  loc_1562432: Exit Sub
  loc_1562433: ' Referenced from: 15613E8
  loc_1562439: Call 0.Method_arg_50 (var_A0)
  loc_156244E: Proc_183_57_104B0BC(var_A0, "Txt_Validate")
  loc_156245A: Exit Sub
End Sub

Private Sub Opt3_Click(Index As Integer) 'E82694
  'Data Table: 52BB2C
  loc_E82644: If (Index = 3) Then
  loc_E82651:   var_9C = "GroupCode"
  loc_E8267B:   Proc_183_43_EF88E4(" Select GroupCode,GroupName,maingrcode From AcGroup Where (LOGSITE_CODE='" & MemVar_1F95078 & "' OR LOGSITE_CODE='HO') AND MainGrCode<>'999' Order by GroupName", Me.DCGroup, "GroupName")
  loc_E82692: End If
  loc_E82692: Exit Sub
End Sub

Public Sub SEARCHBACK(MyValue) 'EB9F94
  'Data Table: 52BB2C
  Dim Me As Recordset15
  Dim var_8C As String
  loc_EB9F02: On Error Goto loc_EB9F6B
  loc_EB9F0B: Me.MoveFirst
  loc_EB9F25: var_8C = "SearchCode='" & MyValue
  loc_EB9F35: Me.Find var_8C & "'", 0, 1
  loc_EB9F41: Call Proc_184_58_18BE944(var_A0)
  loc_EB9F62: Proc_5_0_1107AD0(&HFF, Me)
  loc_EB9F6A: Exit Sub
  loc_EB9F6B: ' Referenced from: EB9F02
  loc_EB9F71: Call 0.Method_arg_50 (var_8C, global_112)
  loc_EB9F86: Proc_183_57_104B0BC(var_8C, "SEARCHBACK")
  loc_EB9F92: Exit Sub
End Sub

Public Sub Proc_184_49_E8A38C(arg_C) 'E8A38C
  'Data Table: 52BB2C
  Dim var_98 As TextBox
  loc_E8A326: Set var_8C = Me.Txt
  loc_E8A32C: Call 0.Method_Proc_184_49_E8A38CC (var_8E, var_86)
  loc_E8A33C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E8A351:   If ((var_86 = &H19) Or (var_86 = &H1A)) Then
  loc_E8A354:     GoTo loc_E8A381
  loc_E8A357:   End If
  loc_E8A367:   Set var_8C = Me.Txt
  loc_E8A36D:   Call 0.Method_Proc_184_49_E8A38C0 (CInt(var_86), var_98)
  loc_E8A375:   var_98.Enabled = arg_C
  loc_E8A381:   ' Referenced from: E8A354
  loc_E8A384: Next var_92 'Byte
  loc_E8A38A: Exit Sub
End Sub

Public Sub Proc_184_50_FBE768
  'Data Table: 52BB2C
  Dim var_98 As TextBox
  Dim var_8C As Variant
  Dim var_D8 As Variant
  loc_FBE5CA: Set var_8C = Me.Txt
  loc_FBE5D0: Call 0.Method_Proc_184_50_FBE768C (var_8E, var_86)
  loc_FBE5E0: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_FBE5F6:   Set var_8C = Me.Txt
  loc_FBE5FC:   Call 0.Method_Proc_184_50_FBE7680 (CInt(var_86), var_98)
  loc_FBE604:   var_98.Text = vbNullString
  loc_FBE620:   Set var_8C = Me.Txt
  loc_FBE626:   Call 0.Method_Proc_184_50_FBE7680 (CInt(var_86), var_98)
  loc_FBE62E:   var_98.Tag = vbNullString
  loc_FBE63D: Next var_92 'Byte
  loc_FBE650: Me.LblNature.Caption = vbNullString
  loc_FBE665: Me.LblOpBalType.Caption = vbNullString
  loc_FBE67A: Me.LblCurBalType.Caption = vbNullString
  loc_FBE68F: Me.txtCurrBal.Text = vbNullString
  loc_FBE6AA: Me.FGrid.Rows = 1
  loc_FBE6C7: var_D8 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_FBE6CF: Set var_98 = Me.FGrid
  loc_FBE6FE: Me.FGrid.FixedRows = 1
  loc_FBE728: Proc_183_1_F5BEA0(Me, CStr(-2147483643), CStr(&HC00000))
  loc_FBE746: Me.txtCurrBal.BackColor = -2147483643
  loc_FBE75D: Me.txtCurrBal.ForeColor = &HC00000
  loc_FBE765: Exit Sub
End Sub

Public Sub Proc_184_51_F6C9CC
  'Data Table: 52BB2C
  loc_F6C8A4: If (CBool(Me.DGAcName.Visible) = &HFF) Then
  loc_F6C8B6:   Me.DGAcName.Visible = False
  loc_F6C8BE: End If
  loc_F6C8DA: If (CBool(Me.DGUnderAc.Visible) = &HFF) Then
  loc_F6C8EC:   Me.DGUnderAc.Visible = False
  loc_F6C8F4: End If
  loc_F6C910: If (CBool(Me.DGCity.Visible) = &HFF) Then
  loc_F6C922:   Me.DGCity.Visible = False
  loc_F6C92A: End If
  loc_F6C945: If (Me.FrmList.Visible = &HFF) Then
  loc_F6C954:   Me.FrmList.Visible = False
  loc_F6C95C: End If
  loc_F6C978: If (CBool(Me.DGArea.Visible) = &HFF) Then
  loc_F6C98A:   Me.DGArea.Visible = False
  loc_F6C992: End If
  loc_F6C9AE: If (CBool(Me.DGTDSCat.Visible) = &HFF) Then
  loc_F6C9C0:   Me.DGTDSCat.Visible = False
  loc_F6C9C8: End If
  loc_F6C9C8: Exit Sub
End Sub

Public Sub Proc_184_52_10CAAD0
  'Data Table: 52BB2C
  Dim var_98 As Variant
  Dim var_88 As MSHFlexGrid
  Dim var_B8 As Variant
  Dim var_D8 As String
  Dim var_101 As Double
  loc_10CA7C4: Set var_88 = Me.FGrid
  loc_10CA7D3: var_88.Left = CVar(CDbl(500))
  loc_10CA7E4: var_88.Top = CVar(CDbl(3500))
  loc_10CA7F5: var_88.RowHeightMin = &HDC
  loc_10CA806: var_88.Cols = 8
  loc_10CA80B: var_98 = 0
  loc_10CA817: var_B8 = CVar(CLng(6)) 'Long
  loc_10CA81C: var_D8 = "Site"
  loc_10CA825: LateIdCallSt
  loc_10CA830: var_98 = CVar(CLng(6)) 'Long
  loc_10CA83B: var_B8 = CVar(CInt(1)) 'Integer
  loc_10CA842: LateIdCallSt
  loc_10CA84D: var_98 = CVar(CLng(6)) 'Long
  loc_10CA852: var_B8 = 0
  loc_10CA85E: LateIdCallSt
  loc_10CA866: var_98 = 0
  loc_10CA872: var_B8 = CVar(CLng(0)) 'Long
  loc_10CA877: var_D8 = "S.No"
  loc_10CA880: LateIdCallSt
  loc_10CA88B: var_98 = CVar(CLng(0)) 'Long
  loc_10CA896: var_B8 = CVar(CInt(1)) 'Integer
  loc_10CA89D: LateIdCallSt
  loc_10CA8A8: var_98 = CVar(CLng(0)) 'Long
  loc_10CA8AD: var_B8 = &H226
  loc_10CA8B9: LateIdCallSt
  loc_10CA8C1: var_98 = 0
  loc_10CA8CD: var_B8 = CVar(CLng(5)) 'Long
  loc_10CA8D2: var_D8 = "Voucher No"
  loc_10CA8DB: LateIdCallSt
  loc_10CA8E6: var_98 = CVar(CLng(5)) 'Long
  loc_10CA8F1: var_B8 = CVar(CInt(1)) 'Integer
  loc_10CA8F8: LateIdCallSt
  loc_10CA903: var_98 = CVar(CLng(5)) 'Long
  loc_10CA908: var_B8 = 0
  loc_10CA914: LateIdCallSt
  loc_10CA91C: var_98 = 0
  loc_10CA928: var_B8 = CVar(CLng(1)) 'Long
  loc_10CA92D: var_D8 = "Ref. Date"
  loc_10CA936: LateIdCallSt
  loc_10CA941: var_98 = CVar(CLng(1)) 'Long
  loc_10CA94C: var_B8 = CVar(CInt(1)) 'Integer
  loc_10CA953: LateIdCallSt
  loc_10CA95E: var_98 = CVar(CLng(1)) 'Long
  loc_10CA963: var_B8 = &H4B0
  loc_10CA96F: LateIdCallSt
  loc_10CA977: var_98 = 0
  loc_10CA983: var_B8 = CVar(CLng(2)) 'Long
  loc_10CA988: var_D8 = "Narration"
  loc_10CA991: LateIdCallSt
  loc_10CA99C: var_98 = CVar(CLng(2)) 'Long
  loc_10CA9A7: var_B8 = CVar(CInt(1)) 'Integer
  loc_10CA9AE: LateIdCallSt
  loc_10CA9B9: var_98 = CVar(CLng(2)) 'Long
  loc_10CA9BE: var_B8 = &H802
  loc_10CA9CA: LateIdCallSt
  loc_10CA9D2: var_98 = 0
  loc_10CA9DE: var_B8 = CVar(CLng(3)) 'Long
  loc_10CA9E3: var_D8 = "Amount"
  loc_10CA9EC: LateIdCallSt
  loc_10CA9F7: var_98 = CVar(CLng(3)) 'Long
  loc_10CAA02: var_B8 = CVar(CInt(7)) 'Integer
  loc_10CAA09: LateIdCallSt
  loc_10CAA14: var_98 = CVar(CLng(3)) 'Long
  loc_10CAA19: var_B8 = &H4E2
  loc_10CAA25: LateIdCallSt
  loc_10CAA2D: var_98 = 0
  loc_10CAA39: var_B8 = CVar(CLng(4)) 'Long
  loc_10CAA3E: var_D8 = "Cr/Dr"
  loc_10CAA47: LateIdCallSt
  loc_10CAA52: var_98 = CVar(CLng(4)) 'Long
  loc_10CAA5D: var_B8 = CVar(CInt(1)) 'Integer
  loc_10CAA64: LateIdCallSt
  loc_10CAA6F: var_98 = CVar(CLng(4)) 'Long
  loc_10CAA74: var_B8 = &H226
  loc_10CAA80: LateIdCallSt
  loc_10CAA88: var_98 = 0
  loc_10CAA94: var_B8 = CVar(CLng(7)) 'Long
  loc_10CAA99: var_D8 = "SiteCode"
  loc_10CAAA2: LateIdCallSt
  loc_10CAAAD: var_98 = CVar(CLng(7)) 'Long
  loc_10CAAB2: var_B8 = 0
  loc_10CAABE: LateIdCallSt
  loc_10CAACC: Exit Sub
  loc_10CAACD: var_101 = Nothing
End Sub

Public Sub Proc_184_53_1147C8C
  'Data Table: 52BB2C
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
  loc_1147900: On Error Goto loc_1147C64
  loc_1147906: var_90 = CDbl(0)
  loc_114790C: var_98 = CDbl(0)
  loc_1147912: var_A0 = CDbl(0)
  loc_114793A: For var_B8 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_B8 'Integer
  loc_1147944:   var_C8 = CVar(CLng(var_86)) 'Long
  loc_114794C:   var_E8 = CVar(CLng(4)) 'Long
  loc_1147977:   If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_114797E:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_1147986:     var_E8 = CVar(CLng(3)) 'Long
  loc_11479B2:     var_90 = (var_90 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_11479C1:   Else
  loc_11479C5:     var_C8 = CVar(CLng(var_86)) 'Long
  loc_11479CD:     var_E8 = CVar(CLng(4)) 'Long
  loc_11479F8:     If (CStr(Me.FGrid.TextMatrix)) = "Dr") Then
  loc_11479FF:       var_C8 = CVar(CLng(var_86)) 'Long
  loc_1147A07:       var_E8 = CVar(CLng(3)) 'Long
  loc_1147A33:       var_98 = (var_98 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_1147A3F:     End If
  loc_1147A3F:   End If
  loc_1147A42: Next var_B8 'Integer
  loc_1147A63: var_B4 = CVar((var_98 - var_90)) 'Double
  loc_1147A73: var_A0 = CSng(Format(Me.FGrid.TextMatrix), "0.00"))
  loc_1147AA7: var_FC = CStr(Format(CVar(Abs(var_A0)), "0.00"))
  loc_1147AB6: Set var_A4 = Me.Txt
  loc_1147ABC: Call 0.Method_Proc_184_53_1147C8C0 (CInt(&H19), var_128, var_FC, 1)
  loc_1147AC4: var_128.Text = 1
  loc_1147AE3: If (var_A0 < CDbl(0)) Then
  loc_1147AF3:   Me.LblOpBalType.Caption = "Cr"
  loc_1147AFE: Else
  loc_1147B0B:   Me.LblOpBalType.Caption = "Dr"
  loc_1147B13: End If
  loc_1147B21: Set var_A4 = Me.Txt
  loc_1147B27: Call 0.Method_Proc_184_53_1147C8C0 (CInt(&H1A), var_128, var_FC)
  loc_1147B2F: var_A0 = var_128.Tag
  loc_1147B5C: var_B4 = CVar(Abs((Val(var_FC) + var_A0))) 'Double
  loc_1147B7A: Set var_12C = Me.Txt
  loc_1147B80: Call 0.Method_Proc_184_53_1147C8C0 (CInt(&H1A), var_130, CStr(Format(CVar(Abs(var_A0)), "0.00")), 1)
  loc_1147B88: var_130.Text = 1
  loc_1147BB6: Set var_A4 = Me.Txt
  loc_1147BBC: Call 0.Method_Proc_184_53_1147C8C0 (CInt(0), var_128, var_FC)
  loc_1147BC4: var_104 = var_128.Text
  loc_1147BE2: Me.txtCurrBal.Text = Proc_183_42_107DF48(var_FC, 1)
  loc_1147C05: Set var_A4 = Me.Txt
  loc_1147C0B: Call 0.Method_Proc_184_53_1147C8C0 (CInt(&H1A), var_128)
  loc_1147C13: var_FC = var_128.Tag
  loc_1147C33: If (CDbl((Val(var_FC) + var_A0)) < CDbl(0)) Then
  loc_1147C43:   Me.LblCurBalType.Caption = "Cr"
  loc_1147C4E: Else
  loc_1147C5B:   Me.LblCurBalType.Caption = "Dr"
  loc_1147C63: End If
  loc_1147C63: Exit Sub
  loc_1147C64: ' Referenced from: 1147900
  loc_1147C6A: Call 0.Method_arg_50 (var_FC)
  loc_1147C7F: Proc_183_57_104B0BC(var_FC, "CalOpBal")
  loc_1147C8B: Exit Sub
End Sub

Public Sub Proc_184_54_F74848
  'Data Table: 52BB2C
  Dim var_90 As TextBox
  loc_F7470E: Set var_8C = Me.Txt
  loc_F74714: Call 0.Method_Proc_184_54_F748480 (CInt(&H11), var_90)
  loc_F74733: If (var_90.Text = "N/A") Then
  loc_F7473A:   var_86 = CByte(0) 'Byte
  loc_F74741: Else
  loc_F7474F:   Set var_8C = Me.Txt
  loc_F74755:   Call 0.Method_Proc_184_54_F748480 (CInt(&H11), var_90)
  loc_F74774:   If (var_90.Text = "Hindu") Then
  loc_F7477B:     var_86 = CByte(1) 'Byte
  loc_F74782:   Else
  loc_F74790:     Set var_8C = Me.Txt
  loc_F74796:     Call 0.Method_Proc_184_54_F748480 (CInt(&H11), var_90)
  loc_F747B5:     If (var_90.Text = "Muslim") Then
  loc_F747BC:       var_86 = CByte(2) 'Byte
  loc_F747C3:     Else
  loc_F747D1:       Set var_8C = Me.Txt
  loc_F747D7:       Call 0.Method_Proc_184_54_F748480 (CInt(&H11), var_90)
  loc_F747F6:       If (var_90.Text = "Sikh") Then
  loc_F747FD:         var_86 = CByte(3) 'Byte
  loc_F74804:       Else
  loc_F74812:         Set var_8C = Me.Txt
  loc_F74818:         Call 0.Method_Proc_184_54_F748480 (CInt(&H11), var_90)
  loc_F74837:         If (var_90.Text = "Christian") Then
  loc_F7483E:           var_86 = CByte(4) 'Byte
  loc_F74842:         End If
  loc_F74842:       End If
  loc_F74842:     End If
  loc_F74842:   End If
  loc_F74842: End If
  loc_F74842: Proc_184_54_F74848 = 
End Sub

Public Sub Proc_184_55_10C061C(arg_C) '10C061C
  'Data Table: 52BB2C
  Dim var_D4 As Variant
  Dim var_9C As String
  Dim var_B8 As String
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_124 As Variant
  Dim var_8C As Recordset15
  Dim var_154 As Variant
  Dim var_174 As Variant
  Dim var_184 As Variant
  Dim var_1A4 As Variant
  Dim var_1C4 As Variant
  loc_10C0396: On Error Goto loc_10C05EF
  loc_10C039C: var_90 = "F_AO"
  loc_10C03A3: Set var_8C = New 
  loc_10C03AE: Me.Recordset15.CursorLocation = 3
  loc_10C03B6: var_D4 = arg_C
  loc_10C03BE: Proc_183_7_EB17D4(var_E4)
  loc_10C03E1: var_9C = "Select VT.Number_Method,VP.V_Type,VP.Date_From,VP.Prefix,VP.Start_Srl_No From Voucher_Type VT Left Join Voucher_Prefix VP on VT.V_Type=VP.V_Type Where VT.SITE_CODE='" & MemVar_1F95070
  loc_10C0412: var_B8 = var_9C & "' AND VT.LOGSITE_CODE='" & MemVar_1F95078 & "' AND  VT.V_Type='" & var_90 & "' AND VP.SITE_CODE='" & MemVar_1F95070 & "' AND VP.LOGSITE_CODE='"
  loc_10C043D: var_124 = CVar(var_B8 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & var_E4 & " BETWEEN VP.DATE_FROM AND VP.DATE_TO Order By VP.Date_From DESC" 
  loc_10C0445: var_8C.Open var_124, CVar(MemVar_1F951E0), 2
  loc_10C0482: If (var_8C.RecordCount > 0) Then
  loc_10C04B4:   var_F4 = (var_8C.Fields.Item("start_srl_no").Value + 1)
  loc_10C04BD:   global_64 = CLng(CVar(var_B8 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND "))
  loc_10C04F9:   var_94 = CStr(var_8C.Fields.Item("Prefix").Value)
  loc_10C0516:   var_9C = Proc_183_15_EAD490(MemVar_1F95070, 2, MemVar_1F9506C, global_64)
  loc_10C0520:   var_D4 = var_90
  loc_10C0530:   var_104 = (CVar(3 & var_9C) + Trim(var_D4))
  loc_10C0541:   var_124 = Space((5 - Len(var_90)))
  loc_10C0549:   var_154 = (CVar(var_B8 & MemVar_1F95078 & "' AND  VP.V_Type='" & var_90 & "' AND ") & Trim(var_D4) + var_124)
  loc_10C055A:   var_164 = Space((5 - Len(var_94)))
  loc_10C0562:   var_174 = (var_154 + var_164)
  loc_10C056C:   var_184 = (var_174 + CVar(var_94))
  loc_10C0585:   var_194 = Space((8 - Len(CStr(global_64))))
  loc_10C058D:   var_1A4 = (var_184 + var_194)
  loc_10C059C:   var_1C4 = (var_1A4 + CVar(CStr(global_64)))
  loc_10C05D5:   var_88 = CStr(var_1C4)
  loc_10C05DB: Else
  loc_10C05DE:   var_88 = vbNullString
  loc_10C05E1: End If
  loc_10C05E6: Set var_8C = Nothing
  loc_10C05E9: Proc_184_55_10C061C = -1
  loc_10C05EF: ' Referenced from: 10C0396
  loc_10C05F5: Call 0.Method_arg_50 (var_9C)
  loc_10C060A: Proc_183_57_104B0BC(var_9C, "VoucherNo")
  loc_10C0616: Proc_184_55_10C061C = var_D4
End Sub

Public Sub Proc_184_56_F7B8D0(arg_C) 'F7B8D0
  'Data Table: 52BB2C
  Dim var_94 As TextBox
  loc_F7B781: If (CInt(arg_C) = 1) Then
  loc_F7B78F:   For var_8A = CByte(4) To CByte(&H17): var_86 = var_8A 'Byte
  loc_F7B7A4:     Set var_90 = Me.Txt
  loc_F7B7AA:     Call 0.Method_Proc_184_56_F7B8D00 (CInt(var_86), var_94)
  loc_F7B7B2:     var_94.Enabled = True
  loc_F7B7C1:   Next var_8A 'Byte
  loc_F7B7D2:   Set var_90 = Me.Txt
  loc_F7B7D8:   Call 0.Method_Proc_184_56_F7B8D00 (&H1B, var_94)
  loc_F7B7E0:   var_94.Enabled = True
  loc_F7B7F8:   Set var_90 = Me.Txt
  loc_F7B7FE:   Call 0.Method_Proc_184_56_F7B8D00 (&H1B, var_94)
  loc_F7B806:   var_94.Text = vbNullString
  loc_F7B815: Else
  loc_F7B820:   For var_98 = CByte(4) To CByte(&H17):   var_86 = var_98 'Byte
  loc_F7B835:     Set var_90 = Me.Txt
  loc_F7B83B:     Call 0.Method_Proc_184_56_F7B8D00 (CInt(var_86), var_94)
  loc_F7B843:     var_94.Enabled = False
  loc_F7B85F:     Set var_90 = Me.Txt
  loc_F7B865:     Call 0.Method_Proc_184_56_F7B8D00 (CInt(var_86), var_94)
  loc_F7B86D:     var_94.Text = vbNullString
  loc_F7B87C:   Next var_98 'Byte
  loc_F7B88D:   Set var_90 = Me.Txt
  loc_F7B893:   Call 0.Method_Proc_184_56_F7B8D00 (&H1B, var_94)
  loc_F7B89B:   var_94.Enabled = False
  loc_F7B8B3:   Set var_90 = Me.Txt
  loc_F7B8B9:   Call 0.Method_Proc_184_56_F7B8D00 (&H1B, var_94)
  loc_F7B8C1:   var_94.Text = vbNullString
  loc_F7B8CD: End If
  loc_F7B8CD: Exit Sub
End Sub

Public Sub Proc_184_57_11F5B9C
  'Data Table: 52BB2C
  Dim var_8C As MSHFlexGrid
  Dim var_A0 As Long
  Dim var_D4 As Variant
  Dim var_C4 As Variant
  Dim var_F4 As Variant
  Dim var_114 As Variant
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_124 As Variant
  Dim var_194 As Double
  loc_11F571C: On Error Goto loc_11F5B6C
  loc_11F5732: var_A0 = CLng(Me.FGrid.Col)
  loc_11F5742: If (var_A0 = CLng(1)) Then
  loc_11F574E:   Set var_8C = Me.TxtGrid
  loc_11F5754:   Call 0.Method_Proc_184_57_11F5B9C0 (0, var_A4)
  loc_11F576C:   var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_11F579E:   Call 0.Method_arg_184 (var_A4, var_AC, CVar(CLng(Me.FGrid.Col)))
  loc_11F57A6:   var_114 = CVar(var_AC) 'String
  loc_11F57AE:   Set var_128 = Me.FGrid
  loc_11F57B4:   LateIdCallSt
  loc_11F57D5: Else
  loc_11F57DC:   If Not (var_A0 = CLng(2)) Then
  loc_11F57E6:     If (var_A0 = CLng(4)) Then
  loc_11F57E9:     End If
  loc_11F5825:     Set var_8C = Me.TxtGrid
  loc_11F582B:     Call 0.Method_Proc_184_57_11F5B9C0 (0, var_A4, var_AC, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F5833:     var_128 = var_A4.Text
  loc_11F5849:     LateIdCallSt
  loc_11F5884:     If (CLng(Me.FGrid.Col) = CLng(4)) Then
  loc_11F5887:       Call Proc_184_53_1147C8C(Me.FGrid, CVar(var_AC), CVar(var_AC))
  loc_11F58A5:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11F58AD:       var_F4 = CVar(CLng(4)) 'Long
  loc_11F58C7:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11F58E8:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11F5935:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11F594D:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11F5955:         Set var_A4 = Me.FGrid
  loc_11F5971:       End If
  loc_11F5971:     End If
  loc_11F5974:   Else
  loc_11F597B:     If (var_A0 = CLng(3)) Then
  loc_11F598A:       Set var_8C = Me.TxtGrid
  loc_11F5990:       Call 0.Method_Proc_184_57_11F5B9C0 (0, var_A4, var_AC, FGrid.DispID_10000, var_C4, var_124)
  loc_11F5998:       (var_AC <> vbNullString) = var_A4.Text
  loc_11F59A5:       var_194 = Val(var_AC)
  loc_11F5A0E:       LateIdCallSt
  loc_11F5A35:       Call Proc_184_53_1147C8C(Me.FGrid, CVar(CStr(Format(CVar(var_194), "0.00"))), 1, 1, CVar(CLng(Me.FGrid.Col)), CVar(CLng(Me.FGrid.Row)))
  loc_11F5A53:       var_D4 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11F5A5B:       var_F4 = CVar(CLng(4)) 'Long
  loc_11F5A75:       var_AC = CStr(Me.FGrid.TextMatrix))
  loc_11F5A96:       var_124 = CVar((CLng(Me.FGrid.Rows) - 1)) 'Long
  loc_11F5AE3:       If (CVar(CLng(3)) And (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0))) Then
  loc_11F5AFB:         var_C4 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_11F5B03:         Set var_A4 = Me.FGrid
  loc_11F5B1F:       End If
  loc_11F5B1F:     End If
  loc_11F5B1F:   End If
  loc_11F5B1F: End If
  loc_11F5B37: Set var_8C = Me.TxtGrid
  loc_11F5B3D: Call 0.Method_Proc_184_57_11F5B9C0 (0, var_A4, 0, &HFF, &HFF, FGrid.DispID_10000, var_C4)
  loc_11F5B45: var_A4.Visible = CVar(CLng(Me.FGrid.Col))
  loc_11F5B55: Set var_8C = Me.FGrid
  loc_11F5B66: Proc_184_57_11F5B9C = FGrid.DispID_8001
  loc_11F5B6C: ' Referenced from: 11F571C
  loc_11F5B72: Call 0.Method_arg_50 (var_AC, (var_AC <> vbNullString), var_F4, CVar(CLng(Me.FGrid.Row)))
  loc_11F5B87: Proc_183_57_104B0BC(var_AC, "TxtGridLeave", var_194)
  loc_11F5B93: Proc_184_57_11F5B9C = var_F4
End Sub

Public Sub Proc_184_58_18BE944
  'Data Table: 52BB2C
  Dim Me As Variant
  Dim var_B4 As Variant
  Dim var_C8 As Variant
  Dim var_E4 As String
  Dim var_D0 As Variant
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim unk_52BB4C As Connection15
  Dim unk_52BB4E As Connection15
  Dim var_148 As Recordset15
  Dim var_E0 As Variant
  Dim var_CC As Variant
  Dim var_14C As String
  Dim var_1B0 As Variant
  Dim var_1F4 As Variant
  Dim var_88 As Recordset15
  Dim var_206 As Integer
  Dim var_1C4 As TextBox
  Dim var_200 As String
  Dim var_204 As String
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_20C As String
  Dim var_8C As Recordset15
  Dim var_144 As Variant
  Dim var_AA As Integer
  Dim var_A8 As Double
  Dim var_354 As Variant
  Dim var_3CC As Variant
  loc_18BC154: On Error Goto loc_18BE91C
  loc_18BC16E: If (Me.RecordCount > 0) Then
  loc_18BC1AD:   Set var_CC = Me.Txt
  loc_18BC1B3:   Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_D0)
  loc_18BC1BB:   var_D0.Text = CStr(Me.Fields.Item("subcode").Value)
  loc_18BC20D:   Set var_CC = Me.Txt
  loc_18BC213:   Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_D0)
  loc_18BC21B:   var_D0.Tag = CStr(Me.Fields.Item("subcode").Value)
  loc_18BC23E:   var_F4 = "Select S.*,G.GroupNature AS GNature,G.GroupName,G.MainGrCode,C.CityName,T.CATEGORY_Desc,TDSCAT.NAME AS TDSNAME From (((SubGroup S Left Join AcGroup G on S.GroupCode=G.GroupCode) Left Join City C on S.CityCode=C.CityCode) Left Join CATEGORY T on S.CatEGORY=T.CatEGORY)  LEFT JOIN TDSCAT ON TDSCAT.CODE=S.TDS_Catg Where  S.SubCode='"
  loc_18BC287:   unk_52BB4C.Execute CStr(var_F4 & Me.Fields.Item("subcode").Value & "'"), var_144, -1
  loc_18BC292:   Set var_88 = var_CC
  loc_18BC302:   unk_52BB4E.Execute CStr("Select U_Name,U_AE,U_EntDt From Subgroup where SubCode='" & Me.Fields.Item("subcode").Value & "'  "), var_144, -1
  loc_18BC30D:   Set var_148 = var_CC
  loc_18BC361:   var_CC = var_148.Fields
  loc_18BC3CA:   var_1AC = IIf((Proc_6_38_E69628(CVar(var_148.Fields.Item("U_AE")), var_CC) = "A"), "Created By : ", IIf((Proc_6_38_E69628(CVar(var_CC.Item("U_AE"))) = "E"), "Modified By : ", "User : "))
  loc_18BC40F:   Me.LblUser.Caption = CStr(var_CC & CVar(Proc_6_38_E69628(CVar(var_148.Fields.Item("U_Name")), var_1AC)))
  loc_18BC489:   var_D0 = var_148.Fields.Item("U_AE")
  loc_18BC4B6:   var_14C = Proc_6_38_E69628(CVar(var_D0))
  loc_18BC4EA:   var_1AC = IIf((Proc_6_38_E69628(CVar(var_148.Fields.Item("U_AE"))) = "A"), "Created By : ", IIf((var_14C = "E"), "Last Update : ", "entdt : "))
  loc_18BC509:   var_1C4 = var_148.Fields.Item("U_EntDt")
  loc_18BC52F:   Me.LblLDt.Caption = CStr(var_1AC & CVar(Proc_6_38_E69628(CVar(var_1C4))))
  loc_18BC57B:   If (var_88.RecordCount > 0) Then
  loc_18BC5BD:     If (Me.Fields.Item("Name").Value = "Cash") Then
  loc_18BC5C6:       global_60 = "Y"
  loc_18BC5CD:     Else
  loc_18BC5D3:       global_60 = "N"
  loc_18BC5D7:     End If
  loc_18BC5F1:     var_C8 = var_88.Fields.Item("Name")
  loc_18BC610:     Set var_CC = Me.Txt
  loc_18BC616:     Call 0.Method_Proc_184_58_18BE9440 (CInt(1), var_D0)
  loc_18BC61E:     var_D0.Text = CStr(var_C8.Value)
  loc_18BC642:     Set var_B4 = Me.Txt
  loc_18BC648:     Call 0.Method_Proc_184_58_18BE9440 (CInt(1), var_C8)
  loc_18BC65B:     global_76 = var_C8.Text
  loc_18BC69F:     Set var_CC = Me.Txt
  loc_18BC6A5:     Call 0.Method_Proc_184_58_18BE9440 (CInt(2), var_D0)
  loc_18BC6AD:     var_D0.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("TDSNAME")))
  loc_18BC6E9:     var_206 = IsNull(CVar(var_88.Fields.Item("GroupName")))
  loc_18BC703:     var_D0 = var_88.Fields.Item("GroupName")
  loc_18BC714:     var_104 = vbNullString
  loc_18BC73B:     Set var_1B0 = Me.Txt
  loc_18BC741:     Call 0.Method_Proc_184_58_18BE9440 (CInt(3), var_1C4)
  loc_18BC749:     var_1C4.Text = CStr(IIf(var_206, var_104, CVar(var_D0)))
  loc_18BC7A2:     Set var_CC = Me.Txt
  loc_18BC7A8:     Call 0.Method_Proc_184_58_18BE9440 (CInt(3), var_D0)
  loc_18BC7B0:     var_D0.Tag = CStr(var_88.Fields.Item("GroupCode").Value)
  loc_18BC7F7:     global_80 = CStr(var_88.Fields.Item("MainGrCode").Value)
  loc_18BC840:     Me.LblNature.Caption = CStr(var_88.Fields.Item("Nature").Value)
  loc_18BC890:     If (var_88.Fields.Item("Nature").Value = "Bank") Then
  loc_18BC89F:       Me.FrBankDetail.Visible = True
  loc_18BC8AA:     Else
  loc_18BC8B6:       Me.FrBankDetail.Visible = False
  loc_18BC8BE:     End If
  loc_18BC8D8:     var_C8 = var_88.Fields.Item("GNature")
  loc_18BC8E0:     var_E0 = var_C8.Value
  loc_18BC90C:     var_D0 = var_88.Fields.Item("GNature")
  loc_18BC93E:     If CBool((var_E0 = "A") Or (var_D0.Value = "L")) Then
  loc_18BC948:       global_96 = CByte(1)
  loc_18BC94F:     Else
  loc_18BC956:       global_96 = CByte(0)
  loc_18BC95A:     End If
  loc_18BC962:     If (MemVar_1F95078 = "HO") Then
  loc_18BC973:       Set var_B4 = Me.Txt
  loc_18BC979:       Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_C8, var_14C)
  loc_18BC981:       global_96 = var_C8.Text
  loc_18BC98C:       var_F4 = 0
  loc_18BC9C7:       unk_52BB4C.Execute "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1
  loc_18BC9CF:       var_CC = var_CC.Fields
  loc_18BC9D7:       var_F4 = var_D0.Item(var_D0)
  loc_18BC9DF:       var_1B0 = var_1B0.Value
  loc_18BCA1A:       Set var_B4 = Me.Txt
  loc_18BCA20:       Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_C8, var_14C, CSng(var_104))
  loc_18BCA33:       var_F4 = 0
  loc_18BCA6E:       unk_52BB4C.Execute "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "'", var_E0, -1
  loc_18BCA76:       var_CC = var_CC.Fields
  loc_18BCA7E:       var_F4 = var_D0.Item(var_D0)
  loc_18BCA86:       var_1B0 = var_1B0.Value
  loc_18BCA8F:       var_9C = CSng(var_C8.Text)
  loc_18BCAB6:     Else
  loc_18BCAC4:       Set var_B4 = Me.Txt
  loc_18BCACA:       Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_C8, var_14C, var_9C)
  loc_18BCADD:       var_F4 = 0
  loc_18BCB0F:       var_204 = "Select isnull(Sum(AmtCr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "' AND LOGSITE_CODE='"
  loc_18BCB26:       unk_52BB4C.Execute var_204 & MemVar_1F95078 & "'", var_E0, -1
  loc_18BCB2E:       var_CC = var_CC.Fields
  loc_18BCB36:       var_F4 = var_D0.Item(var_D0)
  loc_18BCB3E:       var_1B0 = var_1B0.Value
  loc_18BCB47:       var_94 = CSng(var_C8.Text)
  loc_18BCB7D:       Set var_B4 = Me.Txt
  loc_18BCB83:       Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_C8, var_14C, var_94)
  loc_18BCB96:       var_F4 = 0
  loc_18BCBC8:       var_204 = "Select isnull(Sum(AmtDr),0) From Ledger Where V_Type='" & "F_AO" & "' and SubCode='" & var_14C & "' AND LOGSITE_CODE='"
  loc_18BCBDF:       unk_52BB4C.Execute var_204 & MemVar_1F95078 & "'", var_E0, -1
  loc_18BCBE7:       var_CC = var_CC.Fields
  loc_18BCBEF:       var_F4 = var_D0.Item(var_D0)
  loc_18BCBF7:       var_1B0 = var_1B0.Value
  loc_18BCC00:       var_9C = CSng(var_C8.Text)
  loc_18BCC28:     End If
  loc_18BCC45:     var_E0 = CVar(Abs((var_9C - var_94))) 'Double
  loc_18BCC63:     Set var_B4 = Me.Txt
  loc_18BCC69:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H19), var_C8, CStr(Format(var_E0, "0.00")), 1, 1)
  loc_18BCC71:     var_C8.Text = var_9C
  loc_18BCCD6:     var_E4 = CStr(IIf((var_94 > var_9C), "Cr", IIf((var_94 < var_9C), "Dr", vbNullString)))
  loc_18BCCE4:     Me.LblOpBalType.Caption = var_E4
  loc_18BCD0E:     Set var_B4 = Me.Txt
  loc_18BCD14:     Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_C8, var_E4)
  loc_18BCD1C:     var_104 = var_C8.Text
  loc_18BCD34:     Set var_CC = Me.txtCurrBal
  loc_18BCD3A:     var_CC.Text = Proc_183_42_107DF48(var_E4, global_96)
  loc_18BCD57:     If (MemVar_1F95078 = "HO") Then
  loc_18BCD78:       Set var_B4 = Me.Txt
  loc_18BCD7E:       Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_18BCD86:       var_E0 = var_C8.Text
  loc_18BCD8F:       var_14C = -1 & var_E4
  loc_18BCD9F:       unk_52BB4C.Execute var_14C & "'", var_CC, var_206
  loc_18BCDAA:       Set var_8C = var_CC
  loc_18BCDC5:     Else
  loc_18BCDE3:       Set var_B4 = Me.Txt
  loc_18BCDE9:       Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_C8, var_E4, "SELECT ISNULL(SUM(CURR_BAL),0) AS CurrBal FROM SUBGROUPCURRBAL WHERE SubCode='")
  loc_18BCDF1:       var_E0 = var_C8.Text
  loc_18BCDFA:       var_14C = -1 & var_E4
  loc_18BCE08:       var_200 = var_14C & "' AND LOGSITE_CODE='" & MemVar_1F95078
  loc_18BCE18:       unk_52BB4C.Execute var_200 & "'", var_CC, 
  loc_18BCE23:       Set var_8C = var_CC
  loc_18BCE3F:     End If
  loc_18BCE53:     If (var_8C.RecordCount > 0) Then
  loc_18BCEFC:       Set var_1B0 = Me.Txt
  loc_18BCF02:       Call 0.Method_Proc_184_58_18BE9440 (CInt(&H1A), var_1C4, CStr(Format(IIf(IsNull(CVar(var_8C.Fields.Item("CurrBal"))), 0, Abs(var_8C.Fields.Item("CurrBal").Value)), "0.00")))
  loc_18BCF0A:       var_1C4.Text = 1
  loc_18BCF73:       var_D0 = var_8C.Fields.Item("CurrBal")
  loc_18BCFED:       Me.LblCurBalType.Caption = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", IIf((var_D0.Value < 0), "Cr", vbNullString)))
  loc_18BD0B5:       global_92 = CStr(IIf((var_8C.Fields.Item("CurrBal").Value > 0), "Dr", "Cr"))
  loc_18BD0EA:       var_C8 = var_8C.Fields.Item("CurrBal")
  loc_18BD101:       var_F4 = CVar((var_94 - var_9C)) 'Double
  loc_18BD105:       var_104 = (var_C8.Value + 0)
  loc_18BD118:       Set var_CC = Me.Txt
  loc_18BD11E:       Call 0.Method_Proc_184_58_18BE9440 (CInt(&H1A), var_D0, CStr((var_8C.Fields.Item("CurrBal").Value > 0)))
  loc_18BD126:       var_D0.Tag = CSng(var_8C.Fields.Item("CurrBal").Value)
  loc_18BD143:     Else
  loc_18BD155:       Set var_B4 = Me.Txt
  loc_18BD15B:       Call 0.Method_Proc_184_58_18BE9440 (CInt(&H1A), var_C8, CStr(0))
  loc_18BD163:       var_C8.Text = 1
  loc_18BD17F:       Me.LblCurBalType.Caption = vbNullString
  loc_18BD196:       global_92 = "Cr"
  loc_18BD1AC:       Set var_B4 = Me.Txt
  loc_18BD1B2:       Call 0.Method_Proc_184_58_18BE9440 (CInt(&H1A), var_C8, CStr(0))
  loc_18BD1BA:       var_C8.Tag = CDbl(0)
  loc_18BD1C9:     End If
  loc_18BD1F1:     var_206 = IsNull(CVar(var_88.Fields.Item("ConPrefix")))
  loc_18BD243:     Set var_1B0 = Me.Txt
  loc_18BD249:     Call 0.Method_Proc_184_58_18BE9440 (CInt(4), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ConPrefix")))))
  loc_18BD251:     var_1C4.Text = var_206
  loc_18BD299:     var_206 = IsNull(CVar(var_88.Fields.Item("ConPerson")))
  loc_18BD2EB:     Set var_1B0 = Me.Txt
  loc_18BD2F1:     Call 0.Method_Proc_184_58_18BE9440 (CInt(5), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ConPerson")))))
  loc_18BD2F9:     var_1C4.Text = var_206
  loc_18BD341:     var_206 = IsNull(CVar(var_88.Fields.Item("ConPersonMName")))
  loc_18BD393:     Set var_1B0 = Me.Txt
  loc_18BD399:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H1C), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ConPersonMName")))))
  loc_18BD3A1:     var_1C4.Text = var_206
  loc_18BD3E9:     var_206 = IsNull(CVar(var_88.Fields.Item("ConPersonLName")))
  loc_18BD43B:     Set var_1B0 = Me.Txt
  loc_18BD441:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H1D), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ConPersonLName")))))
  loc_18BD449:     var_1C4.Text = var_206
  loc_18BD491:     var_206 = IsNull(CVar(var_88.Fields.Item("ChequeType")))
  loc_18BD4E3:     Set var_1B0 = Me.Txt
  loc_18BD4E9:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H1E), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ChequeType")))))
  loc_18BD4F1:     var_1C4.Text = var_206
  loc_18BD539:     var_206 = IsNull(CVar(var_88.Fields.Item("Add1")))
  loc_18BD58B:     Set var_1B0 = Me.Txt
  loc_18BD591:     Call 0.Method_Proc_184_58_18BE9440 (CInt(6), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Add1")))))
  loc_18BD599:     var_1C4.Text = var_206
  loc_18BD5E1:     var_206 = IsNull(CVar(var_88.Fields.Item("Add2")))
  loc_18BD633:     Set var_1B0 = Me.Txt
  loc_18BD639:     Call 0.Method_Proc_184_58_18BE9440 (CInt(7), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Add2")))))
  loc_18BD641:     var_1C4.Text = var_206
  loc_18BD689:     var_206 = IsNull(CVar(var_88.Fields.Item("Add3")))
  loc_18BD6DB:     Set var_1B0 = Me.Txt
  loc_18BD6E1:     Call 0.Method_Proc_184_58_18BE9440 (CInt(8), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Add3")))))
  loc_18BD6E9:     var_1C4.Text = var_206
  loc_18BD731:     var_206 = IsNull(CVar(var_88.Fields.Item("CityName")))
  loc_18BD783:     Set var_1B0 = Me.Txt
  loc_18BD789:     Call 0.Method_Proc_184_58_18BE9440 (CInt(9), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("CityName")))))
  loc_18BD791:     var_1C4.Text = var_206
  loc_18BD7D9:     var_206 = IsNull(CVar(var_88.Fields.Item("CITYCODE")))
  loc_18BD82B:     Set var_1B0 = Me.Txt
  loc_18BD831:     Call 0.Method_Proc_184_58_18BE9440 (CInt(9), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("CITYCODE")))))
  loc_18BD839:     var_1C4.Tag = var_206
  loc_18BD881:     var_206 = IsNull(CVar(var_88.Fields.Item("Phone")))
  loc_18BD8D3:     Set var_1B0 = Me.Txt
  loc_18BD8D9:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&HB), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Phone")))))
  loc_18BD8E1:     var_1C4.Text = var_206
  loc_18BD929:     var_206 = IsNull(CVar(var_88.Fields.Item("Mobile")))
  loc_18BD97B:     Set var_1B0 = Me.Txt
  loc_18BD981:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&HC), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Mobile")))))
  loc_18BD989:     var_1C4.Text = var_206
  loc_18BD9D1:     var_206 = IsNull(CVar(var_88.Fields.Item("Fax")))
  loc_18BDA23:     Set var_1B0 = Me.Txt
  loc_18BDA29:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&HD), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("Fax")))))
  loc_18BDA31:     var_1C4.Text = var_206
  loc_18BDA79:     var_206 = IsNull(CVar(var_88.Fields.Item("Email")))
  loc_18BDA93:     var_D0 = var_88.Fields.Item("Email")
  loc_18BDACB:     Set var_1B0 = Me.Txt
  loc_18BDAD1:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&HE), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_D0))))
  loc_18BDAD9:     var_1C4.Text = var_206
  loc_18BDB2F:     Set var_CC = Me.Txt
  loc_18BDB35:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H1B), var_D0)
  loc_18BDB3D:     var_D0.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("TINNo")))
  loc_18BDB87:     Set var_CC = Me.Txt
  loc_18BDB8D:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H1F), var_D0)
  loc_18BDB95:     var_D0.Text = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("GSTIN")))
  loc_18BDBC3:     var_C8 = var_88.Fields.Item("Religion")
  loc_18BDC21:     If CBool((var_C8.Value = 0) Or IsNull(CVar(var_88.Fields.Item("Religion")))) Then
  loc_18BDC32:       Set var_B4 = Me.Txt
  loc_18BDC38:       Call 0.Method_Proc_184_58_18BE9440 (CInt(&H11), var_C8)
  loc_18BDC40:       var_C8.Text = "N/A"
  loc_18BDC4F:     Else
  loc_18BDC69:       var_C8 = var_88.Fields.Item("Religion")
  loc_18BDC8B:       If (var_C8.Value = 1) Then
  loc_18BDC9C:         Set var_B4 = Me.Txt
  loc_18BDCA2:         Call 0.Method_Proc_184_58_18BE9440 (CInt(&H11), var_C8)
  loc_18BDCAA:         var_C8.Text = "Hindu"
  loc_18BDCB9:       Else
  loc_18BDCD3:         var_C8 = var_88.Fields.Item("Religion")
  loc_18BDCF5:         If (var_C8.Value = 2) Then
  loc_18BDD06:           Set var_B4 = Me.Txt
  loc_18BDD0C:           Call 0.Method_Proc_184_58_18BE9440 (CInt(&H11), var_C8)
  loc_18BDD14:           var_C8.Text = "Muslim"
  loc_18BDD23:         Else
  loc_18BDD3D:           var_C8 = var_88.Fields.Item("Religion")
  loc_18BDD5F:           If (var_C8.Value = 3) Then
  loc_18BDD70:             Set var_B4 = Me.Txt
  loc_18BDD76:             Call 0.Method_Proc_184_58_18BE9440 (CInt(&H11), var_C8)
  loc_18BDD7E:             var_C8.Text = "Sikh"
  loc_18BDD8D:           Else
  loc_18BDDA7:             var_C8 = var_88.Fields.Item("Religion")
  loc_18BDDC9:             If (var_C8.Value = 4) Then
  loc_18BDDDA:               Set var_B4 = Me.Txt
  loc_18BDDE0:               Call 0.Method_Proc_184_58_18BE9440 (CInt(&H11), var_C8)
  loc_18BDDE8:               var_C8.Text = "Christian"
  loc_18BDDF4:             End If
  loc_18BDDF4:           End If
  loc_18BDDF4:         End If
  loc_18BDDF4:       End If
  loc_18BDDF4:     End If
  loc_18BDE1C:     var_206 = IsNull(CVar(var_88.Fields.Item("CreditLimit")))
  loc_18BDE6E:     Set var_1B0 = Me.Txt
  loc_18BDE74:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&HF), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("CreditLimit")))))
  loc_18BDE7C:     var_1C4.Text = var_206
  loc_18BDEC4:     var_206 = IsNull(CVar(var_88.Fields.Item("CreditDays")))
  loc_18BDEDE:     var_D0 = var_88.Fields.Item("CreditDays")
  loc_18BDF16:     Set var_1B0 = Me.Txt
  loc_18BDF1C:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H10), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_D0))))
  loc_18BDF24:     var_1C4.Text = var_206
  loc_18BDFAF:     Set var_CC = Me.Txt
  loc_18BDFB5:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H18), var_D0)
  loc_18BDFBD:     var_D0.Text = CStr(IIf((var_88.Fields.Item("ActiveYN").Value = 0), "No", "Yes"))
  loc_18BE005:     var_206 = IsNull(CVar(var_88.Fields.Item("CstNo")))
  loc_18BE057:     Set var_1B0 = Me.Txt
  loc_18BE05D:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H12), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("CstNo")))))
  loc_18BE065:     var_1C4.Text = var_206
  loc_18BE0AD:     var_206 = IsNull(CVar(var_88.Fields.Item("LstNo")))
  loc_18BE0FF:     Set var_1B0 = Me.Txt
  loc_18BE105:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H13), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("LstNo")))))
  loc_18BE10D:     var_1C4.Text = var_206
  loc_18BE155:     var_206 = IsNull(CVar(var_88.Fields.Item("PanNo")))
  loc_18BE1A7:     Set var_1B0 = Me.Txt
  loc_18BE1AD:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H14), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("PanNo")))))
  loc_18BE1B5:     var_1C4.Text = var_206
  loc_18BE1FD:     var_206 = IsNull(CVar(var_88.Fields.Item("ITWARD_NO")))
  loc_18BE24F:     Set var_1B0 = Me.Txt
  loc_18BE255:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H15), var_1C4, CStr(IIf(var_206, vbNullString, CVar(var_88.Fields.Item("ITWARD_NO")))))
  loc_18BE25D:     var_1C4.Text = var_206
  loc_18BE294:     var_C8 = var_88.Fields.Item("Remark")
  loc_18BE2A5:     var_206 = IsNull(CVar(var_C8))
  loc_18BE2B7:     var_CC = var_88.Fields
  loc_18BE2D0:     var_104 = vbNullString
  loc_18BE2F7:     Set var_1B0 = Me.Txt
  loc_18BE2FD:     Call 0.Method_Proc_184_58_18BE9440 (CInt(&H16), var_1C4, CStr(IIf(var_206, var_104, CVar(var_CC.Item("Remark")))))
  loc_18BE305:     var_1C4.Text = var_206
  loc_18BE338:     Me.FGrid.Rows = 1
  loc_18BE348:     If (MemVar_1F95078 = "HO") Then
  loc_18BE35F:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_18BE366:       var_14C = var_E4 & "' and V_Type='"
  loc_18BE385:       Set var_B4 = Me.Txt
  loc_18BE38B:       Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_C8, var_200, var_14C & "F_AO" & "' and SubCode='")
  loc_18BE393:       var_E0 = var_C8.Text
  loc_18BE39C:       var_20C = -1 & var_200
  loc_18BE3AC:       unk_52BB4C.Execute var_14C & "F_AO" & "' and SubCode='" & MemVar_1F95078 & "' Order by V_SNo", var_CC, var_206
  loc_18BE3B7:       Set var_88 = var_CC
  loc_18BE3DA:     Else
  loc_18BE3EE:       var_E4 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_18BE406:       Set var_B4 = Me.Txt
  loc_18BE40C:       Call 0.Method_Proc_184_58_18BE9440 (CInt(0), var_C8, var_14C, var_E4 & "' and SubCode='")
  loc_18BE414:       var_E0 = var_C8.Text
  loc_18BE41D:       var_200 = -1 & var_14C
  loc_18BE43B:       unk_52BB4C.Execute var_200 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_CC, 
  loc_18BE446:       Set var_88 = var_CC
  loc_18BE466:     End If
  loc_18BE47A:     If (var_88.RecordCount > 0) Then
  loc_18BE47F:       var_AA = 1
  loc_18BE4AD:       var_E4 = CStr(var_88.Fields.Item("DocID").Value)
  loc_18BE4B3:       global_72 = var_E4
  loc_18BE4F3:       global_64 = CLng(var_88.Fields.Item("V_NO").Value)
  loc_18BE500:       ' Referenced from: 18BE871
  loc_18BE50F:       If Not(var_88.EOF) Then
  loc_18BE54E:         If (var_88.Fields.Item("AmtCr").Value = 0) Then
  loc_18BE554:           var_A0 = "Dr"
  loc_18BE57D:           Proc_183_3_E7DD58(var_104, CVar(var_88.Fields.Item("AmtDr")))
  loc_18BE586:           var_A8 = CSng(var_104)
  loc_18BE596:         Else
  loc_18BE5D2:           If (var_88.Fields.Item("AmtDr").Value = 0) Then
  loc_18BE5D8:             var_A0 = "Cr"
  loc_18BE601:             Proc_183_3_E7DD58(var_104, CVar(var_88.Fields.Item("AmtCr")), var_A8)
  loc_18BE60A:             var_A8 = CSng(var_104)
  loc_18BE617:           End If
  loc_18BE617:         End If
  loc_18BE63E:         Proc_183_3_E7DD58(var_250, var_A8, var_A8)
  loc_18BE6C4:         var_1F4 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Narration")), 1 & Format(CVar(var_88.Fields.Item("V_DATE")), "dd/MMM/yyyy") & Chr(9), 1)) 'String
  loc_18BE75E:         Proc_183_3_E7DD58(var_2F0, CVar(var_88.Fields.Item("V_NO")), 1 & Format(var_250, "0.00") & Chr(9) & CVar(var_A0) & Chr(9), 1)
  loc_18BE7A6:         var_354 = CVar(Proc_183_2_E5AE94(CVar(var_88.Fields.Item("SITE_DESC")), CVar(var_AA) & Chr(9) & var_1F4 & Chr(9) & var_2F0 & Chr(9))) 'String
  loc_18BE7F0:         var_3CC = CVar(CStr(global_64 & var_354 & Chr(9) & var_88.Fields.Item("Site_Code").Value)) 'String
  loc_18BE7F8:         Set var_3E0 = Me.FGrid
  loc_18BE866:         var_AA = (var_AA + 1)
  loc_18BE86C:         var_88.MoveNext
  loc_18BE871:         GoTo loc_18BE500
  loc_18BE874:       End If
  loc_18BE887:       Me.FGrid.FixedRows = 1
  loc_18BE892:     Else
  loc_18BE898:       global_72 = vbNullString
  loc_18BE8A4:       global_64 = 0
  loc_18BE8BC:       var_104 = CVar(CStr(CLng(Me.FGrid.Rows))) 'String
  loc_18BE8C4:       Set var_C8 = Me.FGrid
  loc_18BE8F3:       Me.FGrid.FixedRows = 1
  loc_18BE8FB:     End If
  loc_18BE900:     Set var_88 = Nothing
  loc_18BE903:   End If
  loc_18BE906: Else
  loc_18BE906:   Call Proc_184_50_FBE768(FGrid.DispID_10000, var_104, global_64, var_AA)
  loc_18BE90B: End If
  loc_18BE910: Set var_88 = Nothing
  loc_18BE918: Set var_8C = Nothing
  loc_18BE91B: Exit Sub
  loc_18BE91C: ' Referenced from: 18BC154
  loc_18BE922: Call 0.Method_arg_50 (var_E4, FGrid.DispID_10000)
  loc_18BE937: Proc_183_57_104B0BC(var_E4, "MoveRec")
  loc_18BE943: Exit Sub
End Sub

Public Sub Proc_184_59_15E48B8(arg_C, arg_10, arg_14, arg_18, arg_1C) '15E48B8
  'Data Table: 52BB2C
  Dim var_98 As Variant
  Dim var_A0 As Variant
  Dim var_A4 As String
  Dim unk_52BB4C As Connection15
  Dim var_88 As Variant
  Dim var_94 As Variant
  Dim var_C4 As Variant
  Dim var_59C As TextBox
  Dim var_9C As Variant
  Dim var_F0 As String
  Dim var_FC As String
  Dim var_108 As TextBox
  Dim var_194 As Variant
  Dim var_1EC As Variant
  Dim var_214 As TextBox
  Dim var_260 As TextBox
  Dim var_284 As Variant
  Dim var_2AC As TextBox
  Dim var_2F8 As TextBox
  Dim var_31C As Variant
  Dim var_344 As TextBox
  Dim var_388 As Variant
  Dim var_390 As TextBox
  Dim var_3DC As TextBox
  Dim var_428 As TextBox
  Dim var_44C As Variant
  Dim var_474 As TextBox
  Dim var_498 As Variant
  Dim var_504 As TextBox
  Dim var_550 As TextBox
  Dim var_574 As Variant
  Dim var_638 As TextBox
  Dim var_684 As TextBox
  Dim var_6A8 As Variant
  Dim var_6D0 As TextBox
  Dim var_6F4 As Variant
  Dim var_71C As TextBox
  Dim var_768 As TextBox
  Dim var_7AC As Variant
  Dim var_81C As Variant
  Dim var_8C8 As Variant
  Dim var_910 As TextBox
  Dim var_954 As Variant
  Dim var_95C As TextBox
  Dim var_9D8 As Variant
  loc_15E37C8: On Error Goto loc_15E488D
  loc_15E37E9: Set var_94 = Me.Txt
  loc_15E37EF: Call 0.Method_Proc_184_59_15E48B80 (CInt(3), var_98, var_9C, "SELECT * From AcGroup Where GroupCode='")
  loc_15E37F7: var_C4 = var_98.Tag
  loc_15E3800: var_A0 = -1 & var_9C
  loc_15E3810: unk_52BB4C.Execute var_A0 & "'", var_C8, 
  loc_15E381B: Set var_88 = var_C8
  loc_15E3847: If (var_88.RecordCount > 0) Then
  loc_15E3872:   var_8C = Proc_183_2_E5AE94(CVar(var_88.Fields.Item("Nature")))
  loc_15E3892:   var_98 = var_88.Fields.Item("GroupNature")
  loc_15E38A3:   var_90 = Proc_183_2_E5AE94(CVar(var_98))
  loc_15E38AF: Else
  loc_15E38B2:   var_8C = "Other"
  loc_15E38B8:   var_90 = vbNullString
  loc_15E38BB: End If
  loc_15E38C3: If (arg_C = "Add") Then
  loc_15E38D4:   Set var_598 = Me.Txt
  loc_15E38DA:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H18), var_59C)
  loc_15E38EE:   var_9C = "Insert Into " & arg_10
  loc_15E38F5:   var_A0 = var_9C & " (Site_Code,SubCode,Name,NameHelp,GroupCode,GroupNature,Nature,ConPrefix,ConPerson,ConPersonMName,ConPersonLName,Add1,Add2,Add3,CityCode,areacode,Phone,Mobile,Fax,EMail,Religion,CreditLimit,CreditDays,ActiveYN,CSTNo,LSTNo,PANNo,ITWard_No,Remark,U_Name,U_EntDt,U_AE,TDS_Catg,LOGSITE_CODE,TINNo,GSTIN,ChequeType) Values ('"
  loc_15E3946:   Set var_94 = Me.Txt
  loc_15E394C:   Call 0.Method_Proc_184_59_15E48B80 (CInt(3), var_98)
  loc_15E396B:   var_FC = var_A0 & MemVar_1F95070 & "','" & arg_14 & "','" & arg_18 & "','" & Proc_183_20_FB48CC(arg_18) & "','" & var_98.Tag & "','" & var_90
  loc_15E3991:   Set var_C8 = Me.Txt
  loc_15E3997:   Call 0.Method_Proc_184_59_15E48B80 (CInt(4), var_108)
  loc_15E39BD:   Set var_118 = Me.Txt
  loc_15E39C3:   Call 0.Method_Proc_184_59_15E48B80 (CInt(5), var_11C)
  loc_15E39F2:   Set var_160 = Me.Txt
  loc_15E39F8:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1C), var_164)
  loc_15E3A27:   Set var_1B8 = Me.Txt
  loc_15E3A2D:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1D), var_1BC)
  loc_15E3A44:   var_1EC = CVar(var_FC & "','" & var_8C & "','" & var_108.Text & "','") & Trim(CVar(var_11C)) & "','" & Trim(CVar(var_164)) & "','" & Trim(CVar(var_1BC)) 
  loc_15E3A5F:   Set var_210 = Me.Txt
  loc_15E3A65:   Call 0.Method_Proc_184_59_15E48B80 (CInt(6), var_214)
  loc_15E3A93:   Set var_25C = Me.Txt
  loc_15E3A99:   Call 0.Method_Proc_184_59_15E48B80 (CInt(7), var_260)
  loc_15E3AC7:   Set var_2A8 = Me.Txt
  loc_15E3ACD:   Call 0.Method_Proc_184_59_15E48B80 (CInt(8), var_2AC)
  loc_15E3AFB:   Set var_2F4 = Me.Txt
  loc_15E3B01:   Call 0.Method_Proc_184_59_15E48B80 (CInt(9), var_2F8)
  loc_15E3B14:   var_31C = var_1EC & "','" & CVar(var_214.Text) & "','" & CVar(var_260.Text) & "','" & CVar(var_2AC.Text) & "','" & CVar(var_2F8.Tag) 
  loc_15E3B2F:   Set var_340 = Me.Txt
  loc_15E3B35:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&HA), var_344)
  loc_15E3B63:   Set var_38C = Me.Txt
  loc_15E3B69:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&HB), var_390)
  loc_15E3B97:   Set var_3D8 = Me.Txt
  loc_15E3B9D:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&HC), var_3DC)
  loc_15E3BCB:   Set var_424 = Me.Txt
  loc_15E3BD1:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&HD), var_428)
  loc_15E3BE4:   var_44C = var_31C & "','" & CVar(var_344.Tag) & "','" & CVar(var_390.Text) & "','" & CVar(var_3DC.Text) & "','" & CVar(var_428.Text) 
  loc_15E3BFF:   Set var_470 = Me.Txt
  loc_15E3C05:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&HE), var_474)
  loc_15E3C28:   Call Proc_184_54_F74848(var_4BA)
  loc_15E3C50:   Set var_500 = Me.Txt
  loc_15E3C56:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&HF), var_504)
  loc_15E3C8A:   Set var_54C = Me.Txt
  loc_15E3C90:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H10), var_550)
  loc_15E3CA9:   var_574 = var_44C & "','" & CVar(var_474.Text) & "'," & CVar(var_4BA) & "," & CVar(Val(var_504.Text)) & "," & CVar(Val(var_550.Text)) 
  loc_15E3CF2:   Set var_634 = Me.Txt
  loc_15E3CF8:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H12), var_638)
  loc_15E3D26:   Set var_680 = Me.Txt
  loc_15E3D2C:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H13), var_684)
  loc_15E3D5A:   Set var_6CC = Me.Txt
  loc_15E3D60:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H14), var_6D0)
  loc_15E3D73:   var_6F4 = var_574 & "," & IIf((var_59C.Text = "Yes"), 1, 0) & ",'" & CVar(var_638.Text) & "','" & CVar(var_684.Text) & "','" & CVar(var_6D0.Text) 
  loc_15E3D8E:   Set var_718 = Me.Txt
  loc_15E3D94:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H15), var_71C)
  loc_15E3DC2:   Set var_764 = Me.Txt
  loc_15E3DC8:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H16), var_768)
  loc_15E3E09:   Proc_183_7_EB17D4(var_80C, Now)
  loc_15E3E11:   var_81C = var_6F4 & "','" & CVar(var_71C.Text) & "','" & CVar(var_768.Text) & "','" & CVar(MemVar_1F950C8) & "'," & var_80C 
  loc_15E3E3F:   Set var_880 = Me.Txt
  loc_15E3E45:   Call 0.Method_Proc_184_59_15E48B80 (CInt(2), var_884)
  loc_15E3E86:   Set var_90C = Me.Txt
  loc_15E3E8C:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1B), var_910)
  loc_15E3EA8:   var_954 = var_81C & ",'" & CVar(arg_1C) & "','" & CVar(var_884.Tag) & "','" & CVar(MemVar_1F95078) & "','" & CVar(var_910.Text) & "','" 
  loc_15E3EBA:   Set var_958 = Me.Txt
  loc_15E3EC0:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1F), var_95C)
  loc_15E3EEB:   Set var_9A4 = Me.Txt
  loc_15E3EF1:   Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1E), var_9A8)
  loc_15E3F1C:   global_132 = CStr(var_954 & CVar(var_95C.Text) & "','" & Trim(CVar(var_9A8)) & "')")
  loc_15E4070: Else
  loc_15E4078:   If (arg_C = "Edit") Then
  loc_15E4089:     Set var_598 = Me.Txt
  loc_15E408F:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H18), var_59C)
  loc_15E40A3:     var_9C = "Update " & arg_10
  loc_15E40AA:     var_A0 = var_9C & " Set Name='"
  loc_15E40DF:     Set var_94 = Me.Txt
  loc_15E40E5:     Call 0.Method_Proc_184_59_15E48B80 (CInt(3), var_98)
  loc_15E410B:     var_F0 = var_A0 & arg_18 & "',NameHelp='" & Proc_183_20_FB48CC(arg_18) & "',GroupCode='" & var_98.Tag & "',GroupNature='" & var_90 & "',Nature='"
  loc_15E4130:     Call 0.Method_Proc_184_59_15E48B80 (CInt(4), var_108)
  loc_15E4156:     Set var_118 = Me.Txt
  loc_15E415C:     Call 0.Method_Proc_184_59_15E48B80 (CInt(5), var_11C)
  loc_15E418B:     Set var_160 = Me.Txt
  loc_15E4191:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1C), var_164)
  loc_15E41A8:     var_194 = CVar(var_F0 & var_8C & "',ConPrefix='" & var_108.Text & "',ConPerson='") & Trim(CVar(var_11C)) & "',ConPersonMName='" & Trim(CVar(var_164)) 
  loc_15E41C0:     Set var_1B8 = Me.Txt
  loc_15E41C6:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1D), var_1BC)
  loc_15E41F8:     Set var_210 = Me.Txt
  loc_15E41FE:     Call 0.Method_Proc_184_59_15E48B80 (CInt(6), var_214)
  loc_15E422C:     Set var_25C = Me.Txt
  loc_15E4232:     Call 0.Method_Proc_184_59_15E48B80 (CInt(7), var_260)
  loc_15E4245:     var_284 = var_194 & "',ConPersonLName='" & Trim(CVar(var_1BC)) & "',Add1='" & CVar(var_214.Text) & "',Add2='" & CVar(var_260.Text) 
  loc_15E4260:     Set var_2A8 = Me.Txt
  loc_15E4266:     Call 0.Method_Proc_184_59_15E48B80 (CInt(8), var_2AC)
  loc_15E4294:     Set var_2F4 = Me.Txt
  loc_15E429A:     Call 0.Method_Proc_184_59_15E48B80 (CInt(9), var_2F8)
  loc_15E42C8:     Set var_340 = Me.Txt
  loc_15E42CE:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&HA), var_344)
  loc_15E42EA:     var_388 = var_284 & "',Add3='" & CVar(var_2AC.Text) & "',CityCode='" & CVar(var_2F8.Tag) & "',areacode='" & CVar(var_344.Tag) & "',Phone='" 
  loc_15E42FC:     Set var_38C = Me.Txt
  loc_15E4302:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&HB), var_390)
  loc_15E4330:     Set var_3D8 = Me.Txt
  loc_15E4336:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&HC), var_3DC)
  loc_15E4364:     Set var_424 = Me.Txt
  loc_15E436A:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&HD), var_428)
  loc_15E4398:     Set var_470 = Me.Txt
  loc_15E439E:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&HE), var_474)
  loc_15E43B1:     var_498 = var_388 & CVar(var_390.Text) & "',Mobile='" & CVar(var_3DC.Text) & "',Fax='" & CVar(var_428.Text) & "',EMail='" & CVar(var_474.Text) 
  loc_15E43C1:     Call Proc_184_54_F74848(var_4BA)
  loc_15E43E9:     Set var_500 = Me.Txt
  loc_15E43EF:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&HF), var_504)
  loc_15E4423:     Set var_54C = Me.Txt
  loc_15E4429:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H10), var_550)
  loc_15E4442:     var_574 = var_498 & "',Religion=" & CVar(var_4BA) & ",CreditLimit=" & CVar(Val(var_504.Text)) & ",CreditDays=" & CVar(Val(var_550.Text)) 
  loc_15E448B:     Set var_634 = Me.Txt
  loc_15E4491:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H12), var_638)
  loc_15E44BF:     Set var_680 = Me.Txt
  loc_15E44C5:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H13), var_684)
  loc_15E44D8:     var_6A8 = var_574 & ",ActiveYN=" & IIf((var_59C.Text = "Yes"), 1, 0) & ",CSTNo='" & CVar(var_638.Text) & "',LSTNo='" & CVar(var_684.Text) 
  loc_15E44FC:     Set var_6CC = Me.Txt
  loc_15E4502:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H14), var_6D0)
  loc_15E4530:     Set var_718 = Me.Txt
  loc_15E4536:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H15), var_71C)
  loc_15E4564:     Set var_764 = Me.Txt
  loc_15E456A:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H16), var_768)
  loc_15E457D:     var_7AC = var_6A8 & "'," & "PANNo='" & CVar(var_6D0.Text) & "',ITWard_No='" & CVar(var_71C.Text) & "',Remark='" & CVar(var_768.Text) 
  loc_15E45AB:     Proc_183_7_EB17D4(var_81C, Now)
  loc_15E45E1:     Set var_880 = Me.Txt
  loc_15E45E7:     Call 0.Method_Proc_184_59_15E48B80 (CInt(2), var_884)
  loc_15E45FA:     var_8C8 = var_7AC & "',U_Name='" & CVar(MemVar_1F950C8) & "',U_EntDt=" & var_81C & ",U_AE='" & CVar(arg_1C) & "',TDS_Catg='" & CVar(var_884.Tag) 
  loc_15E4615:     Set var_90C = Me.Txt
  loc_15E461B:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1B), var_910)
  loc_15E4649:     Set var_958 = Me.Txt
  loc_15E464F:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1F), var_95C)
  loc_15E467A:     Set var_9A4 = Me.Txt
  loc_15E4680:     Call 0.Method_Proc_184_59_15E48B80 (CInt(&H1E), var_9A8)
  loc_15E46A0:     var_9D8 = var_8C8 & "',TINNo='" & CVar(var_910.Text) & "',GSTIN='" & CVar(var_95C.Text) & "',ChequeType='" & Trim(CVar(var_9A8)) & "' Where SUBCODE='" 
  loc_15E46BE:     global_132 = CStr(var_9D8 & CVar(arg_14) & "'")
  loc_15E4827:     Set var_94 = Me.Txt
  loc_15E482D:     Call 0.Method_Proc_184_59_15E48B80 (CInt(3), var_98, var_9C, "UPDATE LEDGER SET LEDGER.GROUPCODE='")
  loc_15E4835:     var_C4 = var_98.Tag
  loc_15E483E:     var_A0 = -1 & var_9C
  loc_15E486A:     unk_52BB4C.Execute var_A0 & "',LEDGER.GROUPNATURE='" & var_90 & "' Where LEDGER.SUBCODE='" & arg_14 & "'", Me.Txt, 
  loc_15E488C:   End If
  loc_15E488C: End If
  loc_15E488C: Exit Sub
  loc_15E488D: ' Referenced from: 15E37C8
  loc_15E4893: Call 0.Method_arg_50 (var_9C)
  loc_15E489B: var_A4 = "SubGroupUpdate"
  loc_15E48A8: Proc_183_57_104B0BC(var_9C)
  loc_15E48B4: Exit Sub
End Sub

Public Sub Proc_184_60_14A96A4
  'Data Table: 52BB2C
  Dim var_CC As String
  Dim var_F0 As Variant
  Dim unk_52BB4C As Connection15
  Dim var_B8 As Variant
  Dim var_E0 As Variant
  Dim var_F4 As Variant
  Dim var_B4 As Long
  Dim var_118 As Variant
  Dim var_DC As Variant
  Dim var_128 As Variant
  Dim var_12C As Variant
  Dim var_98 As Integer
  Dim var_C8 As Variant
  Dim var_15C As Variant
  Dim var_17C As Variant
  Dim var_19C As Variant
  Dim var_104 As Variant
  Dim var_204 As Date
  Dim var_134 As String
  Dim var_138 As String
  Dim var_B0 As Recordset15
  Dim var_294 As Double
  Dim var_18C As Variant
  Dim var_1E4 As Double
  Dim var_398 As Variant
  Dim var_214 As Variant
  Dim var_274 As Variant
  Dim var_3F8 As Variant
  Dim var_548 As Variant
  Dim Me As Recordset15
  loc_14A8AB4: On Error Goto loc_14A9666
  loc_14A8ABB: Set var_B8 = Me.TopCtrl1
  loc_14A8AC1: Call {33AD4F3A-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_14A8ADA: If (CStr() = "Add") Then
  loc_14A8AE3:   var_F0 = 0
  loc_14A8B02:   unk_52BB4C.Execute "Select IsNull(Max(CAST(SUBSTRING(SubCode,3,6) AS INT)),0)+1 AS MyCode From SubGroup Where IsNumeric(substring(SubCode,3,6))=1", var_C8, -1
  loc_14A8B0A:   var_B8 = var_B8.Fields
  loc_14A8B12:   var_F0 = var_E0.Item(var_E0)
  loc_14A8B1A:   var_F4 = var_F4.Value
  loc_14A8B56:   var_C8 = "000000"
  loc_14A8B6F:   var_128 = (1 + Format(CLng(var_104), var_C8))
  loc_14A8B73:   var_CC = CStr(var_128)
  loc_14A8B82:   Set var_B8 = Me.Txt
  loc_14A8B88:   Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_E0, var_CC, 1)
  loc_14A8B90:   var_E0.Text = CVar(Proc_183_15_EAD490(MemVar_1F95070, 2))
  loc_14A8BB8:   Set var_B8 = Me.Txt
  loc_14A8BBE:   Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_E0, var_CC)
  loc_14A8BC6:   var_B4 = var_E0.Text
  loc_14A8BD9:   Set var_F4 = Me.Txt
  loc_14A8BDF:   Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_12C)
  loc_14A8BE7:   var_12C.Tag = var_CC
  loc_14A8BFD: Else
  loc_14A8C0B:   Set var_B8 = Me.Txt
  loc_14A8C11:   Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_E0)
  loc_14A8C2C:   Set var_F4 = Me.Txt
  loc_14A8C32:   Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_12C)
  loc_14A8C3A:   var_12C.Tag = var_E0.Text
  loc_14A8C4D: End If
  loc_14A8C56: unk_52BB4C.BeginTrans var_130
  loc_14A8C5D: var_98 = &HFF
  loc_14A8C6E: Set var_B8 = Me.Txt
  loc_14A8C74: Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_E0, var_138)
  loc_14A8C7C: var_98 = var_E0.Text
  loc_14A8C8F: Set var_F4 = Me.Txt
  loc_14A8C95: Call 0.Method_Proc_184_60_14A96A40 (CInt(1), var_12C)
  loc_14A8CBC: var_134 = "SubGroup"
  loc_14A8CCB: Call Proc_184_59_15E48B8("Add", var_134, var_138, var_12C.Text, "A")
  loc_14A8D01: unk_52BB4C.Execute global_132, var_C8, -1
  loc_14A8D31: For var_14C = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_9E = var_14C 'Integer
  loc_14A8D3B:   var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A8D43:   var_15C = CVar(CLng(3)) 'Long
  loc_14A8D73:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_14A8D7A:     var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A8D82:     var_15C = CVar(CLng(1)) 'Long
  loc_14A8DA1:     var_17C = CVar(CLng(var_9E)) 'Long
  loc_14A8DA9:     var_19C = CVar(CLng(1)) 'Long
  loc_14A8DB8:     var_104 = Me.FGrid.TextMatrix)
  loc_14A8DC3:     var_128 = CVar(CStr(var_104)) 'String
  loc_14A8DCE:     var_118 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_14A8DF6:     Call Proc_184_55_10C061C(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), CVar(Proc_183_15_EAD490(MemVar_1F95070, 2)), var_128)))
  loc_14A8E01:     global_72 = var_134
  loc_14A8E45:     If (Trim(global_72) = vbNullString) Then
  loc_14A8E61:       MsgBox("Pl. Configur Numbring System ", 0, var_104, CVar(Proc_183_15_EAD490(MemVar_1F95070, 2)), var_128)
  loc_14A8E71:       GoTo loc_14A9666
  loc_14A8E74:     End If
  loc_14A8E8F:     var_C8 = Me.FGrid.TextMatrix)
  loc_14A8E9F:     var_17C = CVar(CLng(var_9E)) 'Long
  loc_14A8EA7:     var_19C = CVar(CLng(1)) 'Long
  loc_14A8EB0:     Set var_E0 = Me.FGrid
  loc_14A8ECC:     var_118 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_14A8EE3:     var_1DC = IIf((CStr(var_C8) = vbNullString), CVar(Proc_183_15_EAD490(MemVar_1F95070, 2)), CVar(CStr(var_E0.TextMatrix))))
  loc_14A8EED:     var_204 = CDate(CDate(var_1DC))
  loc_14A8EF4:     Proc_183_7_EB17D4(var_214, var_204, var_19C, var_17C, var_C8, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_14A8F0D:     var_CC = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_14A8F14:     var_134 = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_14A8F1B:     var_138 = var_134 & MemVar_1F95078
  loc_14A8F4D:     unk_52BB4C.Execute CStr(CVar(var_138 & "' AND V_Type='" & "F_AO" & "' AND ") & var_214 & " BETWEEN DATE_FROM AND DATE_TO"), var_274, -1
  loc_14A8FA9:     Set var_B8 = Me.Txt
  loc_14A8FAF:     Call 0.Method_Proc_184_60_14A96A40 (CInt(3), var_E0, CStr(Me.FGrid.TextMatrix)), "SELECT GROUPCODE,GROUPNATURE FROM ACGROUP WHERE GROUPCODE='", var_1DC, -1, var_F4)
  loc_14A8FE4:     unk_52BB4C.Execute CStr(var_134 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "'"), var_19C, var_17C
  loc_14A8FEF:     Set var_B0 = var_E0.Tag
  loc_14A901F:     If (var_B0.RecordCount > 0) Then
  loc_14A9026:       var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A9059:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_14A905F:         var_A4 = "AmtCr"
  loc_14A9070:         Set var_B8 = Me.Txt
  loc_14A9076:         Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_E0, var_138, CVar(CLng(4)))
  loc_14A907E:         var_DC = var_E0.Text
  loc_14A9087:         var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A908F:         var_15C = CVar(CLng(3)) 'Long
  loc_14A90B1:         var_294 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14A90DF:         var_18C = CVar(CLng(var_9E)) 'Long
  loc_14A90F6:         var_104 = Me.FGrid.TextMatrix)
  loc_14A912F:         Proc_183_0_127A384(MemVar_1F951E0, var_138, CDbl(0), var_294, CStr(var_B0.Fields.Item("GroupCode").Value), CDate(CStr(var_104)), var_104, CVar(CLng(1)))
  loc_14A915A:       Else
  loc_14A915D:         var_A4 = "AmtDr"
  loc_14A916E:         Set var_B8 = Me.Txt
  loc_14A9174:         Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_E0, var_138, var_18C, var_294)
  loc_14A917C:         var_15C = var_E0.Text
  loc_14A9185:         var_DC = CVar(CLng(var_9E)) 'Long
  loc_14A918D:         var_15C = CVar(CLng(3)) 'Long
  loc_14A91AF:         var_294 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14A91C4:         var_12C = var_B0.Fields
  loc_14A91DD:         var_18C = CVar(CLng(var_9E)) 'Long
  loc_14A91F4:         var_104 = Me.FGrid.TextMatrix)
  loc_14A922D:         Proc_183_0_127A384(MemVar_1F951E0, var_138, var_294, CDbl(0), CStr(var_12C.Item("GroupCode").Value), CDate(CStr(var_104)), var_104, CVar(CLng(1)))
  loc_14A9255:       End If
  loc_14A9270:       var_C8 = Me.FGrid.TextMatrix)
  loc_14A9291:       Set var_E0 = Me.FGrid
  loc_14A9297:       var_104 = var_E0.TextMatrix)
  loc_14A92A2:       var_128 = CVar(CStr(var_104)) 'String
  loc_14A92AD:       var_118 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_14A92CF:       Proc_183_7_EB17D4(var_204, IIf((CStr(var_C8) = vbNullString), var_12C.Item("GroupCode").Value, var_128), CVar(CLng(1)), CVar(CLng(var_9E)), var_C8, CVar(CLng(1)), CVar(CLng(var_9E)))
  loc_14A92E2:       Set var_F4 = Me.Txt
  loc_14A92E8:       Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_12C, var_2B4, var_18C, var_294)
  loc_14A92F0:       var_15C = var_12C.Text
  loc_14A9323:       var_1E4 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_14A9341:       var_398 = Me.FGrid.TextMatrix)
  loc_14A9358:       Proc_183_7_EB17D4(var_438, MemVar_1F950EC, var_398, CVar(CLng(2)), CVar(CLng(var_9E)), var_1E4)
  loc_14A9368:       Proc_183_9_EAB2F0(var_488, var_AC, CVar(CLng(3)), CVar(CLng(var_9E)))
  loc_14A93D6:       var_134 = "Insert Into Ledger(DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A4 & ",NARRATION,U_Name,U_EntDt,U_AE,v_Prefix,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_14A942C:       var_214 = CVar(var_134 & global_72 & "'," & CStr(var_9E) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F95070 & "',") 'String
  loc_14A9480:       var_3F8 = var_214 & var_204 & ",'" & CVar(var_2B4) & "'," & CVar(var_1E4) & ",'" & CVar(CStr(var_398)) & "','" & CVar(MemVar_1F950C8) 
  loc_14A94C0:       var_548 = var_3F8 & "'," & var_438 & ",'A'," & var_488 & ",'" & var_B0.Fields.Item("GroupCode").Value & "','" & var_B0.Fields.Item("GroupNature").Value 
  loc_14A94EA:       unk_52BB4C.Execute CStr(var_548 & "','" & CVar(MemVar_1F95078) & "')"), var_5CC, -1
  loc_14A957B:     Else
  loc_14A9589:       var_DC = "Group Not Defined"
  loc_14A9594:       MsgBox(var_DC, 0, var_104, var_12C.Item("GroupCode").Value, var_128)
  loc_14A95A4:       GoTo loc_14A9666
  loc_14A95A7:     End If
  loc_14A95A7:   End If
  loc_14A95AA: Next var_14C 'Integer
  loc_14A95B5: unk_52BB4C.CommitTrans
  loc_14A95C5: Me.Requery -1
  loc_14A95CC: var_98 = 0
  loc_14A95DD: Set var_B8 = Me.Txt
  loc_14A95E3: Call 0.Method_Proc_184_60_14A96A40 (CInt(0), var_E0)
  loc_14A960F: Me.Requery -1
  loc_14A962C: var_CC = "SearchCode = '" & var_E0.Text
  loc_14A963C: Me.Find var_CC & "'", 0, 1
  loc_14A9648: Call TopCtrl1_UnknownEvent_A()
  loc_14A9652: Set var_9C = Nothing
  loc_14A965A: Set var_A8 = Nothing
  loc_14A9662: Set var_B0 = Nothing
  loc_14A9665: Exit Sub
  loc_14A9666: ' Referenced from: 14A95A4
  loc_14A9666: ' Referenced from: 14A8E71
  loc_14A9666: ' Referenced from: 14A8AB4
  loc_14A966C: If (var_98 = &HFF) Then
  loc_14A9675:   unk_52BB4C.RollbackTrans
  loc_14A967A: End If
  loc_14A9680: Call 0.Method_arg_50 (var_CC, var_DC)
  loc_14A9695: Proc_183_57_104B0BC(var_CC, "UpdateDataBaseAdd")
  loc_14A96A1: Exit Sub
End Sub

Public Sub Proc_184_61_155E014
  'Data Table: 52BB2C
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_52BB4C As Connection15
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
  loc_155D0A8: On Error Goto loc_155DFD5
  loc_155D0D8: Set var_B0 = Me.Txt
  loc_155D0DE: Call 0.Method_Proc_184_61_155E0140 (CInt(3), var_B4, var_B8, "Select MainGrCode From AcGroup Where GroupCode='", var_E0, -1)
  loc_155D0E6: var_E4 = var_B4.Tag
  loc_155D0EF: var_BC = var_E8 & var_B8
  loc_155D0FF: unk_52BB4C.Execute var_BC & "'", 0, var_FC
  loc_155D10F:  = var_E8.Item()
  loc_155D117:  = var_FC.Value
  loc_155D120: var_A4 = CStr(var_E4.Fields)
  loc_155D149: unk_52BB4C.BeginTrans var_110
  loc_155D17F: Set var_B0 = Me.Txt
  loc_155D185: Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_B4, var_BC, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_155D18D: var_E0 = var_B4.Text
  loc_155D196: var_114 = -1 & var_BC
  loc_155D1A6: unk_52BB4C.Execute var_114 & "'", var_E4, &HFF
  loc_155D1B1: Set var_94 = var_E4
  loc_155D1CD: ' Referenced from: 155D306
  loc_155D1DC: If Not(var_94.EOF) Then
  loc_155D1F9:   var_B4 = var_94.Fields.Item("subcode")
  loc_155D201:   var_E0 = var_B4.Value
  loc_155D218:   var_E4 = var_94.Fields
  loc_155D220:   var_E8 = var_E4.Item("AmtCr")
  loc_155D24F:   var_178 = var_94.Fields.Item("AmtDr").Value
  loc_155D276:   var_190 = var_94.Fields.Item("GroupCode").Value
  loc_155D29D:   var_1A0 = var_94.Fields.Item("V_DATE").Value
  loc_155D2CE:   Proc_183_0_127A384(MemVar_1F951E0, CStr(var_E0), CSng(var_E8.Value))
  loc_155D301:   var_94.MoveNext
  loc_155D306:   GoTo loc_155D1CD
  loc_155D309: End If
  loc_155D311: If (MemVar_1F95078 = "HO") Then
  loc_155D328:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_155D32F:   var_BC = var_B8 & "' and V_Type='"
  loc_155D34E:   Set var_B0 = Me.Txt
  loc_155D354:   Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_B4, var_114, var_BC & "F_AO" & "' and SubCode='", var_E0)
  loc_155D35C:   -1 = var_B4.Text
  loc_155D375:   unk_52BB4C.Execute var_E4 & var_114 & "' Order by V_SNo", CSng(var_178), CStr(var_190)
  loc_155D380:   Set var_AC = var_E4
  loc_155D3A3: Else
  loc_155D3B7:   var_B8 = "SELECT Ledger.Narration,Ledger.DocId,Ledger.V_SNo,Ledger.V_Type,Ledger.V_No,Ledger.V_Date,Ledger.Site_Code,Ledger.SubCode,Ledger.AmtCr,Ledger.AmtDr,Ledger.Chq_No,Ledger.Chq_Date,Site.Site_Desc FROM Ledger Left JOIN Site ON Ledger.LogSite_Code=Site.Site_Code Where LOGSITE_CODE='" & MemVar_1F95078
  loc_155D3CF:   Set var_B0 = Me.Txt
  loc_155D3D5:   Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_B4, var_BC, var_B8 & "' and SubCode='")
  loc_155D3DD:   var_E0 = var_B4.Text
  loc_155D3E6:   var_114 = -1 & var_BC
  loc_155D404:   unk_52BB4C.Execute var_114 & "' AND V_Type='" & "F_AO" & "' Order by V_SNo", var_E4, CDate(var_1A0)
  loc_155D40F:   Set var_AC = var_E4
  loc_155D42F:   ' Referenced from:   155D535
  loc_155D42F: End If
  loc_155D43E: If Not(var_AC.EOF) Then
  loc_155D45B:   var_B4 = var_AC.Fields.Item("DocID")
  loc_155D463:   var_E0 = var_B4.Value
  loc_155D46D:   var_1D0 = 0
  loc_155D480:   var_1C8 = 0
  loc_155D48B:   var_1C4 = 0
  loc_155D49E:   var_1BC = 0
  loc_155D4A9:   var_1B0 = 0
  loc_155D4BC:   var_1AC = 0
  loc_155D4DA:   var_114 = 0
  loc_155D505:   Proc_154_5_10E3BD4(MemVar_1F951E0, "LEDGER", "DocId", &HC8, CStr(var_E0), var_114, 0, 0)
  loc_155D530:   var_AC.MoveNext
  loc_155D535:   GoTo loc_155D42F
  loc_155D538: End If
  loc_155D53D: Set var_AC = Nothing
  loc_155D562: var_C0 = "Delete From Ledger Where LOGSITE_CODE='" & MemVar_1F95078 & "' AND V_Type='" & "F_AO"
  loc_155D569: var_118 = var_C0 & "' and SubCode= '"
  loc_155D57A: Set var_B0 = Me.Txt
  loc_155D580: Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_B4, var_114, var_118, var_E0, -1, var_E4)
  loc_155D588: var_1AC = var_B4.Text
  loc_155D5A1: unk_52BB4C.Execute 0 & var_114 & "'", 0 & var_114 & "'", var_1BC
  loc_155D5D1: Set var_B0 = Me.Txt
  loc_155D5D7: Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_B4, var_C0)
  loc_155D5DF: 0 = var_B4.Text
  loc_155D5F2: Set var_E4 = Me.Txt
  loc_155D5F8: Call 0.Method_Proc_184_61_155E0140 (CInt(1), var_E8, var_118)
  loc_155D600: var_1C4 = var_E8.Text
  loc_155D61F: var_BC = "SubGroup"
  loc_155D62E: Call Proc_184_59_15E48B8("Edit", var_BC, var_C0, var_118, "E")
  loc_155D664: unk_52BB4C.Execute global_132, var_E0, -1
  loc_155D697: For var_1D4 = CByte(1) To CByte((CLng(Me.FGrid.Rows) - 1)): var_8C = var_1D4 'Byte
  loc_155D6A2:   var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155D6DA:   If (CDbl(Val(CStr(Me.FGrid.TextMatrix)))) <> CDbl(0)) Then
  loc_155D6EA:     var_D0 = "SELECT GROUPCODE,GROUPNATURE FROM SUBGROUP WHERE SUBCODE='"
  loc_155D6FA:     Set var_B0 = Me.Txt
  loc_155D700:     Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_B4, var_D0, var_1A0, -1, var_E4)
  loc_155D72E:     unk_52BB4C.Execute CStr(CVar(CLng(3)) & Trim(CVar(var_B4)) & "'"), var_D0, CByte(1)
  loc_155D739:     Set var_98 = var_E4
  loc_155D767:     If (var_98.RecordCount > 0) Then
  loc_155D76F:       var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155D777:       var_12C = CVar(CLng(1)) 'Long
  loc_155D797:       var_15C = CVar(CLng(var_8C)) 'Long
  loc_155D79F:       var_1F4 = CVar(CLng(1)) 'Long
  loc_155D7AE:       var_10C = Me.FGrid.TextMatrix)
  loc_155D7B9:       var_190 = CVar(CStr(var_10C)) 'String
  loc_155D7C4:       var_178 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_155D7EC:       Call Proc_184_55_10C061C(CDate(IIf((CStr(Me.FGrid.TextMatrix)) = vbNullString), CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_190)))
  loc_155D7F7:       global_72 = var_BC
  loc_155D83B:       If (Trim(global_72) = vbNullString) Then
  loc_155D857:         MsgBox("Pl. Configur Numbring System ", 0, var_10C, CVar(CLng(3)) & Trim(CVar(Me.FGrid)), var_190)
  loc_155D867:         GoTo loc_155DFD5
  loc_155D86A:       End If
  loc_155D886:       var_E0 = Me.FGrid.TextMatrix)
  loc_155D8A8:       Set var_B4 = Me.FGrid
  loc_155D8C4:       var_178 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_155D8E5:       var_244 = CDate(CDate(IIf((CStr(var_E0) = vbNullString), CVar(CLng(3)) & Trim(CVar(var_B4)), CVar(CStr(var_B4.TextMatrix))))))
  loc_155D8EC:       Proc_183_7_EB17D4(var_254, var_244, CVar(CLng(1)), CVar(CLng(var_8C)), var_E0, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_155D905:       var_B8 = "Update Voucher_Prefix Set Start_Srl_No=Start_Srl_No+1 Where SITE_CODE='" & MemVar_1F95070
  loc_155D90C:       var_BC = CStr(Me.FGrid.TextMatrix)) & "' AND LOGSITE_CODE='"
  loc_155D913:       var_C0 = var_BC & MemVar_1F95078
  loc_155D945:       unk_52BB4C.Execute CStr(CVar(var_C0 & "' AND V_Type='" & "F_AO" & "' AND ") & var_254 & " BETWEEN DATE_FROM AND DATE_TO"), var_2B4, -1
  loc_155D9B9:       If (CStr(Me.FGrid.TextMatrix)) = "Cr") Then
  loc_155D9BF:         var_A8 = "AmtCr"
  loc_155D9D0:         Set var_B0 = Me.Txt
  loc_155D9D6:         Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_B4, var_C0, CVar(CLng(4)), CVar(CLng(var_8C)), var_E4, var_BC)
  loc_155D9DE:         var_1F4 = var_B4.Text
  loc_155D9E8:         var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155D9F0:         var_12C = CVar(CLng(3)) 'Long
  loc_155DA12:         var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_155DA41:         var_1E4 = CVar(CLng(var_8C)) 'Long
  loc_155DA58:         var_10C = Me.FGrid.TextMatrix)
  loc_155DA91:         Proc_183_0_127A384(MemVar_1F951E0, var_C0, CDbl(0), var_2BC, CStr(var_98.Fields.Item("GroupCode").Value), CDate(CStr(var_10C)), var_10C, CVar(CLng(1)))
  loc_155DABC:       Else
  loc_155DABF:         var_A8 = "AmtDr"
  loc_155DAD0:         Set var_B0 = Me.Txt
  loc_155DAD6:         Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_B4, var_C0, var_1E4, var_2BC, var_12C)
  loc_155DADE:         var_D0 = var_B4.Text
  loc_155DAE8:         var_D0 = CVar(CLng(var_8C)) 'Long
  loc_155DAF0:         var_12C = CVar(CLng(3)) 'Long
  loc_155DB12:         var_2BC = Val(CStr(Me.FGrid.TextMatrix)))
  loc_155DB27:         var_E8 = var_98.Fields
  loc_155DB41:         var_1E4 = CVar(CLng(var_8C)) 'Long
  loc_155DB58:         var_10C = Me.FGrid.TextMatrix)
  loc_155DB91:         Proc_183_0_127A384(MemVar_1F951E0, var_C0, var_2BC, CDbl(0), CStr(var_E8.Item("GroupCode").Value), CDate(CStr(var_10C)), var_10C, CVar(CLng(1)))
  loc_155DBB9:       End If
  loc_155DBD5:       var_E0 = Me.FGrid.TextMatrix)
  loc_155DBF7:       Set var_B4 = Me.FGrid
  loc_155DBFD:       var_10C = var_B4.TextMatrix)
  loc_155DC08:       var_190 = CVar(CStr(var_10C)) 'String
  loc_155DC13:       var_178 = CDate(CDate((MemVar_1F950F4 - CDbl(1))))
  loc_155DC35:       Proc_183_7_EB17D4(var_244, IIf((CStr(var_E0) = vbNullString), var_E8.Item("GroupCode").Value, var_190), CVar(CLng(1)), CVar(CLng(var_8C)), var_E0, CVar(CLng(1)), CVar(CLng(var_8C)))
  loc_155DC48:       Set var_E4 = Me.Txt
  loc_155DC4E:       Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_E8, var_2CC, var_1E4, var_2BC)
  loc_155DC56:       var_12C = var_E8.Text
  loc_155DC60:       var_2A4 = CVar(CLng(var_8C)) 'Long
  loc_155DC68:       var_2FC = CVar(CLng(3)) 'Long
  loc_155DC8A:       var_168 = Val(CStr(Me.FGrid.TextMatrix)))
  loc_155DCA9:       var_3B0 = Me.FGrid.TextMatrix)
  loc_155DCC3:       Proc_183_7_EB17D4(var_450, Now, var_3B0, CVar(CLng(2)), CVar(CLng(var_8C)), var_168)
  loc_155DD31:       var_BC = "Insert Into Ledger (DocId,V_SNo,V_Type,V_No,Site_Code,V_Date,SubCode," & var_A8 & ",NARRATION,U_Name,U_EntDt,U_AE,GROUPCODE,GROUPNATURE,LOGSITE_CODE) Values ('"
  loc_155DD88:       var_254 = CVar(var_BC & global_72 & "'," & CStr(var_8C) & ",'" & "F_AO" & "'," & CStr(global_64) & ",'" & MemVar_1F95070 & "',") 'String
  loc_155DDDC:       var_410 = var_254 & var_244 & ",'" & CVar(var_2CC) & "'," & CVar(var_168) & ",'" & CVar(CStr(var_3B0)) & "','" & CVar(MemVar_1F950C8) 
  loc_155DE0C:       var_500 = var_410 & "'," & var_450 & ",'E','" & var_98.Fields.Item("GroupCode").Value & "','" & var_98.Fields.Item("GroupNature").Value 
  loc_155DE36:       unk_52BB4C.Execute CStr(var_500 & "','" & CVar(MemVar_1F95078) & " ')"), var_584, -1
  loc_155DEC3:     Else
  loc_155DED1:       var_D0 = "Group Not Defined"
  loc_155DEDC:       MsgBox(var_D0, 0, var_10C, var_E8.Item("GroupCode").Value, var_190)
  loc_155DEEC:       GoTo loc_155DFD5
  loc_155DEEF:     End If
  loc_155DEEF:   End If
  loc_155DEF2: Next var_1D4 'Byte
  loc_155DEFE: unk_52BB4C.CommitTrans
  loc_155DF0E: Me.Requery -1
  loc_155DF15: var_8A = 0
  loc_155DF26: Set var_B0 = Me.Txt
  loc_155DF2C: Call 0.Method_Proc_184_61_155E0140 (CInt(0), var_B4)
  loc_155DF58: Me.Requery -1
  loc_155DF85: Me.Find "SearchCode = '" & var_B4.Text & "'", 0, 1
  loc_155DFA6: var_B8 = "INI"
  loc_155DFB4: Call Proc_184_49_E8A38C(Proc_5_1_100EC1C(var_B8, Me, global_112))
  loc_155DFBF: Call Proc_184_58_18BE944(var_D0)
  loc_155DFC9: Set var_88 = Nothing
  loc_155DFD1: Set var_98 = Nothing
  loc_155DFD4: Exit Sub
  loc_155DFD5: ' Referenced from: 155DEEC
  loc_155DFD5: ' Referenced from: 155D867
  loc_155DFD5: ' Referenced from: 155D0A8
  loc_155DFDB: If (var_8A = &HFF) Then
  loc_155DFE4:   unk_52BB4C.RollbackTrans
  loc_155DFE9: End If
  loc_155DFEF: Call 0.Method_arg_50 (var_B8)
  loc_155E004: Proc_183_57_104B0BC(var_B8, "UpdateDataBaseEdit")
  loc_155E010: Exit Sub
End Sub

Public Sub Proc_184_62_12429C8
  'Data Table: 52BB2C
  Dim Me As Recordset15
  Dim unk_52BB4C As Connection15
  Dim var_96 As Integer
  Dim var_124 As String
  Dim var_12C As Variant
  Dim var_138 As String
  Dim var_9C As Recordset15
  Dim var_128 As Fields15
  Dim var_140 As Fields15
  Dim var_130 As String
  Dim var_BC As Variant
  loc_12424DC: On Error Goto loc_124298C
  loc_12424EA: If (global_60 = "Y") Then
  loc_124250E:   MsgBox("You Can not Delete this A/c", &H40, "Validation Check", var_FC, var_11C)
  loc_124251E:   Exit Sub
  loc_124251F: End If
  loc_1242556: If (MsgBox("Are You Sure To Delete This ? ", &H114, "Delete Entry !", var_FC, var_11C) = 6) Then
  loc_1242562:   var_120 = Me.AbsolutePosition
  loc_124256E:   var_94 = CVar(var_120) 'Variant
  loc_124257B:   unk_52BB4C.BeginTrans var_120
  loc_12425B1:   Set var_128 = Me.Txt
  loc_12425B7:   Call 0.Method_Proc_184_62_12429C80 (CInt(0), var_12C, var_130, "SELECT * From Ledger Where V_Type='" & "F_AO" & "' and SubCode= '")
  loc_12425BF:   var_BC = var_12C.Text
  loc_12425C8:   var_138 = -1 & var_130
  loc_12425D8:   unk_52BB4C.Execute var_138 & "'", var_140, &HFF
  loc_12425E3:   Set var_9C = var_140
  loc_12425FF:   ' Referenced from: 1242738
  loc_124260E:   If Not(var_9C.EOF) Then
  loc_124262B:     var_12C = var_9C.Fields.Item("subcode")
  loc_1242633:     var_BC = var_12C.Value
  loc_124264A:     var_140 = var_9C.Fields
  loc_1242681:     var_FC = var_9C.Fields.Item("AmtDr").Value
  loc_12426A8:     var_11C = var_9C.Fields.Item("GroupCode").Value
  loc_12426CF:     var_190 = var_9C.Fields.Item("V_DATE").Value
  loc_1242700:     Proc_183_0_127A384(MemVar_1F951E0, CStr(var_BC), CSng(var_140.Item("AmtCr").Value))
  loc_1242733:     var_9C.MoveNext
  loc_1242738:     GoTo loc_12425FF
  loc_124273B:   End If
  loc_124274F:   var_124 = "Delete From Ledger Where V_Type='" & "F_AO"
  loc_1242767:   Set var_128 = Me.Txt
  loc_124276D:   Call 0.Method_Proc_184_62_12429C80 (CInt(0), var_12C, var_130, var_124 & "' and SubCode= '", var_BC)
  loc_1242775:   -1 = var_12C.Text
  loc_124278E:   unk_52BB4C.Execute var_140 & var_130 & "'", CSng(var_FC), CStr(var_11C)
  loc_12427CA:   Set var_128 = Me.Txt
  loc_12427D0:   Call 0.Method_Proc_184_62_12429C80 (CInt(0), var_12C, var_124, "Delete From SubGroup Where SUBCode='")
  loc_12427D8:   var_BC = var_12C.Text
  loc_12427E1:   var_130 = -1 & var_124
  loc_12427F1:   unk_52BB4C.Execute var_130 & "'", var_140, CDate(var_190)
  loc_1242816:   Set var_128 = Me.Txt
  loc_124281C:   Call 0.Method_Proc_184_62_12429C80 (CInt(0))
  loc_1242835:   var_1C0 = 0
  loc_1242848:   var_1B8 = 0
  loc_1242853:   var_1B4 = 0
  loc_1242866:   var_1AC = 0
  loc_1242871:   var_1A8 = 0
  loc_1242884:   var_1A0 = 0
  loc_12428C4:   var_124 = "SubGroup"
  loc_12428CD:   Proc_154_5_10E3BD4(MemVar_1F951E0, var_124, "SubCode", &HC8, CStr(Trim(CVar(var_12C))), 0, 0, 0)
  loc_12428FB:   unk_52BB4C.CommitTrans
  loc_1242902:   var_96 = 0
  loc_1242910:   Me.Requery -1
  loc_124292C:   If (Me.RecordCount > 0) Then
  loc_1242946:     If (Me.AbsolutePosition > 1) Then
  loc_1242951:       var_BC = (var_94 - 1)
  loc_124295D:       Me.AbsolutePosition = CLng(CVar(var_12C))
  loc_1242962:     End If
  loc_1242962:   End If
  loc_124297E:   Proc_5_0_1107AD0(&HFF, Me, global_112, 0, var_96, var_1A0, 0)
  loc_1242986:   Call Proc_184_58_18BE944(var_1A8, var_1AC, 0)
  loc_124298B: End If
  loc_124298B: Exit Sub
  loc_124298C: ' Referenced from: 12424DC
  loc_1242992: If (var_96 = &HFF) Then
  loc_124299B:   unk_52BB4C.RollbackTrans
  loc_12429A0: End If
  loc_12429A6: Call 0.Method_arg_50 (var_124, var_1B4)
  loc_12429BB: Proc_183_57_104B0BC(var_124, "UpdateDataBaseDelete")
  loc_12429C7: Exit Sub
End Sub

Public Sub Proc_184_63_E753B0
  'Data Table: 52BB2C
  loc_E7535C: Call Proc_184_51_F6C9CC()
  loc_E75398: If (MsgBox("Save Record ?", 4, "Save Data", var_E4, var_104) = 6) Then
  loc_E7539B:   Call TopCtrl1_UnknownEvent_16()
  loc_E753A3: Else
  loc_E753A6:   Call Me.SetFocus
  loc_E753AC: End If
  loc_E753AC: Exit Sub
  loc_E753AD: Set var_88 = 
End Sub
