VERSION 5.00
Begin VB.Form fdPrintScreen
  Caption = "Guest Charges Summary"
  BackColor = &HFFC0C0&
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  Icon = "fdPrintScreen.frx":0
  LinkTopic = "Form1"
  ControlBox = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 60
  ClientTop = 345
  ClientWidth = 10185
  ClientHeight = 7425
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 6975
    Width = 10185
    Height = 450
    Visible = 0   'False
    TabIndex = 52
  End
  Begin PictureBox Picture2
    Picture = "fdPrintScreen.frx":442
    Left = 19770
    Top = 6450
    Width = 315
    Height = 270
    Visible = 0   'False
    TabIndex = 51
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
  End
  Begin DataGrid DGRoomNo
    Left = 7065
    Top = 1650
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
    Left = 1290
    Top = 3945
    Width = 3825
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
    Left = 1290
    Top = 4260
    Width = 3825
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
    Left = 1290
    Top = 4575
    Width = 3825
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
    Left = 13575
    Top = 7260
    Width = 4980
    Height = 3090
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 39
  End
  Begin MSHFlexGrid Fgrid1
    Left = 5595
    Top = 5130
    Width = 7785
    Height = 285
    TabIndex = 47
  End
  Begin TextBox Txt
    Index = 22
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1425
    Top = 1575
    Width = 1170
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
    Left = 3075
    Top = 1575
    Width = 390
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
    Left = 2625
    Top = 1575
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
    Left = 1275
    Top = 5205
    Width = 3825
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
    Left = 1275
    Top = 5520
    Width = 3825
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
    Left = 1275
    Top = 5835
    Width = 3825
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
    Left = 1425
    Top = 1890
    Width = 1170
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
    Left = 3075
    Top = 1890
    Width = 390
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
    Left = 2610
    Top = 1890
    Width = 435
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
    Left = 18735
    Top = 6465
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
    Left = 1425
    Top = 945
    Width = 1110
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
    Left = 2625
    Top = 1260
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
    Left = 3075
    Top = 1260
    Width = 390
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
    Left = 1275
    Top = 6150
    Width = 3825
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
    Left = 1290
    Top = 4890
    Width = 3825
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
    Left = 1290
    Top = 3630
    Width = 3825
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
    Left = 1425
    Top = 1260
    Width = 1170
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
    Top = 585
    Width = 1140
    Height = 285
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
    Left = 1425
    Top = 2835
    Width = 1245
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
    ForeColor = &HC00000&
    Left = 19170
    Top = 7245
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
    Left = 1425
    Top = 2520
    Width = 630
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
    Left = 2085
    Top = 2520
    Width = 600
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
    Left = 1425
    Top = 2205
    Width = 3090
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
    Left = 5625
    Top = 960
    Width = 8790
    Height = 4185
    TabIndex = 25
  End
  Begin MSFlexGrid FGPoint
    Left = 13185
    Top = 1065
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 50
  End
  Begin BtnEnh CmdExit
    Left = 5775
    Top = 6690
    Width = 1275
    Height = 1050
    TabIndex = 54
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = -15
    Width = 180
    Height = 540
    TabIndex = 53
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
    Caption = "Charges Summary"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 5625
    Top = 540
    Width = 7365
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
    Left = 60
    Top = 3960
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
    Left = 60
    Top = 1590
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
    Left = 60
    Top = 5850
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
    Left = 60
    Top = 5535
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
    Left = 60
    Top = 5220
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
    Caption = "Exp.Dep. Date"
    Index = 4
    ForeColor = &HC00000&
    Left = 60
    Top = 1905
    Width = 1350
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
    Left = 18645
    Top = 6705
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
    Left = 45
    Top = 3210
    Width = 5100
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
    Caption = "Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 60
    Top = 960
    Width = 795
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
    Left = 60
    Top = 6165
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
    Left = 60
    Top = 4905
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
    Left = 60
    Top = 3645
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
    Left = 3495
    Top = 1260
    Width = 1320
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
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 60
    Top = 1275
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
    Left = 60
    Top = 2220
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
    Left = 60
    Top = 2850
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
    Left = 19335
    Top = 7590
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
    Left = 60
    Top = 2535
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
    Caption = "Room Details for Room No."
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 45
    Top = 540
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

Attribute VB_Name = "fdPrintScreen"

Private MasterFormExit As Integer
Private global_68 As Long

Private Sub Txt_GotFocus(Index As Integer) '105245C
  'Data Table: 475350
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_105220A: Set var_88 = Me.Txt
  loc_1052210: Call 0.Method_Txt_GotFocus0 (Index)
  loc_105221E: Proc_6_74_E23240(var_8C)
  loc_105222D: var_92 = Index
  loc_1052238: If (var_92 = CInt(0)) Then
  loc_1052252:   If (Me.RecordCount > 0) Then
  loc_1052260:     Set var_8C = Me.FGPoint
  loc_1052278:     Proc_6_137_1192FDC(Me.DGRoomNo, global_92, Index)
  loc_1052286:   End If
  loc_10522D4:   Set var_88 = Me.Txt
  loc_10522DA:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_10522E2:   var_8C = var_8C.Text
  loc_1052308:   If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), var_92) = vbNullString)) Then
  loc_105230B:     Exit Sub
  loc_105230C:   End If
  loc_1052319:   Set var_88 = Me.Txt
  loc_105231F:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1052327:   var_A0 = var_8C.Text
  loc_1052339:   var_C4 = "RoomNo"
  loc_1052350:   var_C8 = Me.Fields.Item(var_C4)
  loc_1052374:   If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_105237D:     Me.MoveFirst
  loc_10523A0:     Set var_88 = Me.Txt
  loc_10523A6:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_10523AE:     0 = var_8C.Text
  loc_10523C7:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_10523DC:   End If
  loc_10523DC: End If
  loc_10523EB: Set var_88 = Me.Txt
  loc_10523F1: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_10523F9: var_8C.SelStart = 0
  loc_1052412: Set var_88 = Me.Txt
  loc_1052418: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_1052433: Set var_90 = Me.Txt
  loc_1052439: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_1052441: var_C8.SelLength = Len(var_8C.Text)
  loc_1052454: Call Proc_172_26_EBD09C()
  loc_1052459: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) 'FC7A10
  'Data Table: 475350
  Dim var_88 As Integer
  Dim Me As Recordset15
  loc_FC786F: var_88 = Shift
  loc_FC787C: If (CLng(Shift) = &H1B) Then
  loc_FC787F:   Call Proc_172_26_EBD09C(var_88)
  loc_FC7884:   Exit Sub
  loc_FC7885: End If
  loc_FC7893: If (KeyCode = CInt(0)) Then
  loc_FC78B3:   Set var_A4 = Me.FGPoint
  loc_FC78BE:   Set var_A0 = Nothing
  loc_FC78F0:   Proc_6_69_134A630(Me.DGRoomNo, Me.Txt, CInt(0), global_92, Shift, 0)
  loc_FC795F:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_FC7966:     Set var_A0 = Me.DGRoomNo
  loc_FC7985:     Proc_6_138_106E830(var_A0, global_92, KeyCode, Me.FGPoint, 1)
  loc_FC7993:   End If
  loc_FC7993: End If
  loc_FC79CE: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGChrgPayment.Visible) = 0)) Then
  loc_FC79E6:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_FC79EF:     Proc_6_75_E5335C(Shift, arg_14, var_A0)
  loc_FC79F4:   End If
  loc_FC79FE:   If (CLng(Shift) = &H26) Then
  loc_FC7A07:     Proc_6_76_E533C8(Shift, arg_14, var_A4)
  loc_FC7A0C:   End If
  loc_FC7A0C: End If
  loc_FC7A0C: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'EE030C
  'Data Table: 475350
  Dim arg_10 As Integer
  Dim var_94 As Variant
  loc_EE0257: Proc_6_58_E06050(arg_10)
  loc_EE0262: Proc_6_133_E7FB08(var_94)
  loc_EE027F: If (KeyAscii = CInt(0)) Then
  loc_EE029E:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EE02CB:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_92, CInt(Me.DGRoomNo.Visible), "RoomNo")
  loc_EE02FD:     Proc_6_138_106E830(Me.DGRoomNo, global_92, KeyAscii, Me.FGPoint)
  loc_EE030B:   End If
  loc_EE030B: End If
  loc_EE030B: Exit Sub
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'E00DDC
  'Data Table: 475350
  Dim var_86 As Integer
  loc_E00DD7: var_86 = KeyCode
  loc_E00DDA: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E47F14
  'Data Table: 475350
  loc_E47EF2: Set var_88 = Me.Txt
  loc_E47EF8: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E47F06: Proc_6_73_E23294(var_8C)
  loc_E47F12: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '15A3748
  'Data Table: 475350
  Dim var_92 As Integer
  Dim Me As Recordset15
  Dim var_A0 As Variant
  Dim var_9C As Variant
  Dim var_E0 As Variant
  Dim var_A4 As String
  Dim var_BC As Variant
  Dim var_110 As Variant
  Dim var_8C As Long
  Dim var_128 As TextBox
  Dim var_F0 As Variant
  Dim unk_475373 As Connection15
  Dim var_90 As Recordset15
  Dim var_D0 As Variant
  Dim var_178 As String
  Dim var_174 As TextBox
  loc_15A2563: var_92 = Cancel
  loc_15A256E: If (var_92 = CInt(0)) Then
  loc_15A257D:   If (global_68 = 1) Then
  loc_15A2597:     If (Me.RecordCount <= 0) Then
  loc_15A259A:       Exit Sub
  loc_15A259B:     End If
  loc_15A25B2:     If (Me.AbsolutePosition < 0) Then
  loc_15A25B5:       Exit Sub
  loc_15A25B6:     End If
  loc_15A25BC:     Me.MoveFirst
  loc_15A25DF:     Set var_9C = Me.Txt
  loc_15A25E5:     Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4, "roomno='")
  loc_15A25ED:     0 = var_A0.Text
  loc_15A2606:     Me.Find 1 & var_A4 & "'", var_BC, var_92
  loc_15A263C:     Set var_A0 = Me.Txt
  loc_15A2642:     Call 0.Method_Txt_Validate0 (CInt(&HA), var_D0)
  loc_15A267B:     If ((CBool(Me.FGPoint.Visible) = &HFF) And (CDbl(Val(CStr(Trim(CVar(var_D0))))) = CDbl(0))) Then
  loc_15A2691:       var_BC = CVar(CLng(Me.FGPoint.Row)) 'Long
  loc_15A2696:       var_110 = 2
  loc_15A26A3:       Set var_A0 = Me.FGPoint
  loc_15A26A9:       var_E0 = var_A0.TextMatrix)
  loc_15A26B8:       var_8C = CLng(CStr(var_E0))
  loc_15A26D3:       If (CInt(&HA) <> 0) Then
  loc_15A26EC:         var_A4 = CStr(var_8C)
  loc_15A26F9:         Me.Find "Foliono=" & var_A4, 0, 1
  loc_15A2705:       End If
  loc_15A2705:     End If
  loc_15A2705:   End If
  loc_15A2753:   Set var_9C = Me.Txt
  loc_15A2759:   Call 0.Method_Txt_Validate0 (Cancel, var_A0, var_A4, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_15A2761:   var_BC = var_A0.Text
  loc_15A2779:   If (var_8C Or (var_A4 = vbNullString)) Then
  loc_15A2789:     Set var_9C = Me.Txt
  loc_15A278F:     Call 0.Method_Txt_Validate0 (Cancel, var_A0, vbNullString)
  loc_15A2797:     var_A0.Tag = var_110
  loc_15A27A3:     Exit Sub
  loc_15A27A4:   End If
  loc_15A27DF:   Set var_D0 = Me.Txt
  loc_15A27E5:   Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_15A27ED:   var_128.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_15A283E:   Set var_D0 = Me.Txt
  loc_15A2844:   Call 0.Method_Txt_Validate0 (Cancel, var_128)
  loc_15A284C:   var_128.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_15A289B:   Set var_D0 = Me.Txt
  loc_15A28A1:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128)
  loc_15A28A9:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_15A28C0:   var_BC = "FolioNoDocid"
  loc_15A28D7:   var_A0 = Me.Fields.Item(var_BC)
  loc_15A28E8:   var_A4 = Proc_6_38_E69628(CVar(var_A0))
  loc_15A28F6:   Set var_D0 = Me.Txt
  loc_15A28FC:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_128)
  loc_15A2904:   var_128.Tag = var_A4
  loc_15A291E:   Me.MoveFirst
  loc_15A2942:   Set var_9C = Me.Txt
  loc_15A2948:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A0, var_A4, "FolionoDocid='")
  loc_15A2950:   0 = var_A0.Tag
  loc_15A2969:   Me.Find 1 & var_A4 & "'", var_BC, var_BC
  loc_15A299E:   Set var_9C = Me.Txt
  loc_15A29A4:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_A0, var_A4, "Select ChkinDAte,ChkinTime from RoomOcc where Sno=1 and Docid=")
  loc_15A29AC:   var_138 = var_A0.Tag
  loc_15A29BA:   Proc_6_17_EAAE40(var_E0, CVar(var_A4))
  loc_15A29C2:   var_F0 = -1 & var_E0 
  loc_15A29D0:   unk_475373.Execute CStr(Trim(CVar(var_D0))), var_D0, 
  loc_15A29DB:   Set var_90 = var_D0
  loc_15A2A09:   If (var_90.RecordCount > 0) Then
  loc_15A2A23:     var_A0 = var_90.Fields.Item("ChkInDate")
  loc_15A2A42:     Set var_D0 = Me.Txt
  loc_15A2A48:     Call 0.Method_Txt_Validate0 (CInt(1), var_128)
  loc_15A2A50:     var_128.Text = Proc_6_38_E69628(CVar(var_A0))
  loc_15A2A6F:     Set var_9C = Me.Txt
  loc_15A2A75:     Call 0.Method_Txt_Validate0 (CInt(1))
  loc_15A2AAF:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_A0), "DDDD"))
  loc_15A2B17:     Set var_D0 = Me.Txt
  loc_15A2B1D:     Call 0.Method_Txt_Validate0 (CInt(2), var_128, CStr(Left(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChkInTime")), 1)), 2)))
  loc_15A2B25:     var_128.Text = 1
  loc_15A2B93:     Set var_D0 = Me.Txt
  loc_15A2B99:     Call 0.Method_Txt_Validate0 (CInt(3), var_128)
  loc_15A2BA1:     var_128.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_90.Fields.Item("ChkInTime")))), 2))
  loc_15A2BC2:   Else
  loc_15A2BDC:     var_A0 = Me.Fields.Item("ChkInDate")
  loc_15A2BFB:     Set var_D0 = Me.Txt
  loc_15A2C01:     Call 0.Method_Txt_Validate0 (CInt(1), var_128)
  loc_15A2C09:     var_128.Text = Proc_6_38_E69628(CVar(var_A0))
  loc_15A2C28:     Set var_9C = Me.Txt
  loc_15A2C2E:     Call 0.Method_Txt_Validate0 (CInt(1), var_A0)
  loc_15A2C68:     Me.LblCheckInDay.Caption = CStr(Format(CVar(var_A0), "DDDD"))
  loc_15A2CD3:     Set var_D0 = Me.Txt
  loc_15A2CD9:     Call 0.Method_Txt_Validate0 (CInt(2), var_128, CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_15A2CE1:     var_128.Text = 1
  loc_15A2D52:     Set var_D0 = Me.Txt
  loc_15A2D58:     Call 0.Method_Txt_Validate0 (CInt(3), var_128)
  loc_15A2D60:     var_128.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))), 2))
  loc_15A2D7E:   End If
  loc_15A2DB7:   Set var_D0 = Me.Txt
  loc_15A2DBD:   Call 0.Method_Txt_Validate0 (CInt(&H16), var_128)
  loc_15A2DC5:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("ChkOutDate")))
  loc_15A2E2C:   Set var_D0 = Me.Txt
  loc_15A2E32:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_128)
  loc_15A2E3A:   var_128.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_15A2EAB:   Set var_D0 = Me.Txt
  loc_15A2EB1:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_128)
  loc_15A2EB9:   var_128.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkOutTime")))), 2))
  loc_15A2F10:   Set var_D0 = Me.Txt
  loc_15A2F16:   Call 0.Method_Txt_Validate0 (CInt(6), var_128)
  loc_15A2F1E:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_15A2F85:   Set var_D0 = Me.Txt
  loc_15A2F8B:   Call 0.Method_Txt_Validate0 (CInt(4), var_128)
  loc_15A2F93:   var_128.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_15A2FE7:   var_E0 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))) 'String
  loc_15A3004:   Set var_D0 = Me.Txt
  loc_15A300A:   Call 0.Method_Txt_Validate0 (CInt(5), var_128)
  loc_15A3012:   var_128.Text = CStr(Right(var_E0, 2))
  loc_15A306C:   Set var_D0 = Me.Txt
  loc_15A3072:   Call 0.Method_Txt_Validate0 (CInt(7), var_128)
  loc_15A307A:   var_128.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_15A30CC:   Set var_D0 = Me.Txt
  loc_15A30D2:   Call 0.Method_Txt_Validate0 (CInt(7), var_128)
  loc_15A30DA:   var_128.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_15A3129:   Set var_D0 = Me.Txt
  loc_15A312F:   Call 0.Method_Txt_Validate0 (CInt(8), var_128)
  loc_15A3137:   var_128.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_15A3184:   Set var_D0 = Me.Txt
  loc_15A318A:   Call 0.Method_Txt_Validate0 (CInt(8), var_128)
  loc_15A3192:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_15A31CF:   Proc_6_39_E7D3A0(var_E0, CVar(Me.Fields.Item("RoomRate")))
  loc_15A31E6:   Set var_D0 = Me.Txt
  loc_15A31EC:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_128)
  loc_15A31F4:   var_128.Text = CStr(var_E0)
  loc_15A3245:   Set var_D0 = Me.Txt
  loc_15A324B:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_128)
  loc_15A3253:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_15A32A0:   Set var_D0 = Me.Txt
  loc_15A32A6:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_128)
  loc_15A32AE:   var_128.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_15A32FB:   Set var_D0 = Me.Txt
  loc_15A3301:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_128)
  loc_15A3309:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_15A3356:   Set var_D0 = Me.Txt
  loc_15A335C:   Call 0.Method_Txt_Validate0 (CInt(9), var_128)
  loc_15A3364:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_15A33A1:   Proc_6_39_E7D3A0(var_E0, CVar(Me.Fields.Item("OldAdult")))
  loc_15A33B8:   Set var_D0 = Me.Txt
  loc_15A33BE:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_128)
  loc_15A33C6:   var_128.Text = CStr(var_E0)
  loc_15A3407:   Proc_6_39_E7D3A0(var_E0, CVar(Me.Fields.Item("OldChild")))
  loc_15A341E:   Set var_D0 = Me.Txt
  loc_15A3424:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_128)
  loc_15A342C:   var_128.Text = CStr(var_E0)
  loc_15A347D:   Set var_D0 = Me.Txt
  loc_15A3483:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_128)
  loc_15A348B:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_15A34D8:   Set var_D0 = Me.Txt
  loc_15A34DE:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_128)
  loc_15A34E6:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_15A3533:   Set var_D0 = Me.Txt
  loc_15A3539:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_128)
  loc_15A3541:   var_128.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments3")))
  loc_15A3599:   Set var_D0 = Me.Txt
  loc_15A359F:   Call 0.Method_Txt_Validate0 (CInt(&H1A), var_128)
  loc_15A35A7:   var_128.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_15A3603:   Set var_D0 = Me.Txt
  loc_15A3609:   Call 0.Method_Txt_Validate0 (CInt(&H1B), var_128)
  loc_15A3611:   var_128.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_15A3643:   var_A0 = Me.Fields.Item("CityName")
  loc_15A36E7:   var_178 = var_A0 & Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("StateName"))), Proc_6_38_E69628(Trim(CVar(var_A0))) & ",") & "," & Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("CountryName"))))
  loc_15A36F5:   Set var_170 = Me.Txt
  loc_15A36FB:   Call 0.Method_Txt_Validate0 (CInt(&H1C), var_174)
  loc_15A3703:   var_174.Text = var_178
  loc_15A373A:   Set var_90 = Nothing
  loc_15A373D:   Call Proc_172_28_13534C8()
  loc_15A3742:   Call Proc_172_27_10F0C1C()
  loc_15A3747: End If
  loc_15A3747: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_9 '1305AB0
  'Data Table: 475350
  Dim var_9C As MSHFlexGrid
  Dim var_AC As Variant
  Dim var_D0 As Variant
  Dim var_B0 As MSHFlexGrid
  Dim var_F0 As Variant
  Dim var_104 As MSHFlexGrid
  Dim var_114 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_168 As Variant
  Dim var_8C As Double
  Dim var_94 As Double
  Dim var_138 As Long
  Dim var_158 As Variant
  Dim var_100 As Boolean
  Dim var_1AC As Variant
  loc_13053BF: If (CLng(Me.FGrid.Col) = 1) Then
  loc_13053D5:   var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13053ED:   var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1305424:   If (CStr(Me.FGrid.TextMatrix)) = vbNullString) Then
  loc_1305449:     Me.FGrid.Col = CVar(CLng(Me.FGrid.Col))
  loc_1305468:     Me.FGrid.CellFontName = "wingdings"
  loc_1305482:     Me.FGrid.CellFontSize = CVar(CDbl(&H12))
  loc_130549D:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13054B5:     var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_13054BA:     var_128 = "ü"
  loc_13054C4:     Set var_104 = Me.FGrid
  loc_13054CA:     LateIdCallSt
  loc_13054F5:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13054FD:     var_148 = CVar(CLng(3)) 'Long
  loc_1305515:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130551D:     var_F0 = CVar(CLng(7)) 'Long
  loc_1305537:     var_168 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_130553F:     Set var_17C = Me.FGrid
  loc_1305545:     LateIdCallSt
  loc_1305576:     var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130557E:     var_148 = CVar(CLng(4)) 'Long
  loc_1305596:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130559E:     var_F0 = CVar(CLng(8)) 'Long
  loc_13055B8:     var_168 = CVar(CStr(Me.FGrid.TextMatrix))) 'String
  loc_13055C0:     Set var_17C = Me.FGrid
  loc_13055C6:     LateIdCallSt
  loc_13055E7:   Else
  loc_13055FA:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1305612:     var_F0 = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1305617:     var_128 = vbNullString
  loc_1305621:     Set var_104 = Me.FGrid
  loc_1305627:     LateIdCallSt
  loc_1305652:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130565A:     var_F0 = CVar(CLng(3)) 'Long
  loc_130565F:     var_128 = vbNullString
  loc_1305669:     Set var_B0 = Me.FGrid
  loc_130566F:     LateIdCallSt
  loc_1305694:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_130569C:     var_F0 = CVar(CLng(4)) 'Long
  loc_13056A1:     var_128 = vbNullString
  loc_13056AB:     Set var_B0 = Me.FGrid
  loc_13056B1:     LateIdCallSt
  loc_13056D6:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_13056DE:     var_F0 = CVar(CLng(5)) 'Long
  loc_13056E3:     var_128 = vbNullString
  loc_13056ED:     Set var_B0 = Me.FGrid
  loc_13056F3:     LateIdCallSt
  loc_1305718:     var_D0 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1305720:     var_F0 = CVar(CLng(6)) 'Long
  loc_1305725:     var_128 = vbNullString
  loc_130572F:     Set var_B0 = Me.FGrid
  loc_1305735:     LateIdCallSt
  loc_1305747:   End If
  loc_130574A:   var_8C = CDbl(0)
  loc_1305750:   var_94 = CDbl(0)
  loc_1305778:   For var_180 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_96 = var_180 'Integer
  loc_1305782:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_130578A:     var_F0 = CVar(CLng(3)) 'Long
  loc_13057B6:     var_8C = (var_8C + Val(CStr(Me.FGrid.TextMatrix))))
  loc_13057C6:     var_D0 = CVar(CLng(var_96)) 'Long
  loc_13057CE:     var_F0 = CVar(CLng(4)) 'Long
  loc_13057FA:     var_94 = (var_94 + Val(CStr(Me.FGrid.TextMatrix))))
  loc_130580A:     var_F0 = CVar(CLng(var_96)) 'Long
  loc_1305812:     var_128 = CVar(CLng(5)) 'Long
  loc_1305834:     var_AC = CVar(Abs((var_8C - var_94))) 'Double
  loc_1305844:     var_168 = CVar(CStr(Format(Me.FGrid.TextMatrix), "0.00"))) 'String
  loc_130584C:     Set var_9C = Me.FGrid
  loc_1305852:     LateIdCallSt
  loc_1305874:     If (CDbl((var_8C - var_94)) > CDbl(0)) Then
  loc_130587B:       var_D0 = CVar(CLng(var_96)) 'Long
  loc_1305883:       var_F0 = CVar(CLng(6)) 'Long
  loc_1305888:       var_128 = "Dr"
  loc_1305892:       Set var_9C = Me.FGrid
  loc_1305898:       LateIdCallSt
  loc_13058A6:     Else
  loc_13058B2:       If (CDbl((var_8C - var_94)) < CDbl(0)) Then
  loc_13058B9:         var_D0 = CVar(CLng(var_96)) 'Long
  loc_13058C1:         var_F0 = CVar(CLng(6)) 'Long
  loc_13058C6:         var_128 = "Cr"
  loc_13058D0:         Set var_9C = Me.FGrid
  loc_13058D6:         LateIdCallSt
  loc_13058E4:       Else
  loc_13058E8:         var_D0 = CVar(CLng(var_96)) 'Long
  loc_13058F0:         var_F0 = CVar(CLng(6)) 'Long
  loc_13058F5:         var_128 = vbNullString
  loc_13058FF:         Set var_9C = Me.FGrid
  loc_1305905:         LateIdCallSt
  loc_1305910:       End If
  loc_1305910:     End If
  loc_1305913:   Next var_180 'Integer
  loc_130591C:   Set var_18C = Me.Fgrid1
  loc_130591F:   var_F0 = 0
  loc_130592B:   var_128 = CVar(CLng(1)) 'Long
  loc_1305959:   var_114 = CVar(CStr(Format(var_8C, "0.00"))) 'String
  loc_1305960:   LateIdCallSt
  loc_1305971:   var_F0 = 0
  loc_130597D:   var_128 = CVar(CLng(2)) 'Long
  loc_13059AB:   var_114 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_13059B2:   LateIdCallSt
  loc_13059C3:   var_F0 = 0
  loc_13059CF:   var_128 = CVar(CLng(3)) 'Long
  loc_13059F1:   var_AC = CVar(Abs((var_8C - var_94))) 'Double
  loc_1305A01:   var_168 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_1305A08:   LateIdCallSt
  loc_1305A1B:   var_138 = 0
  loc_1305A27:   var_158 = CVar(CLng(4)) 'Long
  loc_1305A4E:   var_D0 = (CDbl((var_94 - var_8C)) > CDbl(0))
  loc_1305A74:   var_100 = (CDbl((var_8C - var_94)) > CDbl(0))
  loc_1305A84:   var_1AC = CVar(CStr(IIf(var_100, "Dr", IIf(var_94, "Cr", vbNullString)))) 'String
  loc_1305A8B:   LateIdCallSt
  loc_1305AA8:   Set var_18C = Nothing 
  loc_1305AAC: End If
  loc_1305AAC: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_D 'DFD694
  'Data Table: 475350
  loc_DFD690: Exit Sub
End Sub

Private Sub DGChrgPayment_UnknownEvent_9 'F43794
  'Data Table: 475350
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F4368B: Me.DGChrgPayment.Visible = False
  loc_F436AA: If (Me.RecordCount > 0) Then
  loc_F436E9:   Set var_B4 = Me.Txt
  loc_F436EF:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F436F7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F4372A:   var_B0 = Me.Fields.Item("Name")
  loc_F43749:   Set var_B4 = Me.Txt
  loc_F4374F:   Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB), var_B8)
  loc_F43757:   var_B8.Text = CStr(var_B0.Value)
  loc_F4376D: End If
  loc_F43778: Set var_A8 = Me.Txt
  loc_F4377E: Call 0.Method_DGChrgPayment_UnknownEvent_90 (CInt(&HB))
  loc_F43786: var_B0.SetFocus
  loc_F43792: Exit Sub
End Sub

Private Sub CmdExit_UnknownEvent_9 'E1C87C
  'Data Table: 475350
  loc_E1C871: Me.Global.Unload Me
  loc_E1C879: Exit Sub
End Sub

Private Sub Form_Load() '10493A4
  'Data Table: 475350
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
  Dim unk_475373 As Connection15
  loc_1049158: On Error Goto loc_104939C
  loc_1049163: Call 0.Method_arg_7C (CDbl(1450))
  loc_1049170: Call 0.Method_arg_74 (CDbl(1625))
  loc_104917D: Call 0.Method_MeC (CDbl(9200))
  loc_104918A: Call 0.Method_Me4 (CDbl(17000))
  loc_1049196: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_10491A8: Set var_A8 = Me.FGrid
  loc_10491AE: var_A8.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_10491C0: Set global_96 = New 
  loc_10491D2: Me.var_A8.CursorLocation = 3
  loc_10491FC: var_BC = CVar("Select Code,Name,Type as Flag From RevMast where LOGSITE_CODE='" & MemVar_1F95078 & "' AND Fieldtype in ('C','P') ORDER BY NAME ") 'String
  loc_1049206: Me.Open var_BC, CVar(MemVar_1F95044), 2
  loc_104921A: CVarUnk
  loc_104921F: VerifyVarObj
  loc_1049225: Set var_A8 = Me.DGChrgPayment
  loc_104922B: LateIdStAd
  loc_104924D: Call 0.Method_Form_Load0 (CInt(0), var_C0, var_C4, Me.Txt)
  loc_1049255: global_96 = var_C0.Left
  loc_104926C: Me.DGRoomNo.Left = CVar(var_C4)
  loc_1049288: Set var_C8 = Me.Txt
  loc_104928E: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_D0)
  loc_1049296: 3 = var_CC.Height
  loc_10492AF: Call 0.Method_Form_Load0 (CInt(0), var_C0)
  loc_10492C7: var_94 = CVar(((var_C0.Top + var_D0) + CDbl(&H1E))) 'Single
  loc_10492D0: Set var_D4 = Me.DGRoomNo
  loc_10492D6: var_D4.Top = CVar(var_C0.Top)
  loc_10492F2: Set global_92 = New 
  loc_1049304: Me.var_D4.CursorLocation = 3
  loc_104931D: var_AC = "SELECT RoomMast.Code AS SearchCode,RoomMast.Code AS RoomNo,RoomMast.Name AS Quot,RoomOcc.ChkInDate,RoomOcc.ChkInTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name AS GuestName,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.GuestStatus, SubGroup.Name AS CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode AS CompanyCode, GuestFolio.FolioNo AS FolioNo, GuestFolio.DocId as FolioNoDocid,RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME " & " FROM (((((RoomMast INNER JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) INNER JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) INNER JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) INNER JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS  WHERE ROOMOCC.LOGSITE_CODE='"
  loc_1049339: var_E4 = var_AC & MemVar_1F95078 & "' AND ROOMMAST.LOGSITE_CODE='" & MemVar_1F95078 & "' AND roomocc.ChkOutDate is NULL  AND ROOMMAST.TYPE='RO' ORDER BY RoomMast.Code,RoomOcc.FolioNo"
  loc_1049342: unk_475373.Execute var_E4, var_BC, -1
  loc_1049377: CVarUnk
  loc_104937C: VerifyVarObj
  loc_1049382: Set var_A8 = Me.DGRoomNo
  loc_1049388: LateIdStAd
  loc_1049396: Call Proc_172_28_13534C8(var_A8, Me.Txt)
  loc_104939B: Exit Sub
  loc_104939C: ' Referenced from: 1049158
  loc_104939C: Proc_6_60_E63754(var_A8)
  loc_10493A1: Exit Sub
End Sub

Private Sub Form_Resize() 'E73108
  'Data Table: 475350
  loc_E730B2: Call 0.Method_arg_50 (var_88)
  loc_E730C4: Me.LblFormCaption.Caption = var_88
  loc_E730DD: Me.LblFormCaption.Left = CDbl(0)
  loc_E730EB: Call 0.Method_arg_100 (var_90)
  loc_E730FD: Me.LblFormCaption.Width = var_90
  loc_E73105: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) 'E44C4C
  'Data Table: 475350
  loc_E44C27: Set global_92 = Nothing
  loc_E44C39: Set global_96 = Nothing
  loc_E44C45: MasterFormExit = 0
  loc_E44C48: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5B86C
  'Data Table: 475350
  loc_E5B834: Set var_88 = Me.TopCtrl1
  loc_E5B83A: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5B85D: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5B865:   Call Form_Unload(&HFF)
  loc_E5B86A: End If
  loc_E5B86A: Exit Sub
End Sub

Private Sub Form_Activate() 'E6C360
  'Data Table: 475350
  Dim var_8C As PictureBox
  loc_E6C30C: On Error Goto loc_E6C357
  loc_E6C313: Set var_8C = Me.TopCtrl1
  loc_E6C319: Call {33AD4EDA-6699-11CF-B70C00AA0060D393}.DispID_68030000()
  loc_E6C32E: If (CLng(CInt()) = &H2D) Then
  loc_E6C331: End If
  loc_E6C34E: Call 0.Method_arg_74 (MemVar_1F95248.DGChrgPayment.Left)
  loc_E6C356: Exit Sub
  loc_E6C357: ' Referenced from: E6C30C
  loc_E6C357: Proc_6_60_E63754()
  loc_E6C35C: Exit Sub
End Sub

Private Sub Form_Deactivate() 'E2583C
  'Data Table: 475350
  loc_E25821: If (MasterFormExit = &HFF) Then
  loc_E25831:   Me.Global.Unload Me
  loc_E25839: End If
  loc_E25839: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E5F2C8
  'Data Table: 475350
  loc_E5F27C: On Error Goto loc_E5F2BF
  loc_E5F289: If (CLng(KeyCode) = &H79) Then
  loc_E5F299:   Me.Global.Unload Me
  loc_E5F2A1:   Exit Sub
  loc_E5F2A2: End If
  loc_E5F2B6: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E5F2BE: Exit Sub
  loc_E5F2BF: ' Referenced from: E5F27C
  loc_E5F2BF: Proc_6_60_E63754(Shift)
  loc_E5F2C4: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F430B4
  'Data Table: 475350
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F42FAB: Me.DGRoomNo.Visible = False
  loc_F42FCA: If (Me.RecordCount > 0) Then
  loc_F43009:   Set var_B4 = Me.Txt
  loc_F4300F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F43017:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F4304A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F43069:   Set var_B4 = Me.Txt
  loc_F4306F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F43077:   var_B8.Text = CStr(var_B0.Value)
  loc_F4308D: End If
  loc_F43098: Set var_A8 = Me.Txt
  loc_F4309E: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F430A6: var_B0.SetFocus
  loc_F430B2: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9A7E0
  'Data Table: 475350
  Dim var_A8 As Variant
  loc_E9A764: Set var_88 = Me.DGRoomNo
  loc_E9A78E: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9A796: Set var_BC = Me.DGRoomNo
  loc_E9A7D0: Proc_6_138_106E830(Me.DGRoomNo, global_92, 0, Me.FGPoint)
  loc_E9A7DE: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E6509C
  'Data Table: 475350
  loc_E6506C: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_E6506F:   Call DGChrgPayment_UnknownEvent_9()
  loc_E65074: End If
  loc_E65090: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E65093:   Call DGRoomNo_UnknownEvent_9()
  loc_E65098: End If
  loc_E65098: Exit Sub
End Sub

Public Function MasterFormExitGet() '475FCC
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '475FDB
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '475FEA
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '475FF9
  mVType = Value
End Sub

Public Property Get OpenMode() 'E03390
  'Data Table: 475350
  loc_E03389: OpenMode = global_68
End Sub

Public Property Let OpenMode(vNewValue) 'E011BC
  'Data Table: 475350
  loc_E011B6: global_68 = vNewValue
  loc_E011B9: Exit Sub
End Sub

Public Sub Proc_172_26_EBD09C
  'Data Table: 475350
  loc_EBD014: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBD026:   Me.DGRoomNo.Visible = False
  loc_EBD02E: End If
  loc_EBD04A: If (CBool(Me.DGChrgPayment.Visible) = &HFF) Then
  loc_EBD05C:   Me.DGChrgPayment.Visible = False
  loc_EBD064: End If
  loc_EBD080: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBD092:   Me.FGPoint.Visible = False
  loc_EBD09A: End If
  loc_EBD09A: Exit Sub
End Sub

Public Sub Proc_172_27_10F0C1C
  'Data Table: 475350
  Dim var_94 As Variant
  Dim var_9C As String
  Dim unk_475373 As Connection15
  Dim var_B0 As Variant
  Dim var_90 As Variant
  Dim var_8C As Recordset15
  Dim var_C4 As MSHFlexGrid
  Dim var_C0 As Variant
  Dim var_D8 As Variant
  Dim var_100 As Variant
  Dim var_130 As Variant
  Dim var_150 As Variant
  Dim var_F0 As Variant
  Dim var_110 As Variant
  Dim var_160 As Variant
  loc_10F0932: Set var_90 = Me.Txt
  loc_10F0938: Call 0.Method_Proc_172_27_10F0C1C0 (CInt(&HA), var_94, var_98, "Select max(revmast.name)as Revname,paycharge.Paycode,sum(paycharge.amtdr) as AmtDr,sum(paycharge.amtcr) as AmtCr from paycharge left join revmast on paycharge.paycode=revmast.code where (ContraDocId is NULL or contradocid='') and folionoDocid='")
  loc_10F0940: var_C0 = var_94.Tag
  loc_10F0949: var_9C = -1 & var_98
  loc_10F0959: unk_475373.Execute var_9C & "' group by Paycharge.paycode", var_C4, 
  loc_10F0964: Set var_8C = var_C4
  loc_10F0993: If (Me.Recordset15.RecordCount = 0) Then
  loc_10F09A9:   Me.FGrid.Rows = 2
  loc_10F09B1:   Exit Sub
  loc_10F09B2: End If
  loc_10F09C9: var_B0 = CVar((var_8C.RecordCount + 1)) 'Long
  loc_10F09D8: Me.FGrid.Rows = 2
  loc_10F09ED: Set var_90 = Me.FGrid
  loc_10F09F3: var_90.Row = 1
  loc_10F09FB: ' Referenced from: 10F0BFC
  loc_10F0A0D: If Not(Me.var_90.EOF) Then
  loc_10F0A14:   Set var_E0 = Me.FGrid
  loc_10F0A21:   var_C0 = Me.FGrid.Row
  loc_10F0A2A:   var_D8 = CVar(CLng(var_C0)) 'Long
  loc_10F0A32:   var_100 = CVar(CLng(2)) 'Long
  loc_10F0A65:   var_130 = CVar(CStr(Me.var_C0.Fields.Item("RevName").Value)) 'String
  loc_10F0A6C:   LateIdCallSt
  loc_10F0AAF:   var_150 = Me.FGrid.Row
  loc_10F0AB8:   var_F0 = CVar(CLng(var_150)) 'Long
  loc_10F0AC0:   var_110 = CVar(CLng(7)) 'Long
  loc_10F0AED:   var_160 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_10F0AF4:   LateIdCallSt
  loc_10F0B39:   var_150 = Me.FGrid.Row
  loc_10F0B42:   var_F0 = CVar(CLng(var_150)) 'Long
  loc_10F0B4A:   var_110 = CVar(CLng(8)) 'Long
  loc_10F0B77:   var_160 = CVar(CStr(Format(CVar(Me.var_150.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_10F0B7E:   LateIdCallSt
  loc_10F0B9C:   Set var_E0 = Nothing 
  loc_10F0BA6:   Me.var_150.MoveNext
  loc_10F0BBF:   If (var_8C.EOF = &HFF) Then
  loc_10F0BC2:     GoTo loc_10F0BFF
  loc_10F0BC5:   End If
  loc_10F0BDE:   var_B0 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_10F0BED:   Me.FGrid.Row = "AmtCr"
  loc_10F0BFC:   GoTo loc_10F09FB
  loc_10F0BFF:   ' Referenced from: 10F0BC2
  loc_10F0BFF: End If
  loc_10F0C12: Me.FGrid.FixedRows = 1
  loc_10F0C1A: Exit Sub
End Sub

Public Sub Proc_172_28_13534C8
  'Data Table: 475350
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_1352CA0: Set var_90 = Me.FGrid
  loc_1352CB6: Me.FGrid.Rows = 1
  loc_1352CD2: global_60 = CStr(CLng(var_90.BackColor))
  loc_1352CE8: var_90.Cols = &HB
  loc_1352CED: var_A0 = 0
  loc_1352CF9: var_D8 = CVar(CLng(0)) 'Long
  loc_1352CFE: var_F8 = "SNo"
  loc_1352D07: LateIdCallSt
  loc_1352D12: var_A0 = CVar(CLng(0)) 'Long
  loc_1352D17: var_D8 = 0
  loc_1352D23: LateIdCallSt
  loc_1352D2B: var_A0 = 0
  loc_1352D37: var_D8 = CVar(CLng(1)) 'Long
  loc_1352D3C: var_F8 = vbNullString
  loc_1352D45: LateIdCallSt
  loc_1352D50: var_A0 = CVar(CLng(1)) 'Long
  loc_1352D5B: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352D62: LateIdCallSt
  loc_1352D6D: var_A0 = CVar(CLng(1)) 'Long
  loc_1352D78: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352D7F: LateIdCallSt
  loc_1352D8A: var_A0 = CVar(CLng(1)) 'Long
  loc_1352D8F: var_D8 = &H3E8
  loc_1352D9B: LateIdCallSt
  loc_1352DA3: var_A0 = 0
  loc_1352DAF: var_D8 = CVar(CLng(2)) 'Long
  loc_1352DB4: var_F8 = "Particulars"
  loc_1352DBD: LateIdCallSt
  loc_1352DC8: var_A0 = CVar(CLng(2)) 'Long
  loc_1352DD3: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352DDA: LateIdCallSt
  loc_1352DE5: var_A0 = CVar(CLng(2)) 'Long
  loc_1352DF0: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352DF7: LateIdCallSt
  loc_1352E02: var_A0 = CVar(CLng(2)) 'Long
  loc_1352E07: var_D8 = &HBB8
  loc_1352E13: LateIdCallSt
  loc_1352E1B: var_A0 = 0
  loc_1352E27: var_D8 = CVar(CLng(3)) 'Long
  loc_1352E2C: var_F8 = "Debit"
  loc_1352E35: LateIdCallSt
  loc_1352E40: var_A0 = CVar(CLng(3)) 'Long
  loc_1352E4B: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352E52: LateIdCallSt
  loc_1352E5D: var_A0 = CVar(CLng(3)) 'Long
  loc_1352E68: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352E6F: LateIdCallSt
  loc_1352E7A: var_A0 = CVar(CLng(3)) 'Long
  loc_1352E7F: var_D8 = &H3E8
  loc_1352E8B: LateIdCallSt
  loc_1352E93: var_A0 = 0
  loc_1352E9F: var_D8 = CVar(CLng(4)) 'Long
  loc_1352EA4: var_F8 = "Credit"
  loc_1352EAD: LateIdCallSt
  loc_1352EB8: var_A0 = CVar(CLng(4)) 'Long
  loc_1352EC3: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352ECA: LateIdCallSt
  loc_1352ED5: var_A0 = CVar(CLng(4)) 'Long
  loc_1352EE0: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352EE7: LateIdCallSt
  loc_1352EF2: var_A0 = CVar(CLng(4)) 'Long
  loc_1352EF7: var_D8 = &H3E8
  loc_1352F03: LateIdCallSt
  loc_1352F0B: var_A0 = 0
  loc_1352F17: var_D8 = CVar(CLng(5)) 'Long
  loc_1352F1C: var_F8 = "Balance"
  loc_1352F25: LateIdCallSt
  loc_1352F30: var_A0 = CVar(CLng(5)) 'Long
  loc_1352F3B: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352F42: LateIdCallSt
  loc_1352F4D: var_A0 = CVar(CLng(5)) 'Long
  loc_1352F58: var_D8 = CVar(CInt(7)) 'Integer
  loc_1352F5F: LateIdCallSt
  loc_1352F6A: var_A0 = CVar(CLng(5)) 'Long
  loc_1352F6F: var_D8 = &H3E8
  loc_1352F7B: LateIdCallSt
  loc_1352F83: var_A0 = 0
  loc_1352F8F: var_D8 = CVar(CLng(6)) 'Long
  loc_1352F94: var_F8 = vbNullString
  loc_1352F9D: LateIdCallSt
  loc_1352FA8: var_A0 = CVar(CLng(6)) 'Long
  loc_1352FB3: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352FBA: LateIdCallSt
  loc_1352FC5: var_A0 = CVar(CLng(6)) 'Long
  loc_1352FD0: var_D8 = CVar(CInt(1)) 'Integer
  loc_1352FD7: LateIdCallSt
  loc_1352FE2: var_A0 = CVar(CLng(6)) 'Long
  loc_1352FE7: var_D8 = &H12C
  loc_1352FF3: LateIdCallSt
  loc_1352FFB: var_A0 = 0
  loc_1353007: var_D8 = CVar(CLng(7)) 'Long
  loc_135300C: var_F8 = vbNullString
  loc_1353015: LateIdCallSt
  loc_1353020: var_A0 = CVar(CLng(7)) 'Long
  loc_135302B: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353032: LateIdCallSt
  loc_135303D: var_A0 = CVar(CLng(7)) 'Long
  loc_1353048: var_D8 = CVar(CInt(1)) 'Integer
  loc_135304F: LateIdCallSt
  loc_135305A: var_A0 = CVar(CLng(7)) 'Long
  loc_135305F: var_D8 = 0
  loc_135306B: LateIdCallSt
  loc_1353073: var_A0 = 0
  loc_135307F: var_D8 = CVar(CLng(8)) 'Long
  loc_1353084: var_F8 = vbNullString
  loc_135308D: LateIdCallSt
  loc_1353098: var_A0 = CVar(CLng(8)) 'Long
  loc_13530A3: var_D8 = CVar(CInt(1)) 'Integer
  loc_13530AA: LateIdCallSt
  loc_13530B5: var_A0 = CVar(CLng(8)) 'Long
  loc_13530C0: var_D8 = CVar(CInt(1)) 'Integer
  loc_13530C7: LateIdCallSt
  loc_13530D2: var_A0 = CVar(CLng(8)) 'Long
  loc_13530D7: var_D8 = 0
  loc_13530E3: LateIdCallSt
  loc_13530EB: var_A0 = 0
  loc_13530F7: var_D8 = CVar(CLng(9)) 'Long
  loc_13530FC: var_F8 = vbNullString
  loc_1353105: LateIdCallSt
  loc_1353110: var_A0 = CVar(CLng(9)) 'Long
  loc_135311B: var_D8 = CVar(CInt(1)) 'Integer
  loc_1353122: LateIdCallSt
  loc_135312D: var_A0 = CVar(CLng(9)) 'Long
  loc_1353138: var_D8 = CVar(CInt(1)) 'Integer
  loc_135313F: LateIdCallSt
  loc_135314A: var_A0 = CVar(CLng(9)) 'Long
  loc_135314F: var_D8 = 0
  loc_135315B: LateIdCallSt
  loc_1353163: var_A0 = 0
  loc_135316F: var_D8 = CVar(CLng(&HA)) 'Long
  loc_1353174: var_F8 = vbNullString
  loc_135317D: LateIdCallSt
  loc_1353188: var_A0 = CVar(CLng(&HA)) 'Long
  loc_1353193: var_D8 = CVar(CInt(1)) 'Integer
  loc_135319A: LateIdCallSt
  loc_13531A5: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13531B0: var_D8 = CVar(CInt(1)) 'Integer
  loc_13531B7: LateIdCallSt
  loc_13531C2: var_A0 = CVar(CLng(&HA)) 'Long
  loc_13531C7: var_D8 = 0
  loc_13531D3: LateIdCallSt
  loc_13531DB: var_A0 = vbNullString
  loc_13531E5: Set var_B4 = Me.FGrid
  loc_1353209: Me.FGrid.FixedRows = 1
  loc_1353213: Set var_90 = Nothing 
  loc_135321B: Set var_10C = Me.Fgrid1
  loc_1353231: Me.Fgrid1.Rows = 1
  loc_135324D: global_60 = CStr(CLng(var_10C.BackColor))
  loc_1353263: var_10C.Cols = 5
  loc_1353268: var_A0 = 0
  loc_1353274: var_D8 = CVar(CLng(0)) 'Long
  loc_1353279: var_F8 = "Total :"
  loc_1353282: LateIdCallSt
  loc_135328D: var_A0 = CVar(CLng(0)) 'Long
  loc_1353298: var_D8 = CVar(CInt(1)) 'Integer
  loc_135329F: LateIdCallSt
  loc_13532AA: var_A0 = CVar(CLng(0)) 'Long
  loc_13532B5: var_D8 = CVar(CInt(1)) 'Integer
  loc_13532BC: LateIdCallSt
  loc_13532C7: var_A0 = CVar(CLng(0)) 'Long
  loc_13532CC: var_D8 = &HFA0
  loc_13532D8: LateIdCallSt
  loc_13532E0: var_A0 = 0
  loc_13532EC: var_D8 = CVar(CLng(1)) 'Long
  loc_13532F1: var_F8 = vbNullString
  loc_13532FA: LateIdCallSt
  loc_1353305: var_A0 = CVar(CLng(1)) 'Long
  loc_1353310: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353317: LateIdCallSt
  loc_1353322: var_A0 = CVar(CLng(1)) 'Long
  loc_135332D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353334: LateIdCallSt
  loc_135333F: var_A0 = CVar(CLng(1)) 'Long
  loc_1353344: var_D8 = &H3E8
  loc_1353350: LateIdCallSt
  loc_1353358: var_A0 = 0
  loc_1353364: var_D8 = CVar(CLng(2)) 'Long
  loc_1353369: var_F8 = vbNullString
  loc_1353372: LateIdCallSt
  loc_135337D: var_A0 = CVar(CLng(2)) 'Long
  loc_1353388: var_D8 = CVar(CInt(7)) 'Integer
  loc_135338F: LateIdCallSt
  loc_135339A: var_A0 = CVar(CLng(2)) 'Long
  loc_13533A5: var_D8 = CVar(CInt(7)) 'Integer
  loc_13533AC: LateIdCallSt
  loc_13533B7: var_A0 = CVar(CLng(2)) 'Long
  loc_13533BC: var_D8 = &H3E8
  loc_13533C8: LateIdCallSt
  loc_13533D0: var_A0 = 0
  loc_13533DC: var_D8 = CVar(CLng(3)) 'Long
  loc_13533E1: var_F8 = vbNullString
  loc_13533EA: LateIdCallSt
  loc_13533F5: var_A0 = CVar(CLng(3)) 'Long
  loc_1353400: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353407: LateIdCallSt
  loc_1353412: var_A0 = CVar(CLng(3)) 'Long
  loc_135341D: var_D8 = CVar(CInt(7)) 'Integer
  loc_1353424: LateIdCallSt
  loc_135342F: var_A0 = CVar(CLng(3)) 'Long
  loc_1353434: var_D8 = &H3E8
  loc_1353440: LateIdCallSt
  loc_1353448: var_A0 = 0
  loc_1353454: var_D8 = CVar(CLng(4)) 'Long
  loc_1353459: var_F8 = vbNullString
  loc_1353462: LateIdCallSt
  loc_135346D: var_A0 = CVar(CLng(4)) 'Long
  loc_1353478: var_D8 = CVar(CInt(1)) 'Integer
  loc_135347F: LateIdCallSt
  loc_135348A: var_A0 = CVar(CLng(4)) 'Long
  loc_1353495: var_D8 = CVar(CInt(1)) 'Integer
  loc_135349C: LateIdCallSt
  loc_13534A7: var_A0 = CVar(CLng(4)) 'Long
  loc_13534AC: var_D8 = &H12C
  loc_13534B8: LateIdCallSt
  loc_13534C2: Set var_10C = Nothing 
  loc_13534C6: Exit Sub
End Sub
