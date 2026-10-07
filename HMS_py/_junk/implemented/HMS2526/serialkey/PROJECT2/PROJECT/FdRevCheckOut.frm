VERSION 5.00
Begin VB.Form FdRevCheckOut
  Caption = "Check Out Cancel"
  BackColor = &HFFC0C0&
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  'Icon = n/a
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 150
  ClientTop = 765
  ClientWidth = 12510
  ClientHeight = 8865
  Begin MainCtrl TopCtrl1
    Left = 0
    Top = 8415
    Width = 12510
    Height = 450
    Visible = 0   'False
    TabIndex = 55
  End
  Begin CommandButton Command2
    Caption = "Bill Settle"
    BackColor = &HFFC0C0&
    Left = 2475
    Top = 7905
    Width = 1320
    Height = 795
    Visible = 0   'False
    TabIndex = 51
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
  Begin CommandButton CmdExit
    Caption = "&Exit"
    BackColor = &HFFC0C0&
    Left = 465
    Top = 7335
    Width = 1320
    Height = 795
    Visible = 0   'False
    TabIndex = 50
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
  Begin TextBox TxtGrid
    Index = 0
    BackColor = &HFFFFFF&
    Left = 14790
    Top = 6705
    Width = 345
    Height = 240
    Visible = 0   'False
    TabIndex = 45
    BorderStyle = 0 'None
    MaxLength = 9
    Appearance = 0 'Flat
  End
  Begin TextBox Txt
    Index = 10
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 1935
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 26
    BorderStyle = 0 'None
    MaxLength = 5
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
  End
  Begin TextBox Txt
    Index = 2
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2655
    Top = 1305
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 25
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 3
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1305
    Width = 450
    Height = 285
    Enabled = 0   'False
    TabIndex = 24
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 12
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 5625
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 23
    BorderStyle = 0 'None
    MaxLength = 8
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
  End
  Begin TextBox Txt
    Index = 11
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 4365
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 22
    BorderStyle = 0 'None
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
  End
  Begin TextBox Txt
    Index = 9
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 3105
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 21
    BorderStyle = 0 'None
    MaxLength = 50
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
  End
  Begin TextBox Txt
    Index = 1
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 1305
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 20
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 0
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3360
    Top = 600
    Width = 690
    Height = 285
    TabIndex = 19
    BorderStyle = 0 'None
    MaxLength = 5
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
  Begin TextBox Txt
    Index = 8
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3720
    Top = 2250
    Width = 1230
    Height = 285
    Enabled = 0   'False
    TabIndex = 18
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
  End
  Begin TextBox Txt
    Index = 7
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 14685
    Top = 6120
    Width = 990
    Height = 285
    Enabled = 0   'False
    Visible = 0   'False
    TabIndex = 17
    BorderStyle = 0 'None
    MaxLength = 1
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
  Begin TextBox Txt
    Index = 5
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 2250
    Width = 630
    Height = 285
    Enabled = 0   'False
    TabIndex = 16
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
  End
  Begin TextBox Txt
    Index = 6
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1995
    Top = 2250
    Width = 630
    Height = 285
    Enabled = 0   'False
    TabIndex = 15
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
  End
  Begin TextBox Txt
    Index = 4
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 990
    Width = 2265
    Height = 285
    Enabled = 0   'False
    TabIndex = 14
    BorderStyle = 0 'None
    MaxLength = 16
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
  Begin TextBox Txt
    Index = 19
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 3420
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 13
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
  End
  Begin TextBox Txt
    Index = 20
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 3735
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 12
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
  End
  Begin TextBox Txt
    Index = 21
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 4050
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 11
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
  End
  Begin TextBox Txt
    Index = 18
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 4680
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 10
    BorderStyle = 0 'None
    MaxLength = 16
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
  Begin TextBox Txt
    Index = 17
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 4995
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 9
    BorderStyle = 0 'None
    MaxLength = 50
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
  End
  Begin TextBox Txt
    Index = 16
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1185
    Top = 5310
    Width = 3960
    Height = 285
    Enabled = 0   'False
    TabIndex = 8
    BorderStyle = 0 'None
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
  End
  Begin TextBox Txt
    Index = 13
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 1335
    Top = 1620
    Width = 1290
    Height = 285
    Enabled = 0   'False
    TabIndex = 7
    BorderStyle = 0 'None
    MaxLength = 11
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
  End
  Begin TextBox Txt
    Index = 14
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 3150
    Top = 1620
    Width = 450
    Height = 285
    Enabled = 0   'False
    TabIndex = 6
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin TextBox Txt
    Index = 15
    BackColor = &HFFFFFF&
    ForeColor = &HC00000&
    Left = 2655
    Top = 1620
    Width = 465
    Height = 285
    Enabled = 0   'False
    TabIndex = 5
    BorderStyle = 0 'None
    Alignment = 2 'Center
    MaxLength = 3
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
    DataFormat = 80
    DataFormat = 38
  End
  Begin PictureBox Picture2
    Left = 3630
    Top = 990
    Width = 300
    Height = 285
    TabIndex = 4
    ScaleMode = 1
    AutoRedraw = False
    FontTransparent = True
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
  End
  Begin CommandButton Command3
    Caption = "Bill No manage"
    Left = 30
    Top = 6630
    Width = 1050
    Height = 495
    Visible = 0   'False
    TabIndex = 3
  End
  Begin CommandButton Command1
    Caption = "Command1"
    Left = 270
    Top = 495
    Width = 1050
    Height = 195
    Visible = 0   'False
    TabIndex = 1
  End
  Begin Frame Frame1
    Caption = "Frame1"
    BackColor = &HFFC0C0&
    Left = 19635
    Top = 3420
    Width = 660
    Height = 810
    Visible = 0   'False
    TabIndex = 0
    BorderStyle = 0 'None
  End
  Begin MSFlexGrid FGPoint
    Left = 14280
    Top = 60
    Width = 1980
    Height = 1440
    Visible = 0   'False
    TabIndex = 42
  End
  Begin MSHFlexGrid FGrid
    Left = 5280
    Top = 1140
    Width = 9990
    Height = 6090
    TabIndex = 44
  End
  Begin DataGrid DGRoomNo
    Left = 14460
    Top = 2370
    Width = 3795
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 46
  End
  Begin DataGrid DGRoomType
    Left = 13545
    Top = 1740
    Width = 4980
    Height = 3330
    Visible = 0   'False
    TabStop = 0   'False
    TabIndex = 47
  End
  Begin MSHFlexGrid Fgrid1
    Left = 5265
    Top = 7260
    Width = 9510
    Height = 270
    TabIndex = 48
  End
  Begin BtnEnh BtnExit
    Left = 3750
    Top = 6360
    Width = 1335
    Height = 1125
    TabIndex = 53
  End
  Begin BtnEnh BtnCommand2
    Left = 2340
    Top = 6360
    Width = 1380
    Height = 1140
    TabIndex = 54
  End
  Begin Label LblFormCaption
    BackColor = &HC0FFFF&
    Left = 0
    Top = 0
    Width = 180
    Height = 540
    TabIndex = 52
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
    Caption = "Guest Charge Details"
    Index = 2
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 5250
    Top = 585
    Width = 9510
    Height = 345
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
  Begin Label Label1
    Caption = "Folio Details"
    Index = 0
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 120
    Top = 2685
    Width = 5100
    Height = 345
    TabIndex = 43
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
    Caption = "Folio No"
    Index = 6
    ForeColor = &HC00000&
    Left = 150
    Top = 1965
    Width = 660
    Height = 225
    TabIndex = 41
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
    Caption = "Status"
    Index = 1
    ForeColor = &HC00000&
    Left = 105
    Top = 5640
    Width = 555
    Height = 225
    TabIndex = 40
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
    Left = 105
    Top = 4380
    Width = 795
    Height = 225
    TabIndex = 39
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
    Left = 105
    Top = 3120
    Width = 1035
    Height = 225
    TabIndex = 38
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
    Left = 3630
    Top = 1320
    Width = 780
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
    Caption = "Check In Date"
    Index = 26
    ForeColor = &HC00000&
    Left = 105
    Top = 1320
    Width = 1170
    Height = 225
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
    Caption = "Room Type"
    Index = 34
    ForeColor = &HC00000&
    Left = 90
    Top = 1005
    Width = 945
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
    Caption = "Room Rate"
    Index = 9
    ForeColor = &HC00000&
    Left = 2640
    Top = 2250
    Width = 1050
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
    Caption = "Rate Code"
    Index = 10
    ForeColor = &HC00000&
    Left = 13500
    Top = 6135
    Width = 870
    Height = 225
    Visible = 0   'False
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
  Begin Label Lbl
    Caption = "Adult/Child"
    Index = 11
    ForeColor = &HC00000&
    Left = 135
    Top = 2265
    Width = 900
    Height = 225
    TabIndex = 32
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
    Caption = "Address"
    Index = 2
    ForeColor = &HC00000&
    Left = 105
    Top = 3435
    Width = 720
    Height = 225
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
    Caption = "Comment3"
    Index = 13
    ForeColor = &HC00000&
    Left = 105
    Top = 5325
    Width = 930
    Height = 225
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
    Caption = "Comment2"
    Index = 8
    ForeColor = &HC00000&
    Left = 105
    Top = 5010
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
    Caption = "Comment1"
    Index = 7
    ForeColor = &HC00000&
    Left = 105
    Top = 4695
    Width = 930
    Height = 225
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
    Caption = "Depature date"
    Index = 4
    ForeColor = &HC00000&
    Left = 120
    Top = 1635
    Width = 1200
    Height = 225
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
    Caption = "Room Details"
    Index = 1
    BackColor = &HC00000&
    ForeColor = &HFFFFFF&
    Left = 120
    Top = 570
    Width = 5100
    Height = 350
    TabIndex = 2
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

Attribute VB_Name = "FdRevCheckOut"

Private global_124 As Integer
Private MasterFormExit As Integer
Private global_72 As Integer
Private global_68 As Long

Private Sub BtnCommand2_UnknownEvent_9 '14CF774
  'Data Table: 4E5AD8
  Dim var_B4 As Variant
  Dim var_BC As String
  Dim unk_4E5ADD As Connection15
  Dim var_9C As Recordset15
  Dim var_F4 As Variant
  Dim var_104 As Variant
  Dim var_B8 As String
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_DC As Variant
  Dim var_148 As Variant
  Dim var_150 As TextBox
  Dim var_154 As String
  Dim var_160 As String
  Dim var_164 As String
  Dim var_158 As String
  Dim var_E0 As Variant
  Dim MemVar_1F950EC As Double
  Dim var_144 As Variant
  Dim var_1A8 As Variant
  Dim var_228 As Variant
  Dim var_308 As Variant
  Dim var_3C8 As Variant
  Dim unk_4E5B16 As Connection15
  Dim var_A8 As Long
  Dim var_3F4 As String
  Dim var_14C As Field20
  Dim var_124 As Variant
  Dim var_1F8 As Variant
  loc_14CEAA2: Set var_B0 = Me.Txt
  loc_14CEAA8: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4)
  loc_14CEAB0: var_B8 = var_B4.Text
  loc_14CEAC7: If (var_B8 = vbNullString) Then
  loc_14CEACA:   Exit Sub
  loc_14CEACB: End If
  loc_14CEAE9: Set var_B0 = Me.Txt
  loc_14CEAEF: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8, "Select  bill_no,AmtDr from paycharge where (ContraDocId is NULL or contradocid='') and foliono=")
  loc_14CEAF7: var_DC = var_B4.Text
  loc_14CEB00: var_BC = -1 & var_B8
  loc_14CEB09: unk_4E5ADD.Execute var_BC, var_E0, 
  loc_14CEB14: Set var_9C = var_E0
  loc_14CEB3E: If (var_9C.RecordCount > 0) Then
  loc_14CEB4A:   var_9C.Filter = "Bill_No=NULL and AmtDr<>0"
  loc_14CEB4F: End If
  loc_14CEB55: var_E4 = var_9C.RecordCount
  loc_14CEB63: If (var_E4 > 0) Then
  loc_14CEB79:   var_DC = "First Print Bill "
  loc_14CEB7F:   MsgBox(var_DC, &H40, var_104, var_124, var_144)
  loc_14CEB8F:   Exit Sub
  loc_14CEB90: End If
  loc_14CEBAD: Proc_6_17_EAAE40(var_DC, MemVar_1F95078, "Select * from enviro WHERE LOGSITE_CODE=")
  loc_14CEBB5: var_104 = var_124 & var_DC 
  loc_14CEBB9: var_B8 = CStr(var_104)
  loc_14CEBC3: unk_4E5ADD.Execute var_B8, -1, var_B0
  loc_14CEBCE: Set var_9C = var_B0
  loc_14CEBFE: Set var_B0 = Me.Txt
  loc_14CEC04: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8, "Select distinct Bill_No from Paycharge where FolioNo=")
  loc_14CEC0C: var_DC = var_B4.Text
  loc_14CEC15: var_BC = -1 & var_B8
  loc_14CEC1E: unk_4E5ADD.Execute var_BC, var_E0, 
  loc_14CEC29: Set var_AC = var_E0
  loc_14CEC59: var_B4 = Me.Fields.Item("ChkOutDate")
  loc_14CEC78: Set var_E0 = Me.Txt
  loc_14CEC7E: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148)
  loc_14CECA2: Set var_14C = Me.Txt
  loc_14CECA8: Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_150)
  loc_14CECD5: If ((IsNull(CVar(var_B4)) And (var_148.Text <> vbNullString)) And (var_150.Text <> vbNullString)) Then
  loc_14CECE6:   Set var_B0 = Me.Txt
  loc_14CECEC:   Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(9), var_B4)
  loc_14CED07:   Set var_E0 = Me.Txt
  loc_14CED0D:   Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148)
  loc_14CED2F:   var_BC = "Checking Out Person :" & var_B4.Text
  loc_14CED44:   var_160 = var_BC & vbCrLf & "RoomNo :" & var_148.Text
  loc_14CED87:   If (MsgBox(CVar(var_160 & vbCrLf & "Are you Sure ?"), &H21, var_104, var_124, var_144) = 1) Then
  loc_14CED98:     Set var_B0 = Me.Txt
  loc_14CED9E:     Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(1), var_B4)
  loc_14CEDBE:     If (CDate(var_B4.Text) <= MemVar_1F950EC) Then
  loc_14CEDC1:       ' Referenced from: 14CEF6B
  loc_14CEDD5:       var_B8 = "Select val(Sum(AmtDr))-val(Sum(AmtCr)) as Bal from PayCharge where Site_Code='" & MemVar_1F95070
  loc_14CEDED:       Set var_B0 = Me.Txt
  loc_14CEDF3:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_BC, var_B4.Text & "' and VType Not In ('ARRES','ADRES') and Foliono=")
  loc_14CEDFB:       var_DC = var_B4.Text
  loc_14CEE04:       var_158 = -1 & var_BC
  loc_14CEE0D:       unk_4E5ADD.Execute var_148.Text, var_E0, 
  loc_14CEE49:       var_B4 = var_E0.Fields.Item("Bal")
  loc_14CEE51:       var_DC = CVar(var_B4) 'Address
  loc_14CEE58:       Proc_6_39_E7D3A0(var_104)
  loc_14CEE60:       var_F4 = 0
  loc_14CEE72:       If CBool(var_104 <> var_F4) Then
  loc_14CEE88:         var_DC = "Guest Balance is Not Zero"
  loc_14CEEA4:         If (MsgBox(var_DC, &H41, var_104, var_124, var_144) = 1) Then
  loc_14CEEB9:           fdPaymentCharge.OpenMode = 1
  loc_14CEEC7:           fdPaymentCharge.ParentForm = "Check Out"
  loc_14CEEDA:           Set var_B0 = Me.FrReference
  loc_14CEEE0:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4)
  loc_14CEF00:           Set var_E0 = New fdPaymentCharge.Txt
  loc_14CEF06:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148)
  loc_14CEF0E:           fdPaymentCharge.Txt.Text = fdPaymentCharge.FrReference.Text
  loc_14CEF33:           Call fdPaymentCharge.Txt_Validate(CInt(0))
  loc_14CEF41:           Call 0.Method_arg_54 ("Bill Settlement", 0)
  loc_14CEF59:           Call 0.Method_arg_2B0 (1, var_F4)
  loc_14CEF63:           Set var_8C = Nothing
  loc_14CEF66:           Call Proc_101_44_141C084(var_DC)
  loc_14CEF6B:           GoTo loc_14CEDC1
  loc_14CEF71:         Else
  loc_14CEF84:           var_DC = "Guest Not Checked Out"
  loc_14CEF8A:           MsgBox(var_DC, &H40, var_104, var_124, var_144)
  loc_14CEF9A:           Exit Sub
  loc_14CEF9B:         End If
  loc_14CEF9E:       Else
  loc_14CEFA4:         var_F4 = 0
  loc_14CEFD1:         unk_4E5ADD.Execute "Select NCUR from enviro where LOGsite_code='" & MemVar_1F95078 & "'", var_DC, -1
  loc_14CEFD9:         var_B0 = var_B0.Fields
  loc_14CEFE1:         var_F4 = var_B4.Item(var_B4)
  loc_14CEFE9:         var_E0 = var_E0.Value
  loc_14CEFF3:         MemVar_1F950EC = CDate(var_104)
  loc_14CF016:         unk_4E5ADD.BeginTrans var_E4
  loc_14CF01E:         var_DC = Time
  loc_14CF032:         var_104 = "hh"
  loc_14CF03E:         var_124 = Format(var_DC, var_104)
  loc_14CF076:         Proc_6_7_F26918(var_1F8, MemVar_1F950EC, 1, 1)
  loc_14CF086:         Proc_6_7_F26918(var_248, MemVar_1F950EC, 1)
  loc_14CF096:         Proc_6_7_F26918(var_2D8, CVar(Proc_6_15_EF37AC(1, MemVar_1F950EC)))
  loc_14CF0A9:         Set var_B0 = Me.Txt
  loc_14CF0AF:         Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4)
  loc_14CF0B7:         var_B8 = var_B4.Tag
  loc_14CF0D0:         Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148)
  loc_14CF0F7:         var_144 = (var_124 + ":")
  loc_14CF0FE:         var_1A8 = (var_144 + Format(Time, "nn"))
  loc_14CF11B:         var_228 = "Update RoomOcc set chkouttime='" & var_1A8 & "',ChkOutDate=" & var_1F8 & ",UserchkoutDate=" 
  loc_14CF14E:         var_308 = var_228 & var_248 & ",ChkOutUser='" & CVar(MemVar_1F950C8) & "',Type='O',U_EntDt=" & var_2D8 & ",U_AE='E' where DocId='" 
  loc_14CF187:         var_3C8 = var_308 & CVar(var_B8) & "' and Site_Code='" & CVar(MemVar_1F95070) & "' and RoomNO='" & CVar(var_148.Text) & "' and (Type='' or Type is NULL)" 
  loc_14CF195:         unk_4E5ADD.Execute CStr(var_3C8), var_3E8, -1
  loc_14CF209:         Set var_B0 = Me.Txt
  loc_14CF20F:         Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4, var_B8, "Update RoomMast set ROOMSTAT='D' WHERE CODE='", var_DC)
  loc_14CF217:         -1 = var_B4.Text
  loc_14CF227:         var_154 = Me.Txt & var_B8 & "' AND TYPE='RO'"
  loc_14CF230:         unk_4E5ADD.Execute var_154, var_14C, var_104
  loc_14CF252:         If (MemVar_1F951D4 = "Y") Then
  loc_14CF25B:           var_F4 = 0
  loc_14CF27A:           unk_4E5B16.Execute "Select iif(IsNull(Max(ID)),1,Max(ID)+1)AS MyCode From EPABX_IN", var_DC, -1
  loc_14CF282:           var_B0 = var_B0.Fields
  loc_14CF28A:           var_F4 = var_B4.Item(var_B4)
  loc_14CF292:           var_E0 = var_E0.Value
  loc_14CF29C:           var_A8 = CLng(var_104)
  loc_14CF2C8:           var_BC = "insert into EPABX_IN (ID,V_TYPE,ROOM_NO,ROOM_NO_NEW,GUEST_NAME,ADVANCE) VALUES (" & CStr(var_A8)
  loc_14CF2E0:           Set var_B0 = Me.Txt
  loc_14CF2E6:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4, var_154, var_BC & ",'CHKOT','", var_DC)
  loc_14CF2EE:           -1 = var_B4.Text
  loc_14CF2FE:           var_164 = var_400 & var_154 & "','"
  loc_14CF30F:           Set var_E0 = Me.Txt
  loc_14CF315:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_148, var_160)
  loc_14CF31D:           var_164 = var_148.Text
  loc_14CF32D:           var_3F4 = var_A8 & var_160 & "','"
  loc_14CF33E:           Set var_14C = Me.Txt
  loc_14CF344:           Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(9), var_150, var_3F0)
  loc_14CF34C:           var_3F4 = var_150.Text
  loc_14CF365:           unk_4E5B16.Execute var_104 & var_3F0 & "',0)", , 
  loc_14CF399:         End If
  loc_14CF39F:         unk_4E5ADD.CommitTrans
  loc_14CF3A4:         Call Proc_101_42_EAD0B0()
  loc_14CF3A9:       End If
  loc_14CF3AC:     Else
  loc_14CF3C5:       MsgBox("InValid Check Out Date", 0, var_104, var_124, var_144)
  loc_14CF3D5:       Exit Sub
  loc_14CF3D6:     End If
  loc_14CF3D9:   Else
  loc_14CF3E0:     Call Txt_GotFocus()
  loc_14CF3E5:   End If
  loc_14CF3E8: Else
  loc_14CF3F6:   Set var_B0 = Me.Txt
  loc_14CF3FC:   Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4)
  loc_14CF404:   var_B8 = var_B4.Text
  loc_14CF41F:   Set var_E0 = Me.Txt
  loc_14CF425:   Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_148, var_BC)
  loc_14CF42D:   (var_B8 <> vbNullString) = var_148.Tag
  loc_14CF44D:   If (CInt(0) And (var_BC <> vbNullString)) Then
  loc_14CF463:     var_DC = "Want to Cancel Check Out ?"
  loc_14CF47F:     If (MsgBox(var_DC, &H24, var_104, var_124, var_144) = 6) Then
  loc_14CF4AF:       Set var_B0 = Me.Txt
  loc_14CF4B5:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(0), var_B4, var_B8, "Select Count(*) from RoomOcc where RoomNO='", var_DC, -1)
  loc_14CF4D6:       unk_4E5ADD.Execute var_148 & var_B8 & "' and CHkoutDate is NULL", 0, var_14C
  loc_14CF4DE:       var_104 = var_B4.Text.Fields
  loc_14CF4E6:        = var_148.Item()
  loc_14CF4EE:        = var_14C.Value
  loc_14CF51B:       If (var_104 > 0) Then
  loc_14CF537:         MsgBox("Sorry! Room Already Occupied", &H40, var_104, var_124, var_144)
  loc_14CF547:         Exit Sub
  loc_14CF548:       End If
  loc_14CF551:       unk_4E5ADD.BeginTrans var_E4
  loc_14CF573:       Proc_6_7_F26918(var_104, CVar(Proc_6_15_EF37AC("Update RoomOcc set chkouttime='',ChkOutDate=NULL,Type='',U_EntDt=", var_228)))
  loc_14CF57B:       var_124 = -1 & var_104 
  loc_14CF57F:       var_F4 = ",U_AE='E',UserChkOutDate=NULL,ChkOutUser='' where Type='O' AND (Docid In (Select DocId From GuestFolio where MFolioNoDocid='"
  loc_14CF584:       var_144 = var_124 & var_F4 
  loc_14CF596:       Set var_B0 = Me.Txt
  loc_14CF59C:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8)
  loc_14CF5A4:       var_144 = var_B4.Tag
  loc_14CF5D0:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_148)
  loc_14CF60D:       unk_4E5ADD.Execute CStr(var_14C & CVar(var_B8) & "') Or DocId='" & CVar(var_148.Tag) & "') and Site_Code='" & CVar(MemVar_1F95070) & "'"), , 
  loc_14CF65D:       Set var_B0 = Me.Txt
  loc_14CF663:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8, "Update PayCharge Set SettleDate=Null where folionoDocId='")
  loc_14CF66B:       var_DC = var_B4.Tag
  loc_14CF674:       var_BC = -1 & var_B8
  loc_14CF67B:       var_154 = var_148.Tag & "'"
  loc_14CF684:       unk_4E5ADD.Execute var_154, Me.Txt, 
  loc_14CF6BC:       Set var_B0 = Me.Txt
  loc_14CF6C2:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_B4, var_B8, "Update PayCharge Set ModeSet='',Bill_No=(Select IsNull(Max(Bill_No),'') From PayCharge where folionoDocId='")
  loc_14CF6CA:       var_DC = var_B4.Tag
  loc_14CF6D3:       var_BC = -1 & var_B8
  loc_14CF6DA:       var_158 = var_148.Tag & "') where folionoDocId='"
  loc_14CF6EB:       Set var_E0 = Me.Txt
  loc_14CF6F1:       Call 0.Method_BtnCommand2_UnknownEvent_90 (CInt(&HA), var_148, var_154)
  loc_14CF6F9:       var_158 = var_148.Tag
  loc_14CF720:       unk_4E5ADD.Execute var_14C & var_154 & "' And ModeSet='S' And PayCode Not In ('" & MemVar_1F95078 & "ROFF')", , 
  loc_14CF74E:       unk_4E5ADD.CommitTrans
  loc_14CF753:     End If
  loc_14CF753:     GoTo loc_14CF756
  loc_14CF756:     ' Referenced from:   14CF753
  loc_14CF756:   End If
  loc_14CF756: End If
  loc_14CF761: Me.Requery -1
  loc_14CF76D: Call Txt_GotFocus()
  loc_14CF772: Exit Sub
End Sub

Private Sub btnExit_UnknownEvent_9 'E185B0
  'Data Table: 4E5AD8
  loc_E185A5: Me.Global.Unload Me
  loc_E185AD: Exit Sub
End Sub

Private Sub DGRoomType_UnknownEvent_9 'F38374
  'Data Table: 4E5AD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F3826B: Me.DGRoomType.Visible = False
  loc_F3828A: If (Me.RecordCount > 0) Then
  loc_F382C9:   Set var_B4 = Me.Txt
  loc_F382CF:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F382D7:   var_B8.Tag = CStr(Me.Fields.Item("Code").Value)
  loc_F3830A:   var_B0 = Me.Fields.Item("Name")
  loc_F38329:   Set var_B4 = Me.Txt
  loc_F3832F:   Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4), var_B8)
  loc_F38337:   var_B8.Text = CStr(var_B0.Value)
  loc_F3834D: End If
  loc_F38358: Set var_A8 = Me.Txt
  loc_F3835E: Call 0.Method_DGRoomType_UnknownEvent_90 (CInt(4))
  loc_F38366: var_B0.SetFocus
  loc_F38372: Exit Sub
  loc_F38373: Exit Sub
End Sub

Private Sub Form_Load() '109A4D8
  'Data Table: 4E5AD8
  Dim var_A0 As Variant
  Dim var_8C As Variant
  Dim var_B4 As String
  Dim unk_4E5B3D As Connection15
  Dim unk_4E5ADD As Connection15
  Dim var_C8 As Variant
  Dim var_EC As Variant
  Dim var_12C As Variant
  Dim Me As Recordset15
  Dim var_CC As TextBox
  Dim var_164 As DataGrid
  Dim var_168 As TextBox
  loc_109A240: On Error Goto loc_109A4D1
  loc_109A259: Proc_6_23_DFC5B8(Me, 0)
  loc_109A268: Call 0.Method_arg_64 (CLng(MemVar_1F951B4))
  loc_109A27A: Set var_8C = Me.FGrid
  loc_109A280: var_8C.BackColorBkg = CVar(CLng(MemVar_1F951B8))
  loc_109A2AC: unk_4E5B3D.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95078 & "FOM'", var_C8, -1
  loc_109A2BD: Set global_120 = var_8C
  loc_109A2DC: Set global_92 = New 
  loc_109A2EE: Me.Recordset15.CursorLocation = 3
  loc_109A317: unk_4E5ADD.Execute "Select nCUR from enviro where LOGsite_code='" & MemVar_1F95078 & "'", var_C8, -1
  loc_109A341: var_8C = var_8C.Fields
  loc_109A349: var_CC = var_8C.Item("Ncur")
  loc_109A358: Proc_6_7_F26918(var_DC, CVar(var_CC), var_8C)
  loc_109A37B: var_B4 = "SELECT RoomMast.Code AS SearchCode, RoomMast.Code AS RoomNo, RoomMast.Name AS Quot, RoomOcc.ChkInDate, RoomOcc.ChkInTime, RoomOcc.ChkOutDate, RoomOcc.ChkOutTime, RoomOcc.DepDate, RoomOcc.DepTime, GuestProf.Name as GuestName, GuestProf.GuestStatus, SubGroup.Name as CompanyNAme, GuestProf.Code AS GuestCode, SubGroup.SubCode as CompanyCode,GuestFolio.FolioNO as FolioNo, RoomOcc.RateCode, RoomOcc.RoomRate, RoomOcc.Adult AS OldADult, RoomOcc.Children AS OldChild, RoomOcc.RoomCat AS RoomCatCode, RoomCat.Name AS RoomCat,GuestProf.Add1,GuestProf.Add2,GuestProf.CityName,GuestProf.StateName,GuestProf.CountryName, GuestProf.Comments1, GuestProf.Comments2, GuestProf.Comments3,GUESTSTAT.NAME AS STATUSNAME,roomocc.Docid " & "FROM (((((RoomMast LEFT JOIN RoomOcc ON RoomMast.Code = RoomOcc.RoomNo) LEFT JOIN GuestFolio ON RoomOcc.DocId = GuestFolio.DocId) LEFT JOIN GuestProf ON GuestFolio.GuestProf = GuestProf.Code) LEFT JOIN SubGroup ON GuestFolio.Company = SubGroup.SubCode) LEFT JOIN RoomCat ON RoomOcc.RoomCat = RoomCat.Code) LEFT JOIN GUESTSTAT ON GUESTSTAT.CODE=GUESTPROF.GUESTSTATUS where (RoomMast.LOGSITE_CODE='"
  loc_109A389: var_EC = CVar(var_B4 & MemVar_1F95078 & "' or RoomMast.LOGSITE_CODE='HO') and RoomMast.type='RO' and ROOMOCC.TYPE NOT IN ('C') and ChkOutDate=") 'String
  loc_109A3A2: var_12C = var_EC & var_DC & " and RoomMAst.Code in (Select ISNULL(RoomNo,'') from RoomOcc where (LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_109A3B6: Me.Open var_12C & "' or LOGSITE_CODE='HO') and isnull(type,'')='O') Order by RoomMast.Code", CVar(MemVar_1F95044), 2
  loc_109A3DC: Call 0.Method_arg_54 ("Reverse Check Out Entry", 3, -1)
  loc_109A3EB: Set var_8C = Me.BtnCommand2
  loc_109A3F1: Call {F3048E73-C6D0-447B-BEF232B5B3F851B3}.DispID_FFFFFDFA("Reverse Check Out")
  loc_109A407: Set var_8C = Me.Txt
  loc_109A40D: Call 0.Method_Form_Load0 (CInt(0), var_CC, var_160)
  loc_109A415: var_8C = var_CC.Left
  loc_109A42C: Me.DGRoomNo.Left = CVar(var_160)
  loc_109A448: Set var_164 = Me.Txt
  loc_109A44E: Call 0.Method_Form_Load0 (CInt(0), var_168)
  loc_109A469: Set var_8C = Me.Txt
  loc_109A46F: Call 0.Method_Form_Load0 (CInt(0), var_CC)
  loc_109A487: var_A0 = CVar(((var_CC.Top + var_168.Height) + CDbl(&H1E))) 'Single
  loc_109A496: Me.DGRoomNo.Top = CVar(var_CC.Top)
  loc_109A4B1: CVarUnk
  loc_109A4B6: VerifyVarObj
  loc_109A4BC: Set var_8C = Me.DGRoomNo
  loc_109A4C2: LateIdStAd
  loc_109A4D0: Exit Sub
  loc_109A4D1: ' Referenced from: 109A240
  loc_109A4D1: Proc_6_60_E63754(var_8C, global_92)
  loc_109A4D6: Exit Sub
End Sub

Private Sub Form_Resize() 'E74C34
  'Data Table: 4E5AD8
  loc_E74BDE: Call 0.Method_arg_50 (var_88)
  loc_E74BF0: Me.LblFormCaption.Caption = var_88
  loc_E74C09: Me.LblFormCaption.Left = CDbl(0)
  loc_E74C17: Call 0.Method_arg_100 (var_90)
  loc_E74C29: Me.LblFormCaption.Width = var_90
  loc_E74C31: Exit Sub
End Sub

Private Sub Form_Unload(Cancel As Integer) '1142B44
  'Data Table: 4E5AD8
  Dim var_90 As Variant
  Dim var_94 As String
  Dim var_A4 As Variant
  Dim var_8C As MSHFlexGrid
  Dim var_B4 As Variant
  Dim var_F4 As Variant
  Dim var_128 As Variant
  Dim var_C4 As Variant
  Dim var_160 As TextBox
  Dim unk_4E5ADD As Connection15
  loc_11427DA: Set var_8C = Me.Txt
  loc_11427E0: Call 0.Method_Form_Unload0 (CInt(&HA), var_90)
  loc_1142809: If ((var_90.Text <> vbNullString) And (global_124 = &HFF)) Then
  loc_1142844:   If (MsgBox(CVar("Room Charges are Posted," & vbCrLf & "Do you want to delete Charges?"), &H24, var_C4, var_E4, var_104) = 6) Then
  loc_114286C:     For var_108 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)): var_86 = var_108 'Integer
  loc_1142876:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_114287E:       var_F4 = CVar(CLng(7)) 'Long
  loc_1142898:       var_94 = CStr(Me.FGrid.TextMatrix))
  loc_11428A4:       var_128 = CVar(CLng(var_86)) 'Long
  loc_11428BB:       var_C4 = Me.FGrid.TextMatrix)
  loc_11428E4:       If (CVar(CLng(0)) And (CStr(var_C4) = "*")) Then
  loc_1142902:         var_A4 = Me.FGrid.TextMatrix)
  loc_114291C:         Set var_90 = Me.Txt
  loc_1142922:         Call 0.Method_Form_Unload0 (CInt(&HA), var_160, var_164, var_A4, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_114292A:         var_128 = var_160.Text
  loc_114295E:         unk_4E5ADD.Execute "Delete from Paycharge where Docid='" & CStr(var_A4) & "' and MarkEntry='*' and FolioNo=" & var_164, var_C4, -1
  loc_1142982:       End If
  loc_1142985:     Next var_108 'Integer
  loc_114298F:     global_124 = 0
  loc_1142995:   Else
  loc_11429BA:     For var_174 = 1 To CInt((CLng(Me.FGrid.Rows) - 1)):   var_86 = var_174 'Integer
  loc_11429C4:       var_B4 = CVar(CLng(var_86)) 'Long
  loc_11429CC:       var_F4 = CVar(CLng(7)) 'Long
  loc_11429E6:       var_94 = CStr(Me.FGrid.TextMatrix))
  loc_11429F2:       var_128 = CVar(CLng(var_86)) 'Long
  loc_1142A09:       var_C4 = Me.FGrid.TextMatrix)
  loc_1142A32:       If (CVar(CLng(0)) And (CStr(var_C4) = "*")) Then
  loc_1142A50:         var_A4 = Me.FGrid.TextMatrix)
  loc_1142A6A:         Set var_90 = Me.Txt
  loc_1142A70:         Call 0.Method_Form_Unload0 (CInt(&HA), var_160, var_164, var_A4, CVar(CLng(7)), CVar(CLng(var_86)))
  loc_1142A78:         var_128 = var_160.Text
  loc_1142AAC:         unk_4E5ADD.Execute "Update Paycharge set MarkEntry='' where markEntry='*' and  Docid='" & CStr(var_A4) & "' and FolioNo=" & var_164, var_C4, -1
  loc_1142AD0:       End If
  loc_1142AD3:     Next var_174 'Integer
  loc_1142ADD:     global_124 = 0
  loc_1142AE0:   End If
  loc_1142AE0: End If
  loc_1142AEB: Set global_92 = Nothing
  loc_1142AFD: Set global_88 = Nothing
  loc_1142B0F: Set global_100 = Nothing
  loc_1142B21: Set global_96 = Nothing
  loc_1142B33: Set global_120 = Nothing
  loc_1142B3F: MasterFormExit = 0
  loc_1142B42: Exit Sub
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) 'E5A8F4
  'Data Table: 4E5AD8
  loc_E5A8BC: Set var_88 = Me.TopCtrl1
  loc_E5A8C2: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E5A8E5: If ((CStr() <> "Browse") And (MasterFormExit = 0)) Then
  loc_E5A8ED:   Call Form_Unload(&HFF)
  loc_E5A8F2: End If
  loc_E5A8F2: Exit Sub
End Sub

Private Sub Form_Activate() 'EFD3F4
  'Data Table: 4E5AD8
  Dim unk_4E5B3D As Connection15
  Dim var_B8 As TextBox
  Dim arg_1D3D As Boolean
  loc_EFD330: On Error Goto loc_EFD3C2
  loc_EFD357: unk_4E5B3D.Execute "Select * from PrinterSetup Where RestCode='" & MemVar_1F95078 & "FOM'", var_B0, -1
  loc_EFD368: Set global_120 = var_B4
  loc_EFD391: If (FdRevCheckOut.OpenMode = 1) Then
  loc_EFD394:   Call Proc_101_44_141C084(var_B4)
  loc_EFD39C: Else
  loc_EFD3A7:   Set var_B4 = Me.Txt
  loc_EFD3AD:   Call 0.Method_Form_Activate0 (CInt(0))
  loc_EFD3B5:   var_B8.SetFocus
  loc_EFD3C1: End If
  loc_EFD3C1: Exit Sub
  loc_EFD3C2: ' Referenced from: EFD330
  loc_EFD3DB: MsgBox("FORM ACTIVATE", 0, var_DC, var_FC, var_11C)
  loc_EFD3EB: Proc_6_60_E63754(var_B8)
  loc_EFD3F0: Exit Sub
  loc_EFD3F1: arg_1D3D = True
End Sub

Private Sub Form_Deactivate() 'E25D64
  'Data Table: 4E5AD8
  loc_E25D49: If (MasterFormExit = &HFF) Then
  loc_E25D59:   Me.Global.Unload Me
  loc_E25D61: End If
  loc_E25D61: Exit Sub
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer) 'E62B48
  'Data Table: 4E5AD8
  loc_E62AFC: On Error Goto loc_E62B3F
  loc_E62B09: If (CLng(KeyCode) = &H79) Then
  loc_E62B19:   Me.Global.Unload Me
  loc_E62B21:   Exit Sub
  loc_E62B22: End If
  loc_E62B36: Proc_6_88_FE8F6C(Me, KeyCode)
  loc_E62B3E: Exit Sub
  loc_E62B3F: ' Referenced from: E62AFC
  loc_E62B3F: Proc_6_60_E63754(Shift)
  loc_E62B44: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_0 'E61344
  'Data Table: 4E5AD8
  Dim var_A8 As MSHFlexGrid
  Dim var_AC As TextBox
  loc_E6130F: Me.FGrid.BackColorSel = CVar(CLng("14737632"))
  loc_E61322: Set var_A8 = Me.TxtGrid
  loc_E61328: Call 0.Method_FGrid_UnknownEvent_00 (0, var_AC)
  loc_E61330: var_AC.Visible = False
  loc_E6133C: Call Proc_101_43_EBE988()
  loc_E61341: Exit Sub
  loc_E61342: CExtInstUnk
End Sub

Private Sub FGrid_UnknownEvent_1 'E66DD0
  'Data Table: 4E5AD8
  Dim var_8C As TextBox
  Dim var_88 As MSHFlexGrid
  loc_E66D8C: Set var_88 = Me.TxtGrid
  loc_E66D92: Call 0.Method_FGrid_UnknownEvent_10 (0, var_8C)
  loc_E66DAC: If (var_8C.Visible = 0) Then
  loc_E66DC5:   Me.FGrid.BackColorSel = CVar(CLng(global_60))
  loc_E66DCD: End If
  loc_E66DCD: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_8 'E1EC80
  'Data Table: 4E5AD8
  loc_E1EC77: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EC7F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_A '1006258
  'Data Table: 4E5AD8
  Dim var_B4 As MSHFlexGrid
  Dim var_9C As String
  Dim var_D4 As Variant
  Dim KeyCode As Integer
  Dim var_FC As Variant
  Dim var_11C As String
  loc_10060C8: If ((CLng(KeyCode) = &H26) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - (CLng(Me.FGrid.Rows) - 1))))) Then
  loc_10060DE:   Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_10060EE:   var_9C = "+{Tab}"
  loc_10060F4:   Proc_303_0_FBACC8(CStr(Me.FGrid.Tag), 0)
  loc_10060FE:   KeyCode = 0
  loc_1006104: Else
  loc_100615B:   If ((CLng(KeyCode) = &H28) And (CDbl(Val(CStr(Me.FGrid.Tag))) = CDbl((CLng(Me.FGrid.Rows) - 1)))) Then
  loc_1006171:     Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_1006179:   End If
  loc_1006179: End If
  loc_100619C: Me.FGrid.Tag = CVar(CStr(CLng(Me.FGrid.Row)))
  loc_10061C0: If ((CLng(KeyCode) = &H2E) And (Shift = 0)) Then
  loc_10061E6:   If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_10061FC:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_1006214:     var_FC = CVar(CLng(Me.FGrid.Col)) 'Long
  loc_1006219:     var_11C = vbNullString
  loc_1006223:     Set var_B4 = Me.FGrid
  loc_1006229:     LateIdCallSt
  loc_1006241:   End If
  loc_1006241: End If
  loc_1006247: If (KeyCode = &HD) Then
  loc_100624F:   global_72 = 0
  loc_1006252: End If
  loc_1006254: KeyCode = 0
  loc_1006257: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_C 'FB1F84
  'Data Table: 4E5AD8
  Dim var_88 As MSHFlexGrid
  Dim var_B0 As String
  Dim var_CA As Integer
  Dim var_B4 As TextBox
  Dim var_C4 As TextBox
  loc_FB1E17: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_FB1E1E:   Set var_C4 = Me.FGrid
  loc_FB1E42:   var_B0 = CStr(Ucase(Chr(CLng(KeyCode))))
  loc_FB1E6F:   Set var_B4 = var_C4
  loc_FB1E81:   Proc_6_63_110B734(Me, var_B4, Me.TxtGrid, 0, 0)
  loc_FB1EA9:   Set var_88 = Me.TxtGrid
  loc_FB1EAF:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0, Asc(var_B0))
  loc_FB1EB7:   0 = var_B4.Text
  loc_FB1ED0:   If (Len(var_B0) <= 1) Then
  loc_FB1EDF:     Set var_88 = Me.TxtGrid
  loc_FB1EE5:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4, var_B0)
  loc_FB1EED:     var_CA = var_B4.Text
  loc_FB1EFE:     Set var_B8 = Me.TxtGrid
  loc_FB1F04:     Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FB1F0C:     var_C4.Text = var_B0
  loc_FB1F1F:   End If
  loc_FB1F2B:   Set var_88 = Me.TxtGrid
  loc_FB1F31:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_B4)
  loc_FB1F4B:   Set var_B8 = Me.TxtGrid
  loc_FB1F51:   Call 0.Method_FGrid_UnknownEvent_C0 (0, var_C4)
  loc_FB1F59:   var_C4.SelStart = Len(var_B4.Text)
  loc_FB1F6C: End If
  loc_FB1F76: If (CLng(KeyCode) <> &HD) Then
  loc_FB1F7E:   global_72 = &HFF
  loc_FB1F81: End If
  loc_FB1F81: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_14 'E1EC30
  'Data Table: 4E5AD8
  loc_E1EC27: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_E1EC2F: Exit Sub
End Sub

Private Sub FGrid_UnknownEvent_15 'E40274
  'Data Table: 4E5AD8
  Dim var_8C As TextBox
  loc_E40248: Call Proc_101_43_EBE988()
  loc_E40258: Set var_88 = Me.TxtGrid
  loc_E4025E: Call 0.Method_FGrid_UnknownEvent_150 (0, var_8C)
  loc_E40266: var_8C.Visible = False
  loc_E40272: Exit Sub
End Sub

Private Sub FGPoint_UnknownEvent_9 'E64964
  'Data Table: 4E5AD8
  loc_E64934: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_E64937:   Call DGRoomType_UnknownEvent_9()
  loc_E6493C: End If
  loc_E64958: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_E6495B:   Call DGRoomNo_UnknownEvent_9()
  loc_E64960: End If
  loc_E64960: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_D 'F11CD4
  'Data Table: 4E5AD8
  Dim Me As Recordset15
  Dim var_98 As TextBox
  loc_F11BEC: On Error Goto loc_F11C91
  loc_F11C06: If (Me.RecordCount > 0) Then
  loc_F11C1E:   var_8C = "EDIT"
  loc_F11C2C:   Call Proc_101_41_E79974(Proc_5_1_100EC1C(var_8C, Me))
  loc_F11C42:   Set var_90 = Me.Txt
  loc_F11C48:   Call 0.Method_TopCtrl1_UnknownEvent_D0 (CInt(0), var_98)
  loc_F11C50:   var_98.SetFocus
  loc_F11C5F: Else
  loc_F11C80:   MsgBox("No Record To Edit.", &H40, "Information", var_F8, var_118)
  loc_F11C90: End If
  loc_F11C90: Exit Sub
  loc_F11C91: ' Referenced from: F11BEC
  loc_F11C99: Set var_90 = Err()
  loc_F11C9F: Call 0.Method_arg_2C (var_8C)
  loc_F11CC0: MsgBox(CVar(var_8C), &H30, " Editing Error ", var_F8, var_118)
  loc_F11CD3: Exit Sub
End Sub

Private Sub TopCtrl1_UnknownEvent_F 'ECAF94
  'Data Table: 4E5AD8
  Dim Me As Recordset15
  Dim var_B8 As String
  Dim MemVar_1F950E4 As String
  loc_ECAEF0: On Error Goto loc_ECAF8B
  loc_ECAF0A: If (Me.RecordCount <= 0) Then
  loc_ECAF13:   var_B8 = "Information"
  loc_ECAF2E:   MsgBox("No Records To Search.", &H40, var_B8, var_E8, var_108)
  loc_ECAF3E:   Exit Sub
  loc_ECAF3F: End If
  loc_ECAF50: MemVar_1F950E4 = "SELECT DocId AS SearchCode FROM GuestFolio where VType='" & mVType & "' ORDER BY VDate"
  loc_ECAF5D: MemVar_1F95120 = Me
  loc_ECAF6A: Proc_6_126_F1C850("2000,2000,2000,2000")
  loc_ECAF85: Call 0.Method_arg_2B0 (1, var_B8)
  loc_ECAF8A: Exit Sub
  loc_ECAF8B: ' Referenced from: ECAEF0
  loc_ECAF8B: Proc_6_60_E63754(MemVar_1F950E4)
  loc_ECAF90: Exit Sub
  loc_ECAF91: Get , ,  'get  bytes
End Sub

Private Sub TopCtrl1_UnknownEvent_16 'F05D6C
  'Data Table: 4E5AD8
  Dim Me As Recordset15
  Dim var_8C As TextBox
  loc_F05C98: On Error Goto loc_F05D31
  loc_F05CA6: Set var_88 = Me.Txt
  loc_F05CAC: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0))
  loc_F05CB4: var_94 = "Room No"
  loc_F05CD5: If (Proc_6_27_EA61EC(var_8C, var_94) = 0) Then
  loc_F05CDF:   Call Txt_GotFocus()
  loc_F05CE4:   Exit Sub
  loc_F05CE5: End If
  loc_F05CF1: Call Txt_Validate(CInt(0))
  loc_F05CF6: Call Proc_101_42_EAD0B0(0, CInt(0))
  loc_F05D06: Me.Requery -1
  loc_F05D16: Set var_88 = Me.Txt
  loc_F05D1C: Call 0.Method_TopCtrl1_UnknownEvent_160 (CInt(0), var_8C)
  loc_F05D24: var_8C.SetFocus
  loc_F05D30: Exit Sub
  loc_F05D31: ' Referenced from: F05C98
  loc_F05D39: Set var_88 = Err()
  loc_F05D3F: Call 0.Method_arg_2C (var_94)
  loc_F05D58: MsgBox(CVar(var_94), &H10, var_C8, var_E8, var_108)
  loc_F05D6B: Exit Sub
End Sub

Private Sub TxtGrid_GotFocus(Index As Integer) 'F1FF64
  'Data Table: 4E5AD8
  Dim var_94 As Variant
  Dim var_A8 As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_108 As TextBox
  Dim var_110 As Long
  loc_F1FE74: Call Proc_101_43_EBE988()
  loc_F1FE8C: Me.FGrid.CellBackColor = CVar(CLng("16777215"))
  loc_F1FEA7: var_94 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_F1FEB0: Set var_BC = Me.FGrid
  loc_F1FEE6: Set var_104 = Me.TxtGrid
  loc_F1FEEC: Call 0.Method_TxtGrid_GotFocus0 (Index, var_108, CStr(Me.FGrid.TextMatrix)))
  loc_F1FEF4: var_108.Tag = CVar(CLng(var_BC.Col))
  loc_F1FF25: var_110 = CLng(Me.FGrid.Col)
  loc_F1FF35: If (var_110 = CLng(&HA)) Then
  loc_F1FF47:   Set var_A8 = Me.TxtGrid
  loc_F1FF4D:   Call 0.Method_TxtGrid_GotFocus0 (Index, var_BC, 5)
  loc_F1FF55:   var_BC.MaxLength = var_110
  loc_F1FF61: End If
  loc_F1FF61: Exit Sub
End Sub

Private Sub TxtGrid_KeyDown(KeyCode As Integer, Shift As Integer) 'FA9E0C
  'Data Table: 4E5AD8
  Dim var_8C As TextBox
  Dim var_98 As TextBox
  Dim var_88 As MSHFlexGrid
  Dim var_AC As Long
  loc_FA9C80: On Error Goto loc_FA9E06
  loc_FA9C8D: If (CLng(Shift) = &H1B) Then
  loc_FA9C9D:   Set var_88 = Me.TxtGrid
  loc_FA9CA3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FA9CBD:   Set var_94 = Me.TxtGrid
  loc_FA9CC3:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_98)
  loc_FA9CCB:   var_98.Text = var_8C.Tag
  loc_FA9CE7:   Call TxtGrid_KeyUp(KeyCode, Shift)
  loc_FA9CEC:   Call Proc_101_43_EBE988(arg_14)
  loc_FA9CF5:   Set var_88 = Me.FGrid
  loc_FA9D12:   Set var_88 = Me.TxtGrid
  loc_FA9D18:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C)
  loc_FA9D20:   var_8C.Visible = False
  loc_FA9D2C:   Exit Sub
  loc_FA9D2D: End If
  loc_FA9D40: var_AC = CLng(Me.FGrid.Col)
  loc_FA9D50: If (var_AC = CLng(&HA)) Then
  loc_FA9D62:   Set var_88 = Me.TxtGrid
  loc_FA9D68:   Call 0.Method_TxtGrid_KeyDown0 (KeyCode, var_8C, 5)
  loc_FA9D70:   var_8C.MaxLength = var_AC
  loc_FA9D9C:   If (((CLng(Shift) = &HD) Or (CLng(Shift) = &H26)) Or (CLng(Shift) = &H28)) Then
  loc_FA9DA5:     Call Proc_101_47_ECCF44(KeyCode, var_AE)
  loc_FA9DB0:     If (var_AE = &HFF) Then
  loc_FA9DF6:       Proc_6_62_1254E68(Me.FGrid, Me.TxtGrid, KeyCode, Shift, global_72)
  loc_FA9E06:       ' Referenced from: FA9C80
  loc_FA9E06:     End If
  loc_FA9E06:   End If
  loc_FA9E06: End If
  loc_FA9E06: Proc_6_60_E63754(&HA, 0, &HA)
  loc_FA9E0B: Exit Sub
End Sub

Private Sub TxtGrid_KeyPress(KeyAscii As Integer) 'E01324
  'Data Table: 4E5AD8
  Dim arg_606C As Variant
  loc_E0131B: Proc_6_58_E06050(arg_10)
  loc_E01320: Exit Sub
  loc_E01321: arg_606C = CVar() 'Long
End Sub

Private Sub TxtGrid_KeyUp(KeyCode As Integer, Shift As Integer) 'E34E04
  'Data Table: 4E5AD8
  Dim var_9C As Long
  loc_E34DDC: On Error Goto loc_E34DFC
  loc_E34DF2: var_9C = CLng(Me.FGrid.Col)
  loc_E34DFB: Exit Sub
  loc_E34DFC: ' Referenced from: E34DDC
  loc_E34DFC: Proc_6_60_E63754(var_9C)
  loc_E34E01: Exit Sub
End Sub

Private Sub TxtGrid_Validate(Cancel As Boolean) 'E5A088
  'Data Table: 4E5AD8
  Dim arg_10 As Integer
  Dim var_A0 As Long
  loc_E5A054: If (Cancel = 0) Then
  loc_E5A05D:   Call Proc_101_47_ECCF44(Cancel, var_88)
  loc_E5A066:   arg_10 = Not(var_88)
  loc_E5A069: End If
  loc_E5A07C: var_A0 = CLng(Me.FGrid.Col)
  loc_E5A085: Exit Sub
  loc_E5A086: CExtInstUnk
End Sub

Private Sub Txt_GotFocus(Index As Integer) '11C1A04
  'Data Table: 4E5AD8
  Dim var_92 As Integer
  Dim Me As Variant
  Dim var_8C As TextBox
  Dim var_C4 As String
  Dim var_90 As Fields15
  Dim var_C8 As Variant
  loc_11C15BE: Set var_88 = Me.Txt
  loc_11C15C4: Call 0.Method_Txt_GotFocus0 (Index)
  loc_11C15D2: Proc_6_74_E23240(var_8C)
  loc_11C15E1: var_92 = Index
  loc_11C15EC: If (var_92 = CInt(0)) Then
  loc_11C1606:   If (Me.RecordCount > 0) Then
  loc_11C1614:     Set var_8C = Me.FGPoint
  loc_11C162C:     Proc_6_137_1192FDC(Me.DGRoomNo, global_92, Index)
  loc_11C163A:   End If
  loc_11C1688:   Set var_88 = Me.Txt
  loc_11C168E:   Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))))
  loc_11C1696:   var_8C = var_8C.Text
  loc_11C16BC:   If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), var_92) = vbNullString)) Then
  loc_11C16BF:     Exit Sub
  loc_11C16C0:   End If
  loc_11C16CD:   Set var_88 = Me.Txt
  loc_11C16D3:   Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C16DB:   var_A0 = var_8C.Text
  loc_11C16ED:   var_C4 = "RoomNo"
  loc_11C1728:   If CBool(CVar(var_A0) <> Me.Fields.Item(var_C4).Value) Then
  loc_11C1731:     Me.MoveFirst
  loc_11C1754:     Set var_88 = Me.Txt
  loc_11C175A:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "RoomNo ='")
  loc_11C1762:     0 = var_8C.Text
  loc_11C177B:     Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C1790:   End If
  loc_11C1793: Else
  loc_11C179B:   If (var_92 = CInt(4)) Then
  loc_11C17B5:     If (Me.RecordCount > 0) Then
  loc_11C17C3:       Set var_8C = Me.FGPoint
  loc_11C17DB:       Proc_6_137_1192FDC(Me.DGRoomType, global_96)
  loc_11C17E9:     End If
  loc_11C1837:     Set var_88 = Me.Txt
  loc_11C183D:     Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0)
  loc_11C1845:     ((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) = var_8C.Text
  loc_11C186B:     If (var_8C Or (Proc_6_38_E69628(CVar(var_A0), Index) = vbNullString)) Then
  loc_11C186E:       Exit Sub
  loc_11C186F:     End If
  loc_11C187C:     Set var_88 = Me.Txt
  loc_11C1882:     Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C188A:     var_A0 = var_8C.Text
  loc_11C189C:     var_C4 = "Name"
  loc_11C18B3:     var_C8 = Me.Fields.Item(var_C4)
  loc_11C18D7:     If CBool(CVar(var_A0) <> var_C8.Value) Then
  loc_11C18E0:       Me.MoveFirst
  loc_11C1903:       Set var_88 = Me.Txt
  loc_11C1909:       Call 0.Method_Txt_GotFocus0 (Index, var_8C, var_A0, "Name ='")
  loc_11C1911:       0 = var_8C.Text
  loc_11C192A:       Me.Find 1 & var_A0 & "'", var_C4, 
  loc_11C193F:     End If
  loc_11C1942:   Else
  loc_11C194A:     If (var_92 = CInt(8)) Then
  loc_11C195B:       Set var_88 = Me.Txt
  loc_11C1961:       Call 0.Method_Txt_GotFocus0 (CInt(8), var_8C)
  loc_11C1979:       global_76 = Val(var_8C.Text)
  loc_11C1986:     End If
  loc_11C1986:   End If
  loc_11C1986: End If
  loc_11C1995: Set var_88 = Me.Txt
  loc_11C199B: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C19A3: var_8C.SelStart = 0
  loc_11C19BC: Set var_88 = Me.Txt
  loc_11C19C2: Call 0.Method_Txt_GotFocus0 (Index, var_8C)
  loc_11C19DD: Set var_90 = Me.Txt
  loc_11C19E3: Call 0.Method_Txt_GotFocus0 (Index, var_C8)
  loc_11C19EB: var_C8.SelLength = Len(var_8C.Text)
  loc_11C19FE: Call Proc_101_43_EBE988(global_76)
  loc_11C1A03: Exit Sub
End Sub

Private Sub Txt_KeyDown(KeyCode As Integer, Shift As Integer) '10FDC24
  'Data Table: 4E5AD8
  Dim var_88 As Integer
  Dim var_8A As Integer
  Dim Me As Recordset15
  loc_10FD903: var_88 = Shift
  loc_10FD910: If (CLng(Shift) = &H1B) Then
  loc_10FD913:   Call Proc_101_43_EBE988(var_88)
  loc_10FD918:   Exit Sub
  loc_10FD919: End If
  loc_10FD91C: var_8A = KeyCode
  loc_10FD927: If (var_8A = CInt(0)) Then
  loc_10FD947:   Set var_A4 = Me.FGPoint
  loc_10FD952:   Set var_A0 = Nothing
  loc_10FD984:   Proc_6_69_134A630(Me.DGRoomNo, Me.Txt, CInt(0), global_92, Shift, 0)
  loc_10FD9F3:   If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FDA19:     Proc_6_138_106E830(Me.DGRoomNo, global_92, KeyCode, Me.FGPoint, 1)
  loc_10FDA27:   End If
  loc_10FDA2A: Else
  loc_10FDA32:   If (var_8A = CInt(4)) Then
  loc_10FDA5D:     Set var_A0 = Nothing
  loc_10FDA8F:     Proc_6_69_134A630(Me.DGRoomType, Me.Txt, CInt(4), global_96, Shift, 0, 1)
  loc_10FDAFE:     If ((Me.RecordCount > 0) And ((((((CLng(var_88) = &H28) Or (CLng(var_88) = &H26)) Or (CLng(var_88) = &H25)) Or (CLng(var_88) = &H27)) Or (CLng(var_88) = &H21)) Or (CLng(var_88) = &H22))) Then
  loc_10FDB05:       Set var_A0 = Me.DGRoomType
  loc_10FDB24:       Proc_6_138_106E830(var_A0, global_96, KeyCode, Me.FGPoint, var_A0, Me.FGPoint)
  loc_10FDB32:     End If
  loc_10FDB32:   End If
  loc_10FDB32: End If
  loc_10FDB6D: If ((CBool(Me.DGRoomNo.Visible) = 0) And (CBool(Me.DGRoomType.Visible) = 0)) Then
  loc_10FDB8E:   If (((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) And (KeyCode = CInt(8))) Then
  loc_10FDB97:     Call Txt_Validate(KeyCode)
  loc_10FDBA2:     If (var_86 = &HFF) Then
  loc_10FDBA5:       Exit Sub
  loc_10FDBA6:     End If
  loc_10FDBDD:     If (MsgBox("Save Record ?", 4, "Save Data", var_118, var_138) = 6) Then
  loc_10FDBE0:       Call TopCtrl1_UnknownEvent_16()
  loc_10FDBE5:     End If
  loc_10FDBE5:     Exit Sub
  loc_10FDBE6:   End If
  loc_10FDBFB:   If ((CLng(Shift) = &H28) Or (CLng(Shift) = &HD)) Then
  loc_10FDC04:     Proc_6_75_E5335C(Shift, arg_14, var_86, 0)
  loc_10FDC09:   End If
  loc_10FDC13:   If (CLng(Shift) = &H26) Then
  loc_10FDC1C:     Proc_6_76_E533C8(Shift, arg_14, var_A0)
  loc_10FDC21:   End If
  loc_10FDC21: End If
  loc_10FDC21: Exit Sub
End Sub

Private Sub Txt_KeyPress(KeyAscii As Integer) 'F6E620
  'Data Table: 4E5AD8
  Dim var_86 As Integer
  loc_F6E4E7: Proc_6_58_E06050(arg_10)
  loc_F6E4EF: var_86 = KeyAscii
  loc_F6E4FA: If (var_86 = CInt(0)) Then
  loc_F6E519:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F6E52B:     var_A0 = "RoomNo"
  loc_F6E546:     Proc_6_89_1470B00(Me.Txt, KeyAscii, global_92, arg_10)
  loc_F6E578:     Proc_6_138_106E830(Me.DGRoomNo, global_92, KeyAscii, Me.FGPoint)
  loc_F6E586:   End If
  loc_F6E589: Else
  loc_F6E591:   If (var_86 = CInt(4)) Then
  loc_F6E5B0:     If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_F6E5DD:       Proc_6_89_1470B00(Me.Txt, KeyAscii, global_96, arg_10, "Name")
  loc_F6E60F:       Proc_6_138_106E830(Me.DGRoomType, global_96, KeyAscii, Me.FGPoint)
  loc_F6E61D:     End If
  loc_F6E61D:   End If
  loc_F6E61D: End If
  loc_F6E61D: Exit Sub
  loc_F6E61E: CExtInstUnk
End Sub

Private Sub Txt_KeyUp(KeyCode As Integer, Shift As Integer) 'F1EF04
  'Data Table: 4E5AD8
  Dim var_86 As Integer
  loc_F1EE0F: var_86 = KeyCode
  loc_F1EE1A: If (var_86 = CInt(0)) Then
  loc_F1EE39:   If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_F1EE4D:     var_A8 = "RoomNO"
  loc_F1EE75:     Proc_6_68_12A2818(Me.DGRoomNo, Me.Txt, CInt(0), global_92)
  loc_F1EE88:   End If
  loc_F1EE8B: Else
  loc_F1EE93:   If (var_86 = CInt(4)) Then
  loc_F1EEB2:     If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_F1EEC6:       var_A8 = "Name"
  loc_F1EEEE:       Proc_6_68_12A2818(Me.DGRoomType, Me.Txt, CInt(4), global_96, Shift)
  loc_F1EF01:     End If
  loc_F1EF01:   End If
  loc_F1EF01: End If
  loc_F1EF01: Exit Sub
End Sub

Private Sub Txt_LostFocus(Index As Integer) 'E4FB64
  'Data Table: 4E5AD8
  loc_E4FB42: Set var_88 = Me.Txt
  loc_E4FB48: Call 0.Method_Txt_LostFocus0 (Index)
  loc_E4FB56: Proc_6_73_E23294(var_8C)
  loc_E4FB62: Exit Sub
End Sub

Private Sub Txt_Validate(Cancel As Boolean) '17A1B8C
  'Data Table: 4E5AD8
  Dim var_BC As String
  Dim var_C0 As String
  Dim unk_4E5ADD As Connection15
  Dim var_D0 As Variant
  Dim var_A4 As Double
  Dim var_106 As Integer
  Dim var_10C As Variant
  Dim Me As Variant
  Dim var_E4 As Fields15
  Dim var_120 As TextBox
  Dim var_E0 As Variant
  Dim var_11C As Variant
  Dim var_F4 As Variant
  Dim var_130 As Variant
  Dim var_104 As Variant
  Dim var_144 As String
  Dim var_190 As String
  Dim var_18C As TextBox
  Dim var_140 As Variant
  Dim var_1B0 As Variant
  Dim var_A8 As Recordset15
  Dim var_17C As Variant
  Dim var_1D0 As Variant
  Dim var_230 As Variant
  Dim var_2A0 As Variant
  Dim var_360 As Variant
  Dim var_3C0 As Variant
  Dim var_460 As Variant
  Dim var_4F0 As Variant
  Dim var_550 As Variant
  Dim var_AC As Recordset15
  Dim var_B0 As Recordset15
  Dim var_B4 As Recordset15
  Dim var_9C As Double
  Dim var_188 As Fields15
  Dim var_220 As Variant
  Dim var_270 As Variant
  loc_179FD20: var_BC = "Select * from Enviro where LogSite_Code='" & MemVar_1F95078
  loc_179FD30: unk_4E5ADD.Execute var_BC & "'", var_E0, -1
  loc_179FD3B: Set var_B0 = var_E4
  loc_179FD4B: On Error Goto loc_17A1B62
  loc_179FD60: var_D0 = "hh:nn"
  loc_179FD7B: var_A4 = CDate(Format(Now, var_D0))
  loc_179FD8C: var_106 = Cancel
  loc_179FD97: If (var_106 = CInt(0)) Then
  loc_179FD9A:   Call Proc_101_45_137C980(var_106, var_A4, 1)
  loc_179FDAB:   If (global_68 = 1) Then
  loc_179FDD2:     Call 0.Method_Txt_Validate0 (Cancel, var_10C, var_BC, "roomno='", 0)
  loc_179FDDA:     1 = var_10C.Text
  loc_179FDF3:     Me.Find var_D0 & var_BC & "'", 1, Me.Txt
  loc_179FE08:   End If
  loc_179FE56:   Set var_E4 = Me.Txt
  loc_179FE5C:   Call 0.Method_Txt_Validate0 (Cancel, var_10C)
  loc_179FE7C:   If (((Me.RecordCount = 0) Or ((Me.EOF = &HFF) Or (Me.BOF = &HFF))) Or (var_10C.Text = vbNullString)) Then
  loc_179FE8C:     Set var_E4 = Me.Txt
  loc_179FE92:     Call 0.Method_Txt_Validate0 (Cancel, var_10C)
  loc_179FE9A:     var_10C.Tag = vbNullString
  loc_179FEA6:     Exit Sub
  loc_179FEA7:   End If
  loc_179FEE2:   Set var_11C = Me.Txt
  loc_179FEE8:   Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_179FEF0:   var_120.Text = CStr(Me.Fields.Item("RoomNo").Value)
  loc_179FF41:   Set var_11C = Me.Txt
  loc_179FF47:   Call 0.Method_Txt_Validate0 (Cancel, var_120)
  loc_179FF4F:   var_120.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_179FF9E:   Set var_11C = Me.Txt
  loc_179FFA4:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_120)
  loc_179FFAC:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("FolioNo")))
  loc_179FFF9:   Set var_11C = Me.Txt
  loc_179FFFF:   Call 0.Method_Txt_Validate0 (CInt(&HA), var_120)
  loc_17A0007:   var_120.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("DocID")))
  loc_17A0035:   var_10C = Me.Fields.Item("ChkInDate")
  loc_17A0054:   Set var_11C = Me.Txt
  loc_17A005A:   Call 0.Method_Txt_Validate0 (CInt(1), var_120)
  loc_17A0062:   var_120.Text = Proc_6_38_E69628(CVar(var_10C))
  loc_17A0081:   Set var_E4 = Me.Txt
  loc_17A0087:   Call 0.Method_Txt_Validate0 (CInt(1))
  loc_17A00C1:   Me.LblCheckInDay.Caption = CStr(Format(CVar(var_10C), "DDDD"))
  loc_17A012C:   Set var_11C = Me.Txt
  loc_17A0132:   Call 0.Method_Txt_Validate0 (CInt(2), var_120, CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")), 1)), 2)))
  loc_17A013A:   var_120.Text = 1
  loc_17A018E:   var_F4 = CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInTime")))) 'String
  loc_17A01AB:   Set var_11C = Me.Txt
  loc_17A01B1:   Call 0.Method_Txt_Validate0 (CInt(3), var_120)
  loc_17A01B9:   var_120.Text = CStr(Right(var_F4, 2))
  loc_17A0213:   Set var_11C = Me.Txt
  loc_17A0219:   Call 0.Method_Txt_Validate0 (CInt(9), var_120)
  loc_17A0221:   var_120.Tag = CStr(Me.Fields.Item("GuestCode").Value)
  loc_17A0273:   Set var_11C = Me.Txt
  loc_17A0279:   Call 0.Method_Txt_Validate0 (CInt(9), var_120)
  loc_17A0281:   var_120.Text = CStr(Me.Fields.Item("GuestName").Value)
  loc_17A02D0:   Set var_11C = Me.Txt
  loc_17A02D6:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_120)
  loc_17A02DE:   var_120.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("companyCode")))
  loc_17A032B:   Set var_11C = Me.Txt
  loc_17A0331:   Call 0.Method_Txt_Validate0 (CInt(&HB), var_120)
  loc_17A0339:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("CompanyName")))
  loc_17A0386:   Set var_11C = Me.Txt
  loc_17A038C:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_120)
  loc_17A0394:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("GuestStatus")))
  loc_17A03D1:   Proc_6_39_E7D3A0(var_F4, CVar(Me.Fields.Item("OldAdult")))
  loc_17A03E8:   Set var_11C = Me.Txt
  loc_17A03EE:   Call 0.Method_Txt_Validate0 (CInt(5), var_120)
  loc_17A03F6:   var_120.Text = CStr(var_F4)
  loc_17A0437:   Proc_6_39_E7D3A0(var_F4, CVar(Me.Fields.Item("OldChild")))
  loc_17A044E:   Set var_11C = Me.Txt
  loc_17A0454:   Call 0.Method_Txt_Validate0 (CInt(6), var_120)
  loc_17A045C:   var_120.Text = CStr(var_F4)
  loc_17A04AD:   Set var_11C = Me.Txt
  loc_17A04B3:   Call 0.Method_Txt_Validate0 (CInt(7), var_120)
  loc_17A04BB:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RateCode")))
  loc_17A04F8:   Proc_6_39_E7D3A0(var_F4, CVar(Me.Fields.Item("RoomRate")))
  loc_17A050F:   Set var_11C = Me.Txt
  loc_17A0515:   Call 0.Method_Txt_Validate0 (CInt(8), var_120)
  loc_17A051D:   var_120.Text = CStr(var_F4)
  loc_17A056E:   Set var_11C = Me.Txt
  loc_17A0574:   Call 0.Method_Txt_Validate0 (CInt(4), var_120)
  loc_17A057C:   var_120.Tag = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCatCode")))
  loc_17A05C9:   Set var_11C = Me.Txt
  loc_17A05CF:   Call 0.Method_Txt_Validate0 (CInt(4), var_120)
  loc_17A05D7:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("RoomCat")))
  loc_17A0624:   Set var_11C = Me.Txt
  loc_17A062A:   Call 0.Method_Txt_Validate0 (CInt(&HC), var_120)
  loc_17A0632:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("STATUSNAME")))
  loc_17A067F:   Set var_11C = Me.Txt
  loc_17A0685:   Call 0.Method_Txt_Validate0 (CInt(&H12), var_120)
  loc_17A068D:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments1")))
  loc_17A06DA:   Set var_11C = Me.Txt
  loc_17A06E0:   Call 0.Method_Txt_Validate0 (CInt(&H11), var_120)
  loc_17A06E8:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments2")))
  loc_17A0735:   Set var_11C = Me.Txt
  loc_17A073B:   Call 0.Method_Txt_Validate0 (CInt(&H10), var_120)
  loc_17A0743:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("Comments3")))
  loc_17A079B:   Set var_11C = Me.Txt
  loc_17A07A1:   Call 0.Method_Txt_Validate0 (CInt(&H13), var_120)
  loc_17A07A9:   var_120.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add1"))))
  loc_17A0805:   Set var_11C = Me.Txt
  loc_17A080B:   Call 0.Method_Txt_Validate0 (CInt(&H14), var_120)
  loc_17A0813:   var_120.Text = Proc_6_38_E69628(Trim(CVar(Me.Fields.Item("Add2"))))
  loc_17A0845:   var_10C = Me.Fields.Item("CityName")
  loc_17A0885:   var_120 = Me.Fields.Item("StateName")
  loc_17A08D8:   var_17C = Trim(CVar(Me.Fields.Item("CountryName")))
  loc_17A08E9:   var_190 = var_10C & Proc_6_38_E69628(Trim(CVar(var_120)), Proc_6_38_E69628(Trim(CVar(var_10C))) & ",") & "," & Proc_6_38_E69628(var_17C)
  loc_17A08F7:   Set var_188 = Me.Txt
  loc_17A08FD:   Call 0.Method_Txt_Validate0 (CInt(&H15), var_18C)
  loc_17A0905:   var_18C.Text = var_190
  loc_17A0970:   Set var_11C = Me.Txt
  loc_17A0976:   Call 0.Method_Txt_Validate0 (CInt(&HD), var_120)
  loc_17A097E:   var_120.Text = Proc_6_38_E69628(CVar(Me.Fields.Item("DepDate")))
  loc_17A09E5:   Set var_11C = Me.Txt
  loc_17A09EB:   Call 0.Method_Txt_Validate0 (CInt(&HF), var_120)
  loc_17A09F3:   var_120.Text = CStr(Left(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("DepTime")))), 2))
  loc_17A0A2B:   var_10C = Me.Fields.Item("DepTime")
  loc_17A0A64:   Set var_11C = Me.Txt
  loc_17A0A6A:   Call 0.Method_Txt_Validate0 (CInt(&HE), var_120)
  loc_17A0A72:   var_120.Text = CStr(Right(CVar(Proc_6_38_E69628(CVar(var_10C))), 2))
  loc_17A0A9E:   Set var_E4 = Me.Txt
  loc_17A0AA4:   Call 0.Method_Txt_Validate0 (CInt(1), var_10C)
  loc_17A0AAC:   var_BC = var_10C.Text
  loc_17A0ACC:   var_11C = Me.Fields
  loc_17A0AF5:   If ((CDate(var_BC) <= MemVar_1F950EC) And IsNull(CVar(var_11C.Item("ChkOutDate")))) Then
  loc_17A0AFE:     Call 0.Method_arg_50 (var_BC)
  loc_17A0B0E:     If (var_BC <> "Reverse Check Out Entry") Then
  loc_17A0B36:       var_E0 = Me.Fields.Item("ChkInDate").Value
  loc_17A0B50:       For var_1A0 = CDate(var_E0) To MemVar_1F950EC: var_94 = var_1A0 'Double
  loc_17A0B71:         var_C0 = "select Count(*) from Paycharge where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and Vtype in ('RC') and Site_Code='"
  loc_17A0B8D:         Proc_6_7_F26918(var_E0, var_94, CVar(var_C0 & MemVar_1F95070 & "' and Vdate="), var_1D0)
  loc_17A0B95:         var_104 = -1 & var_E0 
  loc_17A0BCB:         Proc_6_17_EAAE40(var_17C, CVar(Me.Fields.Item("DocID")), Right(CVar(Proc_6_38_E69628(CVar(Me.Fields.Item("ChkInDate")))), 2) & " and FOLIONODOCID=")
  loc_17A0BE1:         unk_4E5ADD.Execute CStr(var_11C & var_17C), CDate(var_E0), 
  loc_17A0C36:         var_E0 = var_11C.Fields.Item(0).Value
  loc_17A0C50:         If (var_E0 <= 0) Then
  loc_17A0C60:           var_130 = "select ROOMOCC.*,RevMast.ACCode AS RoomChargeAc,RevMast.Code AS PayCode, RevMast.TaxStru AS TaxStru, GuestFolio.Company as Comp_Code,GUESTFOLIO.RODISC,GUESTFOLIO.[COMP]  FROM ((ROOMOCC inner JOIN RoomCat ON ROOMOCC.RoomCat = RoomCat.Code) inner JOIN RevMast ON RoomCat.RevCode = RevMast.Code) Inner JOIN GuestFolio ON ROOMOCC.DocId = GuestFolio.DocId WHERE "
  loc_17A0C70:           Proc_6_7_F26918(var_E0, var_94, var_130)
  loc_17A0C8B:           var_140 = var_5B0 & var_E0 & ">=chkindate and (RoomOcc.LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_17A0CA7:           var_1B0 = var_140 & "' or RoomOcc.LOGSITE_CODE='HO') And Roomocc.Site_Code='" & CVar(MemVar_1F95070) & "' And RoomOcc.Docid=" 
  loc_17A0CD4:           Proc_6_17_EAAE40(var_220, CVar(Me.Fields.Item("DocID")), var_1B0)
  loc_17A0CDC:           var_230 = -1 & var_220 
  loc_17A0CF4:           Proc_6_7_F26918(var_270, var_94)
  loc_17A0D05:           var_2A0 = var_230 & " and RoomOcc.Sno=(Select Max(Sno) From RoomOcc WHERE " & var_270 & ">=chkindate and ChngDate=(Select Top 1 ChngDate From RoomOcc Where " 
  loc_17A0D14:           Proc_6_7_F26918(var_2C0, var_94)
  loc_17A0D34:           Proc_6_7_F26918(var_310, var_94)
  loc_17A0D4F:           var_360 = var_2A0 & var_2C0 & ">=chkindate and ChngDate<=" & var_310 & " And (RoomOcc.LOGSITE_CODE='" & CVar(MemVar_1F95078) 
  loc_17A0D6B:           var_3C0 = var_360 & "' or RoomOcc.LOGSITE_CODE='HO') And Roomocc.Site_Code='" & CVar(MemVar_1F95070) & "' and RoomOcc.Docid=" 
  loc_17A0D81:           var_11C = Me.Fields
  loc_17A0D98:           Proc_6_17_EAAE40(var_3F0, CVar(var_11C.Item("DocID")))
  loc_17A0DBC:           var_460 = var_3C0 & var_3F0 & " Order By ChngDate Desc,Sno Desc) and Roomocc.LogSite_Code='" & CVar(MemVar_1F95078) & "' and RoomOcc.Docid=" 
  loc_17A0DE9:           Proc_6_17_EAAE40(var_490, CVar(Me.Fields.Item("DocID")))
  loc_17A0E09:           Proc_6_7_F26918(var_4E0, var_94)
  loc_17A0E11:           var_4F0 = var_460 & var_490 & ") and RoomOcc.Docid NOT IN (SELECT Distinct FolioNoDocid FROM PAYCHARGE where VDate=" & var_4E0 
  loc_17A0E2D:           var_550 = var_4F0 & " AND VType in ('RC') and (RoomOcc.LOGSITE_CODE='" & CVar(MemVar_1F95078) & "' or RoomOcc.LOGSITE_CODE='HO') And Roomocc.Site_Code='" 
  loc_17A0E4E:           unk_4E5ADD.Execute CStr(var_550 & CVar(MemVar_1F95070) & "')"), var_188, 
  loc_17A0E59:           Set var_AC = var_188
  loc_17A0F14:           unk_4E5ADD.Execute CStr("Select * from RoomOcc Where DocId='" & var_AC.Fields.Item("DocID").Value & "' And SNo=1"), var_140, -1
  loc_17A0F1F:           Set var_B4 = var_11C
  loc_17A0F72:           If (Proc_6_38_E69628(CVar(var_B0.Fields.Item("CheckOut"))) = "24 Hrs") Then
  loc_17A1023:             Proc_96_11_EFA968(CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ChkInTime")))), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("variation")), 1)), "hh:nn")), 1)
  loc_17A1028:             var_9C = 1
  loc_17A1053:           Else
  loc_17A108D:             var_104 = "hh:nn"
  loc_17A109C:             var_140 = Format(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("CheckoutVar")), var_9C)), var_104)
  loc_17A1101:             Proc_96_11_EFA968(CDate(var_140), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("variation")), 1, 1)), "hh:nn")), 1)
  loc_17A1106:             var_9C = 1
  loc_17A112E:           End If
  loc_17A1167:           If (Proc_6_38_E69628(CVar(var_B0.Fields.Item("RoomRentChkOutPost")), var_9C) = "Auto") Then
  loc_17A116A:             GoTo loc_17A1239
  loc_17A116D:           End If
  loc_17A118C:           var_F4 = CVar(var_B4.Fields.Item("ChkInDate")) 'Address
  loc_17A11FC:           If ((((Proc_6_38_E69628(CVar(var_B0.Fields.Item("CheckOut"))) = "24 Hrs") And (var_94 = MemVar_1F950EC)) And (var_94 <> CDate(Proc_6_38_E69628(var_F4, 1)))) And (var_9C >= var_A4)) Then
  loc_17A11FF:             GoTo loc_17A1B17
  loc_17A1202:           End If
  loc_17A1236:           If (MsgBox("Want to Post Charges for " & CDate(var_94), &H24, var_F4, var_104, var_140) = 6) Then
  loc_17A1239:             ' Referenced from: 17A116A
  loc_17A1278:             var_11C = var_B0.Fields
  loc_17A1291:             var_C0 = Proc_6_38_E69628(CVar(var_11C.Item("RoomRentBefChkOut")), (Proc_6_38_E69628(CVar(var_B0.Fields.Item("CheckOut"))) = "Other"))
  loc_17A12AF:             If (var_11C And (var_C0 = "Yes")) Then
  loc_17A12C1:               var_E4 = var_B4.Fields
  loc_17A12FC:               var_F4 = CVar(var_B0.Fields.Item("CheckoutVar")) 'Address
  loc_17A13E5:               Proc_96_12_F0A130(CDate(Format(CVar(Proc_6_38_E69628(var_F4)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("VariationBefore")), 1)), "hh:nn")), (var_94 = CDate(Proc_6_38_E69628(CVar(var_E4.Item("ChkInDate"))))), 1)
  loc_17A142C:               If (1 And (1 > CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ChkInTime")), 1)), "hh:nn")))) Then
  loc_17A1454:                 unk_4E5ADD.Execute CStr(var_AC.Source), var_F4, -1
  loc_17A14C2:                 Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_E4, 0, "*", 0)
  loc_17A14D7:               End If
  loc_17A14D7:             End If
  loc_17A14E6:             If ((var_94 = MemVar_1F950EC) And (var_9C >= var_A4)) Then
  loc_17A14F8:               var_E4 = var_B0.Fields
  loc_17A1541:               var_C0 = Proc_6_38_E69628(CVar(var_B0.Fields.Item("CheckOut")), (Proc_6_38_E69628(CVar(var_E4.Item("RoomRentChkOutPost")), 1, 1) = "Semi"))
  loc_17A1596:               If (1 And (Proc_6_38_E69628(CVar(var_B0.Fields.Item("RoomRentBefChkOut")), (var_E4 And (var_C0 = "Other"))) <> "Yes")) Then
  loc_17A15C3:                 var_144 = 0
  loc_17A15EC:                 Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*")
  loc_17A1604:               Else
  loc_17A1687:                 var_C0 = Proc_6_38_E69628(CVar(var_B0.Fields.Item("CheckOut")), (Proc_6_38_E69628(CVar(var_B0.Fields.Item("RoomRentChkOutPost")), 1) = "Auto"))
  loc_17A16F1:                 If (((1 And (var_C0 = "Other")) And (Proc_6_38_E69628(CVar(var_B0.Fields.Item("RoomRentBefChkOut"))) <> "Yes")) And (var_94 = CDate(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ChkInDate")), var_144)))) Then
  loc_17A171E:                   var_144 = 0
  loc_17A1747:                   Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*")
  loc_17A175F:                 Else
  loc_17A177E:                   var_104 = CVar(var_B4.Fields.Item("ChkInDate")) 'Address
  loc_17A17A9:                   var_140 = CVar(var_B0.Fields.Item("CheckoutVar")) 'Address
  loc_17A18CC:                   var_C0 = Proc_6_38_E69628(CVar(var_B0.Fields.Item("RoomRentBefChkOut")), (Proc_6_38_E69628(CVar(var_B0.Fields.Item("CheckOut")), 1, 1) = "Other"))
  loc_17A18F4:                   Proc_96_12_F0A130(CDate(Format(CVar(Proc_6_38_E69628(var_140, 1)), "hh:nn")), CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B0.Fields.Item("VariationBefore")), 1)), "hh:nn")))
  loc_17A1947:                   If (1 And (((1 And (var_C0 = "Yes")) And (var_94 = CDate(Proc_6_38_E69628(var_104, Proc_6_38_E69628(var_104, var_144))))) <= CDate(Format(CVar(Proc_6_38_E69628(CVar(var_B4.Fields.Item("ChkInTime")), 1, 1)), "hh:nn")))) Then
  loc_17A1974:                     var_144 = 0
  loc_17A199D:                     Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*")
  loc_17A19B5:                   Else
  loc_17A19D4:                     var_F4 = CVar(var_B4.Fields.Item("ChkInDate")) 'Address
  loc_17A1A34:                     If ((Proc_6_38_E69628(CVar(var_B0.Fields.Item("CheckOut")), 1) = "24 Hrs") And (var_94 = CDate(Proc_6_38_E69628(var_F4, var_144)))) Then
  loc_17A1A61:                       var_144 = 0
  loc_17A1A8A:                       Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*")
  loc_17A1A9F:                     End If
  loc_17A1A9F:                   End If
  loc_17A1A9F:                 End If
  loc_17A1A9F:               End If
  loc_17A1AA2:             Else
  loc_17A1ACC:               var_144 = 0
  loc_17A1AF5:               Proc_96_4_1C1E774(CDate(Format$(var_94, "dd/MMM/yyyy")), var_AC, 0, "*", var_144, 1)
  loc_17A1B0A:             End If
  loc_17A1B12:             Call Proc_101_44_141C084(&HFF, 1, var_144)
  loc_17A1B17:             ' Referenced from: 17A11FF
  loc_17A1B17:           End If
  loc_17A1B17:         End If
  loc_17A1B1A:       Next var_1A0 'Double
  loc_17A1B1F:     End If
  loc_17A1B24:     Set var_A8 = Nothing
  loc_17A1B27:   End If
  loc_17A1B27:   Call Proc_101_44_141C084()
  loc_17A1B30:   Set var_E4 = Me.FGrid
  loc_17A1B41: End If
  loc_17A1B46: Set var_B4 = Nothing
  loc_17A1B4E: Set var_B0 = Nothing
  loc_17A1B56: Set var_B8 = Nothing
  loc_17A1B5E: Set var_AC = Nothing
  loc_17A1B61: Exit Sub
  loc_17A1B62: ' Referenced from: 179FD4B
  loc_17A1B7B: MsgBox("TXT_VALIDATE", 0, var_F4, var_104, var_140)
  loc_17A1B8B: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_9 'F37DF4
  'Data Table: 4E5AD8
  Dim var_A8 As Variant
  Dim Me As Recordset15
  Dim var_B0 As Variant
  Dim var_B8 As TextBox
  loc_F37CEB: Me.DGRoomNo.Visible = False
  loc_F37D0A: If (Me.RecordCount > 0) Then
  loc_F37D49:   Set var_B4 = Me.Txt
  loc_F37D4F:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37D57:   var_B8.Tag = CStr(Me.Fields.Item("SearchCode").Value)
  loc_F37D8A:   var_B0 = Me.Fields.Item("RoomNo")
  loc_F37DA9:   Set var_B4 = Me.Txt
  loc_F37DAF:   Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0), var_B8)
  loc_F37DB7:   var_B8.Text = CStr(var_B0.Value)
  loc_F37DCD: End If
  loc_F37DD8: Set var_A8 = Me.Txt
  loc_F37DDE: Call 0.Method_DGRoomNo_UnknownEvent_90 (CInt(0))
  loc_F37DE6: var_B0.SetFocus
  loc_F37DF2: Exit Sub
End Sub

Private Sub DGRoomNo_UnknownEvent_1F 'E9B920
  'Data Table: 4E5AD8
  Dim var_A8 As Variant
  loc_E9B8A4: Set var_88 = Me.DGRoomNo
  loc_E9B8CE: var_A8 = CVar(CInt(Fix(((arg_18 - CDbl(285)) / (CDbl(var_98) + &HF))))) 'Integer
  loc_E9B8D6: Set var_BC = Me.DGRoomNo
  loc_E9B910: Proc_6_138_106E830(Me.DGRoomNo, global_92, 0, Me.FGPoint)
  loc_E9B91E: Exit Sub
End Sub

Public Function MasterFormExitGet() '4E6D94
  MasterFormExitGet = MasterFormExit
End Function

Public Sub MasterFormExitPut(Value) '4E6DA3
  MasterFormExit = Value
End Sub

Public Function mVTypeGet() '4E6DB2
  mVTypeGet = mVType
End Function

Public Sub mVTypePut(Value) '4E6DC1
  mVType = Value
End Sub

Public Property Get OpenMode() 'E04790
  'Data Table: 4E5AD8
  loc_E04789: OpenMode = global_68
End Sub

Public Property Let OpenMode(vNewValue) 'E011F8
  'Data Table: 4E5AD8
  loc_E011F2: global_68 = vNewValue
  loc_E011F5: Exit Sub
End Sub

Public Sub Proc_101_40_DFDCAC
  'Data Table: 4E5AD8
  loc_DFDCA8: Exit Sub
End Sub

Public Sub Proc_101_41_E79974(arg_C) 'E79974
  'Data Table: 4E5AD8
  Dim var_98 As TextBox
  loc_E79922: Set var_8C = Me.Txt
  loc_E79928: Call 0.Method_Proc_101_41_E79974C (var_8E, var_86)
  loc_E79938: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_E7994E:   Set var_8C = Me.Txt
  loc_E79954:   Call 0.Method_Proc_101_41_E799740 (CInt(var_86), var_98)
  loc_E7995C:   var_98.Enabled = arg_C
  loc_E7996B: Next var_92 'Byte
  loc_E79971: Exit Sub
End Sub

Public Sub Proc_101_42_EAD0B0
  'Data Table: 4E5AD8
  Dim var_98 As TextBox
  loc_EAD02E: Set var_8C = Me.Txt
  loc_EAD034: Call 0.Method_Proc_101_42_EAD0B0C (var_8E, var_86)
  loc_EAD044: For var_92 =  To CByte((var_8E - 1)): CByte(0) = var_92 'Byte
  loc_EAD05A:   Set var_8C = Me.Txt
  loc_EAD060:   Call 0.Method_Proc_101_42_EAD0B00 (CInt(var_86), var_98)
  loc_EAD068:   var_98.Text = vbNullString
  loc_EAD084:   Set var_8C = Me.Txt
  loc_EAD08A:   Call 0.Method_Proc_101_42_EAD0B00 (CInt(var_86), var_98)
  loc_EAD092:   var_98.Tag = vbNullString
  loc_EAD0A1: Next var_92 'Byte
  loc_EAD0A7: Call Proc_101_45_137C980()
  loc_EAD0AC: Exit Sub
End Sub

Public Sub Proc_101_43_EBE988
  'Data Table: 4E5AD8
  loc_EBE900: If (CBool(Me.DGRoomNo.Visible) = &HFF) Then
  loc_EBE912:   Me.DGRoomNo.Visible = False
  loc_EBE91A: End If
  loc_EBE936: If (CBool(Me.DGRoomType.Visible) = &HFF) Then
  loc_EBE948:   Me.DGRoomType.Visible = False
  loc_EBE950: End If
  loc_EBE96C: If (CBool(Me.FGPoint.Visible) = &HFF) Then
  loc_EBE97E:   Me.FGPoint.Visible = False
  loc_EBE986: End If
  loc_EBE986: Exit Sub
End Sub

Public Sub Proc_101_44_141C084
  'Data Table: 4E5AD8
  Dim var_B4 As Variant
  Dim var_D4 As Variant
  Dim var_F0 As String
  Dim var_A4 As Variant
  Dim var_F4 As String
  Dim unk_4E5ADD As Connection15
  Dim var_A0 As Variant
  Dim var_FC As Variant
  Dim var_C4 As Variant
  Dim var_110 As Variant
  Dim var_138 As Variant
  Dim var_E4 As Variant
  Dim var_168 As Variant
  Dim var_128 As Variant
  Dim var_148 As Variant
  Dim var_178 As Variant
  Dim var_94 As Double
  Dim var_9C As Double
  Dim var_112 As Integer
  Dim var_1E8 As Variant
  Dim var_1C4 As Variant
  Dim var_158 As Variant
  Dim var_1F8 As Variant
  Dim var_1A4 As Variant
  loc_141B62C: On Error Goto loc_141C01D
  loc_141B63A: Set var_A0 = Me.Txt
  loc_141B640: Call 0.Method_Proc_101_44_141C0840 (CInt(&HA))
  loc_141B669: If (Trim(CVar(var_A4)) = vbNullString) Then
  loc_141B66C:   Exit Sub
  loc_141B66D: End If
  loc_141B688: var_F0 = "Select * from paycharge where (LOGSITE_CODE='" & MemVar_1F95078 & "' or LOGSITE_CODE='HO') and (ContraDocId is NULL or contradocid='') and folionoDocid='"
  loc_141B699: Set var_A0 = Me.Txt
  loc_141B69F: Call 0.Method_Proc_101_44_141C0840 (CInt(&HA), var_A4, var_EC, var_F0)
  loc_141B6A7: var_B4 = var_A4.Tag
  loc_141B6B0: var_F4 = -1 & var_EC
  loc_141B6C0: unk_4E5ADD.Execute var_F4 & "' order by vDate,vtime,VNO,SNO", var_FC, var_A4
  loc_141B6CB: Set var_8C = var_FC
  loc_141B6F0: var_100 = Me.Recordset15.RecordCount
  loc_141B6FE: var_D4 = CVar((var_100 + 2)) 'Long
  loc_141B70D: Me.FGrid.Rows = vbNullString
  loc_141B722: Set var_A0 = Me.FGrid
  loc_141B728: var_A0.Row = 1
  loc_141B730: ' Referenced from: 141BE6A
  loc_141B742: If Not(Me.var_A0.EOF) Then
  loc_141B749:   Set var_118 = Me.FGrid
  loc_141B756:   var_C4 = Me.FGrid.Row
  loc_141B75F:   var_110 = CVar(CLng(var_C4)) 'Long
  loc_141B797:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("MarkEntry")), CVar(CLng(0)))) 'String
  loc_141B79E:   LateIdCallSt
  loc_141B7C0:   var_C4 = Me.FGrid.Row
  loc_141B801:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("VDate")), CVar(CLng(1)), CVar(CLng(var_C4)))) 'String
  loc_141B808:   LateIdCallSt
  loc_141B82A:   var_C4 = Me.FGrid.Row
  loc_141B86B:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("Comments")), CVar(CLng(2)), CVar(CLng(var_C4)), var_118)) 'String
  loc_141B872:   LateIdCallSt
  loc_141B8B3:   var_168 = Me.FGrid.Row
  loc_141B8BC:   var_128 = CVar(CLng(var_168)) 'Long
  loc_141B8C4:   var_148 = CVar(CLng(3)) 'Long
  loc_141B8F1:   var_178 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtDr")), "0.00"))) 'String
  loc_141B8F8:   LateIdCallSt
  loc_141B93D:   var_168 = Me.FGrid.Row
  loc_141B962:   var_C4 = "0.00"
  loc_141B982:   LateIdCallSt
  loc_141B9CE:   Proc_6_39_E7D3A0(var_C4, CVar(Me.var_168.Fields.Item("AmtDr")), CVar(var_94), var_118, CVar(CStr(Format(CVar(Me.var_168.Fields.Item("AmtCr")), var_C4))), 1, 1)
  loc_141B9D6:   var_E4 = (CVar(CLng(4)) + var_C4)
  loc_141B9DB:   var_94 = CSng(Format(CVar(Me.var_168.Fields.Item("AmtCr")), var_C4))
  loc_141BA1A:   Proc_6_39_E7D3A0(var_C4, CVar(Me.Recordset15.Fields.Item("AmtCr")), CVar(var_9C), var_94, CVar(CLng(var_168)))
  loc_141BA22:   var_E4 = (var_118 + var_C4)
  loc_141BA27:   var_9C = CSng(Format(CVar(Me.var_168.Fields.Item("AmtCr")), var_C4))
  loc_141BA49:   var_128 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_141BA51:   var_148 = CVar(CLng(5)) 'Long
  loc_141BA73:   var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_141BA83:   var_178 = CVar(CStr(Format(CVar(Me.Recordset15.Fields.Item("AmtCr")), "0.00"))) 'String
  loc_141BA8A:   LateIdCallSt
  loc_141BAAE:   If (CDbl((var_94 - var_9C)) > CDbl(0)) Then
  loc_141BAC4:     var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_141BACC:     var_128 = CVar(CLng(6)) 'Long
  loc_141BAD1:     var_148 = "Dr"
  loc_141BADA:     LateIdCallSt
  loc_141BAEB:   Else
  loc_141BAF7:     If (CDbl((var_94 - var_9C)) < CDbl(0)) Then
  loc_141BB0D:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_141BB15:       var_128 = CVar(CLng(6)) 'Long
  loc_141BB1A:       var_148 = "Cr"
  loc_141BB23:       LateIdCallSt
  loc_141BB34:     Else
  loc_141BB47:       var_D4 = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_141BB4F:       var_128 = CVar(CLng(6)) 'Long
  loc_141BB54:       var_148 = vbNullString
  loc_141BB5D:       LateIdCallSt
  loc_141BB6B:     End If
  loc_141BB6B:   End If
  loc_141BB75:   var_C4 = Me.FGrid.Row
  loc_141BB8E:   var_D4 = "DocID"
  loc_141BBB6:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item(var_D4)), CVar(CLng(7)), CVar(CLng(var_C4)), var_118, var_148, var_128, var_D4)) 'String
  loc_141BBBD:   LateIdCallSt
  loc_141BBDF:   var_C4 = Me.FGrid.Row
  loc_141BC20:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("SNo")), CVar(CLng(8)), CVar(CLng(var_C4)), var_118, var_E4, var_118)) 'String
  loc_141BC27:   LateIdCallSt
  loc_141BC49:   var_C4 = Me.FGrid.Row
  loc_141BC91:   LateIdCallSt
  loc_141BCD4:   var_112 = IsNull(CVar(Me.Recordset15.Fields.Item("Split")))
  loc_141BD0B:   var_1E8 = Me.FGrid.Row
  loc_141BD4C:   var_1C4 = CVar(Proc_6_38_E69628(CVar(Me.var_1E8.Fields.Item("Split")), CVar(CLng(&HA)), CVar(CLng(var_1E8)), var_112, var_118, CVar(Proc_6_38_E69628(CVar(Me.Me.Recordset15.Fields.Item("Split").Value.Fields.Item("U_Name")), CVar(CLng(9)), CVar(CLng(Me.Recordset15.Fields.Item("Split").Value)), var_118, var_E4)))) 'String
  loc_141BD8C:   LateIdCallSt
  loc_141BDC2:   var_C4 = Me.FGrid.Row
  loc_141BE03:   var_E4 = CVar(Proc_6_38_E69628(CVar(Me.var_C4.Fields.Item("Bill_no")), CVar(CLng(&HB)), CVar(CLng(var_C4)), var_118, CVar(CStr(IIf(var_112 Or (Me.Recordset15.Fields.Item("Split").Value = vbNullString), "1", var_1C4))))) 'String
  loc_141BE0A:   LateIdCallSt
  loc_141BE24:   Set var_118 = Nothing 
  loc_141BE41:   var_D4 = CVar((CLng(Me.FGrid.Row) + 1)) 'Long
  loc_141BE4A:   Set var_A4 = Me.FGrid
  loc_141BE50:   var_A4.Row = "Bill_no"
  loc_141BE65:   Me.var_A4.MoveNext
  loc_141BE6A:   GoTo loc_141B730
  loc_141BE6D: End If
  loc_141BE80: Me.FGrid.FixedRows = 1
  loc_141BE8C: Set var_23C = Me.Fgrid1
  loc_141BE8F: var_128 = 0
  loc_141BE9B: var_148 = CVar(CLng(1)) 'Long
  loc_141BEC9: var_E4 = CVar(CStr(Format(var_94, "0.00"))) 'String
  loc_141BED0: LateIdCallSt
  loc_141BEE1: var_128 = 0
  loc_141BEED: var_148 = CVar(CLng(2)) 'Long
  loc_141BF1B: var_E4 = CVar(CStr(Format(var_9C, "0.00"))) 'String
  loc_141BF22: LateIdCallSt
  loc_141BF33: var_128 = 0
  loc_141BF3F: var_148 = CVar(CLng(3)) 'Long
  loc_141BF61: var_B4 = CVar(Abs((var_94 - var_9C))) 'Double
  loc_141BF71: var_168 = CVar(CStr(Format("0.00", "0.00"))) 'String
  loc_141BF78: LateIdCallSt
  loc_141BF8B: var_158 = 0
  loc_141BF97: var_1F8 = CVar(CLng(4)) 'Long
  loc_141BFA1: var_C4 = vbNullString
  loc_141BFBE: var_D4 = (CDbl((var_9C - var_94)) > CDbl(0))
  loc_141BFC5: var_E4 = IIf(var_9C, "Cr", var_C4)
  loc_141BFD2: var_168 = "Dr"
  loc_141BFE4: var_138 = (CDbl((var_94 - var_9C)) > CDbl(0))
  loc_141BFF4: var_1A4 = CVar(CStr(IIf(CVar(CLng(&HB)), var_168, var_E4))) 'String
  loc_141BFFB: LateIdCallSt
  loc_141C018: Set var_23C = Nothing 
  loc_141C01C: Exit Sub
  loc_141C01D: ' Referenced from: 141B62C
  loc_141C036: MsgBox("FILL DETAILS", 0, var_C4, var_E4, var_168)
  loc_141C05C: Set var_A0 = Err()
  loc_141C062: Call 0.Method_arg_1C (var_100, 0, var_C4, var_E4, var_168, var_23C, var_1A4, var_1F8)
  loc_141C06E: MsgBox(CVar(var_100), var_158, var_23C, var_168, 1)
  loc_141C081: Exit Sub
End Sub

Public Sub Proc_101_45_137C980
  'Data Table: 4E5AD8
  Dim var_A0 As Variant
  Dim var_B4 As MSHFlexGrid
  Dim var_90 As MSHFlexGrid
  Dim var_D8 As Variant
  Dim var_F8 As String
  Dim var_10C As MSHFlexGrid
  loc_137C0E0: Set var_90 = Me.FGrid
  loc_137C0F6: Me.FGrid.Rows = 1
  loc_137C112: global_60 = CStr(CLng(var_90.BackColor))
  loc_137C128: var_90.Cols = &HC
  loc_137C12D: var_A0 = 0
  loc_137C139: var_D8 = CVar(CLng(0)) 'Long
  loc_137C13E: var_F8 = "SNo"
  loc_137C147: LateIdCallSt
  loc_137C152: var_A0 = CVar(CLng(0)) 'Long
  loc_137C157: var_D8 = 0
  loc_137C163: LateIdCallSt
  loc_137C16B: var_A0 = 0
  loc_137C177: var_D8 = CVar(CLng(1)) 'Long
  loc_137C17C: var_F8 = "Date"
  loc_137C185: LateIdCallSt
  loc_137C190: var_A0 = CVar(CLng(1)) 'Long
  loc_137C19B: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C1A2: LateIdCallSt
  loc_137C1AD: var_A0 = CVar(CLng(1)) 'Long
  loc_137C1B8: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C1BF: LateIdCallSt
  loc_137C1CA: var_A0 = CVar(CLng(1)) 'Long
  loc_137C1CF: var_D8 = &H44C
  loc_137C1DB: LateIdCallSt
  loc_137C1E3: var_A0 = 0
  loc_137C1EF: var_D8 = CVar(CLng(2)) 'Long
  loc_137C1F4: var_F8 = "Particulars"
  loc_137C1FD: LateIdCallSt
  loc_137C208: var_A0 = CVar(CLng(2)) 'Long
  loc_137C213: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C21A: LateIdCallSt
  loc_137C225: var_A0 = CVar(CLng(2)) 'Long
  loc_137C230: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C237: LateIdCallSt
  loc_137C242: var_A0 = CVar(CLng(2)) 'Long
  loc_137C247: var_D8 = &HBB8
  loc_137C253: LateIdCallSt
  loc_137C25B: var_A0 = 0
  loc_137C267: var_D8 = CVar(CLng(3)) 'Long
  loc_137C26C: var_F8 = "Debit"
  loc_137C275: LateIdCallSt
  loc_137C280: var_A0 = CVar(CLng(3)) 'Long
  loc_137C28B: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C292: LateIdCallSt
  loc_137C29D: var_A0 = CVar(CLng(3)) 'Long
  loc_137C2A8: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C2AF: LateIdCallSt
  loc_137C2BA: var_A0 = CVar(CLng(3)) 'Long
  loc_137C2BF: var_D8 = &H44C
  loc_137C2CB: LateIdCallSt
  loc_137C2D3: var_A0 = 0
  loc_137C2DF: var_D8 = CVar(CLng(4)) 'Long
  loc_137C2E4: var_F8 = "Credit"
  loc_137C2ED: LateIdCallSt
  loc_137C2F8: var_A0 = CVar(CLng(4)) 'Long
  loc_137C303: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C30A: LateIdCallSt
  loc_137C315: var_A0 = CVar(CLng(4)) 'Long
  loc_137C320: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C327: LateIdCallSt
  loc_137C332: var_A0 = CVar(CLng(4)) 'Long
  loc_137C337: var_D8 = &H44C
  loc_137C343: LateIdCallSt
  loc_137C34B: var_A0 = 0
  loc_137C357: var_D8 = CVar(CLng(5)) 'Long
  loc_137C35C: var_F8 = "Balance"
  loc_137C365: LateIdCallSt
  loc_137C370: var_A0 = CVar(CLng(5)) 'Long
  loc_137C37B: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C382: LateIdCallSt
  loc_137C38D: var_A0 = CVar(CLng(5)) 'Long
  loc_137C398: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C39F: LateIdCallSt
  loc_137C3AA: var_A0 = CVar(CLng(5)) 'Long
  loc_137C3AF: var_D8 = &H3E8
  loc_137C3BB: LateIdCallSt
  loc_137C3C3: var_A0 = 0
  loc_137C3CF: var_D8 = CVar(CLng(6)) 'Long
  loc_137C3D4: var_F8 = vbNullString
  loc_137C3DD: LateIdCallSt
  loc_137C3E8: var_A0 = CVar(CLng(6)) 'Long
  loc_137C3F3: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C3FA: LateIdCallSt
  loc_137C405: var_A0 = CVar(CLng(6)) 'Long
  loc_137C410: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C417: LateIdCallSt
  loc_137C422: var_A0 = CVar(CLng(6)) 'Long
  loc_137C427: var_D8 = &H12C
  loc_137C433: LateIdCallSt
  loc_137C43B: var_A0 = 0
  loc_137C447: var_D8 = CVar(CLng(7)) 'Long
  loc_137C44C: var_F8 = vbNullString
  loc_137C455: LateIdCallSt
  loc_137C460: var_A0 = CVar(CLng(7)) 'Long
  loc_137C46B: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C472: LateIdCallSt
  loc_137C47D: var_A0 = CVar(CLng(7)) 'Long
  loc_137C488: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C48F: LateIdCallSt
  loc_137C49A: var_A0 = CVar(CLng(7)) 'Long
  loc_137C49F: var_D8 = 0
  loc_137C4AB: LateIdCallSt
  loc_137C4B3: var_A0 = 0
  loc_137C4BF: var_D8 = CVar(CLng(8)) 'Long
  loc_137C4C4: var_F8 = vbNullString
  loc_137C4CD: LateIdCallSt
  loc_137C4D8: var_A0 = CVar(CLng(8)) 'Long
  loc_137C4E3: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C4EA: LateIdCallSt
  loc_137C4F5: var_A0 = CVar(CLng(8)) 'Long
  loc_137C500: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C507: LateIdCallSt
  loc_137C512: var_A0 = CVar(CLng(8)) 'Long
  loc_137C517: var_D8 = 0
  loc_137C523: LateIdCallSt
  loc_137C52B: var_A0 = 0
  loc_137C537: var_D8 = CVar(CLng(9)) 'Long
  loc_137C53C: var_F8 = "User"
  loc_137C545: LateIdCallSt
  loc_137C550: var_A0 = CVar(CLng(9)) 'Long
  loc_137C55B: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C562: LateIdCallSt
  loc_137C56D: var_A0 = CVar(CLng(9)) 'Long
  loc_137C578: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C57F: LateIdCallSt
  loc_137C58A: var_A0 = CVar(CLng(9)) 'Long
  loc_137C58F: var_D8 = &H320
  loc_137C59B: LateIdCallSt
  loc_137C5A3: var_A0 = 0
  loc_137C5AF: var_D8 = CVar(CLng(&HA)) 'Long
  loc_137C5B4: var_F8 = "Split"
  loc_137C5BD: LateIdCallSt
  loc_137C5C8: var_A0 = CVar(CLng(&HA)) 'Long
  loc_137C5D3: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C5DA: LateIdCallSt
  loc_137C5E5: var_A0 = CVar(CLng(&HA)) 'Long
  loc_137C5F0: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C5F7: LateIdCallSt
  loc_137C602: var_A0 = CVar(CLng(&HA)) 'Long
  loc_137C607: var_D8 = &H20D
  loc_137C613: LateIdCallSt
  loc_137C61B: var_A0 = 0
  loc_137C627: var_D8 = CVar(CLng(&HB)) 'Long
  loc_137C62C: var_F8 = "Bill_No"
  loc_137C635: LateIdCallSt
  loc_137C640: var_A0 = CVar(CLng(&HB)) 'Long
  loc_137C64B: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C652: LateIdCallSt
  loc_137C65D: var_A0 = CVar(CLng(&HB)) 'Long
  loc_137C668: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C66F: LateIdCallSt
  loc_137C67A: var_A0 = CVar(CLng(&HB)) 'Long
  loc_137C67F: var_D8 = &H2D5
  loc_137C68B: LateIdCallSt
  loc_137C693: var_A0 = vbNullString
  loc_137C69D: Set var_B4 = Me.FGrid
  loc_137C6C1: Me.FGrid.FixedRows = 1
  loc_137C6CB: Set var_90 = Nothing 
  loc_137C6D3: Set var_10C = Me.Fgrid1
  loc_137C6E9: Me.Fgrid1.Rows = 1
  loc_137C705: global_60 = CStr(CLng(var_10C.BackColor))
  loc_137C71B: var_10C.Cols = 5
  loc_137C720: var_A0 = 0
  loc_137C72C: var_D8 = CVar(CLng(0)) 'Long
  loc_137C731: var_F8 = "Total :"
  loc_137C73A: LateIdCallSt
  loc_137C745: var_A0 = CVar(CLng(0)) 'Long
  loc_137C750: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C757: LateIdCallSt
  loc_137C762: var_A0 = CVar(CLng(0)) 'Long
  loc_137C76D: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C774: LateIdCallSt
  loc_137C77F: var_A0 = CVar(CLng(0)) 'Long
  loc_137C784: var_D8 = &HFD2
  loc_137C790: LateIdCallSt
  loc_137C798: var_A0 = 0
  loc_137C7A4: var_D8 = CVar(CLng(1)) 'Long
  loc_137C7A9: var_F8 = vbNullString
  loc_137C7B2: LateIdCallSt
  loc_137C7BD: var_A0 = CVar(CLng(1)) 'Long
  loc_137C7C8: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C7CF: LateIdCallSt
  loc_137C7DA: var_A0 = CVar(CLng(1)) 'Long
  loc_137C7E5: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C7EC: LateIdCallSt
  loc_137C7F7: var_A0 = CVar(CLng(1)) 'Long
  loc_137C7FC: var_D8 = &H424
  loc_137C808: LateIdCallSt
  loc_137C810: var_A0 = 0
  loc_137C81C: var_D8 = CVar(CLng(2)) 'Long
  loc_137C821: var_F8 = vbNullString
  loc_137C82A: LateIdCallSt
  loc_137C835: var_A0 = CVar(CLng(2)) 'Long
  loc_137C840: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C847: LateIdCallSt
  loc_137C852: var_A0 = CVar(CLng(2)) 'Long
  loc_137C85D: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C864: LateIdCallSt
  loc_137C86F: var_A0 = CVar(CLng(2)) 'Long
  loc_137C874: var_D8 = &H44C
  loc_137C880: LateIdCallSt
  loc_137C888: var_A0 = 0
  loc_137C894: var_D8 = CVar(CLng(3)) 'Long
  loc_137C899: var_F8 = vbNullString
  loc_137C8A2: LateIdCallSt
  loc_137C8AD: var_A0 = CVar(CLng(3)) 'Long
  loc_137C8B8: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C8BF: LateIdCallSt
  loc_137C8CA: var_A0 = CVar(CLng(3)) 'Long
  loc_137C8D5: var_D8 = CVar(CInt(7)) 'Integer
  loc_137C8DC: LateIdCallSt
  loc_137C8E7: var_A0 = CVar(CLng(3)) 'Long
  loc_137C8EC: var_D8 = &H41A
  loc_137C8F8: LateIdCallSt
  loc_137C900: var_A0 = 0
  loc_137C90C: var_D8 = CVar(CLng(4)) 'Long
  loc_137C911: var_F8 = vbNullString
  loc_137C91A: LateIdCallSt
  loc_137C925: var_A0 = CVar(CLng(4)) 'Long
  loc_137C930: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C937: LateIdCallSt
  loc_137C942: var_A0 = CVar(CLng(4)) 'Long
  loc_137C94D: var_D8 = CVar(CInt(1)) 'Integer
  loc_137C954: LateIdCallSt
  loc_137C95F: var_A0 = CVar(CLng(4)) 'Long
  loc_137C964: var_D8 = &H12C
  loc_137C970: LateIdCallSt
  loc_137C97A: Set var_10C = Nothing 
  loc_137C97E: Exit Sub
End Sub

Public Sub Proc_101_46_E3F6B8
  'Data Table: 4E5AD8
  loc_E3F694: Set var_88 = Me.TopCtrl1
  loc_E3F69A: Call {33AD4ED2-6699-11CF-B70C00AA0060D393}.DispID_68030005()
  loc_E3F6B3: If (CStr() = "Browse") Then
  loc_E3F6B6:   Exit Sub
  loc_E3F6B7: End If
  loc_E3F6B7: Exit Sub
End Sub

Public Sub Proc_101_47_ECCF44
  'Data Table: 4E5AD8
  Dim var_8C As MSHFlexGrid
  Dim var_BC As Variant
  Dim var_DC As Variant
  Dim var_A4 As TextBox
  Dim var_FC As Variant
  loc_ECCECB: If (CLng(Me.FGrid.Col) = CLng(&HA)) Then
  loc_ECCEE1:   var_BC = CVar(CLng(Me.FGrid.Row)) 'Long
  loc_ECCEE9:   var_DC = CVar(CLng(&HA)) 'Long
  loc_ECCEFA:   Set var_8C = Me.TxtGrid
  loc_ECCF00:   Call 0.Method_Proc_101_47_ECCF440 (0, var_A4, var_A8)
  loc_ECCF08:   var_DC = var_A4.Text
  loc_ECCF10:   var_FC = CVar(var_A8) 'String
  loc_ECCF18:   Set var_110 = Me.FGrid
  loc_ECCF1E:   LateIdCallSt
  loc_ECCF38: End If
  loc_ECCF3D: Proc_101_47_ECCF44 = &HFF
End Sub
