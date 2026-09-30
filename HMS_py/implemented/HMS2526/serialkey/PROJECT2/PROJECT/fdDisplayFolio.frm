VERSION 5.00
Begin VB.Form fdDisplayFolio
  Caption = "Guest Ledger"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdDisplayFolio.frx":0
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 14235
  ClientHeight = 8985
  LockControls = -1  'True
  Begin TextBox Txt
    Index = 29
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1215
    Top = 6885
    Width = 3975
    Height = 285
    Enabled = 0   'False
    TabIndex = 67
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
  End
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8535
    Width = 14235
    Height = 450
    Visible = 0   'False
    TabIndex = 66
  End
  Begin MSHFlexGrid FRectGrid
    Left = 5925
    Top = 4830
    Width = 4065
    Height = 1020
    Visible = 0   'False
    TabIndex = 62
  End
  Begin TextBox Txt
    Index = 25
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 3255
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 60
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    Left = 7515
    Top = 3165
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
      Top = 270
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
    Picture = "fdDisplayFolio.frx":442
    Left = 10560
    Top = 150
    Width = 315
    Height = 270
    Visible = 0   'False
    TabIndex = 51
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin TextBox Txt
    Index = 26
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1215
    Top = 4365
    Width = 3975
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
    Left = 1215
    Top = 4680
    Width = 3975
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
    Left = 1215
    Top = 4995
    Width = 3975
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
    Left = 9345
    Top = 7620
    Width = 4980
    Height = 690
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSHFlexGrid Fgrid1
    Left = 5205
    Top = 6645
    Width = 8445
    Height = 285
    TabIndex = 47
  End
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
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
    Left = 3360
    Top = 1680
    Width = 420
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
    Left = 2910
    Top = 1680
    Width = 420
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
    Left = 1215
    Top = 5310
    Width = 3975
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
    Left = 1215
    Top = 5625
    Width = 3975
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
    Left = 1215
    Top = 5940
    Width = 3975
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
    Left = 1335
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
    Left = 3360
    Top = 1995
    Width = 420
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
    Left = 2910
    Top = 1995
    Width = 420
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
    Left = 11100
    Top = 90
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
    ForeColor = &HC00000&
    Left = 1335
    Top = 1050
    Width = 1545
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 5
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
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2910
    Top = 1365
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 3
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3360
    Top = 1365
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 4
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1215
    Top = 6570
    Width = 3975
    Height = 285
    Enabled = 0   'False
    TabIndex = 24
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
  End
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1215
    Top = 6255
    Width = 3975
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
    Left = 1215
    Top = 4050
    Width = 3975
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
    Left = 1335
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
    Left = 3930
    Top = 600
    Width = 780
    Height = 330
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
    Left = 1335
    Top = 2940
    Width = 1185
    Height = 285
    Enabled = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 1 'Right Justify
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
    ForeColor = &HC00000&
    Left = 12480
    Top = 6930
    Width = 480
    Height = 330
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 5
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
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 2625
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 2
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
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1785
    Top = 2625
    Width = 420
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
    BorderStyle = 0 'None
    Alignment = 2 'Center
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
    Left = 1335
    Top = 2310
    Width = 2445
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
  Begin MSFlexGrid FGPoint
    Left = 810
    Top = 7710
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 50
  End
  Begin DataGrid DGRoomNo
    Left = 9330
    Top = 7200
    Width = 5655
    Height = 1305
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 38
  End
  Begin MSHFlexGrid FGrid
    Left = 5235
    Top = 1020
    Width = 8775
    Height = 5580
    TabIndex = 25
  End
  Begin BtnEnh CmdExit
    Left = 7620
    Top = 7110
    Width = 1275
    Height = 1050
    TabIndex = 64
  End
  Begin BtnEnh CmdPrint
    Left = 4560
    Top = 7155
    Width = 1275
    Height = 1050
    TabIndex = 65
  End
  Begin Label Lbl
    Caption = "Status"
    Index = 14
    ForeColor = &HC00000&
    Left = 180
    Top = 6885
    Width = 555
    Height = 285
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
    Left = 120
    Top = 3270
    Width = 1035
    Height = 285
    TabIndex = 61
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
    Caption = "Guest Details"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 90
    Top = 3600
    Width = 5040
    Height = 375
    TabIndex = 49
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
  Begin Label Lbl
    Caption = "Address"
    Index = 2
    ForeColor = &HC00000&
    Left = 150
    Top = 4365
    Width = 720
    Height = 285
    TabIndex = 48
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
    Caption = "Chk Out Date"
    Index = 15
    ForeColor = &HC00000&
    Left = 120
    Top = 1680
    Width = 1110
    Height = 285
    TabIndex = 46
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
    Caption = "Comment3"
    Index = 13
    ForeColor = &HC00000&
    Left = 150
    Top = 5940
    Width = 930
    Height = 285
    TabIndex = 45
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
    Caption = "Comment2"
    Index = 8
    ForeColor = &HC00000&
    Left = 150
    Top = 5625
    Width = 930
    Height = 285
    TabIndex = 44
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
    Caption = "Comment1"
    Index = 7
    ForeColor = &HC00000&
    Left = 150
    Top = 5310
    Width = 930
    Height = 285
    TabIndex = 43
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
    Caption = "Exp.Dep.Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 120
    Top = 1995
    Width = 1125
    Height = 285
    TabIndex = 42
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
    Caption = "."
    BackColor = &HF9CECE&
    ForeColor = &H4080&
    Left = 13830
    Top = 660
    Width = 1530
    Height = 285
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
    Caption = "Charge Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 5235
    Top = 585
    Width = 8190
    Height = 375
    TabIndex = 37
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
  Begin Label Lbl
    Caption = "Guest Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 120
    Top = 1050
    Width = 1200
    Height = 285
    TabIndex = 36
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
    Caption = "GSTIN"
    Index = 1
    ForeColor = &HC00000&
    Left = 180
    Top = 6570
    Width = 510
    Height = 225
    TabIndex = 35
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
    Caption = "Company"
    Index = 3
    ForeColor = &HC00000&
    Left = 180
    Top = 6255
    Width = 795
    Height = 285
    TabIndex = 34
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
    Caption = "Guest Name"
    Index = 5
    ForeColor = &HC00000&
    Left = 150
    Top = 4050
    Width = 1035
    Height = 225
    TabIndex = 33
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
  Begin Label LblCheckInDay
    Caption = "."
    ForeColor = &H4080&
    Left = 3810
    Top = 1365
    Width = 1350
    Height = 285
    TabIndex = 32
    AutoSize = -1  'True
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
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 120
    Top = 1365
    Width = 1170
    Height = 285
    TabIndex = 31
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
    Caption = "Room Type"
    Index = 34
    ForeColor = &HC00000&
    Left = 120
    Top = 2310
    Width = 945
    Height = 285
    TabIndex = 30
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
    Caption = "Room Rate"
    Index = 9
    ForeColor = &HC00000&
    Left = 120
    Top = 2925
    Width = 930
    Height = 225
    TabIndex = 29
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
    Caption = "Rate Code"
    Index = 10
    ForeColor = &HC00000&
    Left = 11430
    Top = 6945
    Width = 870
    Height = 285
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
    Left = 120
    Top = 2625
    Width = 900
    Height = 285
    TabIndex = 27
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
    Caption = "Guest Room For Room No."
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

Attribute VB_Name = "fdDisplayFolio"

Private MasterFormExit As Integer
Private global_72 As Long

Private Sub Form_Load() '105BA64
  'Data Table: 4D9104
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
  Dim unk_4D9115 As Connection15
  loc_105B800: On Error Goto loc_105BA5B
  loc_105B80B: Call 0.Method_arg_7C (CDbl(1450))
  loc_105B818: Call 0.Method_arg_74 (CDbl(1625))
  loc_105B825: Call 0.Method_MeC (CDbl(9200))
  loc_105B832: Call 0.Method_Me4 (CDbl(17000))
  loc_105B83E: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_105B850: Set var_A8 = Me.FGrid
  loc_105B856: var_A8.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_105B868: Set global_104 = New 
  loc_105B87A: Me.var_A8.CursorLocation = 3
  loc_105B8A4: var_BC = CVar("Select Code,Name,Type as Flag From RevMast where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Fieldtype in ('C','P') ORDER BY NAME ") 'String
  loc_105B8AE: Me.Open var_BC, CVar(MemVar_1F95044), 2
  loc_105B8C2: CVarUnk
  loc_105B8C7: VerifyVarObj
  loc_105B8CD: Set var_A8 = Me.DGChrgPayment
  loc_105B8D3: LateIdStAd
  loc_105B8F5: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_C4, Me.Txt)
  loc_105B8FD: global_104 = var_C0.Left
  loc_105B914: Me.DGRoomNo.Left = CVar(var_C4)
  loc_105B930: Set var_C8 = Me.Txt
  loc_105B936: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_D0)
  loc_105B93E: 3 = var_CC.Height
  loc_105B957: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_105B96F: var_94 = CVar(((var_C0.Top + var_D0) + CDbl(&H1E))) 'Single
  loc_105B978: Set var_D4 = Me.DGRoomNo
  loc_105B97E: var_D4.Top = CVar(var_C0.Top)
  loc_105B99A: Set global_100 = New 
  loc_105B9AC: Me.var_D4.CursorLocation = 3
  loc_105B9C5: var_AC = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.ChkInDate,RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, GuestFolio.DocId as FolioNoDocid, GuestFolio.mFolioNoDocId, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,SubGroup.GSTIN AS GSTIN " & " FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS  WHERE ROOMOCC.LOGSITE_CODE='"
  loc_105B9E1: var_E4 = var_AC & MemVar_1F95078 & "' AND ROOMMAST.LOGSITE_CODE='" & MemVar_1F95078 & "' AND roomocc.ChkOutDate is NULL  AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code,RoomOcc.FolioNo"
  loc_105B9EA: unk_4D9115.Execute var_E4, var_BC, -1
  loc_105B9FB: Set global_100 = Me.Txt
  loc_105BA1F: CVarUnk
  loc_105BA24: VerifyVarObj
  loc_105BA2A: Set var_A8 = Me.DGRoomNo
  loc_105BA30: LateIdStAd
  loc_105BA52: If (fdDisplayFolio.OpenMode = 1) Then
  loc_105BA55: End If
  loc_105BA55: Call Proc_63_39_1353D38(var_A8, global_100)
  loc_105BA5A: Exit Sub
  loc_105BA5B: ' Referenced from: 105B800
  loc_105BA5B: Proc_6_60_E63754(var_A8)
  loc_105BA60: Exit Sub
End Sub

Private Sub Form_Resize() 'E763E8
  'Data Table: 4D9104
  loc_E76392: Call 0.Method_arg_50 (var_88)
  loc_E763A4: Me.LblFormCaption.Caption = var_88
  loc_E763BD: Me.LblFormCaption.Left = CDbl(0)
  loc_E763CB: Call 0.Method_arg_100 (var_90)
  loc_E763DD: Me.LblFormCaption.Width = var_90
  loc_E763E5: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E442EC
  'Data Table: 4D9104
  loc_E442C7: Set global_100 = Nothing
  loc_E442D9: Set global_104 = Nothing
  loc_E442E5: MasterFormExit = 0
  loc_E442E8: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5B95C
  'Data Table: 4D9104
  loc_E5B924: Set var_88 = Me.TopCtrl1
  loc_E5B92A: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5B94D: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5B955:   Call Form_Unload(&HFF)
  loc_E5B95A: End If
  loc_E5B95A: Exit Sub
End Sub

Private Sub Form_Activate() 'E472E4
  'Data Table: 4D9104
  loc_E472B8: On Error Goto loc_E472DE
  loc_E472BF: Set var_8C = Me.TopCtrl1
  loc_E472C5: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E472DA: If (CLng(CInt()) = &H2D) Then
  loc_E472DD: End If
  loc_E472DD: Exit Sub
  loc_E472DE: ' Referenced from: E472B8
  loc_E472DE: Proc_6_60_E63754()
  loc_E472E3: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E25894
  'Data Table: 4D9104
  loc_E25879: If (MasterFormExit = &HFF) Then
  loc_E25889:   Me.Global.Unload Me
  loc_E25891: End If
  loc_E25891: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E633C8
  'Data Table: 4D9104
  loc_E6337C: On Error Goto loc_E633BF
  loc_E63389: If (CLng(KeyCode) = &H79) Then
  loc_E63399:   Me.Global.Unload Me
  loc_E633A1:   Exit Sub
  loc_E633A2: End If
  loc_E633B6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E633BE: Exit Sub
  loc_E633BF: ' Referenced from: E6337C
  loc_E633BF: Proc_6_60_E63754(Shift)
  loc_E633C4: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1CC58
  'Data Table: 4D9104
  loc_E1CC4D: Me.Global.Unload Me
  loc_E1CC55: Exit Sub
End Sub

Private Sub FRectGrid_UnknownEvent_9 'E29E00
  'Data Table: 4D9104
  loc_E29DF3: Call Proc_63_34_1015E4C(CInt(CLng(Me.FRectGrid.Row)))
  loc_E29DFE: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_1 'E54D9C
  'Data Table: 4D9104
  loc_E54D80: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E54D92:   Me.FRectGrid.Visible = False
  loc_E54D9A: End If
  loc_E54D9A: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D '15FA574
  'Data Table: 4D9104
  Dim var_88 As Variant
  Dim var_98 As Variant
  Dim var_C4 As Variant
  Dim var_E4 As Variant
  Dim var_F8 As Variant
  Dim var_108 As Variant
  Dim var_118 As Variant
  Dim var_138 As Variant
  Dim var_1B0 As Variant
  Dim var_14C As String
  Dim var_150 As String
  Dim var_154 As String
  Dim var_148 As Variant
  Dim var_164 As Variant
  Dim var_174 As Variant
  Dim unk_4D9115 As Connection15
  Dim var_19C As Variant
  Dim var_1A0 As Variant
  Dim var_1B4 As Field20
  Dim var_1E4 As Variant
  Dim var_1FC As String
  Dim var_B4 As Recordset15
  Dim var_D4 As Variant
  Dim var_AA As Integer
  Dim var_188 As Variant
  Dim var_210 As Variant
  Dim var_128 As Variant
  Dim var_AC As Integer
  Dim var_1C4 As Variant
  Dim var_1D4 As Variant
  Dim var_250 As Variant
  Dim var_198 As Variant
  Dim var_9A As Integer
  Dim var_A2 As Integer
  Dim var_290 As Variant
  Dim var_280 As Variant
  Dim var_2B0 As Variant
  loc_15F91A1: If (CLng(Me.FGrid.ColSel) = CLng(0)) Then
  loc_15F91A4:   Exit Sub
  loc_15F91A5: End If
  loc_15F91B8: var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F91C0: var_E4 = CVar(CLng(1)) 'Long
  loc_15F9202: If CBool(Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString) Then
  loc_15F9216:   If ((CLng(KeyCode) = &H44) And (Shift = 2)) Then
  loc_15F9238:     If (CLng(Me.FGrid.Row) >= 1) Then
  loc_15F923F:       Set var_88 = Me.FGrid
  loc_15F9270:       var_118 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_15F9276:       var_128 = Trim(var_118)
  loc_15F9281:       var_1B0 = 0
  loc_15F929E:       var_14C = "Select Count(*) From PayCharge P Where ISNull(P.RestCode,'') In ('" & MemVar_1F95078
  loc_15F92B3:       var_148 = CVar(var_14C & "BANQ','" & MemVar_1F95078 & "IDC') And P.DocId='") 'String
  loc_15F92B9:       var_164 = var_148 & var_128 
  loc_15F92C2:       var_174 = var_164 & "'" 
  loc_15F92D0:       unk_4D9115.Execute CStr(var_174), var_198, -1
  loc_15F92D8:       var_19C = var_19C.Fields
  loc_15F92E0:       var_1B0 = var_1A0.Item(var_1A0)
  loc_15F92E8:       var_1B4 = var_1B4.Value
  loc_15F92F3:       Proc_6_39_E7D3A0(var_1D4, var_1C4, var_1C4, CVar(CLng(7)))
  loc_15F9332:       If (var_1D4 > 0) Then
  loc_15F933B:         Call 0.Method_arg_50 (var_14C, CVar(CLng(var_88.Row)))
  loc_15F9356:         var_98 = "Banquet Settlement can't be deleted."
  loc_15F935C:         MsgBox(var_98, &H40, CVar(var_14C), var_118, var_128)
  loc_15F936C:         Exit Sub
  loc_15F936D:       End If
  loc_15F938F:       var_154 = "SELECT DeleteGuestCharges FROM UserPermission WHERE LOGSITE_CODE='" & MemVar_1F95078 & "' And CompCode='" & MemVar_1F95128
  loc_15F93AD:       unk_4D9115.Execute var_154 & "' And UserName='" & MemVar_1F950C8 & "'", var_98, -1
  loc_15F93B8:       Set var_B4 = var_88
  loc_15F93E4:       If (var_B4.RecordCount > 0) Then
  loc_15F93F6:         var_88 = var_B4.Fields
  loc_15F9406:         var_98 = CVar(var_88.Item("DeleteGuestCharges")) 'Address
  loc_15F940F:         var_A8 = Proc_6_38_E69628(var_98, var_88)
  loc_15F9418:       End If
  loc_15F943C:       unk_4D9115.Execute "Select GuestChargesDeleteLog from Enviro where logsite_code='" & MemVar_1F95078 & "'", var_98, -1
  loc_15F9447:       Set var_B4 = var_88
  loc_15F945D:       var_200 = var_B4.RecordCount
  loc_15F946B:       If (var_200 > 0) Then
  loc_15F947D:         var_88 = var_B4.Fields
  loc_15F949C:         var_118 = Ucase(CVar(Proc_6_38_E69628(CVar(var_88.Item("GuestChargesDeleteLog")), var_88)))
  loc_15F94B8:         If (var_118 = "YES") Then
  loc_15F94BD:           var_AA = &HFF
  loc_15F94C0:         End If
  loc_15F94C0:       End If
  loc_15F94C5:       Set var_B4 = Nothing
  loc_15F94D8:       var_98 = Me.FGrid.Row
  loc_15F94E1:       var_C4 = CVar(CLng(var_98)) 'Long
  loc_15F94F2:       Set var_F8 = Me.FGrid
  loc_15F94F8:       var_108 = var_F8.TextMatrix)
  loc_15F9503:       var_14C = CStr(var_108)
  loc_15F9527:       If (CVar(CLng(1)) Or ((CDate(var_14C) = MemVar_1F950EC) And (var_A8 <> "No"))) Then
  loc_15F9557:         Set var_88 = Me.Txt
  loc_15F955D:         Call 0.Method_FGrid_UnknownEvent_D0 (CInt(&HA), var_F8, var_14C, "Select Count(*) from PayCharge where FolioNoDocid='", var_98, -1, var_19C)
  loc_15F9565:         var_1A0 = var_F8.Tag
  loc_15F957E:         unk_4D9115.Execute 0 & var_14C & "' and Bill_No<>'' and Bill_No is Not NULL", var_1B4, var_108
  loc_15F9586:         var_C4 = var_19C.Fields
  loc_15F958E:         var_AA = var_1A0.Item((MemVar_1F950B8 = 1))
  loc_15F9596:          = var_1B4.Value
  loc_15F95C3:         If (var_108 > 0) Then
  loc_15F95C6:           Exit Sub
  loc_15F95C7:         End If
  loc_15F95FE:         If (MsgBox("Are You Sure To Delete?", &H114, "Delete Entry !", var_118, var_128) = 6) Then
  loc_15F9620:           If (CLng(Me.FGrid.Rows) > 2) Then
  loc_15F9629:             If (var_AA = &HFF) Then
  loc_15F9656:               var_B0 = InputBox("Reason for Deletion :", "Delete Reason", var_118, var_128, var_148, var_164, var_174)
  loc_15F966A:             End If
  loc_15F9673:             unk_4D9115.BeginTrans var_200
  loc_15F968B:             var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F96BE:             var_1E4 = 0
  loc_15F96D4:             var_138 = "Select Count(*) From (PayCharge P Left Join Depart D On P.RestCode=D.Code) Where ISNull(P.RestCode,'')<>'' And P.DocId='"
  loc_15F96E9:             var_14C = CStr(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "' And ISNull(D.RestType,'') In('Room Service','Outlet')")
  loc_15F96F3:             unk_4D9115.Execute var_14C, var_174, -1
  loc_15F96FB:             var_19C = var_19C.Fields
  loc_15F9703:             var_1E4 = var_1A0.Item(var_1A0)
  loc_15F970B:             var_1B4 = var_1B4.Value
  loc_15F9716:             Proc_6_39_E7D3A0(var_1C4, var_198, var_198)
  loc_15F974B:             If (var_1C4 > 0) Then
  loc_15F9754:               If (var_AA = &HFF) Then
  loc_15F975D:                 Call 0.Method_arg_50 (var_14C, CVar(CLng(7)))
  loc_15F9787:                 var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_15F97AC:                 var_118 = Format(Time, "HH:MM")
  loc_15F97B4:                 var_148 = (1 + var_118)
  loc_15F97B8:                 var_D4 = "- "
  loc_15F97BD:                 var_164 = (var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + "Delete Reason")
  loc_15F97C7:                 var_174 = (var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & "' And ISNull(D.RestType,'') In('Room Service','Outlet')" + CVar(var_B0))
  loc_15F97CC:                 var_B0 = CStr(var_174)
  loc_15F97FA:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F9802:                 var_E4 = CVar(CLng(7)) 'Long
  loc_15F9845:                 unk_4D9115.Execute "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_15F986F:                 var_98 = Me.FGrid.Row
  loc_15F9878:                 var_C4 = CVar(CLng(var_98)) 'Long
  loc_15F988F:                 var_108 = Me.FGrid.TextMatrix)
  loc_15F98A1:                 var_188 = 0
  loc_15F98D2:                 unk_4D9115.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_15F98E2:                 var_188 = var_1A0.Item(var_1A0)
  loc_15F98EA:                 var_1B4 = var_1B4.Value
  loc_15F98F5:                 Proc_6_39_E7D3A0(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), CVar(0 & CStr(var_108) & " Tm "), CVar(0 & CStr(var_108) & " Tm "), var_108, CVar(CLng(7)))
  loc_15F98FE:                 var_AC = CInt(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_15F992F:                 Proc_6_17_EAAE40(var_98, var_B0, var_AC, var_B0)
  loc_15F993F:                 Proc_6_17_EAAE40(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), MemVar_1F950C8, var_19C.Fields)
  loc_15F994F:                 Proc_6_7_F26918(var_198, MemVar_1F950EC, var_108)
  loc_15F9967:                 var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F996F:                 var_210 = CVar(CLng(7)) 'Long
  loc_15F99A2:                 var_14C = CStr((var_AC + 1))
  loc_15F99B3:                 var_118 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=") & var_98 
  loc_15F99DC:                 var_1D4 = var_118 & ",U_Name=" & MemVar_1F950EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ",U_EntDt=" & var_198 & " Where IsNull(SeqNo,0)=0 And DOCID='" 
  loc_15F99FE:                 unk_4D9115.Execute CStr(var_1D4 & CVar(CStr(Me.FGrid.TextMatrix))) & "'"), var_290, -1
  loc_15F9A38:               End If
  loc_15F9A4B:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F9A53:               var_E4 = CVar(CLng(7)) 'Long
  loc_15F9A96:               unk_4D9115.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_15F9AC9:               var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F9AD2:               Set var_F8 = Me.FGrid
  loc_15F9AED:             Else
  loc_15F9B5E:               Set var_1A0 = Me.FGrid
  loc_15F9B6F:               var_14C = CStr(var_1A0.TextMatrix))
  loc_15F9B80:               var_198 = CVar(CLng(8)) And (CDbl(Val(var_14C)) = CDbl(1))
  loc_15F9BA5:               If CBool(var_198) Then
  loc_15F9BAE:                 If (var_AA = &HFF) Then
  loc_15F9BB7:                   Call 0.Method_arg_50 (var_14C, CVar(CLng(Me.FGrid.Row)), (Trim(CVar(CStr(Me.FGrid.TextMatrix)))) <> vbNullString), CVar(CLng(7)), CVar(CLng(Me.FGrid.Row)), FGrid.DispID_10000, CVar(CLng(Me.FGrid.Row)))
  loc_15F9BE1:                   var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_15F9C06:                   var_118 = Format(Time, "HH:MM")
  loc_15F9C0E:                   var_148 = (1 + var_118)
  loc_15F9C12:                   var_D4 = "- "
  loc_15F9C17:                   var_164 = (vbNullString & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + ",U_Name=")
  loc_15F9C21:                   var_174 = (Me.FGrid.Row + CVar(var_B0))
  loc_15F9C26:                   var_B0 = CStr(var_1A0.TextMatrix))
  loc_15F9C54:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F9C5C:                   var_E4 = CVar(CLng(7)) 'Long
  loc_15F9C9F:                   unk_4D9115.Execute "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_15F9CC9:                   var_98 = Me.FGrid.Row
  loc_15F9CD2:                   var_C4 = CVar(CLng(var_98)) 'Long
  loc_15F9CE9:                   var_108 = Me.FGrid.TextMatrix)
  loc_15F9CFB:                   var_188 = 0
  loc_15F9D2C:                   unk_4D9115.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_15F9D3C:                   var_188 = var_1A0.Item(var_1A0)
  loc_15F9D44:                   var_1B4 = var_1B4.Value
  loc_15F9D4F:                   Proc_6_39_E7D3A0(vbNullString & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm "), CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm "), var_108, CVar(CLng(7)))
  loc_15F9D58:                   var_AC = CInt(vbNullString & Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_15F9D89:                   Proc_6_17_EAAE40(var_98, var_B0, var_AC, var_B0)
  loc_15F9D99:                   Proc_6_17_EAAE40(vbNullString & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), MemVar_1F950C8, var_19C.Fields)
  loc_15F9DA9:                   Proc_6_7_F26918(var_198, MemVar_1F950EC, var_108)
  loc_15F9DC1:                   var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F9DC9:                   var_210 = CVar(CLng(7)) 'Long
  loc_15F9DFC:                   var_14C = CStr((var_AC + 1))
  loc_15F9E0D:                   var_118 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=") & var_98 
  loc_15F9E36:                   var_1D4 = var_118 & ",U_Name=" & MemVar_1F950EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ",U_EntDt=" & var_198 & " Where IsNull(SeqNo,0)=0 And DOCID='" 
  loc_15F9E58:                   unk_4D9115.Execute CStr(var_1D4 & CVar(CStr(Me.FGrid.TextMatrix))) & "'"), var_290, -1
  loc_15F9E92:                 End If
  loc_15F9EA5:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F9EAD:                 var_E4 = CVar(CLng(7)) 'Long
  loc_15F9EF0:                 unk_4D9115.Execute "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "'", var_118, -1
  loc_15F9F23:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15F9F2B:                 var_E4 = CVar(CLng(7)) 'Long
  loc_15F9F45:                 var_A0 = CStr(Me.FGrid.TextMatrix))
  loc_15F9F70:                 var_9A = CInt((CLng(Me.FGrid.Rows) - 1))
  loc_15F9F79:                 ' Referenced from:   15FA02C
  loc_15F9F7F:                 If (var_9A >= 1) Then
  loc_15F9F86:                   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_15F9F8E:                   var_E4 = CVar(CLng(7)) 'Long
  loc_15F9FB9:                   If (CStr(Me.FGrid.TextMatrix)) = var_A0) Then
  loc_15F9FC0:                     var_C4 = CVar(CLng(var_9A)) 'Long
  loc_15F9FC9:                     Set var_88 = Me.FGrid
  loc_15F9FDC:                     var_A2 = &HFF
  loc_15F9FDF:                   End If
  loc_15F9FE5:                   var_9A = (var_9A - 1)
  loc_15F9FEC:                   var_C4 = CVar(CLng(var_9A)) 'Long
  loc_15F9FF4:                   var_E4 = CVar(CLng(7)) 'Long
  loc_15FA00E:                   var_14C = CStr(Me.FGrid.TextMatrix))
  loc_15FA026:                   If ((var_14C <> var_A0) And (var_A2 = &HFF)) Then
  loc_15FA029:                     GoTo loc_15FA02F
  loc_15FA02C:                   End If
  loc_15FA02C:                   GoTo loc_15F9F79
  loc_15FA02F:                   ' Referenced from:   15FA029
  loc_15FA02F:                 End If
  loc_15FA032:               Else
  loc_15FA038:                 If (var_AA = &HFF) Then
  loc_15FA041:                   Call 0.Method_arg_50 (var_14C, var_E4, var_C4, var_9A, var_A2, FGrid.DispID_10000, var_C4)
  loc_15FA06B:                   var_150 = Replace(var_14C, " ", vbNullString, 1, -1, 0)
  loc_15FA072:                   var_128 = CVar("DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & " Tm ") 'String
  loc_15FA098:                   var_148 = (1 + Format(Time, "HH:MM"))
  loc_15FA09C:                   var_D4 = "- "
  loc_15FA0A1:                   var_164 = (MemVar_1F950EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + ",U_Name=")
  loc_15FA0AB:                   var_174 = (Format(Time, "HH:MM") & ",U_Name=" & MemVar_1F950EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) + CVar(var_B0))
  loc_15FA0B0:                   var_B0 = CStr(Format(Time, "HH:MM") & ",U_Name=" & MemVar_1F950EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) & ",U_EntDt=")
  loc_15FA0DE:                   var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15FA0E6:                   var_E4 = CVar(CLng(7)) 'Long
  loc_15FA10B:                   var_118 = Me.FGrid.Row
  loc_15FA114:                   var_138 = CVar(CLng(var_118)) 'Long
  loc_15FA11C:                   var_1B0 = CVar(CLng(8)) 'Long
  loc_15FA125:                   Set var_1A0 = Me.FGrid
  loc_15FA12B:                   var_128 = var_1A0.TextMatrix)
  loc_15FA156:                   var_154 = "Insert into PayChargeLog Select * from PayCharge WHERE DOCID='" & CStr(Me.FGrid.TextMatrix)) & "' AND SNO="
  loc_15FA171:                   unk_4D9115.Execute var_154 & CStr(var_128) & " And isnull(bill_no,'')=''", var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), -1
  loc_15FA1A9:                   var_98 = Me.FGrid.Row
  loc_15FA1B2:                   var_C4 = CVar(CLng(var_98)) 'Long
  loc_15FA1C9:                   var_108 = Me.FGrid.TextMatrix)
  loc_15FA1DB:                   var_188 = 0
  loc_15FA20C:                   unk_4D9115.Execute "Select Max(SeqNo) From PayChargeLog WHERE DOCID='" & CStr(var_108) & "'", var_118, -1
  loc_15FA214:                   var_19C = var_19C.Fields
  loc_15FA21C:                   var_188 = var_1A0.Item(var_1A0)
  loc_15FA224:                   var_1B4 = var_1B4.Value
  loc_15FA22F:                   Proc_6_39_E7D3A0(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), var_128, var_128, var_108, CVar(CLng(7)))
  loc_15FA238:                   var_AC = CInt(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))))
  loc_15FA269:                   Proc_6_17_EAAE40(var_98, var_B0, var_AC, var_B0)
  loc_15FA279:                   Proc_6_17_EAAE40(var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), MemVar_1F950C8, var_1B4)
  loc_15FA289:                   Proc_6_7_F26918(var_198, MemVar_1F950EC, var_128)
  loc_15FA2A1:                   var_1B0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15FA2A9:                   var_210 = CVar(CLng(7)) 'Long
  loc_15FA2D7:                   var_280 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15FA2DF:                   var_2B0 = CVar(CLng(8)) 'Long
  loc_15FA312:                   var_14C = CStr((var_AC + 1))
  loc_15FA333:                   var_164 = CVar("Update PayChargeLog Set SeqNo=" & CStr(var_108) & ",Remarks=") & var_98 & ",U_Name=" & MemVar_1F950EC & Trim(CVar(CStr(Me.FGrid.TextMatrix)))) 
  loc_15FA357:                   var_250 = var_164 & ",U_EntDt=" & var_198 & " Where IsNull(SeqNo,0)=0 And DOCID='" & CVar(CStr(Me.FGrid.TextMatrix))) 
  loc_15FA382:                   unk_4D9115.Execute CStr(var_250 & "' AND SNO=" & CVar(CStr(Me.FGrid.TextMatrix))) & " And isnull(bill_no,'')=''"), var_330, -1
  loc_15FA3CA:                 End If
  loc_15FA3DD:                 var_C4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_15FA3E5:                 var_E4 = CVar(CLng(7)) 'Long
  loc_15FA3F4:                 var_108 = Me.FGrid.TextMatrix)
  loc_15FA40A:                 var_118 = Me.FGrid.Row
  loc_15FA413:                 var_138 = CVar(CLng(var_118)) 'Long
  loc_15FA41B:                 var_1B0 = CVar(CLng(8)) 'Long
  loc_15FA42A:                 var_128 = Me.FGrid.TextMatrix)
  loc_15FA467:                 var_1FC = "DELETE FROM PAYCHARGE WHERE DOCID='" & CStr(var_108) & "' AND SNO=" & CStr(var_128) & " And isnull(bill_no,'')=''"
  loc_15FA470:                 unk_4D9115.Execute var_1FC, var_138 & Trim(CVar(CStr(Me.FGrid.TextMatrix)))), -1
  loc_15FA49E:               End If
  loc_15FA49E:             End If
  loc_15FA4A4:             unk_4D9115.CommitTrans
  loc_15FA4AC:           Else
  loc_15FA4BF:             Me.FGrid.Rows = 1
  loc_15FA4E5:             var_98 = CVar(CStr(Proc_6_127_F25B10(Me.FGrid, CInt(0), var_1B4, var_128, var_1B0, var_138, var_108))) 'String
  loc_15FA4ED:             Set var_F8 = Me.FGrid
  loc_15FA51A:             Me.FGrid.FixedRows = 1
  loc_15FA522:           End If
  loc_15FA522:         End If
  loc_15FA522:       End If
  loc_15FA525:     Else
  loc_15FA53B:       var_C4 = "No Entries To Delete"
  loc_15FA540:       var_98 = var_C4
  loc_15FA546:       MsgBox(var_98, &H10, "Delete Module", var_118, var_128)
  loc_15FA556:     End If
  loc_15FA55A:     Set var_88 = Me.FGrid
  loc_15FA56B:     Call Proc_63_38_140DCA4(FGrid.DispID_8001, FGrid.DispID_10000, var_98, var_E4, var_C4)
  loc_15FA570:   End If
  loc_15FA570: End If
  loc_15FA570: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_10 '104E670
  'Data Table: 4D9104
  Dim var_88 As MSHFlexGrid
  Dim var_A8 As Variant
  Dim var_C8 As Variant
  Dim var_10C As Variant
  loc_104E42F: var_A8 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_104E437: var_C8 = CVar(CLng(7)) 'Long
  loc_104E497: If (Trim(Mid(CVar(CStr(Me.FGrid.TextMatrix))), 4, 5)) = "REC") Then
  loc_104E4A0:   If (KeyCode = 2) Then
  loc_104E4A7:     Set var_88 = Me.FGrid
  loc_104E4C6:     Me.FRectGrid.Visible = True
  loc_104E4E1:     Me.FRectGrid.Rows = 0
  loc_104E4E9:     var_A8 = "Print Receipt"
  loc_104E4F3:     Set var_88 = Me.FRectGrid
  loc_104E504:     var_A8 = 0
  loc_104E50D:     var_C8 = &H12C
  loc_104E51A:     Set var_88 = Me.FRectGrid
  loc_104E520:     LateIdCallSt
  loc_104E52B:     var_A8 = 0
  loc_104E55A:     Me.FRectGrid.Height = CVar(CDbl(CLng(Me.FRectGrid.RowHeight))))
  loc_104E569:     var_A8 = 0
  loc_104E572:     var_C8 = &H5DC
  loc_104E57F:     Set var_88 = Me.FRectGrid
  loc_104E585:     LateIdCallSt
  loc_104E5A3:     Me.FRectGrid.Width = CVar(CDbl(1510))
  loc_104E5AB:     var_A8 = 0
  loc_104E5CA:     var_C8 = 0
  loc_104E612:     var_10C = CVar((((CDbl(Me.FGrid.Top) + arg_18) + CDbl(CLng(Me.FRectGrid.RowHeight)))) - (CDbl(CLng(Me.FRectGrid.RowHeight))) / CDbl(4)))) 'Single
  loc_104E621:     Me.FRectGrid.Top = var_10C
  loc_104E651:     var_A8 = CVar((CDbl(Me.FGrid.Left) + arg_14)) 'Single
  loc_104E660:     Me.FRectGrid.Left = var_A8
  loc_104E66F:   End If
  loc_104E66F: End If
  loc_104E66F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E54D2C
  'Data Table: 4D9104
  loc_E54D10: If (CBool(Me.FRectGrid.Visible) = &HFF) Then
  loc_E54D22:   Me.FRectGrid.Visible = False
  loc_E54D2A: End If
  loc_E54D2A: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E659E4
  'Data Table: 4D9104
  loc_E659B4: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_E659B7:   Call DGChrgPayment_UnknownEvent_9()
  loc_E659BC: End If
  loc_E659D8: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E659DB:   Call DGRoomNo_UnknownEvent_9()
  loc_E659E0: End If
  loc_E659E0: Exit Sub
  loc_E659E1: ThisVCallAd
End Sub

Private Sub CmdPrint_UnknownEvent_9 'E7DAE8
  'Data Table: 4D9104
  Dim var_8C As TextBox
  loc_E7DAA2: Set var_88 = Me.Txt
  loc_E7DAA8: Call 0.Method_CmdPrint_UnknownEvent_90 (CInt(&HA), var_8C)
  loc_E7DADC: If CBool(Trim(CVar(var_8C.Tag)) <> vbNullString) Then
  loc_E7DADF:   Call Proc_63_40_ED73D8()
  loc_E7DAE4: End If
  loc_E7DAE4: Exit Sub
End Sub

Private Sub Txt_GotFocus(Index As Integer) '1053F64
  'Data Table: 4D9104
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_1053D12: Set var_88 = Me.Txt
  loc_1053D18: Call 0.Method_Txt_GotFocus0 (Index)
  loc_1053D26: Proc_6_74_E23240(var_8C)
  loc_1053D35: var_92 = Index
  loc_1053D40: If (var_92 = CInt(0)) Then
  loc_1053D5A:   If (Me.RecordCount > 0) Then
  loc_1053D68:     Set var_8C = Me.FGPoint
  loc_1053D80:     Proc_6_137_1192FDC(Me.DGRoomNo, global_100, Index)
  loc_1053D8E:   End If
  loc_1053DDC:   Set var_88 = Me.Txt
  loc_1053DE2:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_1053DEA:   var_8C = var_8C.Text
  loc_1053E10:   If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), var_92) = vbNullString)) Then
  loc_1053E13:     Exit Sub
  loc_1053E14:   End If
  loc_1053E21:   Set var_88 = Me.Txt
  loc_1053E27:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1053E2F:   var_A0 = var_8C.Text
  loc_1053E41:   var_C4 = "RoomNo"
  loc_1053E58:   var_C8 = Me.Fields.Item(var_C4)
  loc_1053E7C:   If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_1053E85:     Me.MoveFirst
  loc_1053EA8:     Set var_88 = Me.Txt
  loc_1053EAE:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_1053EB6:     0 = var_8C.Text
  loc_1053ECF:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_1053EE4:   End If
  loc_1053EE4: End If
  loc_1053EF3: Set var_88 = Me.Txt
  loc_1053EF9: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1053F01: var_8C.SelStart = 0
  loc_1053F1A: Set var_88 = Me.Txt
  loc_1053F20: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1053F3B: Set var_90 = Me.Txt
  loc_1053F41: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1053F49: var_C8.SelLength = Len(var_8C.Text)
  loc_1053F5C: Call Proc_63_37_EBD254()
  loc_1053F61: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10190E8
  'Data Table: 4D9104
  Dim var_88 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Column
  Dim var_AC As TextBox
  Dim var_90 As DataGrid
  loc_1018ED7: var_88 = Shift
  loc_1018EE4: If (CLng(Shift) = &H1B) Then
  loc_1018EE7:   Call Proc_63_37_EBD254(var_88)
  loc_1018EEC:   Exit Sub
  loc_1018EED: End If
  loc_1018EFB: If (KeyCode = CInt(0)) Then
  loc_1018F02:   Set var_AC = Me.DGRoomNo
  loc_1018F1B:   Set var_A4 = Me.FGPoint
  loc_1018F26:   Set var_A0 = Nothing
  loc_1018F58:   Proc_6_69_134A630(var_AC, Me.Txt, CInt(0), global_100, Shift, 0)
  loc_1018FC7:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_1018FED:     Proc_6_138_106E830(Me.DGRoomNo, global_100, KeyCode, Me.FGPoint, 1)
  loc_101900B:     Set var_90 = Me.DGRoomNo
  loc_1019022:     var_A0 = DGRoomNo.DispID_69.Item(2)
  loc_1019047:     Call 0.Method_Txt_KeyDown0 (CInt(&HA), var_AC, CStr(var_A0.Value), var_A0)
  loc_101904F:     var_AC.Tag = Me.Txt
  loc_101906B:   End If
  loc_101906B: End If
  loc_10190A6: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_10190BE:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10190C7:     Proc_6_75_E5335C(Shift, arg_14)
  loc_10190CC:   End If
  loc_10190D6:   If (CLng(Shift) = &H26) Then
  loc_10190DF:     Proc_6_76_E533C8(Shift, arg_14)
  loc_10190E4:   End If
  loc_10190E4: End If
  loc_10190E4: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE2D60
  'Data Table: 4D9104
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE2CAB: Proc_6_58_E06050(arg_10)
  loc_EE2CB6: Proc_6_133_E7FB08(var_94)
  loc_EE2CD3: If (KeyAscii = CInt(0)) Then
  loc_EE2CF2:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EE2D1F:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_100, CInt(Me.DGRoomNo.Visible), "RoomNo")
  loc_EE2D51:     Proc_6_138_106E830(Me.DGRoomNo, global_100, KeyAscii, Me.FGPoint)
  loc_EE2D5F:   End If
  loc_EE2D5F: End If
  loc_EE2D5F: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00084
  'Data Table: 4D9104
  Dim var_86 As Integer
  loc_E0007F: var_86 = KeyCode
  loc_E00082: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E46B94
  'Data Table: 4D9104
  loc_E46B72: Set var_88 = Me.Txt
  loc_E46B78: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E46B86: Proc_6_73_E23294(var_8C)
  loc_E46B92: Exit Sub
  loc_E46B93: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '19EA238
  'Data Table: 4D9104
  Dim var_D4 As String
  Dim var_D8 As String
  Dim unk_4D9115 As Connection15
  Dim var_E8 As Variant
  Dim var_F8 As Variant
  Dim var_C0 As Double
  Dim var_11E As Integer
  Dim Me As Recordset15
  Dim var_128 As Variant
  Dim var_12C As String
  Dim var_8C As Long
  Dim var_FC As Fields15
  Dim var_138 As Variant
  Dim var_11C As Variant
  Dim var_90 As Recordset15
  Dim var_134 As Variant
  Dim var_10C As Variant
  Dim var_15C As String
  Dim var_160 As Variant
  Dim var_1A4 As TextBox
  Dim var_A0 As Recordset15
  Dim var_158 As Variant
  Dim var_194 As Variant
  Dim var_1E8 As Variant
  Dim var_208 As Variant
  Dim var_228 As Variant
  Dim var_278 As Variant
  Dim var_2C8 As Variant
  Dim var_338 As Variant
  Dim var_3B8 As Variant
  Dim var_3D8 As Variant
  Dim var_458 As Variant
  Dim var_480 As Double
  Dim var_1F8 As Variant
  Dim var_9C As Recordset15
  Dim var_C8 As Recordset15
  Dim var_1A0 As Fields15
  Dim var_478 As Variant
  Dim var_4F0 As Variant
  Dim var_4E0 As Variant
  Dim var_A4 As Recordset15
  Dim var_57C As Double
  Dim var_298 As Variant
  Dim var_588 As Double
  Dim var_CC As Long
  Dim var_D0 As Long
  Dim var_248 As Variant
  Dim var_574 As Fields15
  Dim var_C2 As Integer
  loc_19E70B0: unk_4D9115.Execute "Select * from Enviro where LogSite_Code='" & MemVar_1F95078 & "'", var_F8, -1
  loc_19E70BB: Set var_A0 = var_FC
  loc_19E70D0: var_D4 = Proc_6_16_EF358C(var_FC)
  loc_19E70FB: var_C0 = CDate(Format(CVar(var_D4), "hh:nn"))
  loc_19E710F: var_11E = Cancel
  loc_19E711A: If (var_11E = CInt(0)) Then
  loc_19E7129:   If (global_72 = 1) Then
  loc_19E7143:     If (Me.RecordCount <= 0) Then
  loc_19E7146:       Exit Sub
  loc_19E7147:     End If
  loc_19E715E:     If (Me.AbsolutePosition < 0) Then
  loc_19E7161:       Exit Sub
  loc_19E7162:     End If
  loc_19E7168:     Me.MoveFirst
  loc_19E718B:     Set var_FC = Me.Txt
  loc_19E7191:     Call 0.Method_Txt_Validate0 (Cancel, var_128, var_D4, "roomno='", 0, 1)
  loc_19E7199:     var_E8 = var_128.Text
  loc_19E71B2:     Me.Find var_11E & var_D4 & "'", var_C0, 1
  loc_19E71D2:     If (global_60 <> vbNullString) Then
  loc_19E71FA:       var_8C = CLng(Val(CStr(Right(global_60, 8))))
  loc_19E721B:       var_D4 = "FolioNoDocid='" & global_60
  loc_19E722B:       Me.Find var_D4 & "'", 0, 1
  loc_19E723A:     Else
  loc_19E7248:       Set var_FC = Me.Txt
  loc_19E724E:       Call 0.Method_Txt_Validate0 (CInt(&HA), var_128, var_D4)
  loc_19E7256:       var_E8 = var_128.Tag
  loc_19E7264:       var_10C = Trim(CVar(var_D4))
  loc_19E7276:       var_8C = CLng(Val(CStr(var_10C)))
  loc_19E7293:       If (var_8C <> 0) Then
  loc_19E72AC:         var_D4 = CStr(var_8C)
  loc_19E72B9:         Me.Find "Foliono=" & var_D4, 0, 1
  loc_19E72C5:       End If
  loc_19E72C5:     End If
  loc_19E72C5:   End If
  loc_19E7313:   Set var_FC = Me.Txt
  loc_19E7319:   Call 0.Method_Txt_Validate0 (Cancel, var_128, var_D4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_19E7321:   var_E8 = var_128.Text
  loc_19E7339:   If (var_8C Or (var_D4 = vbNullString)) Then
  loc_19E7349:     Set var_FC = Me.Txt
  loc_19E734F:     Call 0.Method_Txt_Validate0 (Cancel, var_128, vbNullString)
  loc_19E7357:     var_128.Tag = var_8C
  loc_19E7363:     Exit Sub
  loc_19E7364:   End If
  loc_19E739F:   Set var_134 = Me.Txt
  loc_19E73A5:   Call 0.Method_Txt_Validate0 (Cancel, var_138)
  loc_19E73AD:   var_138.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_19E73FE:   Set var_134 = Me.Txt
  loc_19E7404:   Call 0.Method_Txt_Validate0 (Cancel, var_138)
  loc_19E740C:   var_138.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_19E745B:   Set var_134 = Me.Txt
  loc_19E7461:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_138)
  loc_19E7469:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_19E7480:   var_E8 = "FolioNoDocid"
  loc_19E7497:   var_128 = Me.Fields.Item(var_E8)
  loc_19E74A8:   var_D4 = Proc_6_38_E69628(CVar(var_128))
  loc_19E74B6:   Set var_134 = Me.Txt
  loc_19E74BC:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_138)
  loc_19E74C4:   var_138.Tag = var_D4
  loc_19E74DE:   Me.MoveFirst
  loc_19E7502:   Set var_FC = Me.Txt
  loc_19E7508:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128, var_D4, "FolionoDocid='")
  loc_19E7510:   0 = var_128.Tag
  loc_19E7529:   Me.Find 1 & var_D4 & "'", var_E8, 1
  loc_19E755E:   Set var_FC = Me.Txt
  loc_19E7564:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128, var_D4, "Select ChkinDAte,ChkinTime from RoomOcc where Sno=1 and Docid=")
  loc_19E756C:   var_158 = var_128.Tag
  loc_19E757A:   Proc_6_17_EAAE40(var_10C, CVar(var_D4))
  loc_19E7582:   var_11C = -1 & var_10C 
  loc_19E7590:   unk_4D9115.Execute CStr(Format(CVar(var_D4), "hh:nn")), var_134, 
  loc_19E759B:   Set var_90 = var_134
  loc_19E75C9:   If (var_90.RecordCount > 0) Then
  loc_19E75E3:     var_128 = var_90.Fields.Item("ChkInDate")
  loc_19E7602:     Set var_134 = Me.Txt
  loc_19E7608:     Call 0.Method_Txt_Validate0 (CInt(1), var_138)
  loc_19E7610:     var_138.Text = Proc_6_38_E69628(CVar(var_128))
  loc_19E762F:     Set var_FC = Me.Txt
  loc_19E7635:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_19E766F:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_128), "DDDD"))
  loc_19E76D7:     Set var_134 = Me.Txt
  loc_19E76DD:     Call 0.Method_Txt_Validate0 (CInt(2), var_138, CStr(Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChkInTime")), 1)), 2)))
  loc_19E76E5:     var_138.Text = 1
  loc_19E7753:     Set var_134 = Me.Txt
  loc_19E7759:     Call 0.Method_Txt_Validate0 (CInt(3), var_138)
  loc_19E7761:     var_138.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChkInTime")))), 2))
  loc_19E7782:   Else
  loc_19E779C:     var_128 = Me.Fields.Item("ChkInDate")
  loc_19E77BB:     Set var_134 = Me.Txt
  loc_19E77C1:     Call 0.Method_Txt_Validate0 (CInt(1), var_138)
  loc_19E77C9:     var_138.Text = Proc_6_38_E69628(CVar(var_128))
  loc_19E77E8:     Set var_FC = Me.Txt
  loc_19E77EE:     Call 0.Method_Txt_Validate0 (CInt(1), var_128)
  loc_19E7828:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_128), "DDDD"))
  loc_19E7893:     Set var_134 = Me.Txt
  loc_19E7899:     Call 0.Method_Txt_Validate0 (CInt(2), var_138, CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_19E78A1:     var_138.Text = 1
  loc_19E7912:     Set var_134 = Me.Txt
  loc_19E7918:     Call 0.Method_Txt_Validate0 (CInt(3), var_138)
  loc_19E7920:     var_138.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_19E793E:   End If
  loc_19E7977:   Set var_134 = Me.Txt
  loc_19E797D:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_138)
  loc_19E7985:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ChkOutDate")))
  loc_19E79EC:   Set var_134 = Me.Txt
  loc_19E79F2:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_138)
  loc_19E79FA:   var_138.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_19E7A6B:   Set var_134 = Me.Txt
  loc_19E7A71:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_138)
  loc_19E7A79:   var_138.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_19E7AD0:   Set var_134 = Me.Txt
  loc_19E7AD6:   Call 0.Method_Txt_Validate0 (CInt(6), var_138)
  loc_19E7ADE:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_19E7B45:   Set var_134 = Me.Txt
  loc_19E7B4B:   Call 0.Method_Txt_Validate0 (CInt(4), var_138)
  loc_19E7B53:   var_138.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_19E7BA7:   var_10C = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_19E7BC4:   Set var_134 = Me.Txt
  loc_19E7BCA:   Call 0.Method_Txt_Validate0 (CInt(5), var_138)
  loc_19E7BD2:   var_138.Text = CStr(Right(var_10C, 2))
  loc_19E7C2C:   Set var_134 = Me.Txt
  loc_19E7C32:   Call 0.Method_Txt_Validate0 (CInt(7), var_138)
  loc_19E7C3A:   var_138.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_19E7C8C:   Set var_134 = Me.Txt
  loc_19E7C92:   Call 0.Method_Txt_Validate0 (CInt(7), var_138)
  loc_19E7C9A:   var_138.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_19E7CE9:   Set var_134 = Me.Txt
  loc_19E7CEF:   Call 0.Method_Txt_Validate0 (CInt(8), var_138)
  loc_19E7CF7:   var_138.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_19E7D44:   Set var_134 = Me.Txt
  loc_19E7D4A:   Call 0.Method_Txt_Validate0 (CInt(8), var_138)
  loc_19E7D52:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_19E7D9F:   Set var_134 = Me.Txt
  loc_19E7DA5:   Call 0.Method_Txt_Validate0 (CInt(9), var_138)
  loc_19E7DAD:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("GSTIN")))
  loc_19E7DEA:   Proc_6_39_E7D3A0(var_10C, CVar(Me.Fields.Item("RoomRate")))
  loc_19E7E01:   Set var_134 = Me.Txt
  loc_19E7E07:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_138)
  loc_19E7E0F:   var_138.Text = CStr(var_10C)
  loc_19E7E60:   Set var_134 = Me.Txt
  loc_19E7E66:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_138)
  loc_19E7E6E:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_19E7EBB:   Set var_134 = Me.Txt
  loc_19E7EC1:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_138)
  loc_19E7F16:   Set var_134 = Me.Txt
  loc_19E7F1C:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_138)
  loc_19E7F24:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_19E7F71:   Set var_134 = Me.Txt
  loc_19E7F77:   Call 0.Method_Txt_Validate0 (CInt(&H1D), var_138)
  loc_19E7F7F:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_19E7FBC:   Proc_6_39_E7D3A0(var_10C, CVar(Me.Fields.Item("OldAdult")))
  loc_19E7FD3:   Set var_134 = Me.Txt
  loc_19E7FD9:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_138)
  loc_19E7FE1:   var_138.Text = CStr(var_10C)
  loc_19E8022:   Proc_6_39_E7D3A0(var_10C, CVar(Me.Fields.Item("OldChild")))
  loc_19E8039:   Set var_134 = Me.Txt
  loc_19E803F:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_138)
  loc_19E8047:   var_138.Text = CStr(var_10C)
  loc_19E8098:   Set var_134 = Me.Txt
  loc_19E809E:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_138)
  loc_19E80A6:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_19E80F3:   Set var_134 = Me.Txt
  loc_19E80F9:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_138)
  loc_19E8101:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_19E814E:   Set var_134 = Me.Txt
  loc_19E8154:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_138)
  loc_19E815C:   var_138.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments3")))
  loc_19E81B4:   Set var_134 = Me.Txt
  loc_19E81BA:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_138)
  loc_19E81C2:   var_138.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_19E821E:   Set var_134 = Me.Txt
  loc_19E8224:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_138)
  loc_19E822C:   var_138.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_19E825E:   var_128 = Me.Fields.Item("CityName")
  loc_19E827A:   var_D4 = Proc_6_38_E69628(Trim(CVar(var_128)))
  loc_19E829E:   var_138 = Me.Fields.Item("StateName")
  loc_19E82BA:   var_12C = Proc_6_38_E69628(Trim(CVar(var_138)), var_D4 & ",")
  loc_19E82DA:   var_160 = Me.Fields
  loc_19E8310:   Set var_1A0 = Me.Txt
  loc_19E8316:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_1A4)
  loc_19E831E:   var_1A4.Text = var_128 & var_12C & "," & Proc_6_38_E69628(Trim(CVar(var_160.Item("CountryName"))))
  loc_19E836E:   Set var_FC = Me.Txt
  loc_19E8374:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128, var_D4, "select max(NetPackageAmount) as PkgAmt from Plandetails where Docid='")
  loc_19E837C:   var_F8 = var_128.Tag
  loc_19E8385:   var_D8 = -1 & var_D4
  loc_19E838C:   var_15C = var_D4 & "," & "' And RoomNo='"
  loc_19E839D:   Set var_134 = Me.Txt
  loc_19E83A3:   Call 0.Method_Txt_Validate0 (CInt(0), var_138, var_12C)
  loc_19E83AB:   var_15C = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_19E83C4:   unk_4D9115.Execute var_160 & var_12C & "'", , 
  loc_19E83CF:   Set var_94 = var_160
  loc_19E8455:   Set var_134 = Me.Txt
  loc_19E845B:   Call 0.Method_Txt_Validate0 (CInt(&H19), var_138)
  loc_19E8463:   var_138.Text = Proc_6_38_E69628(Format(Trim(CVar(Me.Recordset15.Fields.Item("PkgAmt"))), "0.00"), 1)
  loc_19E8484:   Set var_90 = Nothing
  loc_19E849E:   var_128 = var_A0.Fields.Item("RoomRentChkOutPost")
  loc_19E84C0:   If (Proc_6_38_E69628(CVar(var_128)) = "Auto") Then
  loc_19E84D1:     Set var_FC = Me.Txt
  loc_19E84D7:     Call 0.Method_Txt_Validate0 (CInt(1), var_128)
  loc_19E8528:     If ((CDate(var_128.Text) <= MemVar_1F950EC) And IsNull(CVar(Me.Fields.Item("ChkOutDate")))) Then
  loc_19E8550:       var_F8 = Me.Fields.Item("ChkInDate").Value
  loc_19E856A:       For var_1B8 = CDate(var_F8) To MemVar_1F950EC: var_B0 = var_1B8 'Double
  loc_19E8584:         var_10C = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_19E8592:         Proc_6_7_F26918(var_F8, var_B0, var_10C, var_478)
  loc_19E859A:         var_11C = -1 & var_F8 
  loc_19E85E3:         Proc_6_17_EAAE40(var_1F8, CVar(Me.Fields.Item("FolioNoDocid")), "0.00" & ">=chkindate and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=")
  loc_19E8603:         Proc_6_7_F26918(var_248, var_B0, var_1A0 & var_1F8 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE ")
  loc_19E8623:         Proc_6_7_F26918(var_298, var_B0)
  loc_19E8634:         var_2C8 = CDate(var_F8) & var_248 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " & var_298 & ">=chkindate and ChngDate<=" 
  loc_19E8643:         Proc_6_7_F26918(var_2E8, var_B0)
  loc_19E867D:         var_134 = Me.Fields
  loc_19E8685:         var_138 = var_134.Item("FolioNoDocid")
  loc_19E8694:         Proc_6_17_EAAE40(var_388, CVar(var_138))
  loc_19E86A5:         var_3B8 = var_2C8 & var_2E8 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=" & var_388 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" 
  loc_19E86CE:         var_160 = Me.Fields
  loc_19E86E5:         Proc_6_17_EAAE40(var_428, CVar(var_160.Item("FolioNoDocid")))
  loc_19E8704:         unk_4D9115.Execute CStr(var_3B8 & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=" & var_428 & ")"), 1, 
  loc_19E870F:         Set var_C8 = var_1A0
  loc_19E8773:         If (CDbl(Val(global_76)) <> CDbl(0)) Then
  loc_19E87A0:           var_D8 = "select RTrim(IsNull(Max(Bill_No),'')) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F95070 & "' and FolioNoDOCID='"
  loc_19E87BD:           var_128 = Me.Fields.Item("mFolioNoDocid")
  loc_19E87C5:           var_F8 = CVar(var_128) 'Address
  loc_19E87CE:           var_12C = Proc_6_38_E69628(var_F8, var_D8, var_10C, -1, var_134)
  loc_19E87E2:           unk_4D9115.Execute var_138 & var_12C & "'", 0, var_160
  loc_19E87F2:            = var_138.Item()
  loc_19E87FA:            = var_160.Value
  loc_19E8803:           var_98 = CStr(var_134.Fields)
  loc_19E8835:           Set var_FC = Me.Txt
  loc_19E883B:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_128)
  loc_19E886E:           If (CDbl(Val(global_76)) = CDbl(Val(var_128.Text))) Then
  loc_19E887C:             Proc_6_7_F26918(var_F8, var_B0)
  loc_19E88BD:             Set var_134 = Me.Txt
  loc_19E88C3:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_138)
  loc_19E88D8:             var_480 = Val(var_138.Text)
  loc_19E88F6:             var_10C = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F95070 & "' and Vdate=") 'String
  loc_19E8918:             var_1F8 = var_10C & var_F8 & " and FolioNoDOCID='" & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("mFolioNoDocid")))) & "' And (RelatedFolioNo=" 
  loc_19E892C:             var_228 = var_1F8 & CVar(var_480) & " Or RelatedFolioNo=0)" 
  loc_19E893A:             unk_4D9115.Execute CStr(var_228), var_248, -1
  loc_19E8945:             Set var_9C = var_160
  loc_19E897A:           Else
  loc_19E8985:             Proc_6_7_F26918(var_F8, var_B0, var_160)
  loc_19E89C6:             Set var_134 = Me.Txt
  loc_19E89CC:             Call 0.Method_Txt_Validate0 (CInt(&HA), var_138)
  loc_19E89FF:             var_10C = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F95070 & "' and Vdate=") 'String
  loc_19E8A05:             var_11C = var_10C & var_F8 
  loc_19E8A18:             var_1E8 = var_11C & " and FolioNoDOCID='" & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("mFolioNoDocid")), Val(var_138.Text))) 
  loc_19E8A2C:             var_208 = var_1E8 & "' And RelatedFolioNo=" & CVar(Val(var_138.Text)) 
  loc_19E8A3A:             unk_4D9115.Execute CStr(var_208), var_228, -1
  loc_19E8A45:             Set var_9C = var_160
  loc_19E8A75:           End If
  loc_19E8A78:         Else
  loc_19E8AA2:           var_D8 = "select RTrim(IsNull(Max(Bill_No),'')) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F95070 & "' and FolioNoDOCID='"
  loc_19E8AC7:           var_F8 = CVar(Me.Fields.Item("FolioNoDocid")) 'Address
  loc_19E8AD0:           var_12C = Proc_6_38_E69628(var_F8, var_D8, var_10C, -1, var_134, var_138)
  loc_19E8AE4:           unk_4D9115.Execute 0 & CStr(var_208) & "'", var_160, var_11C
  loc_19E8AF4:           var_480 = var_138.Item(var_480)
  loc_19E8AFC:            = var_134.Fields.Value
  loc_19E8B05:           var_98 = CStr(var_11C)
  loc_19E8B44:           var_10C = CVar("select Count(*) from Paycharge where Vtype in ('RC') and Site_Code='" & MemVar_1F95070 & "' and Vdate=") 'String
  loc_19E8B52:           Proc_6_7_F26918(var_F8, var_B0, var_10C)
  loc_19E8B95:           var_1E8 = -1 & CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNoDocid")), var_208 & var_F8 & " and FolioNoDOCID='")) 
  loc_19E8B9E:           var_1F8 = var_1E8 & "'" 
  loc_19E8BAC:           unk_4D9115.Execute CStr(var_1F8), var_134, 
  loc_19E8BB7:           Set var_9C = var_134
  loc_19E8BDD:         End If
  loc_19E8BF7:         var_128 = var_9C.Fields.Item(0)
  loc_19E8BFF:         var_F8 = var_128.Value
  loc_19E8C31:         If CBool((var_F8 <= 0) And (var_98 = vbNullString)) Then
  loc_19E8C3F:           var_480 = Val(global_76)
  loc_19E8C50:           Set var_FC = Me.Txt
  loc_19E8C56:           Call 0.Method_Txt_Validate0 (CInt(&HA), var_128)
  loc_19E8C7B:           If (CDbl(Val(var_128.Text)) = CDbl(var_480)) Then
  loc_19E8C92:             var_10C = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_19E8CA0:             Proc_6_7_F26918(var_F8, var_B0, var_10C, var_570)
  loc_19E8CA8:             var_11C = -1 & var_F8 
  loc_19E8CC4:             var_194 = (var_F8 <= 0) And (var_98 = vbNullString) & ">=chkindate and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=" 
  loc_19E8CF1:             Proc_6_17_EAAE40(var_1F8, CVar(Me.Fields.Item("FolioNoDocid")), var_194)
  loc_19E8D11:             Proc_6_7_F26918(var_248, var_B0)
  loc_19E8D22:             var_278 = var_574 & var_1F8 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_248 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_19E8D31:             Proc_6_7_F26918(var_298, var_B0)
  loc_19E8D51:             Proc_6_7_F26918(var_2E8, var_B0)
  loc_19E8D6C:             var_338 = var_278 & var_298 & ">=chkindate and ChngDate<=" & var_2E8 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_19E8DA2:             Proc_6_17_EAAE40(var_388, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_19E8DBD:             var_3D8 = var_338 & "' and RoomOcc.Docid=" & var_388 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_19E8DF3:             Proc_6_17_EAAE40(var_428, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_19E8E04:             var_458 = var_3D8 & "' and RoomOcc.Docid=" & var_428 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where RoomNo='" 
  loc_19E8E17:             var_1A0 = var_C8.Fields
  loc_19E8E27:             var_478 = CVar(var_1A0.Item("RoomNo")) 'Address
  loc_19E8E4B:             Proc_6_7_F26918(var_4E0, var_B0)
  loc_19E8E53:             var_4F0 = var_480 & CVar(Proc_6_38_E69628(var_478, var_458)) & "' and VDate=" & var_4E0 
  loc_19E8E7D:             unk_4D9115.Execute CStr(var_4F0 & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F95078) & "')"), , 
  loc_19E8E88:             Set var_88 = var_574
  loc_19E8EF3:           Else
  loc_19E8F07:             var_10C = CVar("select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) " & "inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE ") 'String
  loc_19E8F15:             Proc_6_7_F26918(var_F8, var_B0, var_10C)
  loc_19E8F26:             var_158 = var_4F0 & var_F8 & ">=chkindate and Roomocc.LogSite_Code='" 
  loc_19E8F66:             Proc_6_17_EAAE40(var_1F8, CVar(Me.Fields.Item("FolioNoDocid")), var_158 & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=")
  loc_19E8F6E:             var_208 = -1 & var_1F8 
  loc_19E8F86:             Proc_6_7_F26918(var_248, var_B0)
  loc_19E8F97:             var_278 = var_574 & var_1F8 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_248 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_19E8FA6:             Proc_6_7_F26918(var_298, var_B0)
  loc_19E8FC6:             Proc_6_7_F26918(var_2E8, var_B0)
  loc_19E8FE1:             var_338 = var_278 & var_298 & ">=chkindate and ChngDate<=" & var_2E8 & " and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_19E9000:             var_134 = Me.Fields
  loc_19E9017:             Proc_6_17_EAAE40(var_388, CVar(var_134.Item("FolioNoDocid")))
  loc_19E9032:             var_3D8 = var_338 & "' and RoomOcc.Docid=" & var_388 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) 
  loc_19E9068:             Proc_6_17_EAAE40(var_428, CVar(Me.Fields.Item("FolioNoDocid")))
  loc_19E9079:             var_458 = var_3D8 & "' and RoomOcc.Docid=" & var_428 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where VDate=" 
  loc_19E9088:             Proc_6_7_F26918(var_478, var_B0)
  loc_19E90BA:             unk_4D9115.Execute CStr(var_458 & var_478 & " AND VType in ('RC') and LogSite_Code='" & CVar(MemVar_1F95078) & "')"), var_1A0, 
  loc_19E90C5:             Set var_88 = var_1A0
  loc_19E9123:           End If
  loc_19E913A:           If (Me.Recordset15.RecordCount > 0) Then
  loc_19E9193:             unk_4D9115.Execute CStr("Select * from RoomOcc Where DocId='" & Me.Recordset15.Fields.Item("DocID").Value & "' And SNo=1"), var_158, -1
  loc_19E919E:             Set var_A4 = var_134
  loc_19E91F1:             If (Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckOut"))) = "24 Hrs") Then
  loc_19E92A2:               Proc_96_11_EFA968(CDate(Format(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkInTime")))), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("variation")), 1)), "hh:nn")), 1)
  loc_19E9354:               var_480 = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkInTime")), 1)), "nn")))
  loc_19E93B1:               var_57C = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("variation")), var_480, 1)), "hh")))
  loc_19E940E:               var_588 = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("variation")), var_57C, 1)), "nn")))
  loc_19E9455:               var_CC = CLng(((((Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkInTime")), 1)), "hh"))) * CDbl(&H3C)) + var_480) + (var_57C * CDbl(&H3C))) + var_588))
  loc_19E949C:             Else
  loc_19E954A:               Proc_96_11_EFA968(CDate(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckoutVar")), var_CC, 1, 1, var_588)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("variation")), 1, 1, 1)), "hh:nn")), 1, 1)
  loc_19E95FC:               var_480 = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckoutVar")), 1)), "nn")))
  loc_19E9659:               var_57C = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("variation")), var_480, 1)), "hh")))
  loc_19E96B6:               var_588 = Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("variation")), var_57C, 1)), "nn")))
  loc_19E96FD:               var_CC = CLng(((((Val(CStr(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckoutVar")), 1, 1)), "hh"))) * CDbl(&H3C)) + var_480) + (var_57C * CDbl(&H3C))) + var_588))
  loc_19E9741:             End If
  loc_19E9783:             var_158 = CVar(FormatDateTime(var_C0, 4)) 'String
  loc_19E979A:             var_480 = Val(CStr(Format(var_158, "nn")))
  loc_19E97BB:             var_11C = Format(CVar(FormatDateTime(var_C0, 4)), "hh")
  loc_19E97D5:             var_D0 = CLng(((Val(CStr(var_11C)) * CDbl(&H3C)) + var_480))
  loc_19E982B:             If (Proc_6_38_E69628(CVar(var_A0.Fields.Item("RoomRentChkOutPost")), var_D0, 1, 1, var_480, 1, 1) = "Auto") Then
  loc_19E982E:               GoTo loc_19E98FD
  loc_19E9831:             End If
  loc_19E9850:             var_10C = CVar(var_A4.Fields.Item("ChkInDate")) 'Address
  loc_19E98C0:             If ((((Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckOut")), var_588) = "24 Hrs") And (var_B0 = MemVar_1F950EC)) And (var_B0 <> CDate(Proc_6_38_E69628(var_10C, var_CC, 1, 1)))) And (var_CC >= var_D0)) Then
  loc_19E98C3:               GoTo loc_19EA1EA
  loc_19E98C6:             End If
  loc_19E98FA:             If (MsgBox("Want to Post Charges for " & CDate(var_B0), &H24, var_10C, var_11C, var_158) = 6) Then
  loc_19E98FD:               ' Referenced from: 19E982E
  loc_19E9955:               var_D8 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckOut")), 1) = "Other"))
  loc_19E9973:               If (1 And (var_D8 = "Yes")) Then
  loc_19E9985:                 var_FC = var_A4.Fields
  loc_19E99C0:                 var_10C = CVar(var_A0.Fields.Item("CheckoutVar")) 'Address
  loc_19E9AA9:                 Proc_96_12_F0A130(CDate(Format(CVar(Proc_6_38_E69628(var_10C)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("VariationBefore")), 1)), "hh:nn")), (var_B0 = CDate(Proc_6_38_E69628(CVar(var_FC.Item("ChkInDate"))))), 1)
  loc_19E9AF0:                 If (1 And (1 > CDate(Format(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkInTime")), 1)), "hh:nn")))) Then
  loc_19E9B1B:                   unk_4D9115.Execute CStr(Me.Recordset15.Source), var_10C, -1
  loc_19E9B89:                   Proc_96_4_1C1E774(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_FC, 0, "*", 0)
  loc_19E9B9E:                 End If
  loc_19E9B9E:               End If
  loc_19E9BAD:               If ((var_B0 = MemVar_1F950EC) And (var_CC >= var_D0)) Then
  loc_19E9BBF:                 var_FC = var_A0.Fields
  loc_19E9C08:                 var_D8 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckOut")), (Proc_6_38_E69628(CVar(var_FC.Item("RoomRentChkOutPost")), 1, 1) = "Semi"))
  loc_19E9C5D:                 If (1 And (Proc_6_38_E69628(CVar(var_A0.Fields.Item("RoomRentBefChkOut")), (var_FC And (var_D8 = "Other"))) <> "Yes")) Then
  loc_19E9C8A:                   var_15C = 0
  loc_19E9CB7:                   Proc_96_4_1C1E774(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*")
  loc_19E9CCF:                 Else
  loc_19E9D52:                   var_D8 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckOut")), (Proc_6_38_E69628(CVar(var_A0.Fields.Item("RoomRentChkOutPost")), 1) = "Auto"))
  loc_19E9DBC:                   If (((1 And (var_D8 = "Other")) And (Proc_6_38_E69628(CVar(var_A0.Fields.Item("RoomRentBefChkOut"))) <> "Yes")) And (var_B0 = CDate(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkInDate")), var_15C)))) Then
  loc_19E9DE9:                     var_15C = 0
  loc_19E9E16:                     Proc_96_4_1C1E774(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*")
  loc_19E9E2E:                   Else
  loc_19E9F9B:                     var_D8 = Proc_6_38_E69628(CVar(var_A0.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckOut")), 1, 1) = "Other"))
  loc_19E9FC3:                     Proc_96_12_F0A130(CDate(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckoutVar")), 1)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_A0.Fields.Item("VariationBefore")), 1)), "hh:nn")))
  loc_19EA016:                     If (1 And (((1 And (var_D8 = "Yes")) And (var_B0 = CDate(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkInDate")), Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkInDate")), var_15C))))) <= CDate(Format(CVar(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkInTime")), 1, 1)), "hh:nn")))) Then
  loc_19EA043:                       var_15C = 0
  loc_19EA070:                       Proc_96_4_1C1E774(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*")
  loc_19EA088:                     Else
  loc_19EA107:                       If ((Proc_6_38_E69628(CVar(var_A0.Fields.Item("CheckOut")), 1) = "24 Hrs") And (var_B0 = CDate(Proc_6_38_E69628(CVar(var_A4.Fields.Item("ChkInDate")), var_15C)))) Then
  loc_19EA134:                         var_15C = 0
  loc_19EA161:                         Proc_96_4_1C1E774(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*")
  loc_19EA176:                       End If
  loc_19EA176:                     End If
  loc_19EA176:                   End If
  loc_19EA176:                 End If
  loc_19EA179:               Else
  loc_19EA1D0:                 Proc_96_4_1C1E774(CDate(Format$(var_B0, "dd/MMM/yyyy")), var_88, 0, "*", 0, 1)
  loc_19EA1E5:               End If
  loc_19EA1E7:               var_C2 = &HFF
  loc_19EA1EA:               ' Referenced from: 19E98C3
  loc_19EA1EA:             End If
  loc_19EA1EA:           End If
  loc_19EA1EA:         End If
  loc_19EA1ED:       Next var_1B8 'Double
  loc_19EA1F7:       Set var_9C = Nothing
  loc_19EA1FF:       Set var_C8 = Nothing
  loc_19EA202:     End If
  loc_19EA202:   End If
  loc_19EA202:   Call Proc_63_39_1353D38()
  loc_19EA207:   Call Proc_63_38_140DCA4()
  loc_19EA20C: End If
  loc_19EA211: Set var_94 = Nothing
  loc_19EA219: Set var_A4 = Nothing
  loc_19EA221: Set var_A0 = Nothing
  loc_19EA229: Set var_A8 = Nothing
  loc_19EA231: Set var_88 = Nothing
  loc_19EA234: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_9 'F408D4
  'Data Table: 4D9104
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F407CB: Me.DGChrgPayment.Visible = False
  loc_F407EA: If (Me.RecordCount > 0) Then
  loc_F40829:   Set var_B4 = Me.Txt
  loc_F4082F:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F40837:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4086A:   var_B0 = Me.Fields.Item("Name")
  loc_F40889:   Set var_B4 = Me.Txt
  loc_F4088F:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F40897:   var_B8.Text = CStr(var_B0.Value)
  loc_F408AD: End If
  loc_F408B8: Set var_A8 = Me.Txt
  loc_F408BE: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB))
  loc_F408C6: var_B0.SetFocus
  loc_F408D2: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F3E934
  'Data Table: 4D9104
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3E82B: Me.DGRoomNo.Visible = False
  loc_F3E84A: If (Me.RecordCount > 0) Then
  loc_F3E889:   Set var_B4 = Me.Txt
  loc_F3E88F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E897:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F3E8CA:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F3E8E9:   Set var_B4 = Me.Txt
  loc_F3E8EF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F3E8F7:   var_B8.Text = CStr(var_B0.Value)
  loc_F3E90D: End If
  loc_F3E918: Set var_A8 = Me.Txt
  loc_F3E91E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F3E926: var_B0.SetFocus
  loc_F3E932: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9AAE0
  'Data Table: 4D9104
  Dim var_A8 As Variant
  loc_E9AA64: Set var_88 = Me.DGRoomNo
  loc_E9AA8E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9AA96: Set var_BC = Me.DGRoomNo
  loc_E9AAD0: Proc_6_138_106E830(Me.DGRoomNo, global_100, 0, Me.FGPoint)
  loc_E9AADE: Exit Sub
End Sub

Public Function MasterFormExitGet() '4DA38C
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4DA39B
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4DA3AA
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4DA3B9
  mVType = Value
End Sub

Public Function global_60Get() '4DA3C8
  global_60Get = global_60
End Function

Public Sub global_60Put(Value) '4DA3D7
  global_60 = Value
End Sub

Public Property Get OpenMode() 'E04DD0
  'Data Table: 4D9104
  loc_E04DC9: OpenMode = global_72
End Sub

Public Property Let OpenMode(vNewValue) 'E01E64
  'Data Table: 4D9104
  loc_E01E5E: global_72 = vNewValue
  loc_E01E61: Exit Sub
  loc_E01E62: global_72 = 
End Sub

Public Property Get mFolioNo() 'E0FB4C
  'Data Table: 4D9104
  loc_E0FB42: var_88 = CStr(global_72)
  loc_E0FB45: mFolioNo = 
End Sub

Public Property Let mFolioNo(vNewValue) 'E0FB94
  'Data Table: 4D9104
  loc_E0FB8C: global_76 = vNewValue
  loc_E0FB90: Exit Sub
End Sub

Public Sub Proc_63_34_1015E4C(arg_C) '1015E4C
  'Data Table: 4D9104
  Dim var_9C As Variant
  Dim var_D0 As String
  Dim unk_4D9115 As Connection15
  Dim var_F4 As Variant
  Dim var_F8 As Fields15
  Dim var_11E As Integer
  Dim var_AC As Variant
  Dim var_E0 As Byte
  Dim var_F0 As Variant
  loc_1015C71: Proc_6_17_EAAE40(var_AC, MemVar_1F95078, "Select RcptPrinting From Enviro WHERE LOGSITE_CODE=", var_F0, -1)
  loc_1015C7D: var_D0 = CStr(var_F4 & var_AC)
  loc_1015C87: unk_4D9115.Execute var_D0, var_F8, 0
  loc_1015C97:  = var_F8.Item()
  loc_1015CC7: Call 0.Method_arg_A4 (CInt(&HB))
  loc_1015CCF: var_11E = arg_C
  loc_1015CD8: If (var_11E = 0) Then
  loc_1015CE7:   var_F4 = Me.Global.Screen
  loc_1015D18:   If (Screen.ActiveForm.FGrid.rows > 1) Then
  loc_1015D1F:     Set var_F4 = (var_11E)
  loc_1015D25:     var_AC = var_AC.FRectGrid.Row
  loc_1015D46:     var_F8 = Me.var_AC.Screen
  loc_1015D4E:     var_10C = Screen.ActiveForm
  loc_1015D5B:     VarLateMemCallLdRfVar
  loc_1015D8A:     If CBool(Trim(var_10C.FGrid) <> vbNullString) Then
  loc_1015D91:       Set var_F4 = CVar(CLng(var_AC))(7)
  loc_1015D97:       var_AC = var_10C.FRectGrid.Row
  loc_1015DA0:       var_9C = CVar(CLng(var_AC)) 'Long
  loc_1015DA5:       var_E0 = 7
  loc_1015DB8:       var_F8 = Me.var_AC.Screen
  loc_1015DCD:       var_F0 = Screen.ActiveForm.FGrid.TextMatrix
  loc_1015DDD:       Call 0.Method_arg_50 (var_D0, var_F0)
  loc_1015DF4:       Proc_146_1_1334D58(CStr(var_F0), Proc_6_38_E69628(CVar(var_F4.Fields)), var_D0)
  loc_1015E12:     End If
  loc_1015E12:   End If
  loc_1015E12: End If
  loc_1015E21: Me.FRectGrid.Visible = False
  loc_1015E30: Call 0.Method_arg_A4 (CInt(0), var_E0)
  loc_1015E42: Me.Me.Unload Me
  loc_1015E4A: Exit Sub
End Sub

Public Sub Proc_63_35_E77704(arg_C) 'E77704
  'Data Table: 4D9104
  Dim var_98 As TextBox
  loc_E776B2: Set var_8C = Me.Txt
  loc_E776B8: Call 0.Method_Proc_63_35_E777048 (var_8E, var_86)
  loc_E776C8: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E776DE:   Set var_8C = Me.Txt
  loc_E776E4:   Call 0.Method_Proc_63_35_E777040 (CInt(var_86), var_98)
  loc_E776EC:   var_98.Enabled = arg_C
  loc_E776FB: Next var_92 'Byte
  loc_E77701: Exit Sub
  loc_E77702: Set var_7400 = 
End Sub

Public Sub Proc_63_36_ECBB68
  'Data Table: 4D9104
  Dim var_98 As TextBox
  loc_ECBAC6: Set var_8C = Me.Txt
  loc_ECBACC: Call 0.Method_Proc_63_36_ECBB688 (var_8E, var_86)
  loc_ECBADC: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_ECBAFF:   If (((CInt(var_86) <> &H17) And (CInt(var_86) <> &H18)) And (CInt(var_86) <> &H19)) Then
  loc_ECBB12:     Set var_8C = Me.Txt
  loc_ECBB18:     Call 0.Method_Proc_63_36_ECBB680 (CInt(var_86), var_98)
  loc_ECBB20:     var_98.Text = vbNullString
  loc_ECBB3C:     Set var_8C = Me.Txt
  loc_ECBB42:     Call 0.Method_Proc_63_36_ECBB680 (CInt(var_86), var_98)
  loc_ECBB4A:     var_98.Tag = vbNullString
  loc_ECBB56:   End If
  loc_ECBB59: Next var_92 'Byte
  loc_ECBB5F: Call Proc_63_39_1353D38()
  loc_ECBB64: Exit Sub
End Sub

Public Sub Proc_63_37_EBD254
  'Data Table: 4D9104
  loc_EBD1CC: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBD1DE:   Me.DGRoomNo.Visible = False
  loc_EBD1E6: End If
  loc_EBD202: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EBD214:   Me.DGChrgPayment.Visible = False
  loc_EBD21C: End If
  loc_EBD238: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBD24A:   Me.FGPoint.Visible = False
  loc_EBD252: End If
  loc_EBD252: Exit Sub
End Sub

Public Sub Proc_63_38_140DCA4
  'Data Table: 4D9104
  Dim var_A4 As Variant
  Dim var_AC As String
  Dim unk_4D9115 As Connection15
  Dim var_C0 As Variant
  Dim var_A0 As Variant
  Dim var_8C As Recordset15
  Dim var_D4 As MSHFlexGrid
  Dim var_100 As Variant
  Dim var_E8 As Variant
  Dim var_120 As Variant
  Dim var_D0 As Variant
  Dim var_140 As Variant
  Dim var_160 As Variant
  Dim var_110 As Variant
  Dim var_130 As Variant
  Dim var_170 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_F0 As MSHFlexGrid
  Dim var_A8 As String
  Dim var_150 As Long
  Dim var_1A0 As Variant
  Dim var_1C0 As Variant
  loc_140D26E: Set var_A0 = Me.Txt
  loc_140D274: Call 0.Method_Proc_63_38_140DCA40 (CInt(&HA), var_A4, var_A8, "Select P.*,Case When D.OutletYN='Y' Then 'Outlet' When P.PlanCharge<>'Yes' And P.Vtype='REV' Then P.Vtype End CType from Paycharge P Left Join Depart D On P.RestCode=D.Code where (P.ContraDocId is NULL or P.Contradocid='') and P.FolionoDocid='")
  loc_140D27C: var_D0 = var_A4.Tag
  loc_140D285: var_AC = -1 & var_A8
  loc_140D295: unk_4D9115.Execute var_AC & "' Order By P.VDate,P.VTIME,P.VNO,P.SNO", var_D4, 
  loc_140D2A0: Set var_8C = var_D4
  loc_140D2CF: If (Me.Recordset15.RecordCount = 0) Then
  loc_140D2E5:   Me.FGrid.Rows = 2
  loc_140D2ED:   Exit Sub
  loc_140D2EE: End If
  loc_140D305: var_C0 = CVar((var_8C.RecordCount + 2)) 'Long
  loc_140D314: Me.FGrid.Rows = 2
  loc_140D329: Set var_A0 = Me.FGrid
  loc_140D32F: var_A0.Row = 1
  loc_140D337: ' Referenced from: 140DAEE
  loc_140D349: If Not(Me.var_A0.EOF) Then
  loc_140D350:   Set var_F0 = Me.FGrid
  loc_140D35D:   var_100 = Me.FGrid.Row
  loc_140D366:   var_E8 = CVar(CLng(var_100)) 'Long
  loc_140D39E:   var_140 = CVar(Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("VDate")), CVar(CLng(1)))) 'String
  loc_140D3A5:   LateIdCallSt
  loc_140D3C7:   var_D0 = Me.FGrid.Row
  loc_140D3D0:   var_E8 = CVar(CLng(var_D0)) 'Long
  loc_140D3D8:   var_120 = CVar(CLng(2)) 'Long
  loc_140D40B:   var_140 = CVar(CStr(Me.var_D0.Fields.Item("Comments").Value)) 'String
  loc_140D412:   LateIdCallSt
  loc_140D455:   var_160 = Me.FGrid.Row
  loc_140D45E:   var_110 = CVar(CLng(var_160)) 'Long
  loc_140D466:   var_130 = CVar(CLng(3)) 'Long
  loc_140D493:   var_170 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_140D49A:   LateIdCallSt
  loc_140D4DF:   var_160 = Me.FGrid.Row
  loc_140D504:   var_100 = "0.00"
  loc_140D524:   LateIdCallSt
  loc_140D570:   Proc_6_39_E7D3A0(var_100, CVar(Me.var_160.Fields.Item("AmtDr")), CVar(var_94), var_F0, CVar(CStr(Format(CVar(Me.var_160.Fields.Item("AmtCr")), var_100))), 1, 1)
  loc_140D578:   var_140 = (CVar(CLng(4)) + var_100)
  loc_140D57D:   var_94 = CSng(Format(CVar(Me.var_160.Fields.Item("AmtCr")), var_100))
  loc_140D5BC:   Proc_6_39_E7D3A0(var_100, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_160)))
  loc_140D5C4:   var_140 = (var_F0 + var_100)
  loc_140D5C9:   var_9C = CSng(Format(CVar(Me.var_160.Fields.Item("AmtCr")), var_100))
  loc_140D5EB:   var_110 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140D5F3:   var_130 = CVar(CLng(5)) 'Long
  loc_140D615:   var_D0 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_140D625:   var_170 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_140D62C:   LateIdCallSt
  loc_140D650:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_140D666:     var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140D66E:     var_110 = CVar(CLng(6)) 'Long
  loc_140D673:     var_130 = "Dr"
  loc_140D67C:     LateIdCallSt
  loc_140D68D:   Else
  loc_140D699:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_140D6AF:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140D6B7:       var_110 = CVar(CLng(6)) 'Long
  loc_140D6BC:       var_130 = "Cr"
  loc_140D6C5:       LateIdCallSt
  loc_140D6D6:     Else
  loc_140D6E9:       var_C0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_140D6F1:       var_110 = CVar(CLng(6)) 'Long
  loc_140D6F6:       var_130 = vbNullString
  loc_140D6FF:       LateIdCallSt
  loc_140D70D:     End If
  loc_140D70D:   End If
  loc_140D717:   var_D0 = Me.FGrid.Row
  loc_140D720:   var_E8 = CVar(CLng(var_D0)) 'Long
  loc_140D728:   var_120 = CVar(CLng(7)) 'Long
  loc_140D75B:   var_140 = CVar(CStr(Me.var_D0.Fields.Item("DocID").Value)) 'String
  loc_140D762:   LateIdCallSt
  loc_140D786:   var_D0 = Me.FGrid.Row
  loc_140D78F:   var_E8 = CVar(CLng(var_D0)) 'Long
  loc_140D797:   var_120 = CVar(CLng(8)) 'Long
  loc_140D7CA:   var_140 = CVar(CStr(Me.var_D0.Fields.Item("SNo").Value)) 'String
  loc_140D7D1:   LateIdCallSt
  loc_140D7F5:   var_100 = Me.FGrid.Row
  loc_140D836:   var_140 = CVar(Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(var_100)), var_F0, var_140, CVar(CLng(9)), CVar(CLng(var_100)))) 'String
  loc_140D83D:   LateIdCallSt
  loc_140D85F:   var_100 = Me.FGrid.Row
  loc_140D8A0:   var_140 = CVar(Proc_6_38_E69628(CVar(Me.var_100.Fields.Item("CType")), CVar(CLng(&HA)), CVar(CLng(var_100)), var_F0, var_140, var_F0)) 'String
  loc_140D8A7:   LateIdCallSt
  loc_140D8E8:   Proc_6_39_E7D3A0(var_100, CVar(Me.Recordset15.Fields.Item("AmtCr")), var_F0, var_140, var_140)
  loc_140D902:   If (var_100 > 0) Then
  loc_140D92A:     For var_184 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)): var_86 = var_184 'Integer
  loc_140D93C:       var_F0.Col = CVar(CLng(var_86))
  loc_140D957:       var_F0.CellBackColor = CVar(RGB(250, 150, 250))
  loc_140D95F:     Next var_184 'Integer
  loc_140D967:   Else
  loc_140D9A3:     If (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CType"))) = "Outlet") Then
  loc_140D9CB:       For var_188 = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):   var_86 = var_188 'Integer
  loc_140D9DD:         var_F0.Col = CVar(CLng(var_86))
  loc_140D9F8:         var_F0.CellBackColor = CVar(RGB(150, 250, 250))
  loc_140DA00:       Next var_188 'Integer
  loc_140DA08:     Else
  loc_140DA44:       If (Proc_6_38_E69628(CVar(Me.Recordset15.Fields.Item("CType"))) = "REV") Then
  loc_140DA6C:         For var_18C = 0 To CInt((CLng(Me.FGrid.Cols) - 1)):     var_86 = var_18C 'Integer
  loc_140DA7E:           var_F0.Col = CVar(CLng(var_86))
  loc_140DA99:           var_F0.CellBackColor = CVar(RGB(250, 250, 150))
  loc_140DAA1:         Next var_18C 'Integer
  loc_140DAA6:       End If
  loc_140DAA6:     End If
  loc_140DAA6:   End If
  loc_140DAA8:   Set var_F0 = Nothing 
  loc_140DAC5:   var_C0 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_140DACE:   Set var_A4 = Me.FGrid
  loc_140DAD4:   var_A4.Row = CVar(RGB(250, 250, 150))
  loc_140DAE9:   Me.var_A4.MoveNext
  loc_140DAEE:   GoTo loc_140D337
  loc_140DAF1: End If
  loc_140DB04: Me.FGrid.FixedRows = 1
  loc_140DB10: Set var_190 = Me.Fgrid1
  loc_140DB13: var_110 = 0
  loc_140DB1F: var_130 = CVar(CLng(1)) 'Long
  loc_140DB4D: var_140 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_140DB54: LateIdCallSt
  loc_140DB65: var_110 = 0
  loc_140DB71: var_130 = CVar(CLng(2)) 'Long
  loc_140DB9F: var_140 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_140DBA6: LateIdCallSt
  loc_140DBB7: var_110 = 0
  loc_140DBC3: var_130 = CVar(CLng(3)) 'Long
  loc_140DBE5: var_D0 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_140DBF5: var_160 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_140DBFC: LateIdCallSt
  loc_140DC0F: var_150 = 0
  loc_140DC1B: var_1A0 = CVar(CLng(4)) 'Long
  loc_140DC42: var_C0 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_140DC68: var_120 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_140DC78: var_1C0 = CVar(CStr(IIf(CVar(CLng(&HA)), "Dr", IIf(var_9C, "Cr", vbNullString)))) 'String
  loc_140DC7F: LateIdCallSt
  loc_140DC9C: Set var_190 = Nothing 
  loc_140DCA0: Exit Sub
End Sub

Public Sub Proc_63_39_1353D38
  'Data Table: 4D9104
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_1353510: Set var_90 = Me.FGrid
  loc_1353526: Me.FGrid.Rows = 1
  loc_1353542: global_64 = CStr(CLng(var_90.BackColor))
  loc_1353558: var_90.Cols = &HB
  loc_135355D: var_A0 = 0
  loc_1353569: var_D8 = CVar(CLng(0)) 'Long
  loc_135356E: var_F8 = "SNo"
  loc_1353577: LateIdCallSt
  loc_1353582: var_A0 = CVar(CLng(0)) 'Long
  loc_1353587: var_D8 = 0
  loc_1353593: LateIdCallSt
  loc_135359B: var_A0 = 0
  loc_13535A7: var_D8 = CVar(CLng(1)) 'Long
  loc_13535AC: var_F8 = "Date"
  loc_13535B5: LateIdCallSt
  loc_13535C0: var_A0 = CVar(CLng(1)) 'Long
  loc_13535CB: var_D8 = CVar(CInt(1)) 'Integer
  loc_13535D2: LateIdCallSt
  loc_13535DD: var_A0 = CVar(CLng(1)) 'Long
  loc_13535E8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13535EF: LateIdCallSt
  loc_13535FA: var_A0 = CVar(CLng(1)) 'Long
  loc_13535FF: var_D8 = &H4B0
  loc_135360B: LateIdCallSt
  loc_1353613: var_A0 = 0
  loc_135361F: var_D8 = CVar(CLng(2)) 'Long
  loc_1353624: var_F8 = "Particulars"
  loc_135362D: LateIdCallSt
  loc_1353638: var_A0 = CVar(CLng(2)) 'Long
  loc_1353643: var_D8 = CVar(CInt(1)) 'Integer
  loc_135364A: LateIdCallSt
  loc_1353655: var_A0 = CVar(CLng(2)) 'Long
  loc_1353660: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353667: LateIdCallSt
  loc_1353672: var_A0 = CVar(CLng(2)) 'Long
  loc_1353677: var_D8 = &HBB8
  loc_1353683: LateIdCallSt
  loc_135368B: var_A0 = 0
  loc_1353697: var_D8 = CVar(CLng(3)) 'Long
  loc_135369C: var_F8 = "Debit"
  loc_13536A5: LateIdCallSt
  loc_13536B0: var_A0 = CVar(CLng(3)) 'Long
  loc_13536BB: var_D8 = CVar(CInt(7)) 'Integer
  loc_13536C2: LateIdCallSt
  loc_13536CD: var_A0 = CVar(CLng(3)) 'Long
  loc_13536D8: var_D8 = CVar(CInt(7)) 'Integer
  loc_13536DF: LateIdCallSt
  loc_13536EA: var_A0 = CVar(CLng(3)) 'Long
  loc_13536EF: var_D8 = &H3E8
  loc_13536FB: LateIdCallSt
  loc_1353703: var_A0 = 0
  loc_135370F: var_D8 = CVar(CLng(4)) 'Long
  loc_1353714: var_F8 = "Credit"
  loc_135371D: LateIdCallSt
  loc_1353728: var_A0 = CVar(CLng(4)) 'Long
  loc_1353733: var_D8 = CVar(CInt(7)) 'Integer
  loc_135373A: LateIdCallSt
  loc_1353745: var_A0 = CVar(CLng(4)) 'Long
  loc_1353750: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353757: LateIdCallSt
  loc_1353762: var_A0 = CVar(CLng(4)) 'Long
  loc_1353767: var_D8 = &H3E8
  loc_1353773: LateIdCallSt
  loc_135377B: var_A0 = 0
  loc_1353787: var_D8 = CVar(CLng(5)) 'Long
  loc_135378C: var_F8 = "Balance"
  loc_1353795: LateIdCallSt
  loc_13537A0: var_A0 = CVar(CLng(5)) 'Long
  loc_13537AB: var_D8 = CVar(CInt(7)) 'Integer
  loc_13537B2: LateIdCallSt
  loc_13537BD: var_A0 = CVar(CLng(5)) 'Long
  loc_13537C8: var_D8 = CVar(CInt(7)) 'Integer
  loc_13537CF: LateIdCallSt
  loc_13537DA: var_A0 = CVar(CLng(5)) 'Long
  loc_13537DF: var_D8 = &H3E8
  loc_13537EB: LateIdCallSt
  loc_13537F3: var_A0 = 0
  loc_13537FF: var_D8 = CVar(CLng(6)) 'Long
  loc_1353804: var_F8 = vbNullString
  loc_135380D: LateIdCallSt
  loc_1353818: var_A0 = CVar(CLng(6)) 'Long
  loc_1353823: var_D8 = CVar(CInt(1)) 'Integer
  loc_135382A: LateIdCallSt
  loc_1353835: var_A0 = CVar(CLng(6)) 'Long
  loc_1353840: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353847: LateIdCallSt
  loc_1353852: var_A0 = CVar(CLng(6)) 'Long
  loc_1353857: var_D8 = &H12C
  loc_1353863: LateIdCallSt
  loc_135386B: var_A0 = 0
  loc_1353877: var_D8 = CVar(CLng(7)) 'Long
  loc_135387C: var_F8 = vbNullString
  loc_1353885: LateIdCallSt
  loc_1353890: var_A0 = CVar(CLng(7)) 'Long
  loc_135389B: var_D8 = CVar(CInt(1)) 'Integer
  loc_13538A2: LateIdCallSt
  loc_13538AD: var_A0 = CVar(CLng(7)) 'Long
  loc_13538B8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13538BF: LateIdCallSt
  loc_13538CA: var_A0 = CVar(CLng(7)) 'Long
  loc_13538CF: var_D8 = 0
  loc_13538DB: LateIdCallSt
  loc_13538E3: var_A0 = 0
  loc_13538EF: var_D8 = CVar(CLng(8)) 'Long
  loc_13538F4: var_F8 = vbNullString
  loc_13538FD: LateIdCallSt
  loc_1353908: var_A0 = CVar(CLng(8)) 'Long
  loc_1353913: var_D8 = CVar(CInt(1)) 'Integer
  loc_135391A: LateIdCallSt
  loc_1353925: var_A0 = CVar(CLng(8)) 'Long
  loc_1353930: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353937: LateIdCallSt
  loc_1353942: var_A0 = CVar(CLng(8)) 'Long
  loc_1353947: var_D8 = 0
  loc_1353953: LateIdCallSt
  loc_135395B: var_A0 = 0
  loc_1353967: var_D8 = CVar(CLng(9)) 'Long
  loc_135396C: var_F8 = "User"
  loc_1353975: LateIdCallSt
  loc_1353980: var_A0 = CVar(CLng(9)) 'Long
  loc_135398B: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353992: LateIdCallSt
  loc_135399D: var_A0 = CVar(CLng(9)) 'Long
  loc_13539A8: var_D8 = CVar(CInt(1)) 'Integer
  loc_13539AF: LateIdCallSt
  loc_13539BA: var_A0 = CVar(CLng(9)) 'Long
  loc_13539BF: var_D8 = &H2EE
  loc_13539CB: LateIdCallSt
  loc_13539D3: var_A0 = 0
  loc_13539DF: var_D8 = CVar(CLng(&HA)) 'Long
  loc_13539E4: var_F8 = vbNullString
  loc_13539ED: LateIdCallSt
  loc_13539F8: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1353A03: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353A0A: LateIdCallSt
  loc_1353A15: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1353A20: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353A27: LateIdCallSt
  loc_1353A32: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1353A37: var_D8 = 0
  loc_1353A43: LateIdCallSt
  loc_1353A4B: var_A0 = vbNullString
  loc_1353A55: Set var_B4 = Me.FGrid
  loc_1353A79: Me.FGrid.FixedRows = 1
  loc_1353A83: Set var_90 = Nothing 
  loc_1353A8B: Set var_10C = Me.Fgrid1
  loc_1353AA1: Me.Fgrid1.Rows = 1
  loc_1353ABD: global_64 = CStr(CLng(var_10C.BackColor))
  loc_1353AD3: var_10C.Cols = 5
  loc_1353AD8: var_A0 = 0
  loc_1353AE4: var_D8 = CVar(CLng(0)) 'Long
  loc_1353AE9: var_F8 = "Total :"
  loc_1353AF2: LateIdCallSt
  loc_1353AFD: var_A0 = CVar(CLng(0)) 'Long
  loc_1353B08: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353B0F: LateIdCallSt
  loc_1353B1A: var_A0 = CVar(CLng(0)) 'Long
  loc_1353B25: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353B2C: LateIdCallSt
  loc_1353B37: var_A0 = CVar(CLng(0)) 'Long
  loc_1353B3C: var_D8 = &H109A
  loc_1353B48: LateIdCallSt
  loc_1353B50: var_A0 = 0
  loc_1353B5C: var_D8 = CVar(CLng(1)) 'Long
  loc_1353B61: var_F8 = vbNullString
  loc_1353B6A: LateIdCallSt
  loc_1353B75: var_A0 = CVar(CLng(1)) 'Long
  loc_1353B80: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353B87: LateIdCallSt
  loc_1353B92: var_A0 = CVar(CLng(1)) 'Long
  loc_1353B9D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353BA4: LateIdCallSt
  loc_1353BAF: var_A0 = CVar(CLng(1)) 'Long
  loc_1353BB4: var_D8 = &H3E8
  loc_1353BC0: LateIdCallSt
  loc_1353BC8: var_A0 = 0
  loc_1353BD4: var_D8 = CVar(CLng(2)) 'Long
  loc_1353BD9: var_F8 = vbNullString
  loc_1353BE2: LateIdCallSt
  loc_1353BED: var_A0 = CVar(CLng(2)) 'Long
  loc_1353BF8: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353BFF: LateIdCallSt
  loc_1353C0A: var_A0 = CVar(CLng(2)) 'Long
  loc_1353C15: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353C1C: LateIdCallSt
  loc_1353C27: var_A0 = CVar(CLng(2)) 'Long
  loc_1353C2C: var_D8 = &H3E8
  loc_1353C38: LateIdCallSt
  loc_1353C40: var_A0 = 0
  loc_1353C4C: var_D8 = CVar(CLng(3)) 'Long
  loc_1353C51: var_F8 = vbNullString
  loc_1353C5A: LateIdCallSt
  loc_1353C65: var_A0 = CVar(CLng(3)) 'Long
  loc_1353C70: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353C77: LateIdCallSt
  loc_1353C82: var_A0 = CVar(CLng(3)) 'Long
  loc_1353C8D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353C94: LateIdCallSt
  loc_1353C9F: var_A0 = CVar(CLng(3)) 'Long
  loc_1353CA4: var_D8 = &H3E8
  loc_1353CB0: LateIdCallSt
  loc_1353CB8: var_A0 = 0
  loc_1353CC4: var_D8 = CVar(CLng(4)) 'Long
  loc_1353CC9: var_F8 = vbNullString
  loc_1353CD2: LateIdCallSt
  loc_1353CDD: var_A0 = CVar(CLng(4)) 'Long
  loc_1353CE8: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353CEF: LateIdCallSt
  loc_1353CFA: var_A0 = CVar(CLng(4)) 'Long
  loc_1353D05: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353D0C: LateIdCallSt
  loc_1353D17: var_A0 = CVar(CLng(4)) 'Long
  loc_1353D1C: var_D8 = &H12C
  loc_1353D28: LateIdCallSt
  loc_1353D32: Set var_10C = Nothing 
  loc_1353D36: Exit Sub
End Sub

Public Sub Proc_63_40_ED73D8
  'Data Table: 4D9104
  Dim unk_4D9115 As Connection15
  Dim var_114 As Recordset15
  Dim var_118 As Fields15
  loc_ED7350: On Error Goto loc_ED73D1
  loc_ED737C: Proc_6_17_EAAE40(var_CC, MemVar_1F95078, "Select ReservationPrinting From Enviro WHERE LOGSITE_CODE=", var_110, -1)
  loc_ED7392: unk_4D9115.Execute CStr(var_114 & var_CC), var_118, 0
  loc_ED73A2:  = var_118.Item()
  loc_ED73B3: var_AC = Proc_6_38_E69628(CVar(var_114.Fields))
  loc_ED73CB: Call Proc_63_41_13F8890()
  loc_ED73D0: Exit Sub
  loc_ED73D1: ' Referenced from: ED7350
  loc_ED73D1: Proc_6_60_E63754()
  loc_ED73D6: Exit Sub
End Sub

Public Sub Proc_63_41_13F8890
  'Data Table: 4D9104
  Dim var_8A As Integer
  Dim var_A4 As TextBox
  Dim var_AC As String
  Dim unk_4D9115 As Connection15
  Dim var_90 As Recordset15
  Dim var_BC As Variant
  Dim var_A8 As String
  Dim var_124 As String
  Dim var_CC As Variant
  Dim var_100 As Variant
  Dim var_F0 As String
  Dim var_120 As Variant
  Dim var_148 As TextBox
  Dim var_110 As String
  Dim var_A0 As Variant
  loc_13F7E98: On Error Goto loc_13F8885
  loc_13F7EB7: Call 0.Method_Proc_63_41_13F88900 (CInt(&HA), var_A4, var_A8)
  loc_13F7EBF: "SELECT GuestFolio.Name, GuestFolio.Add1, GuestFolio.Add2, GuestFolio.City, paycharge.*, GuestProf.CityName, GuestProf.StateName, GuestProf.CountryName FROM (paycharge LEFT JOIN GuestFolio ON (paycharge.FolioNoDocId = GuestFolio.DocId) AND (paycharge.Site_Code = GuestFolio.Site_Code)) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code where (ContraDocId is NULL or contradocid='') and Paycharge.folionoDocid='" = var_A4.Tag
  loc_13F7EF6: unk_4D9115.Execute &HFF & var_A8 & "' order by Paycharge.vDate,Paycharge.VNO,Paycharge.SNO", var_CC, -1
  loc_13F7F01: Set var_90 = Me.Txt
  loc_13F7F10: var_D0 = var_90.RecordCount
  loc_13F7F1E: If (var_D0 <= 0) Then
  loc_13F7F27:   Call 0.Method_arg_50 (var_A8)
  loc_13F7F48:   MsgBox("** No Records Found to Print **", &H40, CVar(var_A8), var_100, var_120)
  loc_13F7F5A:   var_8A = 0
  loc_13F7F5D:   Exit Sub
  loc_13F7F5E: End If
  loc_13F7F61: var_94 = "FolioPrint"
  loc_13F7F64: var_BC = "Guest Folio"
  loc_13F7F7B: var_98 = CStr(Ucase(var_BC))
  loc_13F7F8B: If (var_8A = 0) Then
  loc_13F7F8E:   Exit Sub
  loc_13F7F8F: End If
  loc_13F7FB3: Set var_A0 = var_90 
  loc_13F7FBA: CreateFieldDefFile(var_A0, MemVar_1F950B4 & "\" & var_94 & ".ttx", &HFF)
  loc_13F7FE5: var_A8 = MemVar_1F950B4 & "\"
  loc_13F7FEC: var_AC = var_A8 & var_94
  loc_13F7FFC: Call 0.Method_arg_1C (var_AC & ".RPT", var_BC, var_A0)
  loc_13F8007: MemVar_1F951E8 = var_A0
  loc_13F8030: Call 0.Method_arg_64 (var_A0, CVar(var_A0), var_F0)
  loc_13F8038: Call 0.Method_arg_2C (var_110, var_8A)
  loc_13F8046: Call 0.Method_arg_150 (var_A0)
  loc_13F8050: Set var_90 = Nothing
  loc_13F8064: Call 0.Method_arg_90 (var_A0, var_D0)
  loc_13F806C: Call 0.Method_arg_24 (var_9A)
  loc_13F8078: For var_12C =  To CInt(var_D0): 1 = var_12C 'Integer
  loc_13F8091:   Call 0.Method_arg_90 (var_A0, CLng(var_9A))
  loc_13F8099:   Call 0.Method_arg_20 (var_A4)
  loc_13F80A1:   Call 0.Method_arg_30 (var_A8)
  loc_13F80B7:   var_13C = Ucase(CVar(var_A8)) 'Variant
  loc_13F80E7:   If (var_13C = Ucase("ChkOutDt")) Then
  loc_13F80FA:     Set var_A0 = Me.Txt
  loc_13F8100:     Call 0.Method_Proc_63_41_13F88900 (CInt(&H16), var_A4)
  loc_13F8138:     Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F8140:     Call 0.Method_arg_20 (var_148)
  loc_13F8148:     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F8167:   Else
  loc_13F8189:     If (var_13C = Ucase("DepDt")) Then
  loc_13F819C:       Set var_A0 = Me.Txt
  loc_13F81A2:       Call 0.Method_Proc_63_41_13F88900 (CInt(6), var_A4)
  loc_13F81DA:       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F81E2:       Call 0.Method_arg_20 (var_148)
  loc_13F81EA:       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F8209:     Else
  loc_13F822B:       If (var_13C = Ucase("DepTm")) Then
  loc_13F8241:         Set var_A0 = Me.Txt
  loc_13F8247:         Call 0.Method_Proc_63_41_13F88900 (CInt(4), var_A4)
  loc_13F825B:         var_124 = var_A4.Text & ":"
  loc_13F826C:         Set var_144 = Me.Txt
  loc_13F8272:         Call 0.Method_Proc_63_41_13F88900 (CInt(5), var_148, var_AC)
  loc_13F827A:         var_124 = var_148.Text
  loc_13F82B2:         Call 0.Method_arg_90 (var_14C, CLng(var_9A))
  loc_13F82BA:         Call 0.Method_arg_20 (var_150)
  loc_13F82C2:         Call 0.Method_arg_38 (CStr(Trim(CVar("'" & var_AC)) & "'"))
  loc_13F82EF:       Else
  loc_13F8311:         If (var_13C = Ucase("ChkInDt")) Then
  loc_13F8324:           Set var_A0 = Me.Txt
  loc_13F832A:           Call 0.Method_Proc_63_41_13F88900 (CInt(1), var_A4)
  loc_13F8362:           Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F836A:           Call 0.Method_arg_20 (var_148)
  loc_13F8372:           Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F8391:         Else
  loc_13F83B3:           If (var_13C = Ucase("ChkInTm")) Then
  loc_13F83C9:             Set var_A0 = Me.Txt
  loc_13F83CF:             Call 0.Method_Proc_63_41_13F88900 (CInt(2), var_A4)
  loc_13F83E3:             var_124 = var_A4.Text & ":"
  loc_13F83F4:             Set var_144 = Me.Txt
  loc_13F83FA:             Call 0.Method_Proc_63_41_13F88900 (CInt(3), var_148, var_AC)
  loc_13F8402:             var_124 = var_148.Text
  loc_13F843A:             Call 0.Method_arg_90 (var_14C, CLng(var_9A))
  loc_13F8442:             Call 0.Method_arg_20 (var_150)
  loc_13F844A:             Call 0.Method_arg_38 (CStr(Trim(CVar("'" & var_AC)) & "'"))
  loc_13F8477:           Else
  loc_13F8499:             If (var_13C = Ucase("DepDt")) Then
  loc_13F84AC:               Set var_A0 = Me.Txt
  loc_13F84B2:               Call 0.Method_Proc_63_41_13F88900 (CInt(6), var_A4)
  loc_13F84EA:               Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F84F2:               Call 0.Method_arg_20 (var_148)
  loc_13F84FA:               Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F8519:             Else
  loc_13F853B:               If (var_13C = Ucase("DepTm")) Then
  loc_13F8551:                 Set var_A0 = Me.Txt
  loc_13F8557:                 Call 0.Method_Proc_63_41_13F88900 (CInt(4), var_A4)
  loc_13F856B:                 var_124 = var_A4.Text & ":"
  loc_13F857C:                 Set var_144 = Me.Txt
  loc_13F8582:                 Call 0.Method_Proc_63_41_13F88900 (CInt(5), var_148, var_AC)
  loc_13F858A:                 var_124 = var_148.Text
  loc_13F85C2:                 Call 0.Method_arg_90 (var_14C, CLng(var_9A))
  loc_13F85CA:                 Call 0.Method_arg_20 (var_150)
  loc_13F85D2:                 Call 0.Method_arg_38 (CStr(Trim(CVar("'" & var_AC)) & "'"))
  loc_13F85FF:               Else
  loc_13F8621:                 If (var_13C = Ucase("Company")) Then
  loc_13F8634:                   Set var_A0 = Me.Txt
  loc_13F863A:                   Call 0.Method_Proc_63_41_13F88900 (CInt(8), var_A4)
  loc_13F8672:                   Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F867A:                   Call 0.Method_arg_20 (var_148)
  loc_13F8682:                   Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F86A1:                 Else
  loc_13F86C3:                   If (var_13C = Ucase("AdltChld")) Then
  loc_13F86D6:                     Set var_A0 = Me.Txt
  loc_13F86DC:                     Call 0.Method_Proc_63_41_13F88900 (CInt(&HC), var_A4)
  loc_13F870B:                     Set var_144 = Me.Txt
  loc_13F8711:                     Call 0.Method_Proc_63_41_13F88900 (CInt(&HD), var_148)
  loc_13F8749:                     Call 0.Method_arg_90 (var_14C, CLng(var_9A))
  loc_13F8751:                     Call 0.Method_arg_20 (var_150)
  loc_13F8759:                     Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "/" & Trim(CVar(var_148)) & "'"))
  loc_13F8782:                   Else
  loc_13F87A4:                     If (var_13C = Ucase("RoomNo")) Then
  loc_13F87B7:                       Set var_A0 = Me.Txt
  loc_13F87BD:                       Call 0.Method_Proc_63_41_13F88900 (CInt(0), var_A4)
  loc_13F87F5:                       Call 0.Method_arg_90 (var_144, CLng(var_9A))
  loc_13F87FD:                       Call 0.Method_arg_20 (var_148)
  loc_13F8805:                       Call 0.Method_arg_38 (CStr("'" & Trim(CVar(var_A4)) & "'"))
  loc_13F8821:                     End If
  loc_13F8821:                   End If
  loc_13F8821:                 End If
  loc_13F8821:               End If
  loc_13F8821:             End If
  loc_13F8821:           End If
  loc_13F8821:         End If
  loc_13F8821:       End If
  loc_13F8821:     End If
  loc_13F8821:   End If
  loc_13F8824: Next var_12C 'Integer
  loc_13F882E: Set var_A4 = Nothing
  loc_13F8844: Set var_A0 = MemVar_1F951E8 
  loc_13F8850: Proc_6_99_1484404(var_A0, 0, var_98)
  loc_13F885B: MemVar_1F951E8 = var_A0
  loc_13F8873: Me.Global.Unload Me
  loc_13F8880: MemVar_1F951E8 = Nothing
  loc_13F8884: Exit Sub
  loc_13F8885: ' Referenced from: 13F7E98
  loc_13F888A: Proc_6_60_E63754(0, &HFF)
  loc_13F888F: Exit Sub
End Sub
