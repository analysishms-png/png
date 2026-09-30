VERSION 5.00
Begin VB.Form fdDisplayFolioSumm
  Caption = "Summerized Guest Ledger"
  BackColor = &HFFC0C0&
  ScaleMode = 0
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdDisplayFolioSumm.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14235
  ClientHeight = 8985
  ScaleLeft = 0
  ScaleTop = 0
  ScaleWidth = 21914.409
  ScaleHeight = 8985
  LockControls = -1  'True
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8535
    Width = 14235
    Height = 450
    Visible = 0   'False
    TabIndex = 66
  End
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 3255
    Width = 2550
    Height = 315
    Enabled = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    MaxLength = 8
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
  End
  Begin Frame FrmAdjust
    Left = 6825
    Top = 3315
    Width = 4050
    Height = 1590
    Visible = 0   'False
    TabIndex = 52
    Begin CommandButton CmdPass
      Caption = "GO"
      Left = 3135
      Top = 225
      Width = 495
      Height = 315
      TabIndex = 57
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
    Begin CommandButton CMDSET
      Caption = "Set"
      Left = 1710
      Top = 1110
      Width = 795
      Height = 315
      Enabled = 0   'False
      TabIndex = 56
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
      Index = 23
      BackColor = &HFFFFFF&
      Left = 1005
      Top = 225
      Width = 2115
      Height = 315
      TabIndex = 55
      PasswordChar = "#"
      MaxLength = 50
    End
    Begin TextBox Txt
      Index = 24
      BackColor = &HFFFFFF&
      Left = 1500
      Top = 735
      Width = 1260
      Height = 315
      Enabled = 0   'False
      TabIndex = 54
      Alignment = 1 'Right Justify
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
    End
    Begin CommandButton Command3
      Caption = "Cancel"
      Left = 2805
      Top = 720
      Width = 795
      Height = 315
      Enabled = 0   'False
      TabIndex = 53
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
    Begin Label Lbl
      Caption = "Password"
      Index = 0
      ForeColor = &H0&
      Left = 120
      Top = 285
      Width = 825
      Height = 240
      TabIndex = 59
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
      Caption = "Room Rate"
      Index = 12
      ForeColor = &H0&
      Left = 420
      Top = 750
      Width = 945
      Height = 240
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
  End
  Begin PictureBox Picture2
    Picture = "fdDisplayFolioSumm.frx":442
    Left = 13815
    Top = 1350
    Width = 315
    Height = 270
    Visible = 0   'False
    TabIndex = 51
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGRoomNo
    Left = 10425
    Top = 7665
    Width = 7170
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 38
  End
  Begin TextBox Txt
    Index = 26
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 4395
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
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
  End
  Begin TextBox Txt
    Index = 27
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 4710
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
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
  End
  Begin TextBox Txt
    Index = 28
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 5025
    Width = 3795
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
  End
  Begin DataGrid DGChrgPayment
    Left = 12210
    Top = 6915
    Width = 4980
    Height = 3090
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSHFlexGrid Fgrid1
    Left = 5250
    Top = 6600
    Width = 7980
    Height = 285
    TabIndex = 47
  End
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 1680
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 15
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 1680
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3165
    Top = 1680
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 5655
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 16
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
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 5970
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
    MaxLength = 50
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
  End
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 6285
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
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
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 1995
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 1995
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3165
    Top = 1995
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 19
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    Left = 13110
    Top = 240
    Width = 990
    Height = 255
    Visible = 0   'False
    TabIndex = 40
    BorderStyle = 0 'None
    MaxLength = 21
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    Left = 1575
    Top = 1050
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 5
    Locked = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3165
    Top = 1365
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3660
    Top = 1365
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 6600
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    MaxLength = 8
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
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 5340
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
    BorderStyle = 0 'None
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
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1350
    Top = 4080
    Width = 3795
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 50
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
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 1365
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 2
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3915
    Top = 615
    Width = 720
    Height = 315
    Enabled = 0   'False
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
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 2940
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 6
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
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    Left = 13890
    Top = 840
    Width = 480
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 5
    MaxLength = 1
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 2625
    Width = 795
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
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
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2400
    Top = 2625
    Width = 720
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
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
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1575
    Top = 2310
    Width = 2550
    Height = 285
    Enabled = 0   'False
    TabIndex = 1
    BorderStyle = 0 'None
    MaxLength = 16
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
  Begin MSHFlexGrid FGrid
    Left = 5250
    Top = 1020
    Width = 8790
    Height = 5475
    TabIndex = 25
  End
  Begin MSFlexGrid FGPoint
    Left = 300
    Top = 7950
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 50
  End
  Begin BtnEnh CmdExit
    Left = 8160
    Top = 6975
    Width = 1275
    Height = 1050
    TabIndex = 64
  End
  Begin BtnEnh CmdPrint
    Left = 5100
    Top = 6975
    Width = 1275
    Height = 1050
    TabIndex = 65
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 63
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
    Caption = "PlanAmount"
    Index = 16
    ForeColor = &HC00000&
    Left = 135
    Top = 3270
    Width = 1170
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
    Index = 14
    ForeColor = &H0&
    Left = 825
    Top = 6960
    Width = 60
    Height = 210
    TabIndex = 61
    AutoSize = -1  'True
    BackStyle = 0 'Transparent
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Label1
    Caption = "Guest Details"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 60
    Top = 3630
    Width = 5100
    Height = 375
    TabIndex = 49
    Alignment = 2 'Center
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
    Caption = "Address"
    Index = 2
    ForeColor = &HC00000&
    Left = 135
    Top = 4410
    Width = 750
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
    Caption = "Chk Out Date"
    Index = 15
    ForeColor = &HC00000&
    Left = 135
    Top = 1680
    Width = 1245
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
  Begin Label Lbl
    Caption = "Comment3"
    Index = 13
    ForeColor = &HC00000&
    Left = 135
    Top = 6300
    Width = 1020
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
    Caption = "Comment2"
    Index = 8
    ForeColor = &HC00000&
    Left = 135
    Top = 5985
    Width = 1020
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
    Caption = "Comment1"
    Index = 7
    ForeColor = &HC00000&
    Left = 135
    Top = 5670
    Width = 1020
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
    Caption = "Exp.Dep.Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 135
    Top = 2010
    Width = 1290
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
  Begin Label LblVPrefix
    Caption = "."
    BackColor = &HF9CECE&
    ForeColor = &H4080&
    Left = 13020
    Top = 480
    Width = 1530
    Height = 240
    Visible = 0   'False
    TabIndex = 41
    AutoSize = -1  'True
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
    Caption = "Folio Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 5280
    Top = 600
    Width = 7230
    Height = 375
    TabIndex = 37
    Alignment = 2 'Center
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
    Caption = "Guest Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 135
    Top = 1050
    Width = 1395
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
    Caption = "Status"
    Index = 1
    ForeColor = &HC00000&
    Left = 135
    Top = 6615
    Width = 585
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
  Begin Label Lbl
    Caption = "Company"
    Index = 3
    ForeColor = &HC00000&
    Left = 135
    Top = 5355
    Width = 900
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
    Caption = "Guest Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 135
    Top = 4110
    Width = 1155
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
  Begin Label LblCheckInDay
    Caption = "."
    ForeColor = &H4080&
    Left = 4155
    Top = 1410
    Width = 60
    Height = 210
    TabIndex = 32
    AutoSize = -1  'True
    BeginProperty Font
      Name = "Tahoma"
      Size = 9
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin Label Lbl
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 135
    Top = 1380
    Width = 1320
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
    Caption = "Room Type"
    Index = 34
    ForeColor = &HC00000&
    Left = 135
    Top = 2325
    Width = 1080
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
    Caption = "Room Rate"
    Index = 9
    ForeColor = &HC00000&
    Left = 135
    Top = 2955
    Width = 1050
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
    Caption = "Rate Code"
    Index = 10
    ForeColor = &HC00000&
    Left = 12840
    Top = 855
    Width = 870
    Height = 225
    Visible = 0   'False
    TabIndex = 28
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
    Caption = "Adult/Child"
    Index = 11
    ForeColor = &HC00000&
    Left = 135
    Top = 2640
    Width = 1050
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
  Begin Label Label1
    Caption = "Room Details For Room No."
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 60
    Top = 585
    Width = 5100
    Height = 375
    TabIndex = 26
    Alignment = 2 'Center
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

Attribute VB_Name = "fdDisplayFolioSumm"

Private MasterFormExit As Integer
Private global_68 As Long

Private Sub FGPoint_UnknownEvent_9 'E649E8
  'Data Table: 4B1B4C
  loc_E649B8: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_E649BB:   Call DGChrgPayment_UnknownEvent_9()
  loc_E649C0: End If
  loc_E649DC: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E649DF:   Call DGRoomNo_UnknownEvent_9()
  loc_E649E4: End If
  loc_E649E4: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1B4E4
  'Data Table: 4B1B4C
  loc_E1B4D9: Me.Global.Unload Me
  loc_E1B4E1: Exit Sub
End Sub

Private Sub CmdPrint_UnknownEvent_9 'E00164
  'Data Table: 4B1B4C
  loc_E0015C: Call Proc_175_32_ED9598()
  loc_E00161: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'E2916C
  'Data Table: 4B1B4C
  loc_E29165: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_E29168:   Exit Sub
  loc_E29169: End If
  loc_E29169: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '10544CC
  'Data Table: 4B1B4C
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_105427A: Set var_88 = Me.Txt
  loc_1054280: Call 0.Method_Txt_GotFocus0 (Index)
  loc_105428E: Proc_6_74_E23240(var_8C)
  loc_105429D: var_92 = Index
  loc_10542A8: If (var_92 = CInt(0)) Then
  loc_10542C2:   If (Me.RecordCount > 0) Then
  loc_10542D0:     Set var_8C = Me.FGPoint
  loc_10542E8:     Proc_6_137_1192FDC(Me.DGRoomNo, global_92, Index)
  loc_10542F6:   End If
  loc_1054344:   Set var_88 = Me.Txt
  loc_105434A:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1054352:   var_8C = var_8C.Text
  loc_1054378:   If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), var_92) = vbNullString)) Then
  loc_105437B:     Exit Sub
  loc_105437C:   End If
  loc_1054389:   Set var_88 = Me.Txt
  loc_105438F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1054397:   var_A0 = var_8C.Text
  loc_10543A9:   var_C4 = "RoomNo"
  loc_10543C0:   var_C8 = Me.Fields.Item(var_C4)
  loc_10543E4:   If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_10543ED:     Me.MoveFirst
  loc_1054410:     Set var_88 = Me.Txt
  loc_1054416:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_105441E:     0 = var_8C.Text
  loc_1054437:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_105444C:   End If
  loc_105444C: End If
  loc_105445B: Set var_88 = Me.Txt
  loc_1054461: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1054469: var_8C.SelStart = 0
  loc_1054482: Set var_88 = Me.Txt
  loc_1054488: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10544A3: Set var_90 = Me.Txt
  loc_10544A9: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_10544B1: var_C8.SelLength = Len(var_8C.Text)
  loc_10544C4: Call Proc_175_28_EBC570()
  loc_10544C9: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC6660
  'Data Table: 4B1B4C
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_FC64BF: var_88 = Shift
  loc_FC64CC: If (CLng(Shift) = &H1B) Then
  loc_FC64CF:   Call Proc_175_28_EBC570(var_88)
  loc_FC64D4:   Exit Sub
  loc_FC64D5: End If
  loc_FC64E3: If (KeyCode = CInt(0)) Then
  loc_FC6503:   Set var_A4 = Me.FGPoint
  loc_FC650E:   Set var_A0 = Nothing
  loc_FC6540:   Proc_6_69_134A630(Me.DGRoomNo, Me.Txt, CInt(0), global_92, Shift, 0)
  loc_FC65AF:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_FC65B6:     Set var_A0 = Me.DGRoomNo
  loc_FC65D5:     Proc_6_138_106E830(var_A0, global_92, KeyCode, Me.FGPoint, 1)
  loc_FC65E3:   End If
  loc_FC65E3: End If
  loc_FC661E: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_FC6636:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC663F:     Proc_6_75_E5335C(Shift, arg_14, var_A0)
  loc_FC6644:   End If
  loc_FC664E:   If (CLng(Shift) = &H26) Then
  loc_FC6657:     Proc_6_76_E533C8(Shift, arg_14, var_A4)
  loc_FC665C:   End If
  loc_FC665C: End If
  loc_FC665C: Exit Sub
  loc_FC665D: ThisVCallR4
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE0AEC
  'Data Table: 4B1B4C
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE0A37: Proc_6_58_E06050(arg_10)
  loc_EE0A42: Proc_6_133_E7FB08(var_94)
  loc_EE0A5F: If (KeyAscii = CInt(0)) Then
  loc_EE0A7E:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EE0AAB:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_92, CInt(Me.DGRoomNo.Visible), "RoomNo")
  loc_EE0ADD:     Proc_6_138_106E830(Me.DGRoomNo, global_92, KeyAscii, Me.FGPoint)
  loc_EE0AEB:   End If
  loc_EE0AEB: End If
  loc_EE0AEB: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'DFFD74
  'Data Table: 4B1B4C
  Dim var_86 As Integer
  loc_DFFD6F: var_86 = KeyCode
  loc_DFFD72: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47144
  'Data Table: 4B1B4C
  loc_E47122: Set var_88 = Me.Txt
  loc_E47128: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47136: Proc_6_73_E23294(var_8C)
  loc_E47142: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15CFA38
  'Data Table: 4B1B4C
  Dim var_96 As Integer
  Dim Me As Recordset15
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim var_B0 As String
  Dim var_A0 As Variant
  Dim var_D0 As Variant
  Dim var_E4 As Variant
  Dim var_A8 As String
  Dim var_C0 As Variant
  Dim var_114 As Variant
  Dim var_8C As Long
  Dim var_12C As TextBox
  Dim var_F4 As Variant
  Dim unk_4B1B64 As Connection15
  Dim var_90 As Recordset15
  Dim var_D4 As Variant
  Dim var_140 As String
  Dim var_144 As Fields15
  Dim var_178 As TextBox
  loc_15CE71B: var_96 = Cancel
  loc_15CE726: If (var_96 = CInt(0)) Then
  loc_15CE735:   If (global_68 = 1) Then
  loc_15CE74F:     If (Me.RecordCount <= 0) Then
  loc_15CE752:       Exit Sub
  loc_15CE753:     End If
  loc_15CE76A:     If (Me.AbsolutePosition < 0) Then
  loc_15CE76D:       Exit Sub
  loc_15CE76E:     End If
  loc_15CE774:     Me.MoveFirst
  loc_15CE797:     Set var_A0 = Me.Txt
  loc_15CE79D:     Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A8, "roomno='")
  loc_15CE7A5:     0 = var_A4.Text
  loc_15CE7BE:     Me.Find 1 & var_A8 & "'", var_C0, var_96
  loc_15CE7F4:     Set var_A4 = Me.Txt
  loc_15CE7FA:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_D4)
  loc_15CE833:     If ((CBool(Me.FGPoint.Visible) = &HFF) And (CDbl(Val(CStr(Trim(CVar(var_D4))))) = CDbl(0))) Then
  loc_15CE849:       var_C0 = CVar(CLng(Me.FGPoint.Row)) 'Long
  loc_15CE84E:       var_114 = 2
  loc_15CE85B:       Set var_A4 = Me.FGPoint
  loc_15CE861:       var_E4 = var_A4.TextMatrix)
  loc_15CE870:       var_8C = CLng(CStr(var_E4))
  loc_15CE88B:       If (CInt(&HA) <> 0) Then
  loc_15CE8A4:         var_A8 = CStr(var_8C)
  loc_15CE8B1:         Me.Find "Foliono=" & var_A8, 0, 1
  loc_15CE8BD:       End If
  loc_15CE8BD:     End If
  loc_15CE8BD:   End If
  loc_15CE90B:   Set var_A0 = Me.Txt
  loc_15CE911:   Call 0.Method_Txt_Validate0 (Cancel, var_A4, var_A8, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15CE919:   var_C0 = var_A4.Text
  loc_15CE931:   If (var_8C Or (var_A8 = vbNullString)) Then
  loc_15CE941:     Set var_A0 = Me.Txt
  loc_15CE947:     Call 0.Method_Txt_Validate0 (Cancel, var_A4, vbNullString)
  loc_15CE94F:     var_A4.Tag = var_114
  loc_15CE95B:     Exit Sub
  loc_15CE95C:   End If
  loc_15CE997:   Set var_D4 = Me.Txt
  loc_15CE99D:   Call 0.Method_Txt_Validate0 (Cancel, var_12C)
  loc_15CE9A5:   var_12C.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_15CE9F6:   Set var_D4 = Me.Txt
  loc_15CE9FC:   Call 0.Method_Txt_Validate0 (Cancel, var_12C)
  loc_15CEA04:   var_12C.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_15CEA53:   Set var_D4 = Me.Txt
  loc_15CEA59:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_12C)
  loc_15CEA61:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_15CEA78:   var_C0 = "FolioNoDocid"
  loc_15CEA8F:   var_A4 = Me.Fields.Item(var_C0)
  loc_15CEAA0:   var_A8 = Proc_6_38_E69628(CVar(var_A4))
  loc_15CEAAE:   Set var_D4 = Me.Txt
  loc_15CEAB4:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_12C)
  loc_15CEABC:   var_12C.Tag = var_A8
  loc_15CEAD6:   Me.MoveFirst
  loc_15CEAFA:   Set var_A0 = Me.Txt
  loc_15CEB00:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A4, var_A8, "FolionoDocid='")
  loc_15CEB08:   0 = var_A4.Tag
  loc_15CEB21:   Me.Find 1 & var_A8 & "'", var_C0, var_C0
  loc_15CEB56:   Set var_A0 = Me.Txt
  loc_15CEB5C:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A4, var_A8, "Select ChkinDAte,ChkinTime from RoomOcc where Sno=1 and Docid=")
  loc_15CEB64:   var_13C = var_A4.Tag
  loc_15CEB72:   Proc_6_17_EAAE40(var_E4, CVar(var_A8))
  loc_15CEB7A:   var_F4 = -1 & var_E4 
  loc_15CEB88:   unk_4B1B64.Execute CStr(Trim(CVar(var_D4))), var_D4, 
  loc_15CEB93:   Set var_90 = var_D4
  loc_15CEBC1:   If (var_90.RecordCount > 0) Then
  loc_15CEBDB:     var_A4 = var_90.Fields.Item("ChkInDate")
  loc_15CEBFA:     Set var_D4 = Me.Txt
  loc_15CEC00:     Call 0.Method_Txt_Validate0 (CInt(1), var_12C)
  loc_15CEC08:     var_12C.Text = Proc_6_38_E69628(CVar(var_A4))
  loc_15CEC27:     Set var_A0 = Me.Txt
  loc_15CEC2D:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_15CEC67:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_A4), "DDDD"))
  loc_15CECCF:     Set var_D4 = Me.Txt
  loc_15CECD5:     Call 0.Method_Txt_Validate0 (CInt(2), var_12C, CStr(Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChkInTime")), 1)), 2)))
  loc_15CECDD:     var_12C.Text = 1
  loc_15CED4B:     Set var_D4 = Me.Txt
  loc_15CED51:     Call 0.Method_Txt_Validate0 (CInt(3), var_12C)
  loc_15CED59:     var_12C.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChkInTime")))), 2))
  loc_15CED7A:   Else
  loc_15CED94:     var_A4 = Me.Fields.Item("ChkInDate")
  loc_15CEDB3:     Set var_D4 = Me.Txt
  loc_15CEDB9:     Call 0.Method_Txt_Validate0 (CInt(1), var_12C)
  loc_15CEDC1:     var_12C.Text = Proc_6_38_E69628(CVar(var_A4))
  loc_15CEDE0:     Set var_A0 = Me.Txt
  loc_15CEDE6:     Call 0.Method_Txt_Validate0 (CInt(1), var_A4)
  loc_15CEE20:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_A4), "DDDD"))
  loc_15CEE8B:     Set var_D4 = Me.Txt
  loc_15CEE91:     Call 0.Method_Txt_Validate0 (CInt(2), var_12C, CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_15CEE99:     var_12C.Text = 1
  loc_15CEF0A:     Set var_D4 = Me.Txt
  loc_15CEF10:     Call 0.Method_Txt_Validate0 (CInt(3), var_12C)
  loc_15CEF18:     var_12C.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_15CEF36:   End If
  loc_15CEF6F:   Set var_D4 = Me.Txt
  loc_15CEF75:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_12C)
  loc_15CEF7D:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ChkOutDate")))
  loc_15CEFE4:   Set var_D4 = Me.Txt
  loc_15CEFEA:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_12C)
  loc_15CEFF2:   var_12C.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_15CF063:   Set var_D4 = Me.Txt
  loc_15CF069:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_12C)
  loc_15CF071:   var_12C.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_15CF0C8:   Set var_D4 = Me.Txt
  loc_15CF0CE:   Call 0.Method_Txt_Validate0 (CInt(6), var_12C)
  loc_15CF0D6:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_15CF13D:   Set var_D4 = Me.Txt
  loc_15CF143:   Call 0.Method_Txt_Validate0 (CInt(4), var_12C)
  loc_15CF14B:   var_12C.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_15CF19F:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_15CF1BC:   Set var_D4 = Me.Txt
  loc_15CF1C2:   Call 0.Method_Txt_Validate0 (CInt(5), var_12C)
  loc_15CF1CA:   var_12C.Text = CStr(Right(var_E4, 2))
  loc_15CF224:   Set var_D4 = Me.Txt
  loc_15CF22A:   Call 0.Method_Txt_Validate0 (CInt(7), var_12C)
  loc_15CF232:   var_12C.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_15CF284:   Set var_D4 = Me.Txt
  loc_15CF28A:   Call 0.Method_Txt_Validate0 (CInt(7), var_12C)
  loc_15CF292:   var_12C.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_15CF2E1:   Set var_D4 = Me.Txt
  loc_15CF2E7:   Call 0.Method_Txt_Validate0 (CInt(8), var_12C)
  loc_15CF2EF:   var_12C.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_15CF33C:   Set var_D4 = Me.Txt
  loc_15CF342:   Call 0.Method_Txt_Validate0 (CInt(8), var_12C)
  loc_15CF34A:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_15CF387:   Proc_6_39_E7D3A0(var_E4, CVar(Me.Fields.Item("RoomRate")))
  loc_15CF39E:   Set var_D4 = Me.Txt
  loc_15CF3A4:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_12C)
  loc_15CF3AC:   var_12C.Text = CStr(var_E4)
  loc_15CF3FD:   Set var_D4 = Me.Txt
  loc_15CF403:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_12C)
  loc_15CF40B:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_15CF458:   Set var_D4 = Me.Txt
  loc_15CF45E:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_12C)
  loc_15CF4B3:   Set var_D4 = Me.Txt
  loc_15CF4B9:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_12C)
  loc_15CF4C1:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_15CF50E:   Set var_D4 = Me.Txt
  loc_15CF514:   Call 0.Method_Txt_Validate0 (CInt(9), var_12C)
  loc_15CF51C:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_15CF559:   Proc_6_39_E7D3A0(var_E4, CVar(Me.Fields.Item("OldAdult")))
  loc_15CF570:   Set var_D4 = Me.Txt
  loc_15CF576:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_12C)
  loc_15CF57E:   var_12C.Text = CStr(var_E4)
  loc_15CF5BF:   Proc_6_39_E7D3A0(var_E4, CVar(Me.Fields.Item("OldChild")))
  loc_15CF5D6:   Set var_D4 = Me.Txt
  loc_15CF5DC:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_12C)
  loc_15CF5E4:   var_12C.Text = CStr(var_E4)
  loc_15CF635:   Set var_D4 = Me.Txt
  loc_15CF63B:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_12C)
  loc_15CF643:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_15CF690:   Set var_D4 = Me.Txt
  loc_15CF696:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_12C)
  loc_15CF69E:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_15CF6EB:   Set var_D4 = Me.Txt
  loc_15CF6F1:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_12C)
  loc_15CF6F9:   var_12C.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments3")))
  loc_15CF751:   Set var_D4 = Me.Txt
  loc_15CF757:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_12C)
  loc_15CF75F:   var_12C.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_15CF7BB:   Set var_D4 = Me.Txt
  loc_15CF7C1:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_12C)
  loc_15CF7C9:   var_12C.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_15CF7FB:   var_A4 = Me.Fields.Item("CityName")
  loc_15CF817:   var_A8 = Proc_6_38_E69628(Trim(CVar(var_A4)))
  loc_15CF83B:   var_12C = Me.Fields.Item("StateName")
  loc_15CF857:   var_B0 = Proc_6_38_E69628(Trim(CVar(var_12C)), var_A8 & ",")
  loc_15CF877:   var_144 = Me.Fields
  loc_15CF8AD:   Set var_174 = Me.Txt
  loc_15CF8B3:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_178)
  loc_15CF8BB:   var_178.Text = var_A4 & var_B0 & "," & Proc_6_38_E69628(Trim(CVar(var_144.Item("CountryName"))))
  loc_15CF90B:   Set var_A0 = Me.Txt
  loc_15CF911:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A4, var_A8, "select max(NetPackageAmount) as PkgAmt from Plandetails where Docid='")
  loc_15CF919:   var_D0 = var_A4.Tag
  loc_15CF922:   var_AC = -1 & var_A8
  loc_15CF929:   var_140 = var_A8 & "," & "' And RoomNo='"
  loc_15CF93A:   Set var_D4 = Me.Txt
  loc_15CF940:   Call 0.Method_Txt_Validate0 (CInt(0), var_12C, var_B0)
  loc_15CF948:   var_140 = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_15CF961:   unk_4B1B64.Execute var_144 & var_B0 & "'", , 
  loc_15CF96C:   Set var_94 = var_144
  loc_15CF9F2:   Set var_D4 = Me.Txt
  loc_15CF9F8:   Call 0.Method_Txt_Validate0 (CInt(&H19), var_12C)
  loc_15CFA00:   var_12C.Text = Proc_6_38_E69628(Format(Trim(CVar(Me.Recordset15.Fields.Item("PkgAmt"))), "0.00"), 1)
  loc_15CFA21:   Set var_90 = Nothing
  loc_15CFA29:   Set var_94 = Nothing
  loc_15CFA2C:   Call Proc_175_31_132D5A8(1)
  loc_15CFA31:   Call Proc_175_30_139E534()
  loc_15CFA36: End If
  loc_15CFA36: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F45734
  'Data Table: 4B1B4C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4562B: Me.DGRoomNo.Visible = False
  loc_F4564A: If (Me.RecordCount > 0) Then
  loc_F45689:   Set var_B4 = Me.Txt
  loc_F4568F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F45697:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F456CA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F456E9:   Set var_B4 = Me.Txt
  loc_F456EF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F456F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F4570D: End If
  loc_F45718: Set var_A8 = Me.Txt
  loc_F4571E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F45726: var_B0.SetFocus
  loc_F45732: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9B7A0
  'Data Table: 4B1B4C
  Dim var_A8 As Variant
  loc_E9B724: Set var_88 = Me.DGRoomNo
  loc_E9B74E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9B756: Set var_BC = Me.DGRoomNo
  loc_E9B790: Proc_6_138_106E830(Me.DGRoomNo, global_92, 0, Me.FGPoint)
  loc_E9B79E: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_9 'F45474
  'Data Table: 4B1B4C
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4536B: Me.DGChrgPayment.Visible = False
  loc_F4538A: If (Me.RecordCount > 0) Then
  loc_F453C9:   Set var_B4 = Me.Txt
  loc_F453CF:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F453D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4540A:   var_B0 = Me.Fields.Item("Name")
  loc_F45429:   Set var_B4 = Me.Txt
  loc_F4542F:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F45437:   var_B8.Text = CStr(var_B0.Value)
  loc_F4544D: End If
  loc_F45458: Set var_A8 = Me.Txt
  loc_F4545E: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB))
  loc_F45466: var_B0.SetFocus
  loc_F45472: Exit Sub
End Sub

Private Sub Form_Load() '104A0EC
  'Data Table: 4B1B4C
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As String
  Dim var_BC As Variant
  Dim Me As Recordset15
  Dim var_C0 As TextBox
  Dim var_C8 As DataGrid
  Dim var_CC As TextBox
  Dim var_D4 As DataGrid
  Dim var_E4 As String
  Dim unk_4B1B64 As Connection15
  loc_1049EA0: On Error Goto loc_104A0E4
  loc_1049EAB: Call 0.Method_arg_7C (CDbl(1450))
  loc_1049EB8: Call 0.Method_arg_74 (CDbl(1625))
  loc_1049EC5: Call 0.Method_MeC (CDbl(9200))
  loc_1049ED2: Call 0.Method_Me4 (CDbl(17000))
  loc_1049EDE: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_1049EF0: Set var_A8 = Me.FGrid
  loc_1049EF6: var_A8.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_1049F08: Set global_96 = New 
  loc_1049F1A: Me.var_A8.CursorLocation = 3
  loc_1049F44: var_BC = CVar("Select Code,Name,Type as Flag From RevMast where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Fieldtype in ('C','P') ORDER BY NAME ") 'String
  loc_1049F4E: Me.Open var_BC, CVar(MemVar_1F95044), 2
  loc_1049F62: CVarUnk
  loc_1049F67: VerifyVarObj
  loc_1049F6D: Set var_A8 = Me.DGChrgPayment
  loc_1049F73: LateIdStAd
  loc_1049F95: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_C4, Me.Txt)
  loc_1049F9D: global_96 = var_C0.Left
  loc_1049FB4: Me.DGRoomNo.Left = CVar(var_C4)
  loc_1049FD0: Set var_C8 = Me.Txt
  loc_1049FD6: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_D0)
  loc_1049FDE: 3 = var_CC.Height
  loc_1049FF7: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_104A00F: var_94 = CVar(((var_C0.Top + var_D0) + CDbl(&H1E))) 'Single
  loc_104A018: Set var_D4 = Me.DGRoomNo
  loc_104A01E: var_D4.Top = CVar(var_C0.Top)
  loc_104A03A: Set global_92 = New 
  loc_104A04C: Me.var_D4.CursorLocation = 3
  loc_104A065: var_AC = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.ChkInDate,RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, GuestFolio.DocId as FolioNoDocid,RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME " & " FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS  WHERE ROOMOCC.LOGSITE_CODE='"
  loc_104A081: var_E4 = var_AC & MemVar_1F95078 & "' AND ROOMMAST.LOGSITE_CODE='" & MemVar_1F95078 & "' AND roomocc.ChkOutDate is NULL  AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code,RoomOcc.FolioNo"
  loc_104A08A: unk_4B1B64.Execute var_E4, var_BC, -1
  loc_104A0BF: CVarUnk
  loc_104A0C4: VerifyVarObj
  loc_104A0CA: Set var_A8 = Me.DGRoomNo
  loc_104A0D0: LateIdStAd
  loc_104A0DE: Call Proc_175_31_132D5A8(var_A8, Me.Txt)
  loc_104A0E3: Exit Sub
  loc_104A0E4: ' Referenced from: 1049EA0
  loc_104A0E4: Proc_6_60_E63754(var_A8)
  loc_104A0E9: Exit Sub
End Sub

Private Sub Form_Resize() 'E74388
  'Data Table: 4B1B4C
  loc_E74332: Call 0.Method_arg_50 (var_88)
  loc_E74344: Me.LblFormCaption.Caption = var_88
  loc_E7435D: Me.LblFormCaption.Left = CDbl(0)
  loc_E7436B: Call 0.Method_arg_100 (var_90)
  loc_E7437D: Me.LblFormCaption.Width = var_90
  loc_E74385: Exit Sub
  loc_E74386: Set var_2B8C = 
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E46614
  'Data Table: 4B1B4C
  loc_E465EF: Set global_92 = Nothing
  loc_E46601: Set global_96 = Nothing
  loc_E4660D: MasterFormExit = 0
  loc_E46610: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5C8D4
  'Data Table: 4B1B4C
  loc_E5C89C: Set var_88 = Me.TopCtrl1
  loc_E5C8A2: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030005()
  loc_E5C8C5: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5C8CD:   Call Form_Unload(&HFF)
  loc_E5C8D2: End If
  loc_E5C8D2: Exit Sub
End Sub

Private Sub Form_Activate() 'E46D9C
  'Data Table: 4B1B4C
  loc_E46D70: On Error Goto loc_E46D96
  loc_E46D77: Set var_8C = Me.TopCtrl1
  loc_E46D7D: Call {F3C5CF14-EF88-4549-9670C24927E4EB06}.DispID_68030000()
  loc_E46D92: If (CLng(CInt()) = &H2D) Then
  loc_E46D95: End If
  loc_E46D95: Exit Sub
  loc_E46D96: ' Referenced from: E46D70
  loc_E46D96: Proc_6_60_E63754()
  loc_E46D9B: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2599C
  'Data Table: 4B1B4C
  loc_E25981: If (MasterFormExit = &HFF) Then
  loc_E25991:   Me.Global.Unload Me
  loc_E25999: End If
  loc_E25999: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5F8C8
  'Data Table: 4B1B4C
  loc_E5F87C: On Error Goto loc_E5F8BF
  loc_E5F889: If (CLng(KeyCode) = &H79) Then
  loc_E5F899:   Me.Global.Unload Me
  loc_E5F8A1:   Exit Sub
  loc_E5F8A2: End If
  loc_E5F8B6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E5F8BE: Exit Sub
  loc_E5F8BF: ' Referenced from: E5F87C
  loc_E5F8BF: Proc_6_60_E63754(Shift)
  loc_E5F8C4: Exit Sub
End Sub

Public Function MasterFormExitGet() '4B2B20
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4B2B2F
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4B2B3E
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4B2B4D
  mVType = Value
End Sub

Public Property Get OpenMode() 'E04510
  'Data Table: 4B1B4C
  loc_E04509: OpenMode = global_68
End Sub

Public Property Let OpenMode(vNewValue) 'E0265C
  'Data Table: 4B1B4C
  loc_E02656: global_68 = vNewValue
  loc_E02659: Exit Sub
End Sub

Public Sub Proc_175_26_E78C64(arg_C) 'E78C64
  'Data Table: 4B1B4C
  Dim var_98 As TextBox
  loc_E78C12: Set var_8C = Me.Txt
  loc_E78C18: Call 0.Method_Proc_175_26_E78C648 (var_8E, var_86)
  loc_E78C28: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E78C3E:   Set var_8C = Me.Txt
  loc_E78C44:   Call 0.Method_Proc_175_26_E78C640 (CInt(var_86), var_98)
  loc_E78C4C:   var_98.Enabled = arg_C
  loc_E78C5B: Next var_92 'Byte
  loc_E78C61: Exit Sub
  loc_E78C62: Result  End Sub 'Double
End Sub

Public Sub Proc_175_27_ECB428
  'Data Table: 4B1B4C
  Dim var_98 As TextBox
  loc_ECB386: Set var_8C = Me.Txt
  loc_ECB38C: Call 0.Method_Proc_175_27_ECB4288 (var_8E, var_86)
  loc_ECB39C: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECB3BF:   If (((CInt(var_86) <> &H17) And (CInt(var_86) <> &H18)) And (CInt(var_86) <> &H19)) Then
  loc_ECB3D2:     Set var_8C = Me.Txt
  loc_ECB3D8:     Call 0.Method_Proc_175_27_ECB4280 (CInt(var_86), var_98)
  loc_ECB3E0:     var_98.Text = vbNullString
  loc_ECB3FC:     Set var_8C = Me.Txt
  loc_ECB402:     Call 0.Method_Proc_175_27_ECB4280 (CInt(var_86), var_98)
  loc_ECB40A:     var_98.Tag = vbNullString
  loc_ECB416:   End If
  loc_ECB419: Next var_92 'Byte
  loc_ECB41F: Call Proc_175_31_132D5A8()
  loc_ECB424: Exit Sub
End Sub

Public Sub Proc_175_28_EBC570
  'Data Table: 4B1B4C
  loc_EBC4E8: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBC4FA:   Me.DGRoomNo.Visible = False
  loc_EBC502: End If
  loc_EBC51E: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EBC530:   Me.DGChrgPayment.Visible = False
  loc_EBC538: End If
  loc_EBC554: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBC566:   Me.FGPoint.Visible = False
  loc_EBC56E: End If
  loc_EBC56E: Exit Sub
End Sub

Public Sub Proc_175_29_DFCBD0
  'Data Table: 4B1B4C
  loc_DFCBCC: Exit Sub
End Sub

Public Sub Proc_175_30_139E534
  'Data Table: 4B1B4C
  Dim var_B8 As Variant
  Dim var_C0 As String
  Dim var_C8 As String
  Dim var_D8 As String
  Dim var_D0 As TextBox
  Dim var_E4 As String
  Dim unk_4B1B64 As Connection15
  Dim var_F4 As Variant
  Dim var_B4 As Variant
  Dim var_A0 As Recordset15
  Dim var_CC As MSHFlexGrid
  Dim var_134 As Variant
  Dim var_11C As Variant
  Dim var_154 As Variant
  Dim var_104 As Variant
  Dim var_174 As Variant
  Dim var_144 As Variant
  Dim var_164 As Variant
  Dim var_194 As Variant
  Dim var_1A4 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_184 As Long
  Dim var_1C8 As Variant
  Dim var_1E8 As Variant
  loc_139DC82: Set var_B4 = Me.Txt
  loc_139DC88: Call 0.Method_Proc_175_30_139E5340 (CInt(&HA), var_B8, var_BC, "SELECT  'A' as AA,max(VType) as VType,max(Comments) as Comments,max(Vdate) as Vdate, max(VTime) as VTime ,SUM(AmtDr) AS AmtDr, SUM(AmtCr) AS AmtCr, max(DocId) as Docid, MAX(SNo) AS Sno,Max(VNo) as VNo,Max(U_Name) as U_Name,max(FixedChargeCode) as FixedChargeCode From PayCharge WHERE  (FolioNoDocid = '")
  loc_139DC90: var_104 = var_B8.Tag
  loc_139DC99: var_C0 = -1 & var_BC
  loc_139DCA7: var_C8 = var_C0 & "') AND ((ContraDocID IS NULL) OR (ContraDocID = '')) and (Vtype='RC' or PlanCharge='Yes') GROUP BY Vdate " & " Union "
  loc_139DCAE: var_D8 = var_C8 & " SELECT  'B' as AA,VType,Comments,Vdate,VTime ,AmtDr,AmtCr,DocId,SNo,VNo,U_Name,FixedChargeCode From PayCharge  WHERE  (FolioNoDocid = '"
  loc_139DCBF: Set var_CC = Me.Txt
  loc_139DCC5: Call 0.Method_Proc_175_30_139E5340 (CInt(&HA), var_D0, var_D4)
  loc_139DCCD: var_D8 = var_D0.Tag
  loc_139DCE4: var_E4 = var_108 & var_D4 & "') AND ((ContraDocID IS NULL) OR (ContraDocID = '')) and (Vtype<>'RC' and PlanCharge<>'Yes')" & " order by vDate,VTIME,VNo,SNO"
  loc_139DCED: unk_4B1B64.Execute var_E4, , 
  loc_139DCF8: Set var_A0 = var_108
  loc_139DD37: If (Me.Recordset15.RecordCount = 0) Then
  loc_139DD4D:   Me.FGrid.Rows = 2
  loc_139DD55:   Exit Sub
  loc_139DD56: End If
  loc_139DD6D: var_F4 = CVar((var_A0.RecordCount + 2)) 'Long
  loc_139DD7C: Me.FGrid.Rows = 2
  loc_139DD91: Set var_B4 = Me.FGrid
  loc_139DD97: var_B4.Row = 1
  loc_139DD9F: ' Referenced from: 139E380
  loc_139DDB1: If Not(Me.var_B4.EOF) Then
  loc_139DDB8:   Set var_124 = Me.FGrid
  loc_139DDC5:   var_134 = Me.FGrid.Row
  loc_139DDCE:   var_11C = CVar(CLng(var_134)) 'Long
  loc_139DE06:   var_174 = CVar(Proc_6_38_E69628(CVar(Me.var_134.Fields.Item("VDate")), CVar(CLng(1)))) 'String
  loc_139DE0D:   LateIdCallSt
  loc_139DE68:   If (Trim(CVar(Me.Recordset15.Fields.Item(0))) = "A") Then
  loc_139DE7E:     var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139DE86:     var_144 = CVar(CLng(2)) 'Long
  loc_139DE8B:     var_164 = "Room Tariff"
  loc_139DE94:     LateIdCallSt
  loc_139DEA5:   Else
  loc_139DEAF:     var_134 = Me.FGrid.Row
  loc_139DEF0:     var_174 = CVar(Proc_6_38_E69628(CVar(Me.var_134.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_134)), var_124, var_164)) 'String
  loc_139DEF7:     LateIdCallSt
  loc_139DF0F:   End If
  loc_139DF38:   var_194 = Me.FGrid.Row
  loc_139DF41:   var_144 = CVar(CLng(var_194)) 'Long
  loc_139DF49:   var_164 = CVar(CLng(3)) 'Long
  loc_139DF76:   var_1A4 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_139DF7D:   LateIdCallSt
  loc_139DFC2:   var_194 = Me.FGrid.Row
  loc_139DFE7:   var_134 = "0.00"
  loc_139E007:   LateIdCallSt
  loc_139E053:   Proc_6_39_E7D3A0(var_134, CVar(Me.var_194.Fields.Item("AmtDr")), CVar(var_94), var_124, CVar(CStr(Format(CVar(Me.var_194.Fields.Item("AmtCr")), var_134))), 1, 1)
  loc_139E05B:   var_174 = (CVar(CLng(4)) + var_134)
  loc_139E060:   var_94 = CSng(Format(CVar(Me.var_194.Fields.Item("AmtCr")), var_134))
  loc_139E09F:   Proc_6_39_E7D3A0(var_134, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_194)))
  loc_139E0A7:   var_174 = (var_124 + var_134)
  loc_139E0AC:   var_9C = CSng(Format(CVar(Me.var_194.Fields.Item("AmtCr")), var_134))
  loc_139E0CE:   var_144 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139E0D6:   var_164 = CVar(CLng(5)) 'Long
  loc_139E0F8:   var_104 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_139E108:   var_1A4 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_139E10F:   LateIdCallSt
  loc_139E133:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_139E149:     var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139E151:     var_144 = CVar(CLng(6)) 'Long
  loc_139E156:     var_164 = "Dr"
  loc_139E15F:     LateIdCallSt
  loc_139E170:   Else
  loc_139E17C:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_139E192:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139E19A:       var_144 = CVar(CLng(6)) 'Long
  loc_139E19F:       var_164 = "Cr"
  loc_139E1A8:       LateIdCallSt
  loc_139E1B9:     Else
  loc_139E1CC:       var_F4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_139E1D4:       var_144 = CVar(CLng(6)) 'Long
  loc_139E1D9:       var_164 = vbNullString
  loc_139E1E2:       LateIdCallSt
  loc_139E1F0:     End If
  loc_139E1F0:   End If
  loc_139E1FA:   var_104 = Me.FGrid.Row
  loc_139E203:   var_11C = CVar(CLng(var_104)) 'Long
  loc_139E20B:   var_154 = CVar(CLng(7)) 'Long
  loc_139E23E:   var_174 = CVar(CStr(Me.var_104.Fields.Item("DocID").Value)) 'String
  loc_139E245:   LateIdCallSt
  loc_139E269:   var_104 = Me.FGrid.Row
  loc_139E272:   var_11C = CVar(CLng(var_104)) 'Long
  loc_139E27A:   var_154 = CVar(CLng(8)) 'Long
  loc_139E2AD:   var_174 = CVar(CStr(Me.var_104.Fields.Item("SNo").Value)) 'String
  loc_139E2B4:   LateIdCallSt
  loc_139E2D8:   var_134 = Me.FGrid.Row
  loc_139E319:   var_174 = CVar(Proc_6_38_E69628(CVar(Me.var_134.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_134)), var_124, var_174, CVar(CLng(9)), CVar(CLng(var_134)))) 'String
  loc_139E320:   LateIdCallSt
  loc_139E33A:   Set var_124 = Nothing 
  loc_139E357:   var_F4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_139E360:   Set var_B8 = Me.FGrid
  loc_139E366:   var_B8.Row = "U_Name"
  loc_139E37B:   Me.var_B8.MoveNext
  loc_139E380:   GoTo loc_139DD9F
  loc_139E383: End If
  loc_139E396: Me.FGrid.FixedRows = 1
  loc_139E3A2: Set var_1B8 = Me.Fgrid1
  loc_139E3A5: var_144 = 0
  loc_139E3B1: var_164 = CVar(CLng(1)) 'Long
  loc_139E3DF: var_174 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_139E3E6: LateIdCallSt
  loc_139E3F7: var_144 = 0
  loc_139E403: var_164 = CVar(CLng(2)) 'Long
  loc_139E431: var_174 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_139E438: LateIdCallSt
  loc_139E449: var_144 = 0
  loc_139E455: var_164 = CVar(CLng(3)) 'Long
  loc_139E477: var_104 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_139E487: var_194 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_139E48E: LateIdCallSt
  loc_139E4A1: var_184 = 0
  loc_139E4AD: var_1C8 = CVar(CLng(4)) 'Long
  loc_139E4D4: var_F4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_139E4FA: var_154 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_139E50A: var_1E8 = CVar(CStr(IIf(CVar(CLng(9)), "Dr", IIf(var_9C, "Cr", vbNullString)))) 'String
  loc_139E511: LateIdCallSt
  loc_139E52E: Set var_1B8 = Nothing 
  loc_139E532: Exit Sub
End Sub

Public Sub Proc_175_31_132D5A8
  'Data Table: 4B1B4C
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_132CDF8: Set var_90 = Me.FGrid
  loc_132CE0E: Me.FGrid.Rows = 1
  loc_132CE2A: global_60 = CStr(CLng(var_90.BackColor))
  loc_132CE40: var_90.Cols = &HA
  loc_132CE45: var_A0 = 0
  loc_132CE51: var_D8 = CVar(CLng(0)) 'Long
  loc_132CE56: var_F8 = "SNo"
  loc_132CE5F: LateIdCallSt
  loc_132CE6A: var_A0 = CVar(CLng(0)) 'Long
  loc_132CE6F: var_D8 = 0
  loc_132CE7B: LateIdCallSt
  loc_132CE83: var_A0 = 0
  loc_132CE8F: var_D8 = CVar(CLng(1)) 'Long
  loc_132CE94: var_F8 = "Date"
  loc_132CE9D: LateIdCallSt
  loc_132CEA8: var_A0 = CVar(CLng(1)) 'Long
  loc_132CEB3: var_D8 = CVar(CInt(1)) 'Integer
  loc_132CEBA: LateIdCallSt
  loc_132CEC5: var_A0 = CVar(CLng(1)) 'Long
  loc_132CED0: var_D8 = CVar(CInt(1)) 'Integer
  loc_132CED7: LateIdCallSt
  loc_132CEE2: var_A0 = CVar(CLng(1)) 'Long
  loc_132CEE7: var_D8 = &H4E2
  loc_132CEF3: LateIdCallSt
  loc_132CEFB: var_A0 = 0
  loc_132CF07: var_D8 = CVar(CLng(2)) 'Long
  loc_132CF0C: var_F8 = "Particulars"
  loc_132CF15: LateIdCallSt
  loc_132CF20: var_A0 = CVar(CLng(2)) 'Long
  loc_132CF2B: var_D8 = CVar(CInt(1)) 'Integer
  loc_132CF32: LateIdCallSt
  loc_132CF3D: var_A0 = CVar(CLng(2)) 'Long
  loc_132CF48: var_D8 = CVar(CInt(1)) 'Integer
  loc_132CF4F: LateIdCallSt
  loc_132CF5A: var_A0 = CVar(CLng(2)) 'Long
  loc_132CF5F: var_D8 = &HBB8
  loc_132CF6B: LateIdCallSt
  loc_132CF73: var_A0 = 0
  loc_132CF7F: var_D8 = CVar(CLng(3)) 'Long
  loc_132CF84: var_F8 = "Debit"
  loc_132CF8D: LateIdCallSt
  loc_132CF98: var_A0 = CVar(CLng(3)) 'Long
  loc_132CFA3: var_D8 = CVar(CInt(7)) 'Integer
  loc_132CFAA: LateIdCallSt
  loc_132CFB5: var_A0 = CVar(CLng(3)) 'Long
  loc_132CFC0: var_D8 = CVar(CInt(7)) 'Integer
  loc_132CFC7: LateIdCallSt
  loc_132CFD2: var_A0 = CVar(CLng(3)) 'Long
  loc_132CFD7: var_D8 = &H3E8
  loc_132CFE3: LateIdCallSt
  loc_132CFEB: var_A0 = 0
  loc_132CFF7: var_D8 = CVar(CLng(4)) 'Long
  loc_132CFFC: var_F8 = "Credit"
  loc_132D005: LateIdCallSt
  loc_132D010: var_A0 = CVar(CLng(4)) 'Long
  loc_132D01B: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D022: LateIdCallSt
  loc_132D02D: var_A0 = CVar(CLng(4)) 'Long
  loc_132D038: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D03F: LateIdCallSt
  loc_132D04A: var_A0 = CVar(CLng(4)) 'Long
  loc_132D04F: var_D8 = &H3E8
  loc_132D05B: LateIdCallSt
  loc_132D063: var_A0 = 0
  loc_132D06F: var_D8 = CVar(CLng(5)) 'Long
  loc_132D074: var_F8 = "Balance"
  loc_132D07D: LateIdCallSt
  loc_132D088: var_A0 = CVar(CLng(5)) 'Long
  loc_132D093: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D09A: LateIdCallSt
  loc_132D0A5: var_A0 = CVar(CLng(5)) 'Long
  loc_132D0B0: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D0B7: LateIdCallSt
  loc_132D0C2: var_A0 = CVar(CLng(5)) 'Long
  loc_132D0C7: var_D8 = &H3E8
  loc_132D0D3: LateIdCallSt
  loc_132D0DB: var_A0 = 0
  loc_132D0E7: var_D8 = CVar(CLng(6)) 'Long
  loc_132D0EC: var_F8 = vbNullString
  loc_132D0F5: LateIdCallSt
  loc_132D100: var_A0 = CVar(CLng(6)) 'Long
  loc_132D10B: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D112: LateIdCallSt
  loc_132D11D: var_A0 = CVar(CLng(6)) 'Long
  loc_132D128: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D12F: LateIdCallSt
  loc_132D13A: var_A0 = CVar(CLng(6)) 'Long
  loc_132D13F: var_D8 = &H12C
  loc_132D14B: LateIdCallSt
  loc_132D153: var_A0 = 0
  loc_132D15F: var_D8 = CVar(CLng(7)) 'Long
  loc_132D164: var_F8 = vbNullString
  loc_132D16D: LateIdCallSt
  loc_132D178: var_A0 = CVar(CLng(7)) 'Long
  loc_132D183: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D18A: LateIdCallSt
  loc_132D195: var_A0 = CVar(CLng(7)) 'Long
  loc_132D1A0: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D1A7: LateIdCallSt
  loc_132D1B2: var_A0 = CVar(CLng(7)) 'Long
  loc_132D1B7: var_D8 = 0
  loc_132D1C3: LateIdCallSt
  loc_132D1CB: var_A0 = 0
  loc_132D1D7: var_D8 = CVar(CLng(8)) 'Long
  loc_132D1DC: var_F8 = vbNullString
  loc_132D1E5: LateIdCallSt
  loc_132D1F0: var_A0 = CVar(CLng(8)) 'Long
  loc_132D1FB: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D202: LateIdCallSt
  loc_132D20D: var_A0 = CVar(CLng(8)) 'Long
  loc_132D218: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D21F: LateIdCallSt
  loc_132D22A: var_A0 = CVar(CLng(8)) 'Long
  loc_132D22F: var_D8 = 0
  loc_132D23B: LateIdCallSt
  loc_132D243: var_A0 = 0
  loc_132D24F: var_D8 = CVar(CLng(9)) 'Long
  loc_132D254: var_F8 = "User"
  loc_132D25D: LateIdCallSt
  loc_132D268: var_A0 = CVar(CLng(9)) 'Long
  loc_132D273: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D27A: LateIdCallSt
  loc_132D285: var_A0 = CVar(CLng(9)) 'Long
  loc_132D290: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D297: LateIdCallSt
  loc_132D2A2: var_A0 = CVar(CLng(9)) 'Long
  loc_132D2A7: var_D8 = &H320
  loc_132D2B3: LateIdCallSt
  loc_132D2BB: var_A0 = vbNullString
  loc_132D2C5: Set var_B4 = Me.FGrid
  loc_132D2E9: Me.FGrid.FixedRows = 1
  loc_132D2F3: Set var_90 = Nothing 
  loc_132D2FB: Set var_10C = Me.Fgrid1
  loc_132D311: Me.Fgrid1.Rows = 1
  loc_132D32D: global_60 = CStr(CLng(var_10C.BackColor))
  loc_132D343: var_10C.Cols = 5
  loc_132D348: var_A0 = 0
  loc_132D354: var_D8 = CVar(CLng(0)) 'Long
  loc_132D359: var_F8 = "Total :"
  loc_132D362: LateIdCallSt
  loc_132D36D: var_A0 = CVar(CLng(0)) 'Long
  loc_132D378: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D37F: LateIdCallSt
  loc_132D38A: var_A0 = CVar(CLng(0)) 'Long
  loc_132D395: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D39C: LateIdCallSt
  loc_132D3A7: var_A0 = CVar(CLng(0)) 'Long
  loc_132D3AC: var_D8 = &H109A
  loc_132D3B8: LateIdCallSt
  loc_132D3C0: var_A0 = 0
  loc_132D3CC: var_D8 = CVar(CLng(1)) 'Long
  loc_132D3D1: var_F8 = vbNullString
  loc_132D3DA: LateIdCallSt
  loc_132D3E5: var_A0 = CVar(CLng(1)) 'Long
  loc_132D3F0: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D3F7: LateIdCallSt
  loc_132D402: var_A0 = CVar(CLng(1)) 'Long
  loc_132D40D: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D414: LateIdCallSt
  loc_132D41F: var_A0 = CVar(CLng(1)) 'Long
  loc_132D424: var_D8 = &H3E8
  loc_132D430: LateIdCallSt
  loc_132D438: var_A0 = 0
  loc_132D444: var_D8 = CVar(CLng(2)) 'Long
  loc_132D449: var_F8 = vbNullString
  loc_132D452: LateIdCallSt
  loc_132D45D: var_A0 = CVar(CLng(2)) 'Long
  loc_132D468: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D46F: LateIdCallSt
  loc_132D47A: var_A0 = CVar(CLng(2)) 'Long
  loc_132D485: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D48C: LateIdCallSt
  loc_132D497: var_A0 = CVar(CLng(2)) 'Long
  loc_132D49C: var_D8 = &H3E8
  loc_132D4A8: LateIdCallSt
  loc_132D4B0: var_A0 = 0
  loc_132D4BC: var_D8 = CVar(CLng(3)) 'Long
  loc_132D4C1: var_F8 = vbNullString
  loc_132D4CA: LateIdCallSt
  loc_132D4D5: var_A0 = CVar(CLng(3)) 'Long
  loc_132D4E0: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D4E7: LateIdCallSt
  loc_132D4F2: var_A0 = CVar(CLng(3)) 'Long
  loc_132D4FD: var_D8 = CVar(CInt(7)) 'Integer
  loc_132D504: LateIdCallSt
  loc_132D50F: var_A0 = CVar(CLng(3)) 'Long
  loc_132D514: var_D8 = &H3E8
  loc_132D520: LateIdCallSt
  loc_132D528: var_A0 = 0
  loc_132D534: var_D8 = CVar(CLng(4)) 'Long
  loc_132D539: var_F8 = vbNullString
  loc_132D542: LateIdCallSt
  loc_132D54D: var_A0 = CVar(CLng(4)) 'Long
  loc_132D558: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D55F: LateIdCallSt
  loc_132D56A: var_A0 = CVar(CLng(4)) 'Long
  loc_132D575: var_D8 = CVar(CInt(1)) 'Integer
  loc_132D57C: LateIdCallSt
  loc_132D587: var_A0 = CVar(CLng(4)) 'Long
  loc_132D58C: var_D8 = &H12C
  loc_132D598: LateIdCallSt
  loc_132D5A2: Set var_10C = Nothing 
  loc_132D5A6: Exit Sub
End Sub

Public Sub Proc_175_32_ED9598
  'Data Table: 4B1B4C
  Dim unk_4B1B64 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  loc_ED9510: On Error Goto loc_ED9591
  loc_ED953C: Proc_6_17_EAAE40(var_CC, MemVar_1F95078, "Select ReservationPrinting From Enviro WHERE LOGSITE_CODE=", var_110, -1)
  loc_ED9552: unk_4B1B64.Execute CStr(var_114 & var_CC), var_118, 0
  loc_ED9562:  = var_118.Item()
  loc_ED9573: var_AC = Proc_6_38_E69628(CVar(var_114.Fields))
  loc_ED958B: Call Proc_175_33_12B7FA8()
  loc_ED9590: Exit Sub
  loc_ED9591: ' Referenced from: ED9510
  loc_ED9591: Proc_6_60_E63754()
  loc_ED9596: Exit Sub
End Sub

Public Sub Proc_175_33_12B7FA8
  'Data Table: 4B1B4C
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim unk_4B1B64 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_110 As String
  Dim var_A0 As Variant
  loc_12B79A4: On Error Goto loc_12B7F9B
  loc_12B79C3: Call 0.Method_Proc_175_33_12B7FA80 (CInt(&HA), var_A4, var_A8)
  loc_12B79CB: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.DocId) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='" = var_A4.Tag
  loc_12B7A02: unk_4B1B64.Execute &HFF & var_A8 & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_12B7A0D: Set var_90 = Me.Txt
  loc_12B7A1C: var_D0 = var_90.RecordCount
  loc_12B7A2A: If (var_D0 <= 0) Then
  loc_12B7A33:   Call 0.Method_arg_50 (var_A8)
  loc_12B7A54:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_12B7A66:   var_8A = 0
  loc_12B7A69:   Exit Sub
  loc_12B7A6A: End If
  loc_12B7A6D: var_94 = "FolioPrint"
  loc_12B7A70: var_BC = "Guest Folio"
  loc_12B7A87: var_98 = CStr(Ucase(var_BC))
  loc_12B7A97: If (var_8A = 0) Then
  loc_12B7A9A:   Exit Sub
  loc_12B7A9B: End If
  loc_12B7ABF: Set var_A0 = var_90 
  loc_12B7AC6: CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\" & var_94 & ".ttx", &HFF)
  loc_12B7AF1: var_A8 = MemVar_1F950B4 & "\"
  loc_12B7B08: Call 0.Method_arg_1C (var_A8 & var_94 & ".RPT", var_BC, var_A0)
  loc_12B7B13: MemVar_1F951E8 = var_A0
  loc_12B7B3C: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_12B7B44: Call 0.Method_arg_2C (var_110, var_8A)
  loc_12B7B52: Call 0.Method_arg_150 (var_A0)
  loc_12B7B5C: Set var_90 = Nothing
  loc_12B7B70: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_12B7B78: Call 0.Method_arg_24 (var_9A)
  loc_12B7B84: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_12B7B9D:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_12B7BA5:   Call 0.Method_arg_20 (var_A4)
  loc_12B7BAD:   Call 0.Method_arg_30 (var_A8)
  loc_12B7BC3:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_12B7BF3:   If (var_13C = Ucase("ChkOutDt")) Then
  loc_12B7C06:     Set var_A0 = Me.Txt
  loc_12B7C0C:     Call 0.Method_Proc_175_33_12B7FA80 (CInt(&H16), var_A4)
  loc_12B7C44:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12B7C4C:     Call 0.Method_arg_20 (var_148)
  loc_12B7C54:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12B7C73:   Else
  loc_12B7C95:     If (var_13C = Ucase("ChkInDt")) Then
  loc_12B7CA8:       Set var_A0 = Me.Txt
  loc_12B7CAE:       Call 0.Method_Proc_175_33_12B7FA80 (CInt(1), var_A4)
  loc_12B7CE6:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12B7CEE:       Call 0.Method_arg_20 (var_148)
  loc_12B7CF6:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12B7D15:     Else
  loc_12B7D37:       If (var_13C = Ucase("Company")) Then
  loc_12B7D4A:         Set var_A0 = Me.Txt
  loc_12B7D50:         Call 0.Method_Proc_175_33_12B7FA80 (CInt(8), var_A4)
  loc_12B7D88:         Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12B7D90:         Call 0.Method_arg_20 (var_148)
  loc_12B7D98:         Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12B7DB7:       Else
  loc_12B7DD9:         If (var_13C = Ucase("AdltChld")) Then
  loc_12B7DEC:           Set var_A0 = Me.Txt
  loc_12B7DF2:           Call 0.Method_Proc_175_33_12B7FA80 (CInt(&HC), var_A4)
  loc_12B7E21:           Set var_144 = Me.Txt
  loc_12B7E27:           Call 0.Method_Proc_175_33_12B7FA80 (CInt(&HD), var_148)
  loc_12B7E5F:           Call 0.Method_arg_90 (var_18C, CLng(var_9A))
  loc_12B7E67:           Call 0.Method_arg_20 (var_190)
  loc_12B7E6F:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_12B7E98:         Else
  loc_12B7EBA:           If (var_13C = Ucase("RoomNo")) Then
  loc_12B7ECD:             Set var_A0 = Me.Txt
  loc_12B7ED3:             Call 0.Method_Proc_175_33_12B7FA80 (CInt(0), var_A4)
  loc_12B7F0B:             Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_12B7F13:             Call 0.Method_arg_20 (var_148)
  loc_12B7F1B:             Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_12B7F37:           End If
  loc_12B7F37:         End If
  loc_12B7F37:       End If
  loc_12B7F37:     End If
  loc_12B7F37:   End If
  loc_12B7F3A: Next var_12C 'Integer
  loc_12B7F44: Set var_A4 = Nothing
  loc_12B7F5A: Set var_A0 = MemVar_1F951E8 
  loc_12B7F66: Proc_6_99_1484404(var_A0, 0, var_98)
  loc_12B7F71: MemVar_1F951E8 = var_A0
  loc_12B7F89: Me.Global.Unload Me
  loc_12B7F96: MemVar_1F951E8 = Nothing
  loc_12B7F9A: Exit Sub
  loc_12B7F9B: ' Referenced from: 12B79A4
  loc_12B7FA0: Proc_6_60_E63754(0, &HFF)
  loc_12B7FA5: Exit Sub
End Sub
